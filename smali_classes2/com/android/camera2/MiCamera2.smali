.class public Lcom/android/camera2/MiCamera2;
.super Lcom/android/camera2/Camera2Proxy;
.source "MiCamera2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/MiCamera2$PictureCaptureCallback;,
        Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;,
        Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;
    }
.end annotation


# static fields
.field public static final DEF_QUICK_SHOT_THRESHOLD_INTERVAL_TIME:I = 0x32

.field public static final DEF_QUICK_SHOT_THRESHOLD_SHOT_CACHE_TIME_OUT:I = 0x2710

.field public static final FLASH_LOCK_DEBUG:Z

.field public static final FORCE_STOP_WATCHDOG:Z

.field public static final MSG_CHECK_CAMERA_ALIVE:I = 0x3

.field public static final MSG_WAITING_AF_LOCK_TIMEOUT:I = 0x1

.field public static final MSG_WAITING_LOCAL_PARALLEL_SERVICE_READY:I = 0x2

.field public static final PARALLEL_SURFACE_INDEX_UNSET:I = -0x1

.field public static final TAG:Ljava/lang/String; = "MiCamera2"

.field public static final TIME_WAITING_LOCK_AF_FLASH:J = 0xfa0L

.field public static final TIME_WAITING_LOCK_AF_TORCH:J = 0xbb8L

.field public static final ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;


# instance fields
.field public final AE_STATE_NULL:I

.field public final MAX_PARALLEL_REQUEST_NUMBER:I

.field public final WAITING_AE_STATE_STRICT:Z

.field public mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field public mCameraHandler:Landroid/os/Handler;

.field public mCameraPreviewHandler:Landroid/os/Handler;

.field public final mCapabilities:Lcom/android/camera2/CameraCapabilities;

.field public mCaptureBusyCallback:Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;

.field public mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

.field public mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field public mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

.field public mCaptureTime:J

.field public mConfigs:Lcom/android/camera2/CameraConfigs;

.field public mCurrentFrameNum:J

.field public mDeferImageReaderList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;",
            ">;"
        }
    .end annotation
.end field

.field public mDeferOutputConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera2/imagereaders/OutputConfigurationSpec;",
            ">;"
        }
    .end annotation
.end field

.field public mDeferPreviewSurface:Landroid/view/Surface;

.field public mDepthReader:Landroid/media/ImageReader;

.field public mDisplayOrientation:I

.field public mEnableParallelSession:Z

.field public mEnableParallelSnapshot:Z

.field public mFakeOutputTexture:Landroid/graphics/SurfaceTexture;

.field public mFocusLockRequestHashCode:I

.field public mFrameCount:J

.field public mFrameCountingStart:J

.field public mHelperHandler:Landroid/os/Handler;

.field public final mHighQualityQuickShotThresholdCacheCount:I

.field public mHighSpeedFpsRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mIsCameraClosed:Z

.field public volatile mIsCaptureSessionClosed:Z

.field public mIsPreviewCallbackStarted:Z

.field public mLastFlashTimeMillis:J

.field public mLastFrameNum:J

.field public mLastSatCameraId:I

.field public mLightScreenStartTime:J

.field public mLockPrepareRemote:Ljava/lang/Object;

.field public mMaxImageBufferSize:I

.field public mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

.field public mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Lcom/android/camera2/MiCamera2Shot;",
            ">;"
        }
    .end annotation
.end field

.field public mNeedFlashForAuto:Z

.field public mParallelSpecList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mPendingNotifyVideoEnd:Z

.field public mPhotoImageReader:Landroid/media/ImageReader;

.field public mPortraitRawImageReader:Landroid/media/ImageReader;

.field public mPreCaptureRequestHashCode:I

.field public mPreParedRemote:Z

.field public mPreviewCallbackType:I

.field public mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

.field public mPreviewImageReader:Landroid/media/ImageReader;

.field public mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

.field public mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field public mPreviewSurface:Landroid/view/Surface;

.field public final mQuickShotThresholdCacheCount:I

.field public mRawCallbackType:I

.field public mRawImageReader:Landroid/media/ImageReader;

.field public mRawImageWriter:Landroid/media/ImageWriter;

.field public mRecordSurface:Landroid/view/Surface;

.field public mScanIn3A:Z

.field public mScreenLightColorTemperature:I

.field public mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

.field public mSessionId:I

.field public final mSessionLock:Ljava/lang/Object;

.field public mSetRepeatingEarly:Z

.field public mShotBoostParams:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mShotQueueLock:Ljava/lang/Object;

.field public mSuperNightReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

.field public final mSupportFlashTimeLock:Z

.field public mToTele:Z

.field public mVideoRecording:Z

.field public mVideoSessionId:I

.field public mVideoSnapshotImageReader:Landroid/media/ImageReader;

.field public final mWaitingFirstFrameRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mZoomMapSurface:Landroid/view/Surface;

.field public mZoomMapSurfaceAdded:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 1
    new-instance v7, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    sput-object v0, Lcom/android/camera2/MiCamera2;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    const-string v0, "flash_time_lock"

    .line 2
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera2/MiCamera2;->FLASH_LOCK_DEBUG:Z

    const-string v0, "force_stop_watchdog"

    const/4 v1, 0x3

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera2/MiCamera2;->FORCE_STOP_WATCHDOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/Camera2Proxy;-><init>(I)V

    const/16 v1, 0xa

    .line 2
    iput v1, p0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/4 v1, 0x5

    .line 3
    iput v1, p0, Lcom/android/camera2/MiCamera2;->MAX_PARALLEL_REQUEST_NUMBER:I

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/android/camera2/MiCamera2;->AE_STATE_NULL:I

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera2/MiCamera2;->WAITING_AE_STATE_STRICT:Z

    .line 6
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/camera2/MiCamera2;->mZoomMapSurfaceAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    iput v1, p0, Lcom/android/camera2/MiCamera2;->mLastSatCameraId:I

    const-wide/16 v1, -0x1

    .line 8
    iput-wide v1, p0, Lcom/android/camera2/MiCamera2;->mLastFrameNum:J

    .line 9
    iput-wide v1, p0, Lcom/android/camera2/MiCamera2;->mCurrentFrameNum:J

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    .line 11
    new-instance v1, Landroid/util/SparseArray;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mDeferImageReaderList:Landroid/util/SparseArray;

    .line 12
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00OO0o0()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mSetRepeatingEarly:Z

    .line 13
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    .line 14
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    const-wide/16 v1, 0x0

    .line 15
    iput-wide v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureTime:J

    .line 16
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    .line 17
    iput-wide v1, p0, Lcom/android/camera2/MiCamera2;->mFrameCountingStart:J

    .line 18
    iput-wide v1, p0, Lcom/android/camera2/MiCamera2;->mFrameCount:J

    .line 19
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mVideoRecording:Z

    .line 20
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/camera2/MiCamera2;->mWaitingFirstFrameRequestMap:Ljava/util/HashMap;

    .line 21
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/camera2/MiCamera2;->mLockPrepareRemote:Ljava/lang/Object;

    .line 22
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mPreParedRemote:Z

    .line 23
    iput-wide v1, p0, Lcom/android/camera2/MiCamera2;->mLightScreenStartTime:J

    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureBusyCallback:Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;

    .line 25
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "MiCamera2: preload"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iput v0, p0, Lcom/android/camera2/MiCamera2;->mQuickShotThresholdCacheCount:I

    .line 27
    iput v0, p0, Lcom/android/camera2/MiCamera2;->mHighQualityQuickShotThresholdCacheCount:I

    .line 28
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mSupportFlashTimeLock:Z

    .line 29
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    return-void
.end method

.method public constructor <init>(ILandroid/hardware/camera2/CameraDevice;Lcom/android/camera2/CameraCapabilities;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 4

    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera2/Camera2Proxy;-><init>(I)V

    const/16 p1, 0xa

    .line 31
    iput p1, p0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    const/4 p1, 0x5

    .line 32
    iput p1, p0, Lcom/android/camera2/MiCamera2;->MAX_PARALLEL_REQUEST_NUMBER:I

    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lcom/android/camera2/MiCamera2;->AE_STATE_NULL:I

    .line 34
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2;->WAITING_AE_STATE_STRICT:Z

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mZoomMapSurfaceAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    iput p1, p0, Lcom/android/camera2/MiCamera2;->mLastSatCameraId:I

    const-wide/16 v2, -0x1

    .line 37
    iput-wide v2, p0, Lcom/android/camera2/MiCamera2;->mLastFrameNum:J

    .line 38
    iput-wide v2, p0, Lcom/android/camera2/MiCamera2;->mCurrentFrameNum:J

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    .line 40
    new-instance p1, Landroid/util/SparseArray;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mDeferImageReaderList:Landroid/util/SparseArray;

    .line 41
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00OO0o0()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2;->mSetRepeatingEarly:Z

    .line 42
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    .line 43
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    const-wide/16 v2, 0x0

    .line 44
    iput-wide v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureTime:J

    .line 45
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    .line 46
    iput-wide v2, p0, Lcom/android/camera2/MiCamera2;->mFrameCountingStart:J

    .line 47
    iput-wide v2, p0, Lcom/android/camera2/MiCamera2;->mFrameCount:J

    .line 48
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mVideoRecording:Z

    .line 49
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mWaitingFirstFrameRequestMap:Ljava/util/HashMap;

    .line 50
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mLockPrepareRemote:Ljava/lang/Object;

    .line 51
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mPreParedRemote:Z

    .line 52
    iput-wide v2, p0, Lcom/android/camera2/MiCamera2;->mLightScreenStartTime:J

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureBusyCallback:Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;

    .line 54
    iput-object p2, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 55
    iput-object p3, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 56
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    .line 57
    new-instance p1, Lcom/android/camera2/CameraConfigs;

    invoke-direct {p1}, Lcom/android/camera2/CameraConfigs;-><init>()V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 58
    new-instance p1, Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-direct {p1, p3}, Lcom/android/camera2/CaptureSessionConfigurations;-><init>(Lcom/android/camera2/CameraCapabilities;)V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    .line 59
    iput-object p4, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    .line 60
    iput-object p5, p0, Lcom/android/camera2/MiCamera2;->mCameraPreviewHandler:Landroid/os/Handler;

    .line 61
    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->initHelperHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    .line 62
    new-instance p1, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-direct {p1, p0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;-><init>(Lcom/android/camera2/MiCamera2;)V

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    .line 63
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O0oooO()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2;->mSupportFlashTimeLock:Z

    .line 64
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00000o0()I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mQuickShotThresholdCacheCount:I

    .line 65
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportEnableHighQualityQuickShotByTag(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getHighQualityQuickShotThresholdCount(Lcom/android/camera2/CameraCapabilities;)I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mHighQualityQuickShotThresholdCacheCount:I

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00000o0()I

    move-result p1

    iput p1, p0, Lcom/android/camera2/MiCamera2;->mHighQualityQuickShotThresholdCacheCount:I

    .line 68
    :goto_0
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAddScanIn3ALockStatus(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2;->mScanIn3A:Z

    return-void
.end method

.method public static synthetic OooO00o(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;)V
    .locals 0

    .line 83
    invoke-interface {p0}, Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;->stopScreenLight()V

    return-void
.end method

.method private abortCaptures()V
    .locals 5

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00OOOOo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    :try_start_1
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "abortCaptures E"

    invoke-static {v1, v2}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 6
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "abortCaptures X"

    invoke-static {v1, v2}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    :try_start_2
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abortCaptures, IllegalState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 8
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abortCaptures(): failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO0O0(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->runCaptureSequence()V

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/camera2/MiCamera2;)Lcom/android/camera2/MiCamera2Shot;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/camera2/MiCamera2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    return p0
.end method

.method public static synthetic access$1300(Lcom/android/camera2/MiCamera2;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/camera2/MiCamera2;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method public static synthetic access$1402(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method public static synthetic access$1500(Lcom/android/camera2/MiCamera2;Lcom/android/camera/CameraSize;Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2;->prepareRawImageWriter(Lcom/android/camera/CameraSize;Landroid/view/Surface;)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/android/camera2/MiCamera2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    return p0
.end method

.method public static synthetic access$1602(Lcom/android/camera2/MiCamera2;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    return p1
.end method

.method public static synthetic access$1700(Lcom/android/camera2/MiCamera2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mPendingNotifyVideoEnd:Z

    return p0
.end method

.method public static synthetic access$1702(Lcom/android/camera2/MiCamera2;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2;->mPendingNotifyVideoEnd:Z

    return p1
.end method

.method public static synthetic access$1800(Lcom/android/camera2/MiCamera2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2;->mVideoSessionId:I

    return p0
.end method

.method public static synthetic access$1900(Lcom/android/camera2/MiCamera2;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera2/MiCamera2;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/camera2/MiCamera2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mSetRepeatingEarly:Z

    return p0
.end method

.method public static synthetic access$2100(Lcom/android/camera2/MiCamera2;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mDeferPreviewSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/android/camera2/MiCamera2;)Lcom/android/camera2/CameraCapabilities;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    return-object p0
.end method

.method public static synthetic access$2300(Lcom/android/camera2/MiCamera2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mEnableParallelSnapshot:Z

    return p0
.end method

.method public static synthetic access$2400(Lcom/android/camera2/MiCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method public static synthetic access$2500(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/android/camera2/MiCamera2;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mWaitingFirstFrameRequestMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic access$2700(Lcom/android/camera2/MiCamera2;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2;->triggerDeviceChecking(ZZ)V

    return-void
.end method

.method public static synthetic access$2800(Lcom/android/camera2/MiCamera2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2;->mFocusLockRequestHashCode:I

    return p0
.end method

.method public static synthetic access$2802(Lcom/android/camera2/MiCamera2;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera2/MiCamera2;->mFocusLockRequestHashCode:I

    return p1
.end method

.method public static synthetic access$2900(Lcom/android/camera2/MiCamera2;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera2/MiCamera2;)Lcom/android/camera2/MiCamera2Preview;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    return-object p0
.end method

.method public static synthetic access$3000(Lcom/android/camera2/MiCamera2;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needOptimizedFlash()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$3100(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->runPreCaptureSequence()V

    return-void
.end method

.method public static synthetic access$3200(Lcom/android/camera2/MiCamera2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->WAITING_AE_STATE_STRICT:Z

    return p0
.end method

.method public static synthetic access$3300(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->lockFocus()V

    return-void
.end method

.method public static synthetic access$3400(Lcom/android/camera2/MiCamera2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera2/MiCamera2;->mPreCaptureRequestHashCode:I

    return p0
.end method

.method public static synthetic access$3500(Lcom/android/camera2/MiCamera2;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needScreenLight()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$3600(Lcom/android/camera2/MiCamera2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera2/MiCamera2;->mToTele:Z

    return p0
.end method

.method public static synthetic access$3700(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->triggerPrecapture()V

    return-void
.end method

.method public static synthetic access$3800(Lcom/android/camera2/MiCamera2;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/MiCamera2;->mLightScreenStartTime:J

    return-wide v0
.end method

.method public static synthetic access$3802(Lcom/android/camera2/MiCamera2;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera2/MiCamera2;->mLightScreenStartTime:J

    return-wide p1
.end method

.method public static synthetic access$3900(Lcom/android/camera2/MiCamera2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->captureStillPicture()V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/camera2/MiCamera2;)Lcom/android/camera2/CameraConfigs;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    return-object p0
.end method

.method public static synthetic access$4000(Lcom/android/camera2/MiCamera2;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/MiCamera2;->mFrameCountingStart:J

    return-wide v0
.end method

.method public static synthetic access$4002(Lcom/android/camera2/MiCamera2;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera2/MiCamera2;->mFrameCountingStart:J

    return-wide p1
.end method

.method public static synthetic access$4100(Lcom/android/camera2/MiCamera2;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/MiCamera2;->mFrameCount:J

    return-wide v0
.end method

.method public static synthetic access$4102(Lcom/android/camera2/MiCamera2;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera2/MiCamera2;->mFrameCount:J

    return-wide p1
.end method

.method public static synthetic access$4104(Lcom/android/camera2/MiCamera2;)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/MiCamera2;->mFrameCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera2/MiCamera2;->mFrameCount:J

    return-wide v0
.end method

.method public static synthetic access$500(Lcom/android/camera2/MiCamera2;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->isDeviceAlive()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera2/MiCamera2;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/camera2/MiCamera2;)Ljava/util/concurrent/ConcurrentLinkedDeque;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/camera2/MiCamera2;Landroid/media/Image;)Lcom/android/camera2/MiCamera2Shot;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->replaceCorrectShot(Landroid/media/Image;)Lcom/android/camera2/MiCamera2Shot;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/camera2/MiCamera2;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->notifyCaptureBusyCallback(Z)V

    return-void
.end method

.method private adjustFlashCurrent(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isFaceExist()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string p2, "flash_auto_face"

    .line 2
    invoke-static {p2, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_0
    const-string p1, "flash_auto_no_face"

    .line 3
    invoke-static {p1, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_2

    :cond_1
    :goto_0
    move p2, p1

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyBackSoftLight(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 5
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerCapture: softLight-flashCurrentValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraConfigs;->setFlashCurrent(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFlashCurrent(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method private applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 3

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceDetection(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiBanding(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyBeautyValues(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyHighQualityPreferred(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAELocked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 10
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAWBLocked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 11
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applySkinColor(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyWaterMark(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicPhoto(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 14
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyThermal(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 15
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForCapture()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyContrast(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 17
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySaturation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 18
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySharpness(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 19
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureMeteringMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 20
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 21
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyPureViewEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 22
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySuperNightScene(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 23
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p2, p1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyMiviSuperNight(Lcom/android/camera2/CameraCapabilities;ILandroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 24
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyForceDisableLLS(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 25
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyHHT(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 26
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 27
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 28
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyHwMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 29
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySwMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 30
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySingleBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 31
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyDualBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 32
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceAgeAnalyze(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 33
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceScore(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 34
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFrontMirror(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 35
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyCameraAi30Enable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 36
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyMacroMode(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 37
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyUltraPixelPortrait(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 38
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O0ooOO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorEnhance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAiPortraitDeblurSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiPortraitDeblur(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForPortrait()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 43
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyContrast(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 44
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySaturation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 45
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySharpness(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 46
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySingleBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 48
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFrontMirror(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 49
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceAgeAnalyze(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 50
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceScore(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 51
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyHwMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 52
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySwMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySingleBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 54
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyDualBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMFNRBokehSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyHwMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHdrBokeh(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyHdrBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Z)V

    .line 59
    :cond_4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviBokehSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 60
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p2, p1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyMiviSuperNight(Lcom/android/camera2/CameraCapabilities;ILandroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 61
    :cond_5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applySuperNightBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 62
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyPortraitLighting(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 63
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFNumber(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 64
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyBeautyLens(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 65
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyBokehRole(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 66
    :cond_6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForManually()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 67
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAWBMode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 68
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAwbCustomValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 69
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 70
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    .line 71
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 72
    :cond_7
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForNormalCapture()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 73
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiShutterExistMotion(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 74
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAnchorTimeStamp(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 75
    :cond_8
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 76
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyNormalWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 77
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p2, p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyMixQuickShot(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method private applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyFlashMode: request = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", applyType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v3, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v3

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o000oooO()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 4
    iget-object v4, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->isFlashAutoDetectionEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    if-eq v2, v5, :cond_1

    move v3, v6

    .line 5
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->useLegacyFlashStrategy()Z

    move-result v4

    const/4 v7, 0x3

    if-eqz v4, :cond_2

    if-ne v3, v7, :cond_2

    iget-object v4, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 6
    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v4, "applyFlashMode, force disable flash for SuperNight"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 8
    :cond_2
    iget-object v4, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v8, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v1, v4, v8}, Lcom/android/camera2/CaptureRequestBuilder;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    const/4 v4, 0x7

    const/4 v8, 0x6

    const/4 v9, 0x2

    if-eq v2, v5, :cond_9

    if-eq v2, v7, :cond_6

    if-eq v2, v8, :cond_4

    if-eq v2, v4, :cond_3

    goto/16 :goto_3

    .line 9
    :cond_3
    iget-object v10, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz v10, :cond_a

    invoke-static {v10}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportCustomFlashCurrent(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v10

    if-eqz v10, :cond_a

    if-ne v3, v7, :cond_a

    .line 10
    iget-object v10, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v11, v0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v10, v11, v6}, Lcom/android/camera2/CaptureRequestBuilder;->applyBackSoftLight(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 11
    iget-object v10, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v10, v6}, Lcom/android/camera2/CameraConfigs;->setFlashCurrent(I)V

    .line 12
    iget-object v10, v0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v11, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v12, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v10, v11, v12}, Lcom/android/camera2/CaptureRequestBuilder;->applyFlashCurrent(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    goto :goto_3

    .line 13
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->needOptimizedFlash()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 14
    iget-object v10, v0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v10}, Lcom/android/camera2/MiCamera2Preview;->needForCapture()Z

    move-result v10

    if-eqz v10, :cond_5

    :goto_0
    move v11, v5

    goto :goto_1

    :cond_5
    move v11, v6

    :goto_1
    move v10, v9

    goto :goto_4

    .line 15
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->needOptimizedFlash()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 16
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getExposureTime()J

    move-result-wide v10

    sget-wide v12, Lcom/android/camera/CameraSettings;->sManualFlashTorchThreshold:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_7

    :goto_2
    move v10, v6

    move v11, v10

    goto :goto_4

    .line 17
    :cond_7
    iget-object v10, v0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v10}, Lcom/android/camera2/MiCamera2Preview;->needForCapture()Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_0

    :cond_8
    if-ne v3, v7, :cond_a

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->useLegacyFlashStrategy()Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_2

    .line 19
    :cond_9
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v10

    invoke-virtual {v10}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00OoooO()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->isFacingFront()Z

    move-result v10

    if-eqz v10, :cond_a

    move v10, v3

    move v11, v5

    goto :goto_4

    :cond_a
    :goto_3
    move v10, v3

    move v11, v6

    .line 20
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/Camera2Proxy;->getScreenLightCallback()Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;

    move-result-object v12

    .line 21
    sget-object v13, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "applyFlashMode: flashMode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", mScreenLightCallback = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v13, 0x65

    if-eq v10, v13, :cond_c

    const/16 v14, 0x68

    if-eq v10, v14, :cond_c

    const/16 v14, 0x6a

    if-ne v10, v14, :cond_b

    goto :goto_5

    :cond_b
    move v14, v6

    goto :goto_6

    :cond_c
    :goto_5
    move v14, v5

    .line 22
    :goto_6
    iget-object v15, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v15, v1, v14}, Lcom/android/camera2/CaptureRequestBuilder;->applyScreenLightHint(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    const/16 v14, 0xc8

    const/4 v15, 0x5

    if-eq v10, v14, :cond_11

    if-eqz v10, :cond_11

    .line 23
    sget-boolean v16, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo00o:Z

    if-eqz v16, :cond_f

    if-ne v3, v15, :cond_d

    :goto_7
    move v3, v5

    goto :goto_8

    :cond_d
    if-ne v3, v7, :cond_e

    goto :goto_7

    :cond_e
    move v3, v6

    .line 24
    :goto_8
    iget-object v4, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v4, v1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyBackSoftLight(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_a

    .line 25
    :cond_f
    iget-object v3, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-ne v10, v15, :cond_10

    move v4, v5

    goto :goto_9

    :cond_10
    move v4, v6

    :goto_9
    invoke-static {v3, v1, v4}, Lcom/android/camera2/CaptureRequestBuilder;->applyBackSoftLight(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 26
    :cond_11
    :goto_a
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 27
    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getISO()I

    move-result v3

    if-gtz v3, :cond_12

    iget-object v3, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getExposureTime()J

    move-result-wide v3

    const-wide/16 v17, 0x0

    cmp-long v3, v3, v17

    if-lez v3, :cond_13

    :cond_12
    move v3, v5

    goto :goto_b

    :cond_13
    move v3, v6

    :goto_b
    if-eqz v10, :cond_25

    if-eq v10, v5, :cond_24

    if-eq v10, v9, :cond_21

    if-eq v10, v7, :cond_1f

    const/4 v3, 0x4

    if-eq v10, v3, :cond_1e

    if-eq v10, v15, :cond_1d

    if-eq v10, v13, :cond_18

    if-eq v10, v14, :cond_16

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_11

    .line 28
    :pswitch_0
    iget-object v3, v0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v3

    if-nez v3, :cond_15

    if-ne v2, v5, :cond_14

    goto :goto_c

    .line 29
    :cond_14
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 30
    :cond_15
    :goto_c
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 31
    :pswitch_1
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 32
    :pswitch_2
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyFlashMode: FLASH_MODE_SCREEN_LIGHT_AUTO applyType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_27

    .line 33
    invoke-interface {v12}, Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;->stopScreenLight()V

    goto/16 :goto_11

    .line 34
    :cond_16
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 35
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_d

    .line 36
    :cond_17
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 37
    :goto_d
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_11

    :cond_18
    if-eqz v12, :cond_27

    if-ne v2, v8, :cond_19

    .line 38
    iget-object v3, v0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getCurrentColorTemperature()I

    move-result v3

    iput v3, v0, Lcom/android/camera2/MiCamera2;->mScreenLightColorTemperature:I

    .line 39
    :cond_19
    iget v3, v0, Lcom/android/camera2/MiCamera2;->mScreenLightColorTemperature:I

    const-string v4, "camera_screen_light_wb"

    invoke-static {v4, v3}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 40
    invoke-static {v3}, Lcom/android/camera/Util;->getScreenLightColor(I)I

    move-result v3

    .line 41
    invoke-static {}, Lcom/android/camera/CameraSettings;->getScreenLightBrightness()I

    move-result v4

    const-string v5, "camera_screen_light_delay"

    .line 42
    invoke-static {v5, v6}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 43
    sget-object v6, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applyFlashMode: FLASH_MODE_SCREEN_LIGHT_ON color = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", brightness = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", delay = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", mCameraHandler = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v8, :cond_1c

    if-ne v2, v7, :cond_1a

    goto :goto_e

    :cond_1a
    const/4 v6, 0x7

    if-ne v2, v6, :cond_27

    if-nez v5, :cond_1b

    .line 44
    invoke-interface {v12}, Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;->stopScreenLight()V

    goto/16 :goto_11

    .line 45
    :cond_1b
    iget-object v1, v0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    new-instance v2, LOooO00o/OooO0O0/OooO0O0/OooO0OO;

    invoke-direct {v2, v12}, LOooO00o/OooO0O0/OooO0O0/OooO0OO;-><init>(Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;)V

    int-to-long v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_11

    .line 46
    :cond_1c
    :goto_e
    invoke-interface {v12, v3, v4}, Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;->startScreenLight(II)V

    .line 47
    iget-object v2, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2, v1, v4}, Lcom/android/camera2/CaptureRequestBuilder;->applyScreenLightLevel(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    goto/16 :goto_11

    .line 48
    :cond_1d
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 49
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 50
    :cond_1e
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 51
    :cond_1f
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 52
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 53
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 54
    :cond_20
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 55
    :cond_21
    iget-object v4, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v4}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportSnapShotTorch(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 56
    invoke-static {v1, v11}, Lcom/android/camera2/compat/MiCameraCompat;->applySnapshotTorch(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_22
    if-eqz v3, :cond_23

    .line 57
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_f

    .line 58
    :cond_23
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 59
    :goto_f
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->isFacingFront()Z

    move-result v1

    if-eqz v1, :cond_27

    if-ne v2, v5, :cond_27

    .line 61
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00OoooO()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, v0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 62
    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportCustomFlashCurrent(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/16 v1, 0x28

    .line 63
    invoke-direct {v0, v1, v1}, Lcom/android/camera2/MiCamera2;->adjustFlashCurrent(II)V

    goto :goto_11

    .line 64
    :cond_24
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 65
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_11

    :cond_25
    if-eqz v3, :cond_26

    .line 66
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_10

    .line 67
    :cond_26
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 68
    :goto_10
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_27
    :goto_11
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private applySettingsForFocusCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyHighQualityPreferred(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAWBMode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAwbCustomValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyBeautyValues(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v3, 0x3

    invoke-static {p1, v3, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFrontMirror(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyContrast(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySaturation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 14
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySharpness(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForManually()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 17
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForProVideo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mVideoRecording:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    .line 22
    :goto_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAWBMode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 23
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAwbCustomValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 24
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v3, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 25
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v3, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    .line 26
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v3, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 27
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 28
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 29
    :cond_4
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 30
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 31
    invoke-direct {p0, p1, v2}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 32
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 33
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method private applySettingsForLockFocus(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 3

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 5
    invoke-direct {p0, p1, v1}, Lcom/android/camera2/MiCamera2;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->useLegacyFlashStrategy()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 7
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needOptimizedFlash()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needScreenLight()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const/4 p2, 0x6

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 10
    :cond_2
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 11
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->applySuperNightRaw(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 12
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-static {p1, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CaptureSessionConfigurations;)V

    return-void
.end method

.method private applySettingsForPreCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera2/MiCamera2;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    const/4 v1, 0x6

    .line 2
    invoke-direct {p0, p1, v1}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 3
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CaptureSessionConfigurations;)V

    return-void
.end method

.method private applySettingsForPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applySettingsForPreview: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/android/camera2/MiCamera2;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyLensDirtyDetect(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAELocked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAWBLocked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 7
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyDeviceOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 9
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CaptureSessionConfigurations;)V

    .line 12
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O0ooOO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorEnhance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isSatFallbackDisable()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applySatFallbackDisable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 15
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiASDEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 16
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, p1, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyASDScene(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->applySuperNightRaw(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 18
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyTrackFocusEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 19
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyTrackEyeEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method private applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, v1}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyLensDirtyDetect(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceDetection(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiBanding(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureMeteringMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAELocked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 12
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyBeautyValues(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoFilterId(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 14
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 15
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyTuningMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 16
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v3, 0x3

    invoke-static {p1, v3, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFrontMirror(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 17
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyDeviceOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 18
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 19
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyMacroMode(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 20
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyHFRDeflicker(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 21
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehLevelFront(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 22
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorRetentionFront(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 23
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehLevelBack(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 24
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorRetentionBack(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 25
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyHDR10Video(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 26
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicVideo(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 27
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Preview;->needForProVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mVideoRecording:Z

    if-eqz v0, :cond_1

    move v1, v3

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAWBMode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 30
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAwbCustomValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 31
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 32
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    .line 33
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 34
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoLog(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 35
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 36
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyHistogramStats(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CaptureSessionConfigurations;)V

    return-void
.end method

.method private applySuperNightRaw(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applySuperNightRawEnabled(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_0
    return-void
.end method

.method private applyVideoHdrModeIfNeed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoHdr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isVideoHdrEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "turns video.hdr.mode on"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v1, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_HDR_KEY_DETECTION_MODE:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_HDR_FEATURE_HDR_MODE_VIDEO_ON:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_HDR_FEATURE_HDR_MODE_VIDEO_ON:[I

    invoke-static {v0, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyVideoHdrMode(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoHdrEnabled(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->XIAOMI_VIDEO_HDR_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyVideoHdrMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoMfnrEnabled(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->QCOM_VIDEO_MFHDR_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyVideoMFHdrMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p2, "capture: null session"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    monitor-exit v0

    return v2

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    instance-of v1, v1, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 6
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "capture, isHighSpeed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    .line 7
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object p1

    if-eqz p4, :cond_1

    .line 8
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {p4, v1}, Lcom/android/camera/module/loader/camera2/FocusTask;->setRequest(Landroid/hardware/camera2/CaptureRequest;)V

    .line 9
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CaptureRequest;

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capture burst for camera "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->dumpRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p4, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p4, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p1

    monitor-exit v0

    return p1

    .line 12
    :cond_3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capture for camera "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p1}, Lcom/android/camera/log/Log;->dumpRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V

    .line 13
    iget-object p4, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p4, p1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private captureStillPicture()V
    .locals 10

    const-string v0, "capture"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v7, 0x1

    packed-switch v1, :pswitch_data_0

    .line 3
    :pswitch_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected shot type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4
    :pswitch_1
    new-instance v0, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera2/MiCamera2ShotDualRawBokeh;-><init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    goto/16 :goto_1

    .line 5
    :pswitch_2
    new-instance v0, Lcom/android/camera2/MiCamera2ShotBurst;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isNeedPausePreview()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera2/MiCamera2ShotBurst;-><init>(Lcom/android/camera2/MiCamera2;IZ)V

    goto/16 :goto_1

    .line 6
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSuperNightReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SNReprocessThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 9
    new-instance v1, Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0000OoO()I

    move-result v2

    invoke-direct {v1, v0, p0, v2}, Lcom/android/camera2/SuperNightReprocessHandler;-><init>(Landroid/os/Looper;Lcom/android/camera2/MiCamera2;I)V

    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mSuperNightReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

    .line 10
    :cond_1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SuperNightReprocessHandler@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mSuperNightReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v0, Lcom/android/camera2/MiCamera2ShotRawBurst;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mSuperNightReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/camera2/MiCamera2ShotRawBurst;-><init>(Lcom/android/camera2/MiCamera2;Lcom/android/camera2/SuperNightReprocessHandler;)V

    .line 12
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isQuickShotAnimation()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2Shot;->setQuickShotAnimation(Z)V

    goto/16 :goto_1

    .line 13
    :pswitch_4
    new-instance v8, Lcom/android/camera2/MiCamera2ShotParallelBurst;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    .line 14
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v2

    .line 15
    invoke-direct {p0, v7}, Lcom/android/camera2/MiCamera2;->useParallelVTCameraSnapshot(Z)Z

    move-result v3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 16
    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getRawCallbackType()I

    move-result v4

    .line 17
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSatFusionType()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v6

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera2/MiCamera2ShotParallelBurst;-><init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;ZIILcom/android/camera/module/loader/camera2/ButtonStatus;)V

    goto/16 :goto_1

    .line 18
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSatFusionType()I

    move-result v5

    .line 19
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 20
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 21
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isNeedFlash()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    if-eq v5, v3, :cond_3

    .line 22
    new-instance v1, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    .line 23
    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v4

    invoke-direct {v1, p0, v3, v4}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;-><init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 24
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2ShotParallelRawBurst;->shouldApply()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 25
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "mfnr raw algo"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :cond_3
    if-nez v0, :cond_4

    .line 26
    new-instance v8, Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    .line 27
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v3

    .line 28
    invoke-direct {p0, v2}, Lcom/android/camera2/MiCamera2;->useParallelVTCameraSnapshot(Z)Z

    move-result v4

    .line 29
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getDoRemosaic()Z

    move-result v6

    .line 30
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v9

    move-object v0, v8

    move-object v1, p0

    move-object v2, v3

    move v3, v4

    move v4, v6

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/camera2/MiCamera2ShotParallelStill;-><init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;ZZILcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 31
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isQuickShotAnimation()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/camera2/MiCamera2Shot;->setQuickShotAnimation(Z)V

    goto :goto_0

    .line 32
    :pswitch_6
    new-instance v0, Lcom/android/camera2/MiCamera2ShotPreview;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera2/MiCamera2ShotPreview;-><init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_1

    .line 33
    :pswitch_7
    new-instance v0, Lcom/android/camera2/MiCamera2ShotStill;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2ShotStill;-><init>(Lcom/android/camera2/MiCamera2;)V

    .line 34
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isQuickShotAnimation()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2Shot;->setQuickShotAnimation(Z)V

    goto :goto_1

    .line 35
    :pswitch_8
    new-instance v8, Lcom/android/camera2/MiCamera2ShotParallelStill;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    .line 36
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v3

    .line 37
    invoke-direct {p0, v2}, Lcom/android/camera2/MiCamera2;->useParallelVTCameraSnapshot(Z)Z

    move-result v4

    .line 38
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getDoRemosaic()Z

    move-result v5

    .line 39
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSatFusionType()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v9

    move-object v0, v8

    move-object v1, p0

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/camera2/MiCamera2ShotParallelStill;-><init>(Lcom/android/camera2/MiCamera2;Landroid/hardware/camera2/CaptureResult;ZZILcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 40
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isQuickShotAnimation()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/camera2/MiCamera2Shot;->setQuickShotAnimation(Z)V

    :goto_0
    move-object v0, v8

    goto :goto_1

    .line 41
    :pswitch_9
    new-instance v0, Lcom/android/camera2/MiCamera2ShotSimplePreview;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2ShotSimplePreview;-><init>(Lcom/android/camera2/MiCamera2;)V

    .line 42
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v1

    const/4 v2, -0x8

    if-ne v1, v2, :cond_5

    .line 43
    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    return-void

    .line 44
    :cond_5
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureTime:J

    .line 46
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capture: mMiCamera2ShotQueue.offer, size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 47
    :cond_6
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capture: mMiCamera2ShotQueue.offer failure, size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_2
    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    if-eqz v0, :cond_8

    .line 49
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v0

    if-nez v0, :cond_7

    .line 50
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->disableSat()V

    .line 51
    :cond_7
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isHighQualityQuickShotEnabled()Z

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isQuickShotEnabled()Z

    move-result v1

    .line 53
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startShot holder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isHQQuickShot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isQuickShot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {v2, v0}, Lcom/android/camera2/MiCamera2Shot;->setHighQualityQuickShotEnabled(Z)V

    .line 55
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2Shot;->setQuickShotEnabled(Z)V

    .line 56
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2Shot;->setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    .line 57
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getParallelCallback()Lcom/xiaomi/camera/core/ParallelCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2Shot;->setParallelCallback(Lcom/xiaomi/camera/core/ParallelCallback;)V

    .line 58
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2Shot;->startShot()V

    .line 59
    invoke-direct {p0, v7, v7}, Lcom/android/camera2/MiCamera2;->triggerDeviceChecking(ZZ)V

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method

.method private checkCameraDevice(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 2
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is closed when "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    sget-boolean v2, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0O0:Z

    if-nez v2, :cond_3

    .line 7
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v2, p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    .line 8
    :cond_3
    throw v0
.end method

.method private checkCaptureSession(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_3

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "session for camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is closed when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    monitor-exit v0

    return v2

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    sget-boolean v3, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0O0:Z

    if-eqz v3, :cond_2

    sget-boolean v3, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0oO:Z

    if-eqz v3, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    throw v1

    .line 10
    :cond_2
    :goto_0
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v3, p1, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    monitor-exit v0

    return v2

    .line 12
    :cond_3
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private closeDepthImageReader()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mDepthReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mDepthReader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method

.method private closePhotoImageReader()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPhotoImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mPhotoImageReader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method

.method private closePortraitRawImageReader()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPortraitRawImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mPortraitRawImageReader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method

.method private closePreviewImageReader()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewImageReader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method

.method private closeRawImageReader()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method

.method private closeVideoSnapshotImageReader()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method

.method private configMaxParallelRequestNumber()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder(Z)Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2
    sget-boolean v2, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOooO:Z

    const/4 v3, 0x5

    if-eqz v2, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00000OO()I

    move-result v1

    goto :goto_0

    .line 5
    :cond_1
    sget-wide v4, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v6, 0x4

    cmp-long v2, v4, v6

    if-gez v2, :cond_2

    sget-boolean v2, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooooo0:Z

    if-nez v2, :cond_2

    sget-boolean v2, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooooo:Z

    if-nez v2, :cond_2

    sget-boolean v2, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OoooooO:Z

    if-nez v2, :cond_2

    sget-boolean v2, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Ooooooo:Z

    if-nez v2, :cond_2

    sget-boolean v2, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->ooOO:Z

    if-nez v2, :cond_2

    sget-boolean v2, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0O:Z

    if-nez v2, :cond_2

    sget-boolean v2, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0OoOo0:Z

    if-nez v2, :cond_2

    .line 6
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v4, "set prNum = 1 for <4G memory device"

    invoke-static {v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_2
    sget-wide v1, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v4, 0x6

    cmp-long v1, v1, v4

    if-gez v1, :cond_3

    .line 8
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00oO0o()I

    move-result v1

    if-gez v1, :cond_4

    .line 9
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00000OO()I

    move-result v2

    if-lez v2, :cond_4

    if-ge v2, v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00000OO()I

    move-result v1

    :cond_4
    :goto_0
    const/4 v2, 0x4

    .line 11
    sget-object v4, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configMaxParallelRequestNumber: prNum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_5

    move v3, v1

    .line 12
    :cond_5
    invoke-virtual {v0, v3}, Lcom/android/camera/LocalParallelService$LocalBinder;->configMaxParallelRequestNumber(I)V

    :cond_6
    return-void
.end method

.method private createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 1
    invoke-static {p1}, Lcom/xiaomi/compat/camera2/CaptureRequestCompat;->getTargets(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/Collection;

    move-result-object v0

    .line 2
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    .line 3
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createHighSpeedRequestList() fpsRange = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0x1e

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo0O()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    const/16 v3, 0x78

    .line 6
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v6, v3, :cond_1

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v6, v3, :cond_1

    .line 7
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getHighSpeedVideoConfigs(Lcom/android/camera2/CameraCapabilities;)[Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 9
    array-length v6, v3

    move v7, v4

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v3, v7

    .line 10
    invoke-virtual {v8}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsMax()I

    move-result v9

    if-ne v1, v9, :cond_0

    invoke-virtual {v8}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getFpsMin()I

    move-result v9

    if-ne v1, v9, :cond_0

    invoke-virtual {v8}, Landroid/hardware/camera2/params/HighSpeedVideoConfiguration;->getBatchSizeMax()I

    move-result v8

    if-ne v8, v5, :cond_0

    const/4 v2, 0x4

    .line 11
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Qualcomm platform enable super buffer mode for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fps."

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    move v2, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 12
    :cond_1
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v3, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-static {p1}, Lcom/xiaomi/compat/camera2/CaptureRequestCompat;->getCaptureRequestNativeCopy(Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    const/4 v6, -0x1

    .line 14
    invoke-static {v3, v4, v6, p1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->constructCaptureRequestBuilder(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILandroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 16
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/Surface;

    .line 17
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v5, :cond_2

    invoke-static {v8}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 18
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 20
    invoke-virtual {v3, v9, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_2

    .line 21
    :cond_2
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 22
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 23
    invoke-virtual {v3, v9, v11}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 24
    :goto_2
    invoke-static {v3, v5}, Lcom/xiaomi/compat/camera2/CaptureRequestCompat;->setPartOfCHSRequestList(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    const/4 v9, 0x0

    .line 25
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v11, 0x2

    if-ne v0, v11, :cond_4

    .line 26
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-static {p1}, Lcom/xiaomi/compat/camera2/CaptureRequestCompat;->getCaptureRequestNativeCopy(Landroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 27
    invoke-static {v0, v4, v6, p1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->constructCaptureRequestBuilder(Landroid/hardware/camera2/impl/CameraMetadataNative;ZILandroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v9

    .line 28
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 29
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 30
    invoke-virtual {v9, p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v9, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 32
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    .line 33
    invoke-virtual {v9, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 34
    invoke-static {v9, v5}, Lcom/xiaomi/compat/camera2/CaptureRequestCompat;->setPartOfCHSRequestList(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 35
    invoke-static {v8}, Landroid/hardware/camera2/utils/SurfaceUtils;->isSurfaceForHwVideoEncoder(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v8, p1

    .line 36
    :cond_3
    invoke-virtual {v3, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_3

    .line 37
    :cond_4
    invoke-virtual {v3, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :goto_3
    if-ge v4, v2, :cond_6

    if-nez v4, :cond_5

    if-eqz v9, :cond_5

    .line 38
    invoke-virtual {v9}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 39
    :cond_5
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 40
    :cond_6
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 41
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Input capture request must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private disableSat()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "disableSat: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySmoothTransition(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    .line 4
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "disableSat: X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private genSessionId()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateSessionId: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget v0, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    return v0
.end method

.method private getCaptureInterval()J
    .locals 7

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0000OOo()J

    move-result-wide v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera2/MiCamera2;->mCaptureTime:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v2

    const-wide/16 v3, 0x320

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isHDRCheckerEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    add-long/2addr v0, v3

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelFront32MPOn()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v5, 0x258

    add-long/2addr v0, v5

    .line 5
    :cond_2
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isSingleBokehEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    add-long/2addr v0, v3

    .line 6
    :cond_3
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCaptureInterval: return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_4

    goto :goto_0

    :cond_4
    move-wide v0, v2

    :goto_0
    return-wide v0
.end method

.method private getExposureTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getExposureTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private getMaxImageBufferSize()I
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0ooOOo()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->ooOO()I

    move-result v0

    return v0

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isFacingFront()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0ooOoO()I

    move-result v0

    return v0

    .line 6
    :cond_1
    iget v0, p0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    return v0
.end method

.method private getRemoteSurface(I)Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mParallelSpecList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getImageReader()Landroid/media/ImageReader;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private initFocusRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_4

    const/16 v0, 0xa6

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initFocusRequestBuilder: error caller for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->initRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->isHighSpeedRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 7
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mHighSpeedFpsRange:Landroid/util/Range;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    invoke-static {v0, v1}, Lcom/xiaomi/compat/camera2/CaptureRequestCompat;->containsTarget(Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 10
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CaptureSessionConfigurations;)V

    return-object p1

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Module index is error!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initHelperHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera2/MiCamera2$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera2/MiCamera2$1;-><init>(Lcom/android/camera2/MiCamera2;Landroid/os/Looper;)V

    return-object v0
.end method

.method private initRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xac

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd6

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd0

    if-eq p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private isAllCaptureShutterReturned()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/MiCamera2Shot;

    .line 3
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2Shot;->isShutterReturned()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "shot shutter is not return"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_2
    return v1
.end method

.method private isDeviceAlive()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/camera2/MiCamera2;->mCurrentFrameNum:J

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/camera2/MiCamera2;->mLastFrameNum:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera device maybe dead, current framenum is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/camera2/MiCamera2;->mLastFrameNum:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/android/camera2/MiCamera2;->mCurrentFrameNum:J

    iput-wide v0, p0, Lcom/android/camera2/MiCamera2;->mLastFrameNum:J

    const/4 v0, 0x1

    return v0
.end method

.method private isHighSpeedRecording()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    instance-of v0, v0, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SMVR_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v0, v3}, Lcom/android/camera2/CaptureSessionConfigurations;->get(Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method private isLocalParallelServiceReady()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mEnableParallelSession:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    if-eqz v0, :cond_0

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

.method private lockFocus()V
    .locals 5

    const-string v0, "lockFocus"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getFocusTask()Lcom/android/camera/module/loader/camera2/FocusTask;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->useLegacyFlashStrategy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iput v3, p0, Lcom/android/camera2/MiCamera2;->mFocusLockRequestHashCode:I

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0, v2}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    return-void

    .line 5
    :cond_1
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 7
    iget-object v4, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 8
    iget-boolean v4, p0, Lcom/android/camera2/MiCamera2;->mScanIn3A:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getPreviewImageReader()Landroid/media/ImageReader;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 10
    :cond_2
    invoke-direct {p0, v0, v3}, Lcom/android/camera2/MiCamera2;->applySettingsForLockFocus(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 11
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v3

    iput v3, p0, Lcom/android/camera2/MiCamera2;->mFocusLockRequestHashCode:I

    .line 13
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v3, v2}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    .line 14
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->showAutoFocusStart()V

    .line 15
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I

    .line 16
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->useLegacyFlashStrategy()Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-direct {p0, v1}, Lcom/android/camera2/MiCamera2;->setAFModeToPreview(I)V

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 19
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 20
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    .line 21
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->useLegacyFlashStrategy()Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/16 v2, 0xfa0

    goto :goto_0

    :cond_4
    const-wide/16 v2, 0xbb8

    .line 22
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 23
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x6

    .line 24
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private lockFocusInCAF(Z)Z
    .locals 5

    const-string v0, "lockFocusInCAF"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    .line 5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    .line 6
    invoke-static {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->access$1100(Lcom/android/camera2/MiCamera2$PictureCaptureCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_2

    return v1

    .line 8
    :cond_2
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 9
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 10
    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2;->mScanIn3A:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getPreviewImageReader()Landroid/media/ImageReader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 12
    :cond_3
    invoke-direct {p0, v0, v3}, Lcom/android/camera2/MiCamera2;->applySettingsForLockFocus(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    if-eqz p1, :cond_4

    .line 13
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "lockFocusInCAF lock!"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 14
    :cond_4
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "lockFocusInCAF unlock!"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 16
    :goto_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {p0, p1, v0, v2, v4}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v0, 0x6

    .line 18
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    return v1

    .line 19
    :cond_5
    :goto_1
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "should call this in CAF!"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private needOptimizedFlash()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isNeedFlash()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    const/16 v2, 0x6a

    if-eq v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getExposureTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->useLegacyFlashStrategy()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private needScreenLight()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isNeedFlash()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private needUnlockFocusAfterCapture()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->useLegacyFlashStrategy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 2
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 4
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyCaptureBusyCallback(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->enableSat()V

    .line 5
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureBusyCallback:Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 7
    invoke-interface {v0, p1}, Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;->onCaptureCompleted(Z)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureBusyCallback:Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private prepareDepthImageReader(Lcom/android/camera/CameraSize;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->closeDepthImageReader()V

    .line 2
    new-instance v0, Lcom/android/camera2/MiCamera2$6;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2$6;-><init>(Lcom/android/camera2/MiCamera2;)V

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    div-int/2addr p1, v2

    const v3, 0x20363159

    invoke-static {v1, p1, v3, v2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mDepthReader:Landroid/media/ImageReader;

    .line 4
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private preparePhotoImageReader()V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 5
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getPhotoFormat()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 6
    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getPhotoMaxImages()I

    move-result v2

    .line 7
    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera2/MiCamera2;->preparePhotoImageReader(Lcom/android/camera/CameraSize;II)V

    return-void
.end method

.method private preparePhotoImageReader(Lcom/android/camera/CameraSize;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->closePhotoImageReader()V

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    invoke-static {v0, p1, p2, p3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mPhotoImageReader:Landroid/media/ImageReader;

    .line 3
    new-instance p2, Lcom/android/camera2/MiCamera2$2;

    invoke-direct {p2, p0}, Lcom/android/camera2/MiCamera2$2;-><init>(Lcom/android/camera2/MiCamera2;)V

    iget-object p3, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private preparePortraitRawImageReader(Lcom/android/camera/CameraSize;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->closePortraitRawImageReader()V

    .line 2
    new-instance v0, Lcom/android/camera2/MiCamera2$7;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2$7;-><init>(Lcom/android/camera2/MiCamera2;)V

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    const/16 v2, 0x100

    const/4 v3, 0x2

    invoke-static {v1, p1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mPortraitRawImageReader:Landroid/media/ImageReader;

    .line 4
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private preparePreviewImageReader()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewFormat()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 2
    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getPreviewMaxImages()I

    move-result v2

    .line 3
    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera2/MiCamera2;->preparePreviewImageReader(Lcom/android/camera/CameraSize;II)V

    return-void
.end method

.method private preparePreviewImageReader(Lcom/android/camera/CameraSize;II)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->closePreviewImageReader()V

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    invoke-static {v0, p1, p2, p3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewImageReader:Landroid/media/ImageReader;

    .line 6
    new-instance p2, LOooO00o/OooO0O0/OooO0O0/OooO0o0;

    invoke-direct {p2, p0}, LOooO00o/OooO0O0/OooO0O0/OooO0o0;-><init>(Lcom/android/camera2/MiCamera2;)V

    iget-object p3, p0, Lcom/android/camera2/MiCamera2;->mCameraPreviewHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private prepareRawImageReader(Lcom/android/camera/CameraSize;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    .line 2
    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    .line 3
    invoke-virtual {v0}, Landroid/media/ImageReader;->getMaxImages()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->closeRawImageReader()V

    .line 5
    :cond_1
    new-instance v0, Lcom/android/camera2/MiCamera2$3;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2$3;-><init>(Lcom/android/camera2/MiCamera2;)V

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    const/16 v2, 0x20

    invoke-static {v1, p1, v2, p2}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    .line 7
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private prepareRawImageWriter(Lcom/android/camera/CameraSize;Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mRawImageWriter:Landroid/media/ImageWriter;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/media/ImageWriter;->close()V

    .line 3
    :cond_0
    new-instance p1, Lcom/android/camera2/MiCamera2$4;

    invoke-direct {p1, p0}, Lcom/android/camera2/MiCamera2$4;-><init>(Lcom/android/camera2/MiCamera2;)V

    const/4 v0, 0x2

    .line 4
    invoke-static {p2, v0}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera2/MiCamera2;->mRawImageWriter:Landroid/media/ImageWriter;

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1, v0}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    return-void
.end method

.method private prepareRemoteImageReader()Landroid/util/SparseArray;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSATSubCameraIds()[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v1

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportParallelCameraDevice(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/camera2/MiCamera2;->mEnableParallelSnapshot:Z

    if-eqz v3, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v1

    :goto_1
    const/4 v3, 0x4

    .line 3
    sget-object v4, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SAT]prepareRemoteImageReader: isUseParallelVtCam = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOOOO0()Z

    move-result v3

    if-nez v3, :cond_3

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->oo00o()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v10, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v10, v2

    .line 6
    :goto_3
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getMaxImageBufferSize()I

    move-result v3

    iput v3, p0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    .line 7
    new-instance v11, Lcom/android/camera2/imagereaders/ImageReaderParam;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    iget v9, p0, Lcom/android/camera2/MiCamera2;->mMaxImageBufferSize:I

    move-object v3, v11

    move v8, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/camera2/imagereaders/ImageReaderParam;-><init>(ILcom/android/camera2/CameraConfigs;ZZZI)V

    .line 8
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedHdrType(Lcom/android/camera2/CameraCapabilities;)I

    move-result v3

    invoke-virtual {v11, v3}, Lcom/android/camera2/imagereaders/ImageReaderParam;->setHdrType(I)V

    .line 9
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviNightModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    invoke-virtual {v11, v3}, Lcom/android/camera2/imagereaders/ImageReaderParam;->setMiviNightModeSupported(Z)V

    if-nez v10, :cond_4

    .line 10
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviSatSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    invoke-virtual {v11, v3}, Lcom/android/camera2/imagereaders/ImageReaderParam;->setNeedMultipleRaw(Z)V

    .line 11
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isQcfaEnable()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->alwaysUseRemosaicSize()Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    move v3, v1

    :goto_5
    invoke-virtual {v11, v3}, Lcom/android/camera2/imagereaders/ImageReaderParam;->setNeedQcfa(Z)V

    .line 12
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isQcfaMode(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    invoke-virtual {v11, v3}, Lcom/android/camera2/imagereaders/ImageReaderParam;->setQcfaMode(Z)V

    .line 13
    invoke-virtual {v11, v0}, Lcom/android/camera2/imagereaders/ImageReaderParam;->setSatCameraIds([I)V

    .line 14
    iget v0, p0, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    invoke-virtual {v11, v0}, Lcom/android/camera2/imagereaders/ImageReaderParam;->setRawCallbackType(I)V

    .line 15
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isFacingFront()Z

    move-result v0

    invoke-virtual {v11, v0}, Lcom/android/camera2/imagereaders/ImageReaderParam;->setFacingFront(Z)V

    .line 16
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getFusionPhysicalIds(Lcom/android/camera2/CameraCapabilities;)[I

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/camera2/imagereaders/ImageReaderParam;->setMTKFusionPhysicalId([I)V

    .line 17
    new-instance v0, Lcom/android/camera2/imagereaders/ImageReaderHandlerManager;

    invoke-direct {v0, v11}, Lcom/android/camera2/imagereaders/ImageReaderHandlerManager;-><init>(Lcom/android/camera2/imagereaders/ImageReaderParam;)V

    .line 18
    invoke-virtual {v0}, Lcom/android/camera2/imagereaders/ImageReaderHandlerManager;->getChainHandler()Lcom/android/camera2/imagereaders/ImageReaderHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/shottype/ChainHandler;->handle()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/imagereaders/ImageReaderSurface;

    if-nez v0, :cond_6

    .line 19
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "could not get surfaces"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0

    .line 21
    :cond_6
    invoke-virtual {v0}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->getAllSpecs()Landroid/util/SparseArray;

    move-result-object v0

    if-nez v0, :cond_7

    .line 22
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "could not get surface spec"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0

    .line 24
    :cond_7
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder(Z)Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v2

    if-nez v2, :cond_a

    .line 25
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "prepareRemoteImageReader: ParallelService is not ready"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :goto_6
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 27
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    .line 28
    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->isNeedImageReader()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 29
    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getParam()Lcom/xiaomi/protocol/IImageReaderParameterSets;

    move-result-object v3

    .line 30
    iget v4, v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;->width:I

    iget v5, v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;->height:I

    iget v6, v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;->format:I

    iget v3, v3, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    invoke-static {v4, v5, v6, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->setImageReader(Landroid/media/ImageReader;)V

    .line 32
    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getAliasIndex()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    .line 33
    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getAliasIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    .line 34
    invoke-virtual {v4, v3}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->setImageReader(Landroid/media/ImageReader;)V

    .line 35
    :cond_8
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mDeferImageReaderList:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 36
    :cond_9
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mDeferImageReaderList:Landroid/util/SparseArray;

    return-object v0

    .line 37
    :cond_a
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/camera/LocalParallelService$LocalBinder;->configCaptureOutputBuffer(Landroid/util/SparseArray;II)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 38
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_b

    return-object v0

    .line 39
    :cond_b
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Config capture output buffer failed!"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x6

    .line 41
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private prepareVideoSnapshotImageReader(Lcom/android/camera/CameraSize;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->closeVideoSnapshotImageReader()V

    .line 2
    new-instance v0, Lcom/android/camera2/MiCamera2$5;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2$5;-><init>(Lcom/android/camera2/MiCamera2;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    const/16 v2, 0x100

    const/4 v3, 0x2

    invoke-static {v1, p1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    .line 4
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method private replaceCorrectShot(Landroid/media/Image;)Lcom/android/camera2/MiCamera2Shot;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/MiCamera2Shot;

    .line 4
    instance-of v2, v1, Lcom/android/camera2/MiCamera2ShotStill;

    if-eqz v2, :cond_0

    .line 5
    move-object v2, v1

    check-cast v2, Lcom/android/camera2/MiCamera2ShotStill;

    .line 6
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2ShotStill;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-object v1

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/MiCamera2Shot;

    return-object p1
.end method

.method private reset()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "E: reset"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 7
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    .line 8
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mZoomMapSurface:Landroid/view/Surface;

    .line 9
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mDeferPreviewSurface:Landroid/view/Surface;

    .line 10
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    .line 12
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mPhotoImageReader:Landroid/media/ImageReader;

    .line 13
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    .line 14
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewImageReader:Landroid/media/ImageReader;

    .line 15
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    .line 16
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mDepthReader:Landroid/media/ImageReader;

    .line 17
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mPortraitRawImageReader:Landroid/media/ImageReader;

    .line 18
    invoke-virtual {p0, v1}, Lcom/android/camera2/MiCamera2;->releaseCameraPreviewCallback(Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    const-string v0, "reset"

    .line 19
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->resetShotQueue(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/android/camera/MemoryHelper;->clear()V

    .line 21
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "X: reset"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private resetShotQueue(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetShotQueue !!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " size:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/MiCamera2Shot;

    .line 6
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Shot;->makeClobber()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->notifyCaptureBusyCallback(Z)V

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private runCaptureSequence()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->showAutoFocusFinish(Z)V

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getExposureTime()J

    move-result-wide v0

    sget-wide v2, Lcom/android/camera/CameraSettings;->sManualFlashTorchThreshold:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->waitFlashClosed()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->captureStillPicture()V

    :goto_0
    return-void
.end method

.method private runPreCaptureSequence()V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "runPreCaptureSequence"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 4
    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2;->mScanIn3A:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getPreviewImageReader()Landroid/media/ImageReader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 6
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera2/MiCamera2;->applySettingsForPreCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 7
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v2

    iput v2, p0, Lcom/android/camera2/MiCamera2;->mPreCaptureRequestHashCode:I

    .line 9
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v2, v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    .line 10
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 11
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_1
    return-void
.end method

.method private setAFModeToPreview(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAFModeToPreview: focusMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CaptureSessionConfigurations;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    return-void
.end method

.method private setVideoRecordControl(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoRecordControl: Enter with -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 3
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "unknown control value for video control"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 9
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 12
    :cond_4
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 13
    sget-object v1, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VIDEO_RECORD_CONTROL:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I

    move-result v0

    .line 15
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVideoRecordControl: Exit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", reqId->"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startPreviewSessionImpl(Landroid/view/Surface;IILandroid/view/Surface;IZZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;I)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    const-string v7, "startPreviewSession"

    .line 1
    invoke-direct {v1, v7}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v7, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/lang/Object;

    .line 3
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v10, v13

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v14, 0x2

    aput-object v11, v10, v14

    const-string v11, "startPreviewSession: operatingMode=0x%x previewCallback=%d rawCallbackType=%d"

    .line 4
    invoke-static {v8, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x4

    invoke-static {v10, v7, v8}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    .line 5
    iput-boolean v6, v1, Lcom/android/camera2/MiCamera2;->mEnableParallelSession:Z

    move/from16 v7, p7

    .line 6
    iput-boolean v7, v1, Lcom/android/camera2/MiCamera2;->mEnableParallelSnapshot:Z

    move-object/from16 v7, p1

    .line 7
    iput-object v7, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    .line 8
    iput-object v4, v1, Lcom/android/camera2/MiCamera2;->mZoomMapSurface:Landroid/view/Surface;

    .line 9
    iput v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    .line 10
    iput v3, v1, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    .line 11
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->genSessionId()I

    move-result v7

    iput v7, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    .line 12
    iget-object v7, v1, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v7

    .line 13
    :try_start_0
    iget-object v8, v1, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 14
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 15
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 17
    :try_start_1
    sget-object v15, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/Scheduler;

    new-instance v11, LOooO00o/OooO0O0/OooO0O0/OooO0Oo;

    invoke-direct {v11, v1, v6, v8, v5}, LOooO00o/OooO0O0/OooO0O0/OooO0Oo;-><init>(Lcom/android/camera2/MiCamera2;ZLjava/util/List;I)V

    invoke-virtual {v15, v11}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 18
    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    move/from16 v11, p9

    invoke-virtual {v6, v11}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v6

    iput-object v6, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 19
    invoke-direct {v1, v6}, Lcom/android/camera2/MiCamera2;->applySettingsForPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 20
    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v11, 0x0

    .line 21
    :try_start_2
    iput-object v11, v1, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 22
    iput-boolean v13, v1, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    .line 23
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 24
    :try_start_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-lez v2, :cond_1

    .line 25
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    iget-object v15, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v15}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewFormat()I

    move-result v15

    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 26
    invoke-virtual {v11}, Lcom/android/camera2/CameraConfigs;->getPreviewMaxImages()I

    move-result v11

    .line 27
    invoke-direct {v1, v2, v15, v11}, Lcom/android/camera2/MiCamera2;->preparePreviewImageReader(Lcom/android/camera/CameraSize;II)V

    .line 28
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v11}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v11

    invoke-direct {v2, v11}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v15, "startPreviewSession: add PreviewImageReader configuration: format=0x%x size=%dx%d"

    new-array v10, v9, [Ljava/lang/Object;

    iget-object v9, v1, Lcom/android/camera2/MiCamera2;->mPreviewImageReader:Landroid/media/ImageReader;

    .line 30
    invoke-virtual {v9}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v12

    iget-object v9, v1, Lcom/android/camera2/MiCamera2;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v9}, Landroid/media/ImageReader;->getWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v13

    iget-object v9, v1, Lcom/android/camera2/MiCamera2;->mPreviewImageReader:Landroid/media/ImageReader;

    .line 31
    invoke-virtual {v9}, Landroid/media/ImageReader;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v14

    .line 32
    invoke-static {v11, v15, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    invoke-static {v10, v2, v9}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_1
    iget v2, v1, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    and-int/2addr v2, v13

    const/16 v9, 0x20

    if-nez v2, :cond_2

    iget v2, v1, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    and-int/2addr v2, v14

    if-eqz v2, :cond_4

    :cond_2
    if-ne v3, v13, :cond_3

    move v2, v14

    goto :goto_0

    :cond_3
    const/16 v2, 0xa

    .line 34
    :goto_0
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/android/camera2/MiCamera2;->prepareRawImageReader(Lcom/android/camera/CameraSize;I)V

    .line 35
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v10, "startPreviewSession: add RawImageReader configuration: format=0x%x size=%dx%d"

    const/4 v11, 0x3

    new-array v15, v11, [Ljava/lang/Object;

    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    .line 37
    invoke-virtual {v11}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v15, v12

    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v11}, Landroid/media/ImageReader;->getWidth()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v15, v13

    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    .line 38
    invoke-virtual {v11}, Landroid/media/ImageReader;->getHeight()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v15, v14

    .line 39
    invoke-static {v3, v10, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x4

    invoke-static {v10, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 40
    iget v2, v1, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    and-int/2addr v2, v14

    if-eqz v2, :cond_4

    .line 41
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    iget v2, v2, Lcom/android/camera/CameraSize;->width:I

    .line 42
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object v3

    iget v3, v3, Lcom/android/camera/CameraSize;->height:I

    .line 43
    new-instance v10, Landroid/hardware/camera2/params/InputConfiguration;

    invoke-direct {v10, v2, v3, v9}, Landroid/hardware/camera2/params/InputConfiguration;-><init>(III)V

    .line 44
    sget-object v11, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v14, "startPreviewSession: setup input configuration: format=0x%x size=%dx%d"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    .line 45
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v13, v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v16, 0x1

    aput-object v2, v13, v16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v13, v3

    .line 46
    invoke-static {v15, v14, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v11, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    :goto_1
    if-eqz v4, :cond_5

    .line 47
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v2, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v11, "startPreviewSession: add zoomMapSurface configuration: format=0x%x size=%s"

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    .line 49
    invoke-static/range {p4 .. p4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v14, v12

    .line 50
    invoke-static/range {p4 .. p4}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x1

    aput-object v4, v14, v13

    .line 51
    invoke-static {v3, v11, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_5
    new-instance v2, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    iget v3, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    move-object/from16 v4, p8

    invoke-direct {v2, v1, v3, v4}, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iput-object v2, v1, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    .line 53
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    if-nez v2, :cond_7

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    .line 55
    new-instance v3, Landroid/graphics/SurfaceTexture;

    invoke-direct {v3, v12}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    iput-object v3, v1, Lcom/android/camera2/MiCamera2;->mFakeOutputTexture:Landroid/graphics/SurfaceTexture;

    .line 56
    iget-boolean v4, v1, Lcom/android/camera2/MiCamera2;->mSetRepeatingEarly:Z

    if-eqz v4, :cond_6

    .line 57
    iget v4, v2, Lcom/android/camera/CameraSize;->width:I

    iget v11, v2, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v3, v4, v11}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 58
    new-instance v3, Landroid/view/Surface;

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mFakeOutputTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v3, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 59
    new-instance v4, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v4, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 60
    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->enableSurfaceSharing()V

    .line 61
    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v11, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_2

    .line 62
    :cond_6
    new-instance v4, Landroid/hardware/camera2/params/OutputConfiguration;

    new-instance v3, Landroid/util/Size;

    iget v11, v2, Lcom/android/camera/CameraSize;->width:I

    iget v13, v2, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {v3, v11, v13}, Landroid/util/Size;-><init>(II)V

    const-class v11, Landroid/view/SurfaceHolder;

    invoke-direct {v4, v3, v11}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/util/Size;Ljava/lang/Class;)V

    .line 63
    :goto_2
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 64
    :try_start_4
    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    new-instance v13, Lcom/android/camera2/imagereaders/OutputConfigurationSpec;

    const/16 v14, 0x64

    invoke-direct {v13, v14, v4}, Lcom/android/camera2/imagereaders/OutputConfigurationSpec;-><init>(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    invoke-interface {v11, v12, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 65
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    :try_start_5
    invoke-interface {v7, v12, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 67
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startPreviewSession: first add PreviewSurface configuration: size="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Lcom/android/camera/CameraSize;->width:I

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "x"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4, v3, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 68
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2

    .line 69
    :cond_7
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-direct {v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v7, v12, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 70
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 71
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "startPreviewSession: add PreviewSurface configuration: format=0x%x size=%s"

    const/4 v11, 0x2

    new-array v13, v11, [Ljava/lang/Object;

    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    .line 72
    invoke-static {v11}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v13, v12

    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    .line 73
    invoke-static {v11}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x1

    aput-object v11, v13, v14

    .line 74
    invoke-static {v3, v4, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->applyAiShutterIfNeed()V

    .line 76
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    .line 77
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getCaptureIntent()I

    move-result v3

    if-lez v3, :cond_8

    .line 78
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getCaptureIntent()I

    move-result v2

    .line 79
    :cond_8
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v4, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->APP_MODULE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v4, v11}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 80
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v3, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyAppModule(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 81
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 82
    iget v2, v1, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    if-eqz v2, :cond_9

    iget v2, v1, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    and-int/2addr v2, v9

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 83
    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isZslEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_4

    :cond_a
    move v2, v12

    :goto_4
    if-eqz v2, :cond_b

    .line 84
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "turns capture.zsl.mode on"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->ZSL_CAPTURE_MODE:Lcom/android/camera2/vendortag/VendorTag;

    const/4 v4, 0x1

    .line 86
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    .line 87
    invoke-virtual {v2, v3, v9}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 88
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v2, v4}, Lcom/android/camera2/compat/MiCameraCompat;->applyZsd(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 89
    :cond_b
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "turns PQ feature on"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_CONFIGURE_SETTING_PROPRIETARY:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v4, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_CONFIGURE_SETTING_PROPRIETARY_ON:[I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 91
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyPqFeature(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 92
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getmMtkPipDevices()[I

    move-result-object v2

    if-eqz v2, :cond_c

    .line 93
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v2, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyMtkPipDevices(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 94
    :cond_c
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "turns SAT crop region feature on"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    if-eqz v2, :cond_d

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v2

    goto :goto_5

    :cond_d
    const/high16 v2, 0x3f800000    # 1.0f

    .line 96
    :goto_5
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getActiveArraySize(Lcom/android/camera2/CameraCapabilities;)Landroid/graphics/Rect;

    move-result-object v3

    .line 97
    invoke-static {v2, v3}, Lcom/android/camera/HybridZoomingSystem;->toMTKCropRegion(FLandroid/graphics/Rect;)[I

    move-result-object v2

    .line 98
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v4, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_MULTI_CAM_CONFIG_SCALER_CROP_REGION:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v3, v4, v2}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 99
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v3, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyCropFeature(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->applyMtkQuickPreview()V

    .line 101
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00o0o0O()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_f

    const v2, 0x8002

    if-eq v5, v2, :cond_e

    const v2, 0x9000

    if-ne v5, v2, :cond_f

    :cond_e
    const/4 v2, 0x1

    goto :goto_7

    .line 102
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->isInMultiSurfaceSatMode()Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_6

    :cond_10
    move v2, v3

    goto :goto_7

    :cond_11
    :goto_6
    move v2, v12

    :goto_7
    if-eq v2, v3, :cond_12

    .line 103
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "applyFeatureMode: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v4, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_MULTI_CAM_FEATURE_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 105
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v3, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyFeatureMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 106
    :cond_12
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OO0ooo()Z

    move-result v2

    if-eqz v2, :cond_13

    const v2, 0x8008

    if-eq v5, v2, :cond_13

    .line 107
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "turns tuning buffer on"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CONTROL_CAPTURE_ISP_META_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    const/4 v4, 0x2

    .line 109
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    .line 110
    invoke-virtual {v2, v3, v4}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 111
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspMetaEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 112
    :cond_13
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mLockPrepareRemote:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2

    .line 113
    :try_start_8
    iget-boolean v3, v1, Lcom/android/camera2/MiCamera2;->mPreParedRemote:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez v3, :cond_14

    .line 114
    :try_start_9
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mLockPrepareRemote:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 115
    :catch_0
    :cond_14
    :try_start_a
    iput-boolean v12, v1, Lcom/android/camera2/MiCamera2;->mPreParedRemote:Z

    .line 116
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 117
    :try_start_b
    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 119
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPreviewSession: setup output configuration number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 121
    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cameraOpened2createCaptureSession@"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 124
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createCaptureSession@"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 125
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 126
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    iget-object v8, v1, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    iget-object v9, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    move/from16 v3, p5

    move-object v4, v10

    move-object v5, v7

    move-object v7, v8

    move-object v8, v9

    .line 127
    invoke-static/range {v2 .. v8}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_b
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_c

    :catchall_1
    move-exception v0

    move-object v3, v0

    .line 128
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v3

    .line 129
    :cond_15
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_19

    .line 130
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->supportPhysicCameraId(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 131
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    const-string v3, "android.control.extendedSceneMode"

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->getExtendSceneMode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v2, v3, v4}, Lcom/android/camera2/CaptureRequestBuilder;->applyExtendSceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 133
    :cond_16
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedCinematicVideo(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 134
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CINEMATIC_VIDEO_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v4}, Lcom/android/camera2/CameraConfigs;->isCinematicVideoEnabled()Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v4, 0x1

    goto :goto_8

    :cond_17
    move v4, v12

    :goto_8
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 135
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v2, v3, v4}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicVideo(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 136
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getExtendedMaxZoomCaps(Lcom/android/camera2/CameraCapabilities;)F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_19

    .line 137
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->EXTENDED_MAX_ZOOM:Lcom/android/camera2/vendortag/VendorTag;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v3, v9}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 138
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2, v3, v4}, Lcom/android/camera2/CaptureRequestBuilder;->applyExtendedMaxZoom(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;I)V

    .line 139
    :cond_19
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportBokehRole(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 140
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->BOKEH_ROLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    const-string v9, "pref_ultra_wide_bokeh_enabled"

    invoke-virtual {v4, v9}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00ooOo0()Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_9

    :cond_1a
    const/16 v4, 0x3d

    goto :goto_a

    :cond_1b
    :goto_9
    const/16 v4, 0x3f

    :goto_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 141
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v2, v3, v4}, Lcom/android/camera2/CaptureRequestBuilder;->applyBokehRole(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 142
    :cond_1c
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportInsensorZoom(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const v2, 0x9002

    if-ne v5, v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_b

    :cond_1d
    move v2, v12

    .line 143
    :goto_b
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v4, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->INSENSORZOOM_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 144
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v3, v4, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyInsensorZoomEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;I)V

    .line 145
    :cond_1e
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/camera2/CaptureRequestBuilder;->applySmoothTransition(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 146
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mLockPrepareRemote:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_2

    .line 147
    :try_start_e
    iget-boolean v3, v1, Lcom/android/camera2/MiCamera2;->mPreParedRemote:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-nez v3, :cond_1f

    .line 148
    :try_start_f
    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mLockPrepareRemote:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 149
    :catch_1
    :cond_1f
    :try_start_10
    iput-boolean v12, v1, Lcom/android/camera2/MiCamera2;->mPreParedRemote:Z

    .line 150
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 151
    :try_start_11
    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 152
    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 153
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPreviewSession: setup output configuration number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 155
    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cameraOpened2createCaptureSession@"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 158
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createCaptureSession@"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 159
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 160
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    iget-object v8, v1, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    iget-object v9, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    move/from16 v3, p5

    move-object v4, v10

    move-object v5, v7

    move-object v7, v8

    move-object v8, v9

    .line 161
    invoke-static/range {v2 .. v8}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_11
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_2

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v3, v0

    .line 162
    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    throw v3
    :try_end_13
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_2

    :catchall_3
    move-exception v0

    move-object v2, v0

    .line 163
    :try_start_14
    monitor-exit v6
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :try_start_15
    throw v2
    :try_end_15
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_15 .. :try_end_15} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_2

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 164
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start preview session: IAE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, 0x100

    .line 165
    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_c

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 166
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start preview session: ISE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, 0x100

    .line 167
    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_c

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 168
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start preview session: CAE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    .line 170
    :goto_c
    sget-boolean v2, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->isParallelTagOpen:Z

    if-eqz v2, :cond_20

    .line 171
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v2

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-virtual {v2, v3}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->setParallelSessionConfig(Lcom/android/camera2/CaptureSessionConfigurations;)V

    :cond_20
    return-void

    :catchall_4
    move-exception v0

    move-object v2, v0

    .line 172
    :try_start_16
    monitor-exit v7
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    throw v2
.end method

.method private triggerCapture()V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedFlashOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isNeedFlashOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v2, 0x0

    const/4 v4, -0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(JIJLjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getMiviSuperNightMode()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isNeedFlashOn()Z

    move-result v5

    if-eqz v5, :cond_9

    if-nez v0, :cond_9

    .line 6
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v5, "trigger capture need flash"

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, v3}, Lcom/android/camera2/CameraConfigs;->setNeedFlash(Z)Z

    .line 8
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needOptimizedFlash()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v5, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 12
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportSnapShotTorch(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applySnapshotTorch(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportCustomFlashCurrent(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/16 v2, 0x6a

    if-ne v0, v2, :cond_5

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isFacingFront()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooOo0()I

    move-result v0

    goto :goto_1

    .line 17
    :cond_3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooOo()I

    move-result v0

    .line 18
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isFacingFront()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooOo0O()I

    move-result v2

    goto :goto_2

    .line 19
    :cond_4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooOo0o()I

    move-result v2

    .line 20
    :goto_2
    invoke-direct {p0, v0, v2}, Lcom/android/camera2/MiCamera2;->adjustFlashCurrent(II)V

    .line 21
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    move-result v0

    .line 22
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v2, v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setFlashFireRequestId(I)V

    .line 23
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    goto/16 :goto_3

    .line 24
    :cond_6
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needScreenLight()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 25
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getScreenLightCallback()Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;

    move-result-object v0

    .line 26
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0000OO()I

    move-result v1

    if-lez v1, :cond_7

    if-eqz v0, :cond_7

    .line 27
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getCurrentColorTemperature()I

    move-result v0

    const-string v1, "camera_screen_light_wb"

    .line 28
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 29
    invoke-static {v0}, Lcom/android/camera/Util;->getScreenLightColor(I)I

    move-result v0

    .line 30
    invoke-static {}, Lcom/android/camera/CameraSettings;->getScreenLightBrightness()I

    move-result v1

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera2/MiCamera2;->mLightScreenStartTime:J

    .line 32
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    .line 33
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    .line 35
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getScreenLightCallback()Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/android/camera2/Camera2Proxy$ScreenLightCallback;->startScreenLight(II)V

    goto :goto_3

    .line 36
    :cond_7
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    .line 38
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->triggerPrecapture()V

    goto :goto_3

    .line 39
    :cond_8
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->triggerPrecapture()V

    goto :goto_3

    .line 40
    :cond_9
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isMFAfAeLock()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 41
    invoke-direct {p0, v3}, Lcom/android/camera2/MiCamera2;->lockFocusInCAF(Z)Z

    .line 42
    invoke-virtual {p0, v3}, Lcom/android/camera2/MiCamera2;->setAWBLock(Z)V

    .line 43
    invoke-virtual {p0, v3, v3}, Lcom/android/camera2/MiCamera2;->lockExposure(ZZ)V

    .line 44
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OO00OO()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 45
    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 46
    :cond_a
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOo0Oo()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 47
    invoke-static {}, Lcom/android/camera/CameraSettings;->isProAmbilightOpen()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 48
    :cond_b
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    return-void

    .line 49
    :cond_c
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, v2}, Lcom/android/camera2/CameraConfigs;->setNeedFlash(Z)Z

    .line 50
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->captureStillPicture()V

    :goto_3
    return-void
.end method

.method private triggerDeviceChecking(ZZ)V
    .locals 3

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0oO:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00OoO0o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/camera2/MiCamera2;->FORCE_STOP_WATCHDOG:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerDeviceChecking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private triggerFlashStateTimeLock()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mSupportFlashTimeLock:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera2/MiCamera2;->mLastFlashTimeMillis:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xfa0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private triggerPrecapture()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getISO()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getExposureTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :goto_1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isAutoFocusSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 3
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getFocusMode()I

    move-result v1

    if-eqz v1, :cond_5

    .line 4
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v1

    const/16 v2, 0x6a

    if-ne v1, v2, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->lockFocus()V

    goto :goto_2

    .line 6
    :cond_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->oo0OOoo()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 7
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->runPreCaptureSequence()V

    goto :goto_2

    .line 8
    :cond_3
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needOptimizedFlash()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O0OoO()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    goto :goto_2

    .line 10
    :cond_4
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->lockFocus()V

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    .line 11
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->runPreCaptureSequence()V

    goto :goto_2

    .line 12
    :cond_6
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->runCaptureSequence()V

    :goto_2
    return-void
.end method

.method private unlockAfAeForMultiFrame()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isMFAfAeLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigs;->setMFAfAeLock(Z)V

    .line 3
    invoke-virtual {p0, v1}, Lcom/android/camera2/MiCamera2;->setAWBLock(Z)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->unlockExposure()V

    .line 5
    invoke-direct {p0, v1}, Lcom/android/camera2/MiCamera2;->lockFocusInCAF(Z)Z

    :cond_0
    return-void
.end method

.method private unlockFocusForCapture()V
    .locals 5

    const-string v0, "unlockFocusForCapture"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 5
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 7
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/android/camera2/MiCamera2;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 9
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-static {v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CaptureSessionConfigurations;)V

    .line 10
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I

    .line 11
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0, v1}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 13
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->isAELocked()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 14
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 16
    invoke-virtual {v0, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 19
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    .line 21
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFocusMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->setAFModeToPreview(I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 22
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unlock focus, IllegalState"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x100

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 24
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v1, 0x6

    .line 25
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unlockFocusForCapture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_0
    return-void
.end method

.method private useParallelVTCameraSnapshot(Z)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isInMultiSurfaceSatMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->isParallelSessionReady()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 3
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportParallelCameraDevice(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isParallelSupportedCaptureMode()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result p1

    const/4 v0, 0x2

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    if-ne p1, v2, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 7
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getHDRStatus()Lcom/android/camera2/Camera2Proxy$HDRStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy$HDRStatus;->isSuperResolutionHDR()Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->isSupportParallelHDREnable()Z

    move-result p1

    return p1

    :cond_5
    return v1
.end method

.method private waitFlashClosed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    .line 8
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/media/ImageReader;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getPreviewCallback()Lcom/android/camera2/Camera2Proxy$PreviewCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getDeviceOrientation()I

    move-result v0

    invoke-interface {v1, p1, p0, v0}, Lcom/android/camera2/Camera2Proxy$PreviewCallback;->onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_4

    .line 5
    iget v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getAnchorCallback()Lcom/android/camera2/Camera2Proxy$PreviewCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getDeviceOrientation()I

    move-result v1

    invoke-interface {v0, p1, p0, v1}, Lcom/android/camera2/Camera2Proxy$PreviewCallback;->onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    goto :goto_0

    .line 11
    :cond_4
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "oooh, someone close the image before anchor"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method

.method public synthetic OooO00o(ZLjava/util/List;I)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez p1, :cond_2

    .line 12
    iget-object v7, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v7}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 13
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->preparePhotoImageReader()V

    .line 14
    new-instance v7, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v8, v1, Lcom/android/camera2/MiCamera2;->mPhotoImageReader:Landroid/media/ImageReader;

    invoke-virtual {v8}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v7, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v3, [Ljava/lang/Object;

    iget-object v10, v1, Lcom/android/camera2/MiCamera2;->mPhotoImageReader:Landroid/media/ImageReader;

    .line 16
    invoke-virtual {v10}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    iget-object v10, v1, Lcom/android/camera2/MiCamera2;->mPhotoImageReader:Landroid/media/ImageReader;

    invoke-virtual {v10}, Landroid/media/ImageReader;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    iget-object v10, v1, Lcom/android/camera2/MiCamera2;->mPhotoImageReader:Landroid/media/ImageReader;

    .line 17
    invoke-virtual {v10}, Landroid/media/ImageReader;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    const-string v10, "startPreviewSession: add PhotoImageReader configuration: format=0x%x size=%dx%d"

    .line 18
    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v7, v8}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    sget-object v7, Lcom/android/camera/Util;->sIsDepthImageWithoutAlgoEnable:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 20
    invoke-virtual {v7}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v7

    if-eq v7, v5, :cond_1

    iget-object v7, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 21
    invoke-virtual {v7}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v7

    const/4 v8, -0x3

    if-ne v7, v8, :cond_c

    .line 22
    :cond_1
    iget-object v7, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v7}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/android/camera2/MiCamera2;->prepareDepthImageReader(Lcom/android/camera/CameraSize;)V

    .line 23
    new-instance v7, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v8, v1, Lcom/android/camera2/MiCamera2;->mDepthReader:Landroid/media/ImageReader;

    invoke-virtual {v8}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v7, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v9, v3, [Ljava/lang/Object;

    iget-object v10, v1, Lcom/android/camera2/MiCamera2;->mDepthReader:Landroid/media/ImageReader;

    .line 25
    invoke-virtual {v10}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    iget-object v10, v1, Lcom/android/camera2/MiCamera2;->mDepthReader:Landroid/media/ImageReader;

    invoke-virtual {v10}, Landroid/media/ImageReader;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    iget-object v10, v1, Lcom/android/camera2/MiCamera2;->mDepthReader:Landroid/media/ImageReader;

    .line 26
    invoke-virtual {v10}, Landroid/media/ImageReader;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    const-string v10, "startPreviewSession: add DepthReader configuration: format=0x%x size=%dx%d"

    .line 27
    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v7, v8}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v7, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v7}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/android/camera2/MiCamera2;->preparePortraitRawImageReader(Lcom/android/camera/CameraSize;)V

    .line 29
    new-instance v7, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v8, v1, Lcom/android/camera2/MiCamera2;->mPortraitRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v8}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/android/camera2/MiCamera2;->mPortraitRawImageReader:Landroid/media/ImageReader;

    .line 31
    invoke-virtual {v8}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v4

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mPortraitRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mPortraitRawImageReader:Landroid/media/ImageReader;

    .line 32
    invoke-virtual {v4}, Landroid/media/ImageReader;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "startPreviewSession: add PortraitRawImageReader configuration: format=0x%x size=%dx%d"

    .line 33
    invoke-static {v7, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 34
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->configMaxParallelRequestNumber()V

    .line 35
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->prepareRemoteImageReader()Landroid/util/SparseArray;

    move-result-object v7

    iput-object v7, v1, Lcom/android/camera2/MiCamera2;->mParallelSpecList:Landroid/util/SparseArray;

    .line 36
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->isLocalParallelServiceReady()Z

    move-result v7

    .line 37
    iget-object v8, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v8}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMtkIsp7(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v8

    .line 38
    sget-object v9, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startPreviewSessionImpl: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v9, v1, Lcom/android/camera2/MiCamera2;->mParallelSpecList:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    move v10, v4

    :goto_0
    if-ge v10, v9, :cond_c

    .line 40
    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mParallelSpecList:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    .line 41
    invoke-virtual {v11}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getParam()Lcom/xiaomi/protocol/IImageReaderParameterSets;

    move-result-object v12

    iget-boolean v12, v12, Lcom/xiaomi/protocol/IImageReaderParameterSets;->isParallel:Z

    if-nez v12, :cond_b

    invoke-virtual {v11}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->isNeedImageReader()Z

    move-result v12

    if-nez v12, :cond_3

    goto/16 :goto_6

    .line 42
    :cond_3
    invoke-virtual {v11}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getImageReader()Landroid/media/ImageReader;

    move-result-object v12

    invoke-virtual {v12}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v12

    .line 43
    invoke-virtual {v11}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getParam()Lcom/xiaomi/protocol/IImageReaderParameterSets;

    move-result-object v13

    .line 44
    new-instance v14, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v14, v12}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    if-eqz v8, :cond_4

    move v15, v3

    goto :goto_1

    :cond_4
    move v15, v5

    .line 45
    :goto_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v16

    const/16 v2, 0x1e

    if-eqz v16, :cond_5

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_5

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 46
    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->isParallelDualShotType()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 47
    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getFacing(Lcom/android/camera2/CameraCapabilities;)I

    move-result v3

    if-ne v3, v6, :cond_5

    if-ge v10, v15, :cond_5

    xor-int/lit8 v3, v8, 0x1

    .line 48
    invoke-virtual {v1, v13, v14, v3}, Lcom/android/camera2/MiCamera2;->setPhysicalCameraIdForPortrait(Lcom/xiaomi/protocol/IImageReaderParameterSets;Landroid/hardware/camera2/params/OutputConfiguration;Z)V

    if-eqz v8, :cond_6

    .line 49
    iget v3, v13, Lcom/xiaomi/protocol/IImageReaderParameterSets;->imageType:I

    if-ne v3, v5, :cond_6

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->getPhysicalBokehMainId()I

    move-result v3

    .line 51
    sget-object v4, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binds tuning output stream to camera "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setPhysicalCameraId(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)V

    goto :goto_2

    .line 53
    :cond_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_6

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 54
    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->isParallelDualShotType()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 55
    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->supportPhysicCameraId(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 56
    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getFacing(Lcom/android/camera2/CameraCapabilities;)I

    move-result v3

    if-ne v3, v6, :cond_6

    const/4 v3, 0x0

    .line 57
    invoke-virtual {v1, v13, v14, v3}, Lcom/android/camera2/MiCamera2;->setPhysicalCameraIdForPortrait(Lcom/xiaomi/protocol/IImageReaderParameterSets;Landroid/hardware/camera2/params/OutputConfiguration;Z)V

    .line 58
    :cond_6
    :goto_2
    invoke-virtual {v13}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->getPhysicCameraId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    .line 59
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_8

    .line 60
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->supportPhysicCameraId(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 61
    invoke-virtual {v13}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->getPhysicCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-static {v14, v2}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setPhysicalCameraId(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)V

    goto :goto_3

    .line 63
    :cond_7
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v2

    if-eqz v2, :cond_8

    const v2, 0x9002

    move/from16 v3, p3

    if-ne v3, v2, :cond_9

    .line 64
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSatFusionShotSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v11}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->isForMTKFusion()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 65
    invoke-virtual {v13}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->getPhysicCameraId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-static {v14, v2}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setPhysicalCameraId(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    :goto_3
    move/from16 v3, p3

    :cond_9
    :goto_4
    if-nez v7, :cond_a

    .line 67
    invoke-virtual {v14}, Landroid/hardware/camera2/params/OutputConfiguration;->enableSurfaceSharing()V

    .line 68
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 69
    :try_start_0
    sget-object v4, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add surface to deferredOutputConfig: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    new-instance v5, Lcom/android/camera2/imagereaders/OutputConfigurationSpec;

    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mParallelSpecList:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-direct {v5, v11, v14}, Lcom/android/camera2/imagereaders/OutputConfigurationSpec;-><init>(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    monitor-exit v2

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 72
    :cond_a
    :goto_5
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v11, v5, [Ljava/lang/Object;

    .line 74
    invoke-virtual {v13}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->getPhysicCameraId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v11, v14

    .line 75
    invoke-static {v12}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v6

    .line 76
    invoke-static {v12}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string v12, "startPreviewSession: add RemoteImageReader configuration: getPhysicCameraId=%d format=0x%x size=%s"

    .line 77
    invoke-static {v4, v12, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x4

    invoke-static {v11, v2, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_b
    :goto_6
    move v11, v2

    move v14, v4

    move v13, v5

    move v5, v3

    move/from16 v3, p3

    :goto_7
    add-int/lit8 v10, v10, 0x1

    move v3, v5

    move v2, v11

    move v5, v13

    move v4, v14

    goto/16 :goto_0

    .line 78
    :cond_c
    :goto_8
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mLockPrepareRemote:Ljava/lang/Object;

    monitor-enter v2

    .line 79
    :try_start_1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "mLockPrepareRemote.notifyAll"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mLockPrepareRemote:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 81
    iput-boolean v6, v1, Lcom/android/camera2/MiCamera2;->mPreParedRemote:Z

    .line 82
    monitor-exit v2

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public alwaysUseRemosaicSize()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v0

    return v0
.end method

.method public applyAiShutterEnable(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAiShutterEnable(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiShutterEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public applyAiShutterIfNeed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportAiShutter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMtkAiShutterVersionOne(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "applyAiShutterIfNeed return; run mtk aishutter 1.0"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAiShutterEnable()Z

    move-result v0

    .line 5
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "turns ai shutter on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->XIAOMI_AISHUTTER_FEATURE_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    .line 8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 9
    invoke-virtual {v1, v2, v3}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getAISDefaultBehavior(Z)B

    move-result v1

    .line 11
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->XIAOMI_AISHUTTER_FEATURE_ENABLED_QCOM:Lcom/android/camera2/vendortag/VendorTag;

    .line 12
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    .line 13
    invoke-virtual {v2, v3, v1}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v1, v0}, Lcom/android/camera2/compat/MiCameraCompat;->applyAiShutterEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public applyHighQualityPreferred(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHighQualityPreferred(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyHighQualityPreferred: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setHighQualityPreferred(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyHighQualityPreferred(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_1
    return-void
.end method

.method public applyMixQuickShot(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setMixQuickShotEnabled(Z)V

    return-void
.end method

.method public applyMtkQuickPreview()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "turns quick preview on"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v1, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CONTROL_QUICK_PREVIEW:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CONTROL_QUICK_PREVIEW_ON:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyQuickPreview(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public applySettingsForCapture(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2;->applyCommonSettings(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2;->applySettingsForJpeg(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyShutterTimestamp(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needScreenLight()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needOptimizedFlash()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    invoke-static {v0, p1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyBackwardCaptureHint(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 10
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needScreenLight()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-static {p1, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CaptureSessionConfigurations;)V

    .line 13
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v4, -0x1

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result v0

    .line 15
    iget v5, p0, Lcom/android/camera2/MiCamera2;->mLastSatCameraId:I

    if-eq v5, v4, :cond_4

    if-eq v5, v0, :cond_4

    .line 16
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, v1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyShrinkMemoryMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;I)V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/MemoryHelper;->resetCapturedNumber(I)V

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/MemoryHelper;->shouldTrimMemory(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 19
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyShrinkMemoryMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;I)V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/MemoryHelper;->resetCapturedNumber(I)V

    goto :goto_2

    .line 21
    :cond_5
    iget-object v5, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, v5, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyShrinkMemoryMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;I)V

    .line 22
    :goto_2
    iput v0, p0, Lcom/android/camera2/MiCamera2;->mLastSatCameraId:I

    goto :goto_3

    .line 23
    :cond_6
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isAlgoUpUltraPixelMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 24
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, v0, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyShrinkMemoryMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;I)V

    .line 25
    :cond_7
    :goto_3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OO0ooo()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 26
    invoke-static {p1, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyIspMetaType(Landroid/hardware/camera2/CaptureRequest$Builder;B)V

    .line 27
    :cond_8
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAmbilightMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 28
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAmbilightAeTarget(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 29
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyDepurpleEnable(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    const/4 v0, 0x3

    if-ne p2, v0, :cond_9

    .line 30
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isParallelShotType()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 31
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, v1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyParallelSnapshot(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 32
    :cond_9
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getFrameRatio()I

    move-result v1

    if-ne p2, v0, :cond_a

    if-eq v1, v4, :cond_a

    .line 33
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, p2, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFrameRatio(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;I)V

    :cond_a
    return-void
.end method

.method public applySettingsForJpeg(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getGpsLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 3
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4
    :cond_1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jpegRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v2}, Lcom/android/camera2/CameraConfigs;->getJpegRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getJpegRotation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getThumbnailSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v2, Landroid/util/Size;

    .line 8
    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/util/Size;-><init>(II)V

    .line 9
    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getJpegQuality()I

    move-result v0

    int-to-byte v0, v0

    .line 11
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 12
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public applySettingsForVideoShot(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera2/MiCamera2;->applySettingsForJpeg(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoFlash(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 7
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyBeautyValues(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoFilterId(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehLevelFront(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorRetentionFront(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehLevelBack(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorRetentionBack(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFrontMirror(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 14
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyDeviceOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 15
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAELocked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 16
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 17
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 18
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyMacroMode(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 19
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isCinematicVideoEnabled()Z

    move-result v0

    .line 20
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, p2, v1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicPhoto(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Z)V

    .line 21
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicVideo(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 22
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-static {p1, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CaptureSessionConfigurations;)V

    .line 23
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2Preview;->needForProVideo()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 24
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getAWBMode()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 25
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p2}, Lcom/android/camera2/CameraConfigs;->getAwbCustomValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 26
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v1, 0x3

    invoke-static {p1, v1, p2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 27
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v1, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    .line 28
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v1, p2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 29
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 30
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public applyVideoHdrMode(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoHdrEnable(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoHdrMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public cancelContinuousShot()V
    .locals 0

    return-void
.end method

.method public cancelFocus(I)V
    .locals 4

    const-string v0, "cancelFocus"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x100

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->initFocusRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    if-nez p1, :cond_1

    .line 3
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "cancelFocus afBuilder == null, return"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 5
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 7
    invoke-virtual {p1, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 9
    invoke-direct {p0, p1, v2}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 10
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getAWBMode()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 11
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getAwbCustomValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 12
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v2, v1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 13
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 14
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Preview;->needForCapture()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyContrast(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 16
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applySaturation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 17
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applySharpness(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 18
    :cond_2
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Preview;->needForManually()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 19
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v2, v1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 20
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v2, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    .line 21
    :cond_3
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Preview;->needForProVideo()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 22
    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mVideoRecording:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x3

    .line 23
    :cond_4
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getAWBMode()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 24
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getAwbCustomValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 25
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v2, v1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 26
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v2, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    .line 27
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v2, v1, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 28
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 29
    :cond_5
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 30
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getmMtkPipDevices()[I

    move-result-object v1

    if-eqz v1, :cond_6

    .line 31
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyMtkPipDevices(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 32
    :cond_6
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyBeautyValues(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->applySuperNightRaw(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 34
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    .line 35
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I

    .line 36
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p1, v3}, Lcom/android/camera2/CameraConfigs;->setAERegions([Landroid/hardware/camera2/params/MeteringRectangle;)Z

    .line 37
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p1, v3}, Lcom/android/camera2/CameraConfigs;->setAFRegions([Landroid/hardware/camera2/params/MeteringRectangle;)Z

    .line 38
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getFocusMode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->setAFModeToPreview(I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 39
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "Failed to cancel focus, IllegalArgument"

    invoke-static {v1, v2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 41
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "Failed to cancel focus, IllegalState"

    invoke-static {v1, v2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 43
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v0, 0x6

    .line 44
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelFocus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_0
    return-void
.end method

.method public cancelSession()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelSession: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->genSessionId()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    .line 4
    :try_start_1
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    .line 5
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 7
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->abortCaptures()V

    .line 8
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    instance-of v1, v1, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    check-cast v1, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;

    .line 10
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;->replaceSessionClose()V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    check-cast v1, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    .line 12
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->replaceSessionClose()V

    .line 13
    :goto_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelSession: reset session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 15
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :try_start_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resetConfigs()V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 17
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 18
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "Failed to stop repeating, IllegalState"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    .line 19
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "Failed to stop repeating session"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public captureAbortBurst()V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureAbortBurst: shot queue size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    :try_start_2
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "Failed to abort burst, IllegalState"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, 0x100

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 7
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v2, 0x6

    .line 8
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    .line 10
    :goto_0
    monitor-exit v0

    return-void

    .line 11
    :cond_1
    :goto_1
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "captureAbortBurst: session is null %s, cameraDevice is close %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move v4, v6

    .line 12
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    iget-boolean v4, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    .line 13
    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public captureBurstPictures(ILcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/xiaomi/camera/core/ParallelCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getShotType()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->disableSat()V

    .line 4
    :cond_0
    new-instance v0, Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 5
    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v1

    const/high16 v2, 0x41700000    # 15.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mZoomMapSurface:Landroid/view/Surface;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera2/MiCamera2ShotParallelRepeating;-><init>(Lcom/android/camera2/MiCamera2;ILandroid/view/Surface;)V

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    .line 6
    invoke-virtual {v0, p2}, Lcom/android/camera2/MiCamera2Shot;->setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p1, p3}, Lcom/android/camera2/MiCamera2Shot;->setParallelCallback(Lcom/xiaomi/camera/core/ParallelCallback;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->offerLast(Ljava/lang/Object;)Z

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureTime:J

    .line 10
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Shot;->startShot()V

    goto :goto_1

    .line 11
    :cond_2
    new-instance v0, Lcom/android/camera2/MiCamera2ShotBurst;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isNeedPausePreview()Z

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/camera2/MiCamera2ShotBurst;-><init>(Lcom/android/camera2/MiCamera2;IZ)V

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    .line 12
    invoke-virtual {v0, p2}, Lcom/android/camera2/MiCamera2Shot;->setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    .line 13
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p1, p3}, Lcom/android/camera2/MiCamera2Shot;->setParallelCallback(Lcom/xiaomi/camera/core/ParallelCallback;)V

    .line 14
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->offerLast(Ljava/lang/Object;)Z

    .line 15
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Shot;->startShot()V

    :goto_1
    return-void
.end method

.method public captureGroupShotPictures(Lcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/xiaomi/camera/core/ParallelCallback;ILandroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera2/MiCamera2ShotGroup;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    .line 2
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    invoke-direct {v0, p0, p3, p4, v1}, Lcom/android/camera2/MiCamera2ShotGroup;-><init>(Lcom/android/camera2/MiCamera2;ILandroid/content/Context;Landroid/hardware/camera2/CaptureResult;)V

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera2/MiCamera2Shot;->setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p1, p2}, Lcom/android/camera2/MiCamera2Shot;->setParallelCallback(Lcom/xiaomi/camera/core/ParallelCallback;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Shot;->startShot()V

    return-void
.end method

.method public captureVideoSnapshot(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera2/MiCamera2ShotVideo;

    invoke-direct {v0, p0}, Lcom/android/camera2/MiCamera2ShotVideo;-><init>(Lcom/android/camera2/MiCamera2;)V

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera2/MiCamera2Shot;->setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Shot;->startShot()V

    return-void
.end method

.method public close(I)Z
    .locals 6

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "E: close: cameraId = %d, reason = %d"

    .line 3
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSuperNightReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/android/camera2/SuperNightReprocessHandler;->cancel()V

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSuperNightReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 7
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mSuperNightReprocessHandler:Lcom/android/camera2/SuperNightReprocessHandler;

    .line 8
    :cond_0
    iput-boolean v5, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    if-nez p1, :cond_1

    move p1, v5

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    if-eqz p1, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->abortCaptures()V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    .line 11
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00Ooooo()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00OOOOo()Z

    move-result p1

    if-nez p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    check-cast p1, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 14
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->flush()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v0, 0x6

    .line 16
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v3, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    move v4, v5

    .line 18
    :cond_4
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->closePhotoImageReader()V

    .line 19
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->closePreviewImageReader()V

    .line 20
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->closeRawImageReader()V

    .line 21
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->closeVideoSnapshotImageReader()V

    .line 22
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->closeDepthImageReader()V

    .line 23
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->closePortraitRawImageReader()V

    .line 24
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    if-eqz p1, :cond_5

    .line 25
    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Shot;->makeClobber()V

    .line 26
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    .line 27
    :cond_5
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->reset()V

    .line 28
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X: close: cameraId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p1, v0}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public enableSat()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "enableSat: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySmoothTransition(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    .line 4
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "enableSat: X"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public forceTurnFlashONAndPausePreview()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/camera2/CameraConfigs;->setFlashMode(I)V

    .line 3
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v2, v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setFlashFireRequestId(I)V

    .line 6
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    .line 7
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1, v0}, Lcom/android/camera2/CameraConfigs;->setFlashMode(I)V

    return-void
.end method

.method public forceTurnFlashOffAndPausePreview()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigs;->setFlashMode(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    return-void
.end method

.method public getActiveRawSize(I)Lcom/android/camera/CameraSize;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isInMultiSurfaceSatMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveRawSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 4
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveRawSize: invalid satMasterCameraId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfWide()Lcom/android/camera/CameraSize;

    move-result-object v0

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfUltraTele()Lcom/android/camera/CameraSize;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfTele()Lcom/android/camera/CameraSize;

    move-result-object v0

    goto :goto_1

    .line 8
    :cond_4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfWide()Lcom/android/camera/CameraSize;

    move-result-object v0

    goto :goto_1

    .line 9
    :cond_5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getRawSizeOfUltraWide()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 10
    :goto_1
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveRawSize: cameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method public getAlgorithmPreviewFormat()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewFormat()I

    move-result v0

    return v0
.end method

.method public getAlgorithmPreviewSize()Lcom/android/camera/CameraSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    return-object v0
.end method

.method public getBinningPictureSize()Lcom/android/camera/CameraSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getBinningPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    return-object v0
.end method

.method public getBokehAuxCameraId()I
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getPhysicalCameraIds(Lcom/android/camera2/CameraCapabilities;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFrontCameraId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    .line 5
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v1

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getBokehDepthSize()Lcom/android/camera/CameraSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getBokehDepthSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    return-object v0
.end method

.method public getBokehMainRawSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getBokehSubRawSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0x21

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getCacheImageDecoder()Lcom/android/zxing/CacheImageDecoder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/Camera2Proxy;->mCacheImageDecoder:Lcom/android/zxing/CacheImageDecoder;

    return-object v0
.end method

.method public getCameraConfigs()Lcom/android/camera2/CameraConfigs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    return-object v0
.end method

.method public getCameraDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method public getCameraHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getCapabilities()Lcom/android/camera2/CameraCapabilities;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    return-object v0
.end method

.method public getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method public getCurrentAEState()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getCurrentAEState()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDepthImageReader()Landroid/media/ImageReader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mDepthReader:Landroid/media/ImageReader;

    return-object v0
.end method

.method public getExposureCompensation()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getExposureCompensationIndex()I

    move-result v0

    return v0
.end method

.method public getExtendSceneMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getExtendSceneMode()I

    move-result v0

    return v0
.end method

.method public getFakeSatMainCaptureSurface(I)Landroid/view/Surface;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isInMultiSurfaceSatMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "getFakeSatMainCaptureSurface: unavailable for non-SAT mode"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFakeSatMainCaptureSurface: satMasterCameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 4
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFakeSatMainCaptureSurface: invalid satMasterCameraId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getFakeSatUltraTeleRemoteSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getFakeSatTeleRemoteSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getFakeSatWideRemoteSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getFakeSatUltraWideRemoteSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1
.end method

.method public getFakeSatOutputSize()Landroid/util/Size;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isInMultiSurfaceSatMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, v1

    goto :goto_2

    .line 2
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result v0

    .line 3
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFakeSatOutputSize: satMasterCameraId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    .line 4
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFakeSatOutputSize: invalid satMasterCameraId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatUltraTeleOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatTeleOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    goto :goto_2

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatWideOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    goto :goto_2

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatUltraWideOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_6

    goto :goto_3

    .line 9
    :cond_6
    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->toSizeObject()Landroid/util/Size;

    move-result-object v1

    :goto_3
    return-object v1
.end method

.method public getFakeSatTeleRemoteSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0x9

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getFakeSatUltraTeleRemoteSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getFakeSatUltraWideRemoteSurface()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x7

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getFakeSatWideRemoteSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getFlashMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    return v0
.end method

.method public getFocusMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFocusMode()I

    move-result v0

    return v0
.end method

.method public getHDRMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getHDRMode()I

    move-result v0

    return v0
.end method

.method public getHighQualityQuickShotThresholdCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2;->mHighQualityQuickShotThresholdCacheCount:I

    return v0
.end method

.method public getJpegRotation()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getJpegRotation()I

    move-result v0

    return v0
.end method

.method public getMTKFusionWideRemoteSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0x1c

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getMacroParallelSurface()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getMainCaptureSurface(I)Landroid/view/Surface;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isInMultiSurfaceSatMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "getMainCaptureSurface: non-SAT mode"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getWideRemoteSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMainCaptureSurface: satMasterCameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 5
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMainCaptureSurface: invalid satMasterCameraId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getWideRemoteSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getUltraTeleRemoteSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getTeleRemoteSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    .line 9
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getWideRemoteSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    .line 10
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getUltraWideRemoteSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1
.end method

.method public getMiCamera2ShotQueueSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v0

    return v0
.end method

.method public getNumOfHighQualityQuickShots()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/MiCamera2Shot;

    .line 2
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2Shot;->isHighQualityQuickShot()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getParallelShotSavePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getThumbnailShotPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParallelSpecList()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mParallelSpecList:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    :goto_0
    return-object v0
.end method

.method public getPhotoImageReader()Landroid/media/ImageReader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPhotoImageReader:Landroid/media/ImageReader;

    return-object v0
.end method

.method public getPhysicalBokehMainId()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v1, "pref_ultra_wide_bokeh_enabled"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportBokehRole(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalMasterBokeh1XId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalMasterBokeh1XId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalMasterBokehId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalMasterBokehId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v0

    :goto_1
    return v0
.end method

.method public getPhysicalBokehSubId()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string v1, "pref_ultra_wide_bokeh_enabled"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportBokehRole(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalSlaveBokeh1XId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalSlaveBokeh1XId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    goto :goto_1

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalSlaveBokehId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalSlaveBokehId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00Oo0Oo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getBokehAuxCameraId()I

    move-result v0

    goto :goto_1

    .line 9
    :cond_3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v0

    :goto_1
    return v0
.end method

.method public getPictureFormat()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getPhotoFormat()I

    move-result v0

    return v0
.end method

.method public getPictureMaxImages()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getPhotoMaxImages()I

    move-result v0

    return v0
.end method

.method public getPictureSize()Lcom/android/camera/CameraSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    return-object v0
.end method

.method public getPortraitRawImageReader()Landroid/media/ImageReader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPortraitRawImageReader:Landroid/media/ImageReader;

    return-object v0
.end method

.method public getPreviewCallbackEnabled()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    return v0
.end method

.method public getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewImageReader()Landroid/media/ImageReader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewImageReader:Landroid/media/ImageReader;

    return-object v0
.end method

.method public getPreviewMaxImages()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getPreviewMaxImages()I

    move-result v0

    return v0
.end method

.method public getPreviewRequestBuilder()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object v0
.end method

.method public getPreviewSize()Lcom/android/camera/CameraSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getQcfaRemoteSurface()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getRawCallbackType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/MiCamera2;->mRawCallbackType:I

    return v0
.end method

.method public getRawImageReader()Landroid/media/ImageReader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    return-object v0
.end method

.method public getRawImageWriter()Landroid/media/ImageWriter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mRawImageWriter:Landroid/media/ImageWriter;

    return-object v0
.end method

.method public getRawMacroSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0x16

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getRawSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mRawImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getRawSurfaceForTuningBuffer()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getRawTeleSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getRawUltraTeleSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0x15

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getRawUltraWideSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0x12

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getRawWideSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0x13

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getRecordSurface()Landroid/view/Surface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSATSubCameraIds()[I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isInMultiSurfaceSatMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getPhysicalCameraIds(Lcom/android/camera2/CameraCapabilities;)Ljava/util/Set;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getViewAngle(Lcom/android/camera2/CameraCapabilities;Z)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    new-instance v3, LOooO00o/OooO0O0/OooO0O0/OooO0o;

    invoke-direct {v3, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 10
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 13
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00ooOO0()Z

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 14
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v5

    aput v5, v0, v1

    .line 15
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    aput v1, v0, v4

    .line 16
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v1

    aput v1, v0, v3

    .line 17
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v1

    aput v1, v0, v2

    move-object v2, v0

    goto :goto_2

    .line 18
    :cond_2
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0OO00O:Z

    if-nez v0, :cond_3

    new-array v2, v2, [I

    .line 19
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v0

    aput v0, v2, v1

    .line 20
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v0

    aput v0, v2, v4

    .line 21
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v0

    aput v0, v2, v3

    goto :goto_2

    :cond_3
    new-array v2, v3, [I

    .line 22
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v0

    aput v0, v2, v1

    .line 23
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v0

    aput v0, v2, v4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_2
    return-object v2
.end method

.method public getSatBinningSRSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0x1f

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getSatFusionType()I
    .locals 9

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAT_FUSION_SHOT_SUPPORTED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSatFusionShotSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSatFusionShotSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 4
    :cond_1
    sget-object v3, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SAT_FUSION_SHOT_PIPELINE_READY:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v0, v3}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    .line 5
    :goto_0
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SAT_FUSION_PIPELINE_READY: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_14

    .line 6
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_7

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSuperNightOn()Z

    move-result v0

    .line 8
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SAT_FUSION_SUPER_NIGHT_SE_ENABLED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    return v1

    .line 9
    :cond_3
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder(Z)Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->isAnyRequestIsHWMFNRProcessing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isAiShutterExistMotion()Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isHighQualityQuickShotEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHighQualityQuickShotAndQuickShotMixedUse(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isHighQualityQuickShotEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getNumOfHighQualityQuickShots()I

    move-result v0

    iget v4, p0, Lcom/android/camera2/MiCamera2;->mHighQualityQuickShotThresholdCacheCount:I

    if-le v0, v4, :cond_5

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->isFixShotTime()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00O0O0()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v1

    .line 17
    :goto_1
    sget-object v4, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SAT_FUSION_QUICKSHOT_NEEDED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6

    return v1

    .line 18
    :cond_6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isNeedFlash()Z

    move-result v0

    const/4 v4, 0x2

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    if-ne v4, v0, :cond_7

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    :goto_2
    move v0, v3

    .line 19
    :goto_3
    sget-object v5, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAT_FUSION_FLASH_NEEDED: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_9

    return v1

    .line 20
    :cond_9
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v0

    .line 21
    sget-object v5, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAT_FUSION_HDR_NEEDED: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_a

    return v1

    .line 22
    :cond_a
    iget v0, p0, Lcom/android/camera2/Camera2Proxy;->mActualCameraId:I

    .line 23
    sget-object v5, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAT_FUSION_ACTUAL_CAMERA_ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v5

    if-eq v0, v5, :cond_b

    return v1

    .line 25
    :cond_b
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isInMultiSurfaceSatMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 26
    :cond_c
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCamera2;->getMainCaptureSurface(I)Landroid/view/Surface;

    move-result-object v2

    .line 28
    :cond_d
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SAT_FUSION_MAIN_CAPTURE_SURFACE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_e

    return v1

    .line 29
    :cond_e
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v0

    .line 30
    sget-object v5, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAT_FUSION_ZOOM_RATIO: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getTeleRemoteSurface()Landroid/view/Surface;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 32
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getUltraTeleRemoteSurface()Landroid/view/Surface;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 33
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getTeleRemoteSurface()Landroid/view/Surface;

    move-result-object v5

    if-ne v2, v5, :cond_f

    .line 34
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getUltraTeleRemoteSurface()Landroid/view/Surface;

    move-result-object v5

    if-eqz v5, :cond_f

    move v5, v3

    goto :goto_4

    :cond_f
    move v5, v1

    :goto_4
    const/high16 v6, 0x40a00000    # 5.0f

    const/high16 v7, 0x40400000    # 3.0f

    if-eqz v5, :cond_10

    cmpl-float v8, v0, v7

    if-ltz v8, :cond_10

    cmpg-float v8, v0, v6

    if-gez v8, :cond_10

    .line 35
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAT_FUSION_T_UT_COMBINATION: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 36
    :cond_10
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getWideRemoteSurface()Landroid/view/Surface;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 37
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getUltraTeleRemoteSurface()Landroid/view/Surface;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 38
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getWideRemoteSurface()Landroid/view/Surface;

    move-result-object v5

    if-ne v2, v5, :cond_11

    .line 39
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getUltraTeleRemoteSurface()Landroid/view/Surface;

    move-result-object v5

    if-eqz v5, :cond_11

    move v5, v3

    goto :goto_5

    :cond_11
    move v5, v1

    :goto_5
    if-eqz v5, :cond_12

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_12

    cmpg-float v6, v0, v6

    if-gez v6, :cond_12

    .line 40
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAT_FUSION_W_UT_COMBINATION: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 41
    :cond_12
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getUltraWideRemoteSurface()Landroid/view/Surface;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 42
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getWideRemoteSurface()Landroid/view/Surface;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 43
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getUltraWideRemoteSurface()Landroid/view/Surface;

    move-result-object v4

    if-ne v2, v4, :cond_13

    .line 44
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getWideRemoteSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_13

    goto :goto_6

    :cond_13
    move v3, v1

    :goto_6
    if-eqz v3, :cond_14

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_14

    .line 45
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAT_FUSION_UW_W_COMBINATION: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    return v0

    :cond_14
    :goto_7
    return v1
.end method

.method public getSatMasterCameraCapabilities()Lcom/android/camera2/CameraCapabilities;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mapSatCameraIdToFrameworkCameraId(I)I

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getSatMasterCameraId()I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CaptureResultParser;->getSatMasterCameraId(Landroid/hardware/camera2/CaptureResult;)I

    move-result v0

    .line 2
    sget-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo0O:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const-string v4, " zoomRatio = "

    const-string v5, "getSatMasterCameraId: error satCameraId = "

    const/4 v6, 0x1

    if-nez v1, :cond_0

    sget-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo0o:Z

    if-nez v1, :cond_0

    sget-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo:Z

    if-eqz v1, :cond_2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getZoomRatio()F

    move-result v1

    cmpg-float v7, v1, v2

    if-gez v7, :cond_1

    if-eq v0, v6, :cond_1

    .line 4
    sget-object v7, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v0, v3

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result v7

    cmpl-float v7, v1, v7

    if-ltz v7, :cond_2

    if-ne v0, v6, :cond_2

    .line 6
    sget-object v7, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    sget-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0OO00O:Z

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getZoomRatio()F

    move-result v1

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_3

    if-ne v0, v6, :cond_3

    .line 9
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    return v3
.end method

.method public getSatPhysicalCameraId()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getSatMasterCameraId()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mapSatCameraIdToFrameworkCameraId(I)I

    move-result v0

    return v0
.end method

.method public getSatRawSurface(I)Landroid/view/Surface;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSatRawSurface: satMasterCameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSatRawSurface: invalid satMasterCameraId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getRawWideSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getRawUltraTeleSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getRawTeleSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getRawWideSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getRawUltraWideSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1
.end method

.method public getSceneMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getSceneMode()I

    move-result v0

    return v0
.end method

.method public getSensorRawImageSize()Lcom/android/camera/CameraSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    return-object v0
.end method

.method public getSessionConfigs()Lcom/android/camera2/CaptureSessionConfigurations;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    return-object v0
.end method

.method public getSharedRawSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0xf

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getShotBoostParams()Ljava/util/function/Consumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mShotBoostParams:Ljava/util/function/Consumer;

    return-object v0
.end method

.method public getSubRemoteSurface()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getSuperNight()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result v0

    return v0
.end method

.method public getTeleRemoteSurface()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getTiledMainCaptureSurface(I)Landroid/view/Surface;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isIn3OrMoreSatMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isInMultiSurfaceSatMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "getTiledMainCaptureSurface: unavailable for non-SAT mode"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTiledMainCaptureSurface: satMasterCameraId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 4
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTiledMainCaptureSurface: invalid satMasterCameraId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 5
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getTiledUltraTeleRemoteSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getTiledTeleRemoteSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getTiledWideRemoteSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getTiledUltraWideRemoteSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1
.end method

.method public getTiledTeleRemoteSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0xd

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getTiledUltraTeleRemoteSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0xe

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getTiledUltraWideRemoteSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0xb

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getTiledWideRemoteSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0xc

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getTuningRemoteSurface()Landroid/view/Surface;
    .locals 1

    const/16 v0, 0x11

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getUltraTeleRemoteSurface()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getUltraWideRemoteSurface()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getVideoSnapshotImageReader()Landroid/media/ImageReader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    return-object v0
.end method

.method public getWideRemoteSurface()Landroid/view/Surface;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->getRemoteSurface(I)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getZoomRatio()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v0

    return v0
.end method

.method public isAlgoUpUltraPixelMode()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOperatingMode(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    const v1, 0x9004

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBeautyOn()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getBeautyValues()Lcom/android/camera/fragment/beauty/BeautyValues;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "Assume front beauty is off in case beautyValues is unavailable."

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/fragment/beauty/BeautyValues;->isFaceBeautyOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isCaptureBusy(Z)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x65

    .line 2
    invoke-static {v0}, Lcom/xiaomi/camera/device/CameraService;->hasPendingCallable(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "isCaptureBusy: shotboost going on"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/camera2/MiCamera2;->mCaptureTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCaptureBusy: timeout:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->resetShotQueue(Ljava/lang/String;)V

    return v1

    :cond_2
    if-eqz p1, :cond_3

    .line 6
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "isCaptureBusy: simple return true"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    if-eqz p1, :cond_6

    .line 8
    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCameraQuickShotEnable()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 10
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v5, 0x320

    if-lt v0, v5, :cond_4

    goto :goto_0

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSensorHdrSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SENSOR_HDR_ENABLE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValue(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    if-eqz p1, :cond_6

    .line 14
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-lez v0, :cond_6

    .line 15
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCaptureBusy: sensorHdr:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 16
    :cond_5
    :goto_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCaptureBusy: iso:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    const-wide/16 v5, 0x32

    cmp-long p1, v3, v5

    if-gez p1, :cond_7

    .line 17
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCaptureBusy: time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 18
    :cond_7
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result p1

    .line 19
    iget v0, p0, Lcom/android/camera2/MiCamera2;->mQuickShotThresholdCacheCount:I

    if-le p1, v0, :cond_8

    .line 20
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCaptureBusy: MiCamera2ShotQueue size:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 21
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getNumOfHighQualityQuickShots()I

    move-result p1

    .line 22
    iget v0, p0, Lcom/android/camera2/MiCamera2;->mHighQualityQuickShotThresholdCacheCount:I

    if-le p1, v0, :cond_9

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 23
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHighQualityQuickShotAndQuickShotMixedUse(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 24
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCaptureBusy: number of HighQualityQuickShot:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_9
    return v1
.end method

.method public isDepthFocus()Z
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0, v1}, Lcom/android/camera2/CaptureResultParser;->isDepthFocusForMTK(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0, v1}, Lcom/android/camera2/CaptureResultParser;->isDepthFocus(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    return v0
.end method

.method public isDisconnected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    return v0
.end method

.method public isFacingFront()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getFacing(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHighQualityQuickShot(J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/MiCamera2Shot;

    .line 2
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Shot;->getShutterTimestamp()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HQQuickShot timestamp match,ts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", isHQQuickShot:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Shot;->isHighQualityQuickShot()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Shot;->isHighQualityQuickShot()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isHighQualityQuickShotBusy()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/MiCamera2Shot;

    .line 2
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Shot;->isShutterReturned()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 3
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHighQualityQuickShotBusy: shutter is not return shot:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 4
    :cond_1
    instance-of v1, v1, Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    if-eqz v1, :cond_0

    .line 5
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "HighQualityQuickShotBusy: repeating shot exists"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 6
    :cond_2
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "HighQualityQuickShot shutter return"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isIn3OrMoreSatMode()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOperatingMode(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    const v1, 0x9002

    if-ne v1, v0, :cond_0

    sget-boolean v0, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFakePartSAT()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInMultiSurfaceSatMode()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOperatingMode(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    const v1, 0x9002

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getPhysicalCameraIds(Lcom/android/camera2/CameraCapabilities;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 3
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getPhysicalCameraIds(Lcom/android/camera2/CameraCapabilities;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00Oo0Oo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInTimerBurstShotting()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isInTimerBurstShotting()Z

    move-result v0

    return v0
.end method

.method public isMacroMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isMacroMode()Z

    move-result v0

    return v0
.end method

.method public isModuleAnchorFrame()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isModuleAnchorFrame()Z

    move-result v0

    return v0
.end method

.method public isMultiSnapStopRequest()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isMultiSnapStopRequest()Z

    move-result v0

    return v0
.end method

.method public isNeedFlashForAuto(Ljava/lang/Integer;I)Z
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCurrentAEState()Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    if-gez p2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getFlashMode()I

    move-result p2

    .line 4
    :cond_1
    sget-boolean v0, Lcom/android/camera2/MiCamera2;->FLASH_LOCK_DEBUG:Z

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flashMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",currentAEState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_4

    :cond_3
    move v0, v1

    .line 7
    :cond_4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00ooooo()Z

    move-result p1

    if-nez p1, :cond_5

    move v0, v1

    :cond_5
    const/4 p1, 0x3

    if-eq p1, p2, :cond_6

    goto :goto_0

    :cond_6
    move v1, v0

    .line 8
    :goto_0
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->triggerFlashStateTimeLock()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 9
    sget-boolean p1, Lcom/android/camera2/MiCamera2;->FLASH_LOCK_DEBUG:Z

    if-eqz p1, :cond_7

    .line 10
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p2, "trigger flash state time lock!"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_7
    iget-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mNeedFlashForAuto:Z

    .line 12
    :cond_8
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mNeedFlashForAuto:Z

    .line 13
    sget-boolean p1, Lcom/android/camera2/MiCamera2;->FLASH_LOCK_DEBUG:Z

    if-eqz p1, :cond_9

    .line 14
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mNeedFlashForAuto: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mNeedFlashForAuto:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :cond_9
    iget-boolean p1, p0, Lcom/android/camera2/MiCamera2;->mNeedFlashForAuto:Z

    return p1
.end method

.method public isNeedFlashOn()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFlashMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    const/16 v2, 0x65

    if-eq v0, v2, :cond_8

    const/16 v2, 0x6a

    if-eq v0, v2, :cond_0

    return v3

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 3
    :cond_1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNeedFlashOn: auto mode state:  ae:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    .line 4
    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getCurrentAEState()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", flash:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    .line 5
    invoke-virtual {v5}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getCurrentFlashState()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mSupportFlashTimeLock:Z

    if-eqz v0, :cond_2

    .line 8
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mNeedFlashForAuto:Z

    return v0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getCurrentAEState()Ljava/lang/Integer;

    move-result-object v0

    .line 10
    iget-object v4, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v4}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getCurrentFlashState()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v0, :cond_7

    if-nez v4, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v5

    invoke-virtual {v5}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o000oooO()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 12
    iget-object v5, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v5}, Lcom/android/camera2/CameraConfigs;->isFlashAutoDetectionEnabled()Z

    move-result v5

    if-nez v5, :cond_4

    return v3

    .line 13
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_6

    const/4 v5, 0x2

    if-eq v0, v5, :cond_6

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    return v3

    :cond_5
    return v1

    .line 14
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_7

    return v1

    :cond_7
    :goto_0
    return v3

    :cond_8
    return v1
.end method

.method public isNeedPreviewThumbnail()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isHDREnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isMfnrEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isSwMfnrEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isSuperResolutionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isParallelBusy(Z)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->isParallelSessionReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "isParallelBusy: Session is null or pending surface list is not null"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 4
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportMultiCameraIds(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    sget-object v2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MCC_MASTER_CAMERA_ID:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v1, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_1

    return v0

    .line 6
    :cond_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->setParallelMasterCameraId(Ljava/lang/Integer;)V

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    return v2

    .line 8
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/camera2/MiCamera2;->mCaptureTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v1, v3, v5

    if-lez v1, :cond_5

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isParallelBusy: timeout:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->resetShotQueue(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder(Z)Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p1}, Lcom/android/camera/LocalParallelService$LocalBinder;->resetParallelTaskQueue()V

    :cond_4
    return v2

    .line 12
    :cond_5
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera2/MiCamera2Shot;

    .line 13
    invoke-virtual {v3}, Lcom/android/camera2/MiCamera2Shot;->isShutterReturned()Z

    move-result v4

    if-nez v4, :cond_7

    .line 14
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "isParallelBusy: shutter is not return"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 15
    :cond_7
    instance-of v3, v3, Lcom/android/camera2/MiCamera2ShotParallelRepeating;

    if-eqz v3, :cond_6

    .line 16
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "isParallelBusy: repeating shot does exist"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_8
    if-eqz p1, :cond_9

    return v2

    .line 17
    :cond_9
    invoke-static {}, Lcom/android/camera/parallel/AlgoConnector;->getInstance()Lcom/android/camera/parallel/AlgoConnector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/parallel/AlgoConnector;->getLocalBinder()Lcom/android/camera/LocalParallelService$LocalBinder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/LocalParallelService$LocalBinder;->getFrontProcessingCount()I

    move-result p1

    .line 18
    invoke-static {}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getInstance()Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/ParallelSnapshotManager;->getMaxQueueSize()I

    move-result v1

    if-lt p1, v1, :cond_a

    .line 19
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "isParallelBusy: FrontProcessingCount is full"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_a
    return v2

    :cond_b
    return v0
.end method

.method public isPreviewReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isQcfaEnable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isQcfaEnable()Z

    move-result v0

    return v0
.end method

.method public isQuickShot(J)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/MiCamera2Shot;

    .line 2
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Shot;->getShutterTimestamp()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickShot timestamp match,ts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", isQuickShot:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Shot;->isQuickShot()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {v1}, Lcom/android/camera2/MiCamera2Shot;->isQuickShot()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isSessionReady()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isShotQueueMultitasking()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSingleBokehEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isSingleBokehEnabled()Z

    move-result v0

    return v0
.end method

.method public lockExposure(Z)V
    .locals 2

    const-string v0, "lockExposure"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCamera2;->setAELock(Z)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    return-void
.end method

.method public lockExposure(ZZ)V
    .locals 1

    const-string v0, "lockExposure"

    .line 6
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 7
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    :cond_1
    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0, p2}, Lcom/android/camera2/MiCamera2;->setAELock(Z)V

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {p1, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 10
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    return-void
.end method

.method public notifyVideoStreamEnd()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :try_start_1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 4
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getEndOfStreamType(Lcom/android/camera2/CameraCapabilities;)I

    move-result v2

    if-ne v4, v2, :cond_0

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    .line 6
    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 9
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 10
    invoke-static {v1, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applyVideoStreamState(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 11
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I

    move-result v1

    .line 12
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyVideoStreamEnd: requestId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    monitor-exit v0

    goto :goto_4

    .line 14
    :cond_1
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v5, "notifyVideoStreamEnd: nullSession = %b, nullDevice = %b, nullSurface = %b"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v6, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v3

    .line 15
    :goto_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v3

    iget-object v6, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v6, :cond_3

    move v6, v4

    goto :goto_2

    :cond_3
    move v6, v3

    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v4

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    if-nez v7, :cond_4

    move v3, v4

    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    .line 16
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iput-boolean v4, p0, Lcom/android/camera2/MiCamera2;->mPendingNotifyVideoEnd:Z

    .line 18
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 20
    :goto_3
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "notifyVideoStreamEnd: "

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_2
    move-exception v0

    .line 21
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_4
    return-void
.end method

.method public onButtonStatusFocused(Lcom/android/camera/module/loader/camera2/ButtonStatus;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getButtonStatus()Lcom/android/camera/module/loader/camera2/ButtonStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onButtonStatusFocused(Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    :cond_0
    return-void
.end method

.method public onCameraDisconnected()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "E: onCameraDisconnected"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    .line 3
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->onPreviewRelease(II)V

    .line 8
    :cond_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "X: onCameraDisconnected"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCameraError()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "E: onCameraError"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mIsCameraClosed:Z

    .line 3
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    .line 5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->onPreviewRelease(II)V

    .line 8
    :cond_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "X: onCameraError"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCapabilityChanged(Lcom/android/camera2/CameraCapabilities;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->onCapabilityChanged(Lcom/android/camera2/CameraCapabilities;)V

    :cond_0
    return-void
.end method

.method public onCapturePictureFinished(ZLcom/android/camera2/MiCamera2Shot;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "onCapturePictureFinished: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isNeedFlash()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isSuperNightEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 3
    :goto_1
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v3, v2}, Lcom/android/camera2/CameraConfigs;->setNeedFlash(Z)Z

    .line 4
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->needUnlockFocusAfterCapture()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->unlockFocusForCapture()V

    .line 6
    :cond_2
    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2Shot;->isHighQualityQuickShot()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->isAllCaptureShutterReturned()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7
    :cond_3
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->unlockAfAeForMultiFrame()V

    .line 8
    :cond_4
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v3, v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    .line 9
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v4, 0x7

    invoke-direct {p0, v3, v4}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 10
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v3}, Lcom/android/camera2/MiCamera2;->applySettingsForPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    .line 12
    :cond_5
    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2Shot;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 13
    invoke-interface {v0, p1}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onCaptureCompleted(Z)V

    if-nez p1, :cond_6

    const-wide/16 v3, 0x0

    .line 14
    invoke-interface {v0, v2, v3, v4, v2}, Lcom/android/camera2/Camera2Proxy$PictureCallback;->onPictureTakenFinished(ZJI)V

    goto :goto_3

    .line 15
    :cond_6
    invoke-virtual {p2}, Lcom/android/camera2/MiCamera2Shot;->getShotBoostParams()Ljava/util/function/Consumer;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 16
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v4, "do shotboost later"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-static {}, Lcom/xiaomi/camera/device/CameraService;->removeShotBoostCallable()V

    .line 18
    new-instance v3, Lcom/xiaomi/camera/device/callable/ShotBoostCallable;

    iget v4, p0, Lcom/android/camera2/Camera2Proxy;->mActualCameraId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v5

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v6

    invoke-virtual {v6}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0000OOO()I

    move-result v6

    if-ge v5, v6, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    invoke-direct {v3, v4, v1, v0}, Lcom/xiaomi/camera/device/callable/ShotBoostCallable;-><init>(Ljava/lang/String;ZLjava/util/function/Consumer;)V

    .line 19
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->getCaptureInterval()J

    move-result-wide v0

    invoke-static {v3, v0, v1}, Lcom/xiaomi/camera/device/CameraService;->addShotBoostCallableDelayed(Lcom/xiaomi/camera/device/callable/CameraCallable;J)V

    :cond_8
    :goto_3
    if-nez p1, :cond_a

    .line 20
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    monitor-enter p1

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 22
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z

    move-result p2

    .line 23
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCapturePictureFinished failure: mMiCamera2ShotQueue.poll, size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 24
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " removeResult: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 25
    invoke-static {v0, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_9
    invoke-direct {p0, v2}, Lcom/android/camera2/MiCamera2;->notifyCaptureBusyCallback(Z)V

    .line 27
    monitor-exit p1

    goto :goto_4

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_a
    :goto_4
    return-void
.end method

.method public onMultiSnapEnd(ZLcom/android/camera2/MiCamera2Shot;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMultiSnapEnd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->notifyCaptureBusyCallback(Z)V

    :cond_0
    return-void
.end method

.method public onParallelImagePostProcStart()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onParallelImagePostProcStart: mMiCamera2ShotQueue.poll, size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x1

    .line 5
    invoke-direct {p0, v1}, Lcom/android/camera2/MiCamera2;->notifyCaptureBusyCallback(Z)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPreviewComing()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/MiCamera2Shot;

    .line 4
    invoke-virtual {v2}, Lcom/android/camera2/MiCamera2Shot;->onPreviewComing()Z

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPreviewThumbnailReceived(Lcom/android/camera/Thumbnail;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera2/MiCamera2Shot;->onPreviewThumbnailReceived(Lcom/android/camera/Thumbnail;)V

    :cond_0
    return-void
.end method

.method public pausePreview()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/android/camera2/MiCamera2;->triggerDeviceChecking(ZZ)V

    const-string v0, "pausePreview"

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pausePreview: cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_1

    .line 6
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "pausePreview: null session"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 8
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    :try_start_2
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "Failed to pause preview, IllegalState"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, 0x100

    .line 10
    invoke-virtual {p0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 11
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v2, 0x6

    .line 12
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to pause preview "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    .line 14
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public releaseCameraPreviewCallback(Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->setClientCb(Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    :cond_0
    return-void
.end method

.method public releaseFakeSurfaceIfNeed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mFakeOutputTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mFakeOutputTexture:Landroid/graphics/SurfaceTexture;

    :cond_0
    return-void
.end method

.method public releasePreview(I)V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "E: releasePreview: reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v2, 0x1

    .line 5
    :try_start_0
    iput-boolean v2, p0, Lcom/android/camera2/MiCamera2;->mIsCaptureSessionClosed:Z

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez p1, :cond_1

    .line 7
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "X: releasePreview: null session"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 9
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 10
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->abortCaptures()V

    .line 11
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :goto_0
    :try_start_2
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    :try_start_3
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "Failed to release preview, IllegalState"

    invoke-static {v2, v3, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x100

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 15
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v2, 0x6

    .line 16
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to release preview "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 18
    :goto_1
    :try_start_4
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 19
    throw p1

    .line 20
    :cond_2
    iput-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 21
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 22
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "X: releasePreview"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1
    move-exception p1

    .line 23
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method

.method public resetConfigs()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "E: resetConfigs"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/android/camera2/CameraConfigs;

    invoke-direct {v0}, Lcom/android/camera2/CameraConfigs;-><init>()V

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/android/camera2/CaptureSessionConfigurations;->reset()V

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/camera2/MiCamera2;->mSessionId:I

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCamera2;->releaseCameraPreviewCallback(Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    .line 8
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "X: resetConfigs"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetFlashStateTimeLock()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mSupportFlashTimeLock:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lcom/android/camera2/MiCamera2;->FLASH_LOCK_DEBUG:Z

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "reset flash state time lock!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/android/camera2/MiCamera2;->mLastFlashTimeMillis:J

    return-void
.end method

.method public resumePreview()I
    .locals 8

    const-string v0, "resumePreview"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "resumePreview"

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    instance-of v0, v0, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 4
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumePreview: cameraId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " highSpeed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_6

    if-eqz v0, :cond_3

    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 8
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureRequest;

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "high speed repeating for camera "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/camera/log/Log;->dumpRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v4, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v5, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumePreview: high speed repeating sequenceId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move v1, v0

    goto/16 :goto_6

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    :goto_2
    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto/16 :goto_4

    :catch_2
    move-exception v1

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    goto/16 :goto_5

    .line 13
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mZoomMapSurface:Landroid/view/Surface;

    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v0

    const/high16 v3, 0x41700000    # 15.0f

    cmpl-float v0, v0, v3

    const/4 v4, 0x1

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mZoomMapSurfaceAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "resumePreview: addTarget mZoomMapSurface"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mZoomMapSurface:Landroid/view/Surface;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_3

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getZoomRatio()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mZoomMapSurfaceAdded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "resumePreview: removeTarget mZoomMapSurface"

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mZoomMapSurface:Landroid/view/Surface;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 20
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "normal repeating for camera "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->dumpRequest(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest;)V

    .line 22
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v4, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v5, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    :try_start_4
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mWaitingFirstFrameRequestMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumePreview: repeating sequenceId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    .line 25
    :goto_4
    :try_start_5
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v4, "Failed to resume preview, IllegalState"

    invoke-static {v3, v4, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x100

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_6

    :catch_5
    move-exception v0

    .line 27
    :goto_5
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v4, "Failed to resume preview"

    invoke-static {v3, v4, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    .line 29
    :cond_6
    :goto_6
    monitor-exit v2

    return v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method public sendSatFallbackDisableRequest(ZZ)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSatFallbackDisableRequest: E. disable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isRepeatingRequest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->applySettingsForPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, v0, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applySatFallbackDisable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 6
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 p2, 0x6

    .line 9
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p1, p2}, Lcom/android/camera2/CameraConfigs;->setSatFallbackDisable(Z)V

    .line 11
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p1, v0, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applySatFallbackDisable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 12
    :goto_0
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p2, "sendSatFallbackDisableRequest: X."

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendSatFallbackRequest(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "sendSatFallbackRequest: E"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->initRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    const/16 v2, 0xa2

    if-ne p1, v2, :cond_1

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    const/4 v2, 0x1

    invoke-static {v0, p1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySatFallback(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    .line 8
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I

    move-result v1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v0, 0x6

    .line 11
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 12
    :goto_1
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSatFallbackRequest: X. requestId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public setAELock(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAELock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAELock(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, p1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_0
    return-void
.end method

.method public setAERegions([Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "setAERegions"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAERegions([Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAERegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setAFRegions([Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "setAFRegions"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAFRegions([Landroid/hardware/camera2/params/MeteringRectangle;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAFRegions(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setAIIEPreviewEnable(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAiAIIEPreviewEnable(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiAIIEPreviewEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setASDEnable(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setASDEnable(Z)Z

    move-result v0

    .line 2
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setASDEnable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyASDEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setASDPeriod(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAiSceneDetectPeriod(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiSceneDetectPeriod(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setASDScene(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setASDScene(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyASDScene(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setAWBLock(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAWBLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAWBLock(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, p1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBLock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    :cond_0
    return-void
.end method

.method public setAWBMode(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAWBMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAWBMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAWBMode()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_0
    return-void
.end method

.method public setAiASDEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAiASDEnable(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiASDEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setAiMoonEffectEnable(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAiMoonEffectEnable(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAiMoonEffectEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setAiShutterExistMotion(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAiShutterExistMotion(Z)Z

    return-void
.end method

.method public setAlgorithmPreviewFormat(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewFormat()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAlgorithmPreviewFormat(I)Z

    .line 3
    iget p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    if-lez p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->preparePreviewImageReader()V

    :cond_0
    return-void
.end method

.method public setAlgorithmPreviewSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAlgorithmPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAlgorithmPreviewSize(Lcom/android/camera/CameraSize;)Z

    .line 4
    iget p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    if-lez p1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->preparePreviewImageReader()V

    :cond_0
    return-void
.end method

.method public setAmbilightAeTarget(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbilightAeTarget: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAmbilightAeTarget(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAmbilightAeTarget(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setAmbilightMode(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbilightMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAmbilightMode(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAmbilightMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setAnchorCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera2/Camera2Proxy;->setAnchorCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V

    return-void
.end method

.method public setAntiBanding(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAntiBanding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAntiBanding(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiBanding(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setAsdAlgorithmEnable(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAsdAlgorithmEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAsdAlgorithmEnable(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAsdAlgorithmEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setAsdDirtyEnable(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAsdDirtyEnable(Z)Z

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAsdDirtyEnable(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setAutoZoomMode(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAutoZoomMode(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAutoZoomMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setAutoZoomScaleOffset(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setAutoZoomScaleOffset(F)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAutoZoomScaleOffset(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setAutoZoomStartCapture([FZ)V
    .locals 2

    const-string v0, "setAutoZoomStartCapture"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 5
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 6
    sget-object p2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->AUTOZOOM_START:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v0, p2, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    sget-object p2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setAutoZoomStopCapture(IZ)V
    .locals 2

    const-string v0, "setAutoZoomStopCapture "

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {v0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 5
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 6
    sget-object p2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->AUTOZOOM_STOP:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p2, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    sget-object p2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setBeautyLens(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBeautyLens "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setBeautyLens(I)Z

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyBeautyLens(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setBeautyValues(Lcom/android/camera/fragment/beauty/BeautyValues;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyBeautyValues(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setBinningPictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getBinningPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setBinningPhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setBinningSrData(Lcom/android/camera2/vendortag/struct/BinningSrData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getBinningSrData()Lcom/android/camera2/vendortag/struct/BinningSrData;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setBinningSrData(Lcom/android/camera2/vendortag/struct/BinningSrData;)Z

    :cond_0
    return-void
.end method

.method public setBokehDepthSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getBokehDepthSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setBokehDepthSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setBokehMainRawSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setBokehMainRawSize(Lcom/android/camera/CameraSize;)Z

    return-void
.end method

.method public setBokehSubRawSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setBokehSubRawSize(Lcom/android/camera/CameraSize;)Z

    return-void
.end method

.method public setBurstShotSpeed(I)V
    .locals 0

    return-void
.end method

.method public setCacheImageDecoder(Lcom/android/zxing/CacheImageDecoder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera2/Camera2Proxy;->mCacheImageDecoder:Lcom/android/zxing/CacheImageDecoder;

    return-void
.end method

.method public setCameraAI30(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setCameraAi30Enable(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyCameraAi30Enable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setCaptureBusyCallback(Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureBusyCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureBusyCallback:Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mShotQueueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2ShotQueue:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "setCaptureBusyCallback: shot queue empty"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 6
    invoke-interface {p1, v1}, Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;->onCaptureCompleted(Z)V

    goto :goto_0

    .line 7
    :cond_1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureBusyCallback:Lcom/android/camera2/Camera2Proxy$CaptureBusyCallback;

    .line 8
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCaptureIntent(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setCaptureIntent(I)Z

    return-void
.end method

.method public setCaptureTime(J)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera2/CameraConfigs;->setCaptureTime(J)V

    return-void
.end method

.method public setCaptureTriggerFlow([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setCaptureTriggerFlow([I)V

    return-void
.end method

.method public setCinematicPhotoEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setCinematicPhotoEnabled(Z)V

    return-void
.end method

.method public setCinematicVideoEnabled(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCinematicVideoEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setCinematicVideoEnabled(Z)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicVideo(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setColorEffect(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColorEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setColorEffect(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorEffect(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setColorEnhanceEnable(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setColorEnhanceEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorEnhance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setContrast(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContrast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setContrastLevel(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyContrast(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setCustomAWB(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCustomAWB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setCustomAWB(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getAwbCustomValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyCustomAWB(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    :cond_0
    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDeviceOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setDeviceOrientation(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyDeviceOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplayOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput p1, p0, Lcom/android/camera2/MiCamera2;->mDisplayOrientation:I

    return-void
.end method

.method public setDodepurpleEnabled(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setDodepurpleEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyDepurpleEnable(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setDualBokehEnable(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setDualBokehEnable(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyDualBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setDualCamWaterMarkEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setDualCamWaterMarkEnable(Z)Z

    return-void
.end method

.method public setEnableEIS(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnableEIS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setEnableEIS(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setEnableOIS(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportOIS(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnableOIS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setEnableOIS(Z)V

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyAntiShake(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setEnableZsl(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnableZsl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setEnableZsl(Z)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExposureCompensation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setExposureCompensationIndex(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setExposureMeteringMode(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExposureMeteringMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setExposureMeteringMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureMeteringMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setExposureTime(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera2/CameraConfigs;->setExposureTime(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, p2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setExtendSceneMode(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setExtendSceneMode(I)Z

    move-result v0

    .line 2
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExtendSceneMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyExtendSceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setFNumber(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFNumber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFNumber(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFNumber(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setFaceAgeAnalyze(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFaceAgeAnalyzeEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceAgeAnalyze(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setFaceScore(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFaceScoreEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceScore(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setFaceWaterMarkEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFaceWaterMarkEnable(Z)Z

    return-void
.end method

.method public setFaceWaterMarkFormat(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFaceWaterMarkFormat(Ljava/lang/String;)V

    return-void
.end method

.method public setFakeSatTeleOutputSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatTeleOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFakeSatTeleOutputSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setFakeSatTelePictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatTelePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFakeSatTelePhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setFakeSatUltraTeleOutputSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatUltraTeleOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFakeSatUltraTeleOutputSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setFakeSatUltraTelePictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatUltraTelePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFakeSatUltraTelePhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setFakeSatUltraWideOutputSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatUltraWideOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFakeSatUltraWideOutputSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setFakeSatUltraWidePictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatUltraWidePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFakeSatUltraWidePhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setFakeSatWideOutputSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatWideOutputSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFakeSatWideOutputSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setFakeSatWidePictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getFakeSatWidePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFakeSatWidePhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setFlashAutoDetectionEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFlashAutoDetectionEnabled(Z)V

    return-void
.end method

.method public setFlashMode(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlashMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFlashMode(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    return-void
.end method

.method public setFlawDetectEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFlawDetectEnable(Z)Z

    return-void
.end method

.method public setFocusDistance(F)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusDistance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFocusDistance(F)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusDistance(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setFocusMode(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFocusMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setFpsRange(Landroid/util/Range;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFpsRange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setPreviewFpsRange(Landroid/util/Range;)Z

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setFrameRatio(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFrameRatio(I)V

    return-void
.end method

.method public setFrontMirror(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrontMirror: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setFrontMirror(Z)V

    return-void
.end method

.method public setGlobalWatermark()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->setGlobalWatermark()V

    return-void
.end method

.method public setGpsLocation(Landroid/location/Location;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setGpsLocation(Landroid/location/Location;)V

    return-void
.end method

.method public setHDR(Lcom/android/camera2/Camera2Proxy$HDRStatus;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHDR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy$HDRStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setHDRStatus(Lcom/android/camera2/Camera2Proxy$HDRStatus;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyHDR(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setHDRCheckerEnable(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setHDRCheckerEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyHDRCheckerEnable(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setHDRCheckerStatus(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setHDRCheckerStatus(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyHDRCheckerStatus(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setHDRMode(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setHDRMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setHFRDeflickerEnable(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setHFRDeflickerEnable(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyHFRDeflicker(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setHHT(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setHHTEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyHHT(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setHdr10VideoMode(Z)V
    .locals 2

    if-eqz p1, :cond_3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrueColourVideoModeOn()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p1, v0}, Lcom/android/camera2/CameraConfigs;->setHDR10Video(I)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p1, v0}, Lcom/android/camera2/CameraConfigs;->setHDR10Video(I)Z

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/camera2/CameraConfigs;->setHDR10Video(I)Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/camera2/CameraConfigs;->setHDR10Video(I)Z

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/camera2/CameraConfigs;->setHDR10Video(I)Z

    .line 10
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyHDR10Video(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setHistogramStatsEnabled(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHistogramStatsEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setHistogramStatsEnabled(Z)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyHistogramStats(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setISO(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setISO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setISO(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera2/MiCamera2;->applyFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyIso(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setInTimerBurstShotting(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInTimerBurstShotting: ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setInTimerBurstShotting(Z)Z

    return-void
.end method

.method public setIsFaceExist(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setIsFaceExist(Z)V

    return-void
.end method

.method public setJpegQuality(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setJpegQuality(I)Z

    return-void
.end method

.method public setJpegRotation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setJpegRotation(I)Z

    return-void
.end method

.method public setJpegThumbnailSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setThumbnailSize(Lcom/android/camera/CameraSize;)Z

    return-void
.end method

.method public setLLS(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setLLSEnabled(Z)Z

    return-void
.end method

.method public setLLSForceDisabled(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLLSForceDisabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setLLSForceDisabled(Z)Z

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyForceDisableLLS(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setLensDirtyDetect(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setLensDirtyDetectEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyLensDirtyDetect(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setLimitMfnrNumFramesEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setLimitMfnrNumFramesEnabled(Z)Z

    return-void
.end method

.method public setMFLockAfAe(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setMFAfAeLock(Z)V

    return-void
.end method

.method public setMacroMode(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setMacroMode(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyMacroMode(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setMarcroPictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getMacroPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setMacroPhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setMfnr(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setMfnrEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyHwMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setMiviSuperNightMode(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMiviSuperNightMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setMiviSuperNightMode(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyMiviSuperNight(Lcom/android/camera2/CameraCapabilities;ILandroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setModuleAnchorFrame(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setModuleAnchorFrame(Z)V

    return-void
.end method

.method public setModuleParameter(II)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setModuleParameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/android/camera2/MiCamera2PreviewNormal;

    invoke-direct {v0, p1, p2}, Lcom/android/camera2/MiCamera2PreviewNormal;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    return-void
.end method

.method public setMtkPipDevices([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setMtkPipDevices([I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyMtkPipDevices(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setMultiSnapStopRequest(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setMultiSnapStopRequest(Z)V

    return-void
.end method

.method public setNeedPausePreview(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setPausePreview(Z)Z

    return-void
.end method

.method public setNeedSequence(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setNeedSequence(Z)V

    return-void
.end method

.method public setNewWatermark(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setNewWatermark(Z)V

    return-void
.end method

.method public setNormalWideLDC(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNormalWideLDC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setNormalWideLDCEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyNormalWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setOnTripodModeStatus([Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setOnTripodScenes([Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyOnTripodModeStatus(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setOpticalZoomToTele(Z)V
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O0000O()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 2
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportFastZoomIn(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOpticalZoomToTele: toTele = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2;->mToTele:Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyStFastZoomIn(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    return-void
.end method

.method public setParallelSettings(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera2/CameraConfigs;->setParallelSettings(II)V

    return-void
.end method

.method public setPhysicalCameraIdForPortrait(Lcom/xiaomi/protocol/IImageReaderParameterSets;Landroid/hardware/camera2/params/OutputConfiguration;Z)V
    .locals 1

    .line 1
    iget p1, p1, Lcom/xiaomi/protocol/IImageReaderParameterSets;->imageType:I

    if-nez p1, :cond_0

    if-nez p3, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getPhysicalBokehMainId()I

    move-result p1

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setPhysicalCameraId(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)V

    .line 4
    sget-object p2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Binds main output stream to camera "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getPhysicalBokehSubId()I

    move-result p1

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->setPhysicalCameraId(Landroid/hardware/camera2/params/OutputConfiguration;Ljava/lang/String;)V

    .line 7
    sget-object p2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Binds sub output stream to camera "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setPictureFormat(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getPhotoFormat()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setPhotoFormat(I)Z

    .line 3
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->preparePhotoImageReader()V

    :cond_0
    return-void
.end method

.method public setPictureMaxImages(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getPhotoMaxImages()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setPhotoMaxImages(I)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->preparePhotoImageReader()V

    :cond_0
    return-void
.end method

.method public setPictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setPhotoSize(Lcom/android/camera/CameraSize;)Z

    .line 4
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->preparePhotoImageReader()V

    :cond_0
    return-void
.end method

.method public setPortraitLighting(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setPortraitLightingPattern(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyPortraitLighting(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setPreviewMaxImages(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getPreviewMaxImages()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setPreviewMaxImages(I)V

    :cond_0
    return-void
.end method

.method public setPreviewSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setPreviewSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setQcfaEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setQcfaEnable(Z)V

    return-void
.end method

.method public setQuickShotAnimation(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setQuickShotAnimation(Z)V

    return-void
.end method

.method public setRawSizeOfMacro(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setRawSizeOfMacro(Lcom/android/camera/CameraSize;)Z

    return-void
.end method

.method public setRawSizeOfTele(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setRawSizeOfTele(Lcom/android/camera/CameraSize;)Z

    return-void
.end method

.method public setRawSizeOfTuningBuffer(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setRawSizeOfTuningBuffer(Lcom/android/camera/CameraSize;)Z

    return-void
.end method

.method public setRawSizeOfUltraTele(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setRawSizeOfUltraTele(Lcom/android/camera/CameraSize;)Z

    return-void
.end method

.method public setRawSizeOfUltraWide(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setRawSizeOfUltraWide(Lcom/android/camera/CameraSize;)Z

    return-void
.end method

.method public setRawSizeOfWide(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setRawSizeOfWide(Lcom/android/camera/CameraSize;)Z

    return-void
.end method

.method public setSATRemosaicPictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getSATRemosaicPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSATRemosaicPhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setSATUltraWideLDC(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSATUltraWideLDC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0, v1, p1}, Lcom/android/camera2/CaptureRequestBuilder;->applySATUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Z)V

    return-void
.end method

.method public setSatIsZooming(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSatIsZooming(Z)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySatIsZooming(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setSaturation(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSaturation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSaturationLevel(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySaturation(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setSceneMode(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSceneMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSceneMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setSensorRawImageSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getSensorRawImageSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSensorRawImageSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setSharpness(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSharpness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSharpnessLevel(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySharpness(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setShot2Gallery(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShot2Gallery: isShot2Gallery="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setShot2Gallery(Z)Z

    return-void
.end method

.method public setShotBoostParams(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mShotBoostParams:Ljava/util/function/Consumer;

    return-void
.end method

.method public setShotSavePath(Ljava/lang/String;ZZ)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShotSavePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isParallel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera2/CameraConfigs;->setShotPath(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public setShotType(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShotType: algo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setShotType(I)Z

    return-void
.end method

.method public setSingleBokeh(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSingleBokehEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applySingleBokeh(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setSkinColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSkinColor(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applySkinColor(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setSpecshotModeEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSpecshotModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSpecshotModeEnable(Z)Z

    return-void
.end method

.method public setSubPictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getSubPhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSubPhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setSuperNight(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSuperNightEnabled(Z)V

    return-void
.end method

.method public setSuperResolution(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSuperResolutionEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySuperResolution(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setSwMfnr(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setSwMfnrEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySwMfnr(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setTargetZoom(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setTargetZoom(F)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyTargetZoom(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setTelePictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getTelePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setTelePhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setThermalLevel(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setThermalLevel(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyThermal(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setTimeWaterMarkEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setTimeWaterMarkEnable(Z)Z

    return-void
.end method

.method public setTimeWatermarkValue(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setTimeWaterMarkValue(Ljava/lang/String;)V

    return-void
.end method

.method public setTrackEyeEnable(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTrackFocusEnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setTrackEyeEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyTrackEyeEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setTrackFocusEnable(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTrackFocusEnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setTrackFocusEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyTrackFocusEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setTuningBufferSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getTuningBufferSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setTuningBufferSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setTuningMode(B)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setTuningMode(B)Z

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyTuningMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setUltraPixelPortrait(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setUltraPixelPortraitEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyUltraPixelPortrait(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setUltraTelePictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getStandalonePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setUltraTelePhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setUltraWideLDC(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUltraWideLDC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setUltraWideLDCEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyUltraWideLDC(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->ULTRA_WIDE_LENS_DISTORTION_CORRECTION_LEVEL:Lcom/android/camera2/vendortag/VendorTag;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v1}, Lcom/android/camera2/CameraConfigs;->isUltraWideLDCEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CaptureSessionConfigurations;)V

    :cond_0
    return-void
.end method

.method public setUltraWidePictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getUltraWidePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setUltraWidePhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setUseLegacyFlashMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setUseLegacyFlashMode(Z)V

    return-void
.end method

.method public setVendorSetting(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setVideoBokehLevelBack(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoBokehLevelBack(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehLevelBack(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setVideoBokehLevelFront(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoBokehLevelFront(F)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehLevelFront(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setVideoFilterColorRetentionBack(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoFilterColorRetentionBack(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorRetentionBack(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setVideoFilterColorRetentionFront(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoFilterColorRetentionFront(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyColorRetentionFront(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setVideoFilterColorRetentionMode(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera2/CameraConfigs;->setVideoBokehColorRetentionMode(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1, p2}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoBokehColorRetentionMode(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;Z)V

    :cond_0
    return-void
.end method

.method public setVideoFilterId(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoFilterId(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoFilterId(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setVideoFilterRecordControlEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoFilterRecordControlEnabled(Z)V

    return-void
.end method

.method public setVideoFpsRange(Landroid/util/Range;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoFpsRange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoFpsRange(Landroid/util/Range;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setVideoLogEnabled(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoLogEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setIsVideoLogEnabled(Z)Z

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyVideoLog(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public setVideoSnapshotSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setVideoSnapshotSize(Lcom/android/camera/CameraSize;)V

    return-void
.end method

.method public setWidePictureSize(Lcom/android/camera/CameraSize;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getWidePhotoSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setWidePhotoSize(Lcom/android/camera/CameraSize;)Z

    :cond_0
    return-void
.end method

.method public setZoomRatio(F)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZoomRatio(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setZoomRatio(F)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p1, v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    :cond_0
    return-void
.end method

.method public setZoomRatioForCapture(F)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZoomRatioForCapture(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0, p1}, Lcom/android/camera2/CameraConfigs;->setZoomRatio(F)Z

    return-void
.end method

.method public startFaceDetection()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "startFaceDetection"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigs;->setFaceDetectionEnabled(Z)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceDetection(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public startFocus(Lcom/android/camera/module/loader/camera2/FocusTask;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFocus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "startFocus"

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    invoke-virtual {v0, p1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setFocusTask(Lcom/android/camera/module/loader/camera2/FocusTask;)V

    .line 4
    invoke-direct {p0, p2}, Lcom/android/camera2/MiCamera2;->initFocusRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p2

    if-nez p2, :cond_1

    .line 5
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p2, "startFocus afBuilder == null, return"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7
    invoke-direct {p0, p2}, Lcom/android/camera2/MiCamera2;->applySettingsForFocusCapture(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 8
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 9
    invoke-direct {p0, p2}, Lcom/android/camera2/MiCamera2;->applySuperNightRaw(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getmMtkPipDevices()[I

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {p2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyMtkPipDevices(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    .line 13
    sget-object v2, Lcom/android/camera/trackfocus/TrackFocusResultTag;->TRACK_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v0, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 14
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrackFocusOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-static {p2, v1}, Lcom/android/camera/trackfocus/TrackFocusRequestTag;->applyCancelTouchTackAF(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 16
    :cond_3
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Lcom/android/camera/module/loader/camera2/FocusTask;->setRequest(Landroid/hardware/camera2/CaptureRequest;)V

    .line 18
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-direct {p0, p2, v0, v2, p1}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I

    .line 19
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p1, v1}, Lcom/android/camera2/CameraConfigs;->setFocusMode(I)Z

    .line 20
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 21
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrackFocusOn()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 22
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/camera/trackfocus/TrackFocusRequestTag;->applyCancelTouchTackAF(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 23
    :cond_4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewControl:Lcom/android/camera2/MiCamera2Preview;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Preview;->needForVideo()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 24
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 25
    :cond_5
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->applySettingsForPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 26
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 27
    sget-object p2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "Failed to start focus: "

    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception p1

    .line 28
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 p2, 0x6

    .line 29
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_1
    return-void
.end method

.method public startHighSpeedRecordPreview()V
    .locals 2

    const-string v0, "startHighSpeedRecordPreview"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyIsHfrPreview(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    return-void
.end method

.method public startHighSpeedRecordSession(Landroid/view/Surface;Landroid/view/Surface;IILandroid/util/Range;Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "II",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera2/Camera2Proxy$CameraPreviewCallback;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    const-string v5, "startHighSpeedRecordSession"

    .line 1
    invoke-direct {v1, v5}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v5, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Object;

    .line 3
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v11, 0x2

    aput-object v2, v8, v11

    const/4 v12, 0x3

    aput-object v3, v8, v12

    const-string v13, "startHighSpeedRecordSession: operatingMode=0x%x previewSurface=%s recordSurface=%s fpsRange=%s"

    .line 4
    invoke-static {v6, v13, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v5, v6}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 5
    iput-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    .line 6
    iput-object v2, v1, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    .line 7
    iput-object v3, v1, Lcom/android/camera2/MiCamera2;->mHighSpeedFpsRange:Landroid/util/Range;

    .line 8
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->genSessionId()I

    move-result v0

    iput v0, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    .line 9
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_2

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedCinematicVideo(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CINEMATIC_VIDEO_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->isCinematicVideoEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v9

    goto :goto_0

    :cond_1
    move v3, v10

    :goto_0
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 11
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v2, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicVideo(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 12
    :cond_2
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, v12}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 13
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 14
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 15
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->APP_MODULE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 16
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyAppModule(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 17
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mHighSpeedFpsRange:Landroid/util/Range;

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 18
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :try_start_1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startHighSpeedRecordSession: reset session "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 20
    iput-object v0, v1, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 21
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :try_start_2
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    if-nez v0, :cond_3

    .line 23
    new-instance v0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    iget v2, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-direct {v0, v1, v2, v4}, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iput-object v0, v1, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    :cond_3
    new-array v0, v11, [Landroid/view/Surface;

    .line 24
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    aput-object v2, v0, v10

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    aput-object v2, v0, v9

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 25
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "startHighSpeedRecordSession: add PreviewSurface configuration: format=0x%x size=%s"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    .line 26
    invoke-static {v8}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v10

    iget-object v8, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    .line 27
    invoke-static {v8}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    .line 28
    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 29
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "startHighSpeedRecordSession: add RecordSurface configuration: format=0x%x size=%s"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v8, v1, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    .line 30
    invoke-static {v8}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v10

    iget-object v8, v1, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    .line 31
    invoke-static {v8}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    .line 32
    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v2, v3}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "startHighSpeedRecordSession: setup output configuration number: 2"

    invoke-static {v7, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v2

    const/16 v3, 0x78

    if-eqz v2, :cond_b

    .line 35
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v5, "turns PQ feature on"

    invoke-static {v2, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v5, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_CONFIGURE_SETTING_PROPRIETARY:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v6, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_CONFIGURE_SETTING_PROPRIETARY_ON:[I

    invoke-virtual {v2, v5, v6}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 37
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v2, v9}, Lcom/android/camera2/compat/MiCameraCompat;->applyPqFeature(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 38
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mHighSpeedFpsRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 39
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v5

    invoke-virtual {v5}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0ooO()Z

    move-result v5

    const/16 v6, 0xf0

    if-eqz v5, :cond_7

    if-ne v2, v3, :cond_4

    .line 40
    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VALUE_SMVR_MODE_120FPS:[I

    goto :goto_1

    :cond_4
    if-ne v2, v6, :cond_6

    .line 41
    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VALUE_SMVR_MODE_240FPS:[I

    .line 42
    :goto_1
    iget-object v5, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v6, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SMVR_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {v5, v6, v3}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 43
    iget-object v5, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v5, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applySlowMotionVideoRecordingMode(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V

    .line 44
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startHighSpeedRecordSession: turns smvrmode to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 47
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 48
    :cond_5
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "startHighSpeedRecordSession: operatingMode=0x%x"

    new-array v5, v9, [Ljava/lang/Object;

    .line 49
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    .line 50
    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 52
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v15

    new-instance v0, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;

    iget v2, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-direct {v0, v1, v2, v4}, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    .line 53
    invoke-static/range {v11 .. v17}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto/16 :goto_6

    .line 54
    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Slow Motion Recording: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mHighSpeedFpsRange:Landroid/util/Range;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-ne v2, v3, :cond_8

    .line 55
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startHighSpeedRecordSession: maxFps="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v3, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;

    iget v5, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-direct {v3, v1, v5, v4}, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/camera2/CameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto/16 :goto_6

    :cond_8
    if-ne v2, v6, :cond_a

    .line 57
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SMVR_MODE:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v5, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VALUE_SMVR_MODE_240FPS:[I

    invoke-virtual {v2, v3, v5}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 58
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VALUE_SMVR_MODE_240FPS:[I

    invoke-static {v2, v3}, Lcom/android/camera2/compat/MiCameraCompat;->applySlowMotionVideoRecordingMode(Landroid/hardware/camera2/CaptureRequest$Builder;[I)V

    .line 59
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "startHighSpeedRecordSession: turns smvrmode to 240"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 62
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 63
    :cond_9
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "startHighSpeedRecordSession: operatingMode=0x%x"

    new-array v5, v9, [Ljava/lang/Object;

    .line 64
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    .line 65
    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 67
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v15

    new-instance v0, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;

    iget v2, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-direct {v0, v1, v2, v4}, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    .line 68
    invoke-static/range {v11 .. v17}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto/16 :goto_6

    .line 69
    :cond_a
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Slow Motion Recording: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mHighSpeedFpsRange:Landroid/util/Range;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_b
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mHighSpeedFpsRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_d

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0ooO()Z

    move-result v2

    if-nez v2, :cond_d

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 73
    new-instance v5, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v5, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 74
    :cond_c
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "startHighSpeedRecordSession: operatingMode=0x%x"

    new-array v6, v9, [Ljava/lang/Object;

    const v8, 0x8078

    .line 75
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v10

    .line 76
    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v0, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x0

    const v5, 0x8078

    new-instance v6, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;

    iget v7, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-direct {v6, v1, v7, v4}, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    move-object/from16 p1, v0

    move-object/from16 p2, v3

    move-object/from16 p3, v2

    move/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v4

    invoke-static/range {p1 .. p6}, Lcom/xiaomi/compat/camera2/CameraDeviceCompat;->createCustomCaptureSession(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto/16 :goto_6

    .line 78
    :cond_d
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o000OoOO()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 79
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .line 81
    new-instance v5, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v5, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 82
    :cond_e
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mHighSpeedFpsRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x8

    move/from16 v5, p4

    if-ne v5, v2, :cond_f

    if-ne v0, v3, :cond_f

    .line 83
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "startHighSpeedRecordSession: use customized operatingMode=0x%x"

    new-array v5, v9, [Ljava/lang/Object;

    .line 84
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    .line 85
    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v13, 0x0

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 87
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v15

    new-instance v0, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;

    iget v2, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-direct {v0, v1, v2, v4}, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    move/from16 v12, p3

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    .line 88
    invoke-static/range {v11 .. v17}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_6

    .line 89
    :cond_f
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "startHighSpeedRecordSession: operatingMode=0x%x"

    new-array v5, v9, [Ljava/lang/Object;

    .line 90
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    .line 91
    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v11, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v12, 0x1

    const/4 v13, 0x0

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 93
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v15

    new-instance v0, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;

    iget v2, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-direct {v0, v1, v2, v4}, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    .line 94
    invoke-static/range {v11 .. v17}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_6

    .line 95
    :cond_10
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v3, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;

    iget v5, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    invoke-direct {v3, v1, v5, v4}, Lcom/android/camera2/MiCamera2$HighSpeedCaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/camera2/CameraDevice;->createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 96
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    const/4 v2, -0x1

    .line 97
    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    .line 98
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "Failed to start high speed record session"

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    return-void
.end method

.method public startHighSpeedRecording()V
    .locals 3

    const-string v0, "startHighSpeedRecording"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera2/compat/MiCameraCompat;->applyIsHfrPreview(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0oo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "startHighSpeedRecording: CAF is disabled"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-static {v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CaptureSessionConfigurations;)V

    .line 8
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    return-void
.end method

.method public startObjectTrack(Landroid/graphics/RectF;)V
    .locals 0

    return-void
.end method

.method public startPreviewCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V
    .locals 2

    const-string v0, "startPreviewCallback"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    if-lez v0, :cond_3

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p0, p2}, Lcom/android/camera2/MiCamera2;->setAnchorCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->setPreviewCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V

    .line 6
    :cond_2
    iget-boolean p1, p0, Lcom/android/camera2/MiCamera2;->mIsPreviewCallbackStarted:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/android/camera2/MiCamera2;->mIsPreviewCallbackStarted:Z

    .line 8
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {p2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_3
    return-void
.end method

.method public startPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p7

    .line 1
    invoke-virtual/range {v0 .. v8}, Lcom/android/camera2/MiCamera2;->startPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    return-void
.end method

.method public startPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
    .locals 10

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 2
    invoke-direct/range {v0 .. v9}, Lcom/android/camera2/MiCamera2;->startPreviewSessionImpl(Landroid/view/Surface;IILandroid/view/Surface;IZZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;I)V

    return-void
.end method

.method public startRecordPreview()V
    .locals 4

    const-string v0, "startRecordPreview"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isEnableRecordControl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VIDEO_RECORD_CONTROL:Lcom/android/camera2/vendortag/VendorTag;

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 8
    invoke-static {v0, v2, v3}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 9
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mVideoRecording:Z

    .line 10
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 11
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "Failed to start record preview, IllegalState"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x100

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 14
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "Failed to start record preview"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_0
    return-void
.end method

.method public startRecordSession(Landroid/view/Surface;Landroid/view/Surface;ZILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "startRecordSession"

    .line 1
    invoke-direct {v1, v3}, Lcom/android/camera2/MiCamera2;->checkCameraDevice(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v3, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    .line 3
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v0, v6, v7

    const/4 v9, 0x2

    aput-object v2, v6, v9

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v6, v11

    const-string v10, "startRecordSession: operatingMode=0x%x previewSurface=%s recordSurface=%s enableVideoSnapshot=%s"

    .line 4
    invoke-static {v4, v10, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 5
    iput-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    .line 6
    iput-object v2, v1, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->genSessionId()I

    move-result v0

    iput v0, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    .line 8
    iput v0, v1, Lcom/android/camera2/MiCamera2;->mVideoSessionId:I

    .line 9
    :try_start_0
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, v11}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 10
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 11
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isEnableRecordControl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VIDEO_RECORD_CONTROL:Lcom/android/camera2/vendortag/VendorTag;

    .line 13
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 14
    invoke-static {v0, v2, v3}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 15
    :cond_1
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->APP_MODULE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 16
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->SESSIONKEY_VIDEO_HDR10:Lcom/android/camera2/vendortag/VendorTag;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->getHDR10Video()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 17
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera2/compat/MiCameraCompat;->applyAppModule(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 18
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {v1, v0}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 19
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applyFpsRange(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    .line 20
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v2, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyTrackFocusEnable(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 21
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :try_start_1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRecordSession: reset session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 23
    iput-object v0, v1, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 24
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :try_start_2
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "startRecordSession: add PreviewSurface configuration: format=0x%x size=%s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    .line 26
    invoke-static {v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v8

    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    .line 27
    invoke-static {v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    .line 28
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v0, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 29
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "startRecordSession: add RecordSurface configuration: format=0x%x size=%s"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    .line 30
    invoke-static {v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v8

    iget-object v6, v1, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    .line 31
    invoke-static {v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/Size;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    .line 32
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v0, v2}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 33
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getVideoSnapshotSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 34
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getVideoSnapshotSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/camera2/MiCamera2;->prepareVideoSnapshotImageReader(Lcom/android/camera/CameraSize;)V

    :cond_2
    new-array v0, v11, [Landroid/view/Surface;

    .line 35
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    aput-object v2, v0, v8

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    aput-object v2, v0, v7

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    .line 36
    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v0, v9

    .line 37
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 38
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "startRecordSession: add VideoSnapshotImageReader configuration: format=0x%x size=%dx%d"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v10, v1, Lcom/android/camera2/MiCamera2;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    .line 39
    invoke-virtual {v10}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v8

    iget-object v10, v1, Lcom/android/camera2/MiCamera2;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    invoke-virtual {v10}, Landroid/media/ImageReader;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    iget-object v10, v1, Lcom/android/camera2/MiCamera2;->mVideoSnapshotImageReader:Landroid/media/ImageReader;

    .line 40
    invoke-virtual {v10}, Landroid/media/ImageReader;->getHeight()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v9

    .line 41
    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-array v0, v9, [Landroid/view/Surface;

    .line 42
    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    aput-object v2, v0, v8

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    aput-object v2, v0, v7

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 43
    :goto_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    .line 45
    new-instance v4, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v4, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 46
    :cond_4
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startRecordSession: setup output configuration number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    if-nez v0, :cond_5

    .line 48
    new-instance v0, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    iget v2, v1, Lcom/android/camera2/MiCamera2;->mSessionId:I

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;-><init>(Lcom/android/camera2/MiCamera2;ILcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V

    iput-object v0, v1, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    .line 49
    :cond_5
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->CINEMATIC_VIDEO_ENABLED:Lcom/android/camera2/vendortag/VendorTag;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v3}, Lcom/android/camera2/CameraConfigs;->isCinematicVideoEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v7

    goto :goto_2

    :cond_6
    move v3, v8

    :goto_2
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 50
    invoke-direct/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->applyVideoHdrModeIfNeed()V

    .line 51
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 52
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "startRecordSession: turns PQ feature on"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_CONFIGURE_SETTING_PROPRIETARY:Lcom/android/camera2/vendortag/VendorTag;

    sget-object v3, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->MTK_CONFIGURE_SETTING_PROPRIETARY_ON:[I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 54
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, v7}, Lcom/android/camera2/compat/MiCameraCompat;->applyPqFeature(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/MiCamera2;->applyMtkQuickPreview()V

    .line 56
    invoke-static {}, Lcom/android/camera/CameraSettings;->getHSRIntegerValue()I

    move-result v0

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_7

    move v8, v7

    :cond_7
    if-eqz v8, :cond_8

    .line 57
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->HFPSVR_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera2/CaptureSessionConfigurations;->set(Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 58
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, v7}, Lcom/android/camera2/compat/MiCameraCompat;->applyHighFpsVideoRecordingMode(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 59
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "startRecordSession: turns hfpsmode on"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_8
    iget-object v9, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v11, 0x0

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 61
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v13

    iget-object v14, v1, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    iget-object v15, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    move/from16 v10, p4

    .line 62
    invoke-static/range {v9 .. v15}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    goto :goto_3

    .line 63
    :cond_9
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v2, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyCinematicVideo(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 64
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v3, v1, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v7, v2, v3}, Lcom/android/camera2/CaptureRequestBuilder;->applyExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/android/camera2/CameraCapabilities;Lcom/android/camera2/CameraConfigs;)V

    .line 65
    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/android/camera2/MiCamera2;->mSessionConfigs:Lcom/android/camera2/CaptureSessionConfigurations;

    invoke-static {v0, v2}, Lcom/android/camera2/CaptureRequestBuilder;->applySessionParameters(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CaptureSessionConfigurations;)V

    .line 66
    iget-object v9, v1, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v11, 0x0

    iget-object v0, v1, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 67
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v13

    iget-object v14, v1, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    iget-object v15, v1, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    move/from16 v10, p4

    .line 68
    invoke-static/range {v9 .. v15}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->createCaptureSessionWithSessionConfiguration(Landroid/hardware/camera2/CameraDevice;ILandroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 69
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 70
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "Failed to start recording session, IllegalState"

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x100

    .line 71
    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_3

    :catch_1
    move-exception v0

    .line 72
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v3, "Failed to start recording session"

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_3
    return-void
.end method

.method public startRecording(ZZ)V
    .locals 6

    const-string v0, "startRecording"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "E: startRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 4
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isEnableRecordControl()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Lcom/android/camera2/vendortag/CaptureRequestVendorTags;->VIDEO_RECORD_CONTROL:Lcom/android/camera2/vendortag/VendorTag;

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 7
    invoke-static {v0, v2, v3}, Lcom/android/camera2/vendortag/VendorTagHelper;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/vendortag/VendorTag;Ljava/lang/Object;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mRecordSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 10
    :cond_2
    iput-boolean v1, p0, Lcom/android/camera2/MiCamera2;->mVideoRecording:Z

    .line 11
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->applySettingsForVideo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    if-eqz p2, :cond_5

    .line 12
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->abortCaptures()V

    .line 13
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {p1}, Lcom/android/camera2/CameraConfigs;->getISO()I

    move-result p1

    if-nez p1, :cond_5

    .line 14
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getPreviewCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 15
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 17
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo0O()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportISOGain(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    sget-object v1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->ISO_DIGITAL_GAIN:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Float;

    if-nez v1, :cond_3

    .line 19
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_3
    int-to-float p1, p2

    .line 20
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->getExposureTime()J

    move-result-wide v2

    const-wide/32 v4, 0x7735940

    div-long/2addr v2, v4

    long-to-float v0, v2

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 21
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMinIso(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMaxIso(Lcom/android/camera2/CameraCapabilities;)I

    move-result v2

    invoke-static {p1, v0, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    if-lez p1, :cond_4

    .line 22
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v0, p1}, Lcom/android/camera2/compat/MiCameraCompat;->applyISO(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 23
    :cond_4
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "previewIso "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " isoDigitalGain "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " recordIso "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    .line 25
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p2, "X: startRecording"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    sget-object p2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "Failed to start recording, IllegalState"

    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x100

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 28
    sget-object p2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "Failed to start recording"

    invoke-static {p2, v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :goto_0
    return-void
.end method

.method public startTrackFocus(Landroid/graphics/Rect;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTrackFocus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/camera2/MiCamera2;->initRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 4
    invoke-direct {p0, p2}, Lcom/android/camera2/MiCamera2;->applySettingsForPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p2, v0, p1}, Lcom/android/camera2/CaptureRequestBuilder;->applyTrackFocusArea(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Landroid/graphics/Rect;)V

    .line 6
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCameraHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera2/MiCamera2;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;Lcom/android/camera/module/loader/camera2/FocusTask;)I

    .line 8
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p2, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p1, p2, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyTrackFocusArea(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraCapabilities;Landroid/graphics/Rect;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p2, "startTrackFocus error"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :goto_0
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string p2, "startTrackFocus end"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startVideoPreviewSession(Landroid/view/Surface;IILandroid/view/Surface;IZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;)V
    .locals 10

    const/4 v7, 0x0

    const/4 v9, 0x3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/android/camera2/MiCamera2;->startPreviewSessionImpl(Landroid/view/Surface;IILandroid/view/Surface;IZZLcom/android/camera2/Camera2Proxy$CameraPreviewCallback;I)V

    return-void
.end method

.method public stopFaceDetection()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "stopFaceDetection"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/CameraConfigs;->setFaceDetectionEnabled(Z)Z

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-static {v0, v1}, Lcom/android/camera2/CaptureRequestBuilder;->applyFaceDetection(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera2/CameraConfigs;)V

    return-void
.end method

.method public stopObjectTrack()V
    .locals 0

    return-void
.end method

.method public stopPreviewCallback(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPreviewCallback(): isRelease = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewCallbackType:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mIsPreviewCallbackStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mIsPreviewCallbackStarted:Z

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->setPreviewCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCamera2;->setAnchorCallback(Lcom/android/camera2/Camera2Proxy$PreviewCallback;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 8
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    if-nez p1, :cond_1

    const-string p1, "stopPreviewCallback"

    .line 9
    invoke-direct {p0, p1}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    :cond_1
    return-void
.end method

.method public stopRecording()V
    .locals 5

    const-string v0, "stopRecording"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isEnableRecordControl()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 4
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->setVideoRecordControl(I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "Failed to stop recording, IllegalState"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x100

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 7
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v1, 0x6

    .line 8
    sget-object v2, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to stop recording "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera2/Camera2Proxy;->notifyOnError(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public takePicture(Lcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/xiaomi/camera/core/ParallelCallback;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takePicture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/camera2/Camera2Proxy;->setParallelCallback(Lcom/xiaomi/camera/core/ParallelCallback;)V

    .line 4
    invoke-virtual {p0, p3}, Lcom/android/camera2/Camera2Proxy;->setButtonStatus(Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->triggerCapture()V

    return-void
.end method

.method public takeSimplePicture(Lcom/android/camera2/Camera2Proxy$PictureCallback;Lcom/android/camera/storage/ImageSaver;Lcom/android/camera/CameraScreenNail;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "takeSimplePicture"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->captureStillPicture()V

    .line 4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/camera2/MiCamera2ShotSimplePreview;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lcom/android/camera/SurfaceTextureScreenNail$PreviewSaveListener;

    invoke-virtual {p3, p1}, Lcom/android/camera/CameraScreenNail;->setPreviewSaveListener(Lcom/android/camera/SurfaceTextureScreenNail$PreviewSaveListener;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getPictureCallback()Lcom/android/camera2/Camera2Proxy$PictureCallback;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/camera2/MiCamera2Shot;->setPictureCallback(Lcom/android/camera2/Camera2Proxy$PictureCallback;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    check-cast p1, Lcom/android/camera2/MiCamera2ShotSimplePreview;

    invoke-virtual {p1, p2}, Lcom/android/camera2/MiCamera2ShotSimplePreview;->setImageSaver(Lcom/android/camera/storage/ImageSaver;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mMiCamera2Shot:Lcom/android/camera2/MiCamera2Shot;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2Shot;->startShot()V

    :cond_0
    return-void
.end method

.method public unlockExposure()V
    .locals 2

    const-string v0, "unlockExposure"

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera2/MiCamera2;->checkCaptureSession(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCaptureCallback:Lcom/android/camera2/MiCamera2$PictureCaptureCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera2/MiCamera2$PictureCaptureCallback;->setState(I)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera2/MiCamera2;->setAELock(Z)V

    .line 4
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v1, v0}, Lcom/android/camera2/CaptureRequestBuilder;->applyAELock(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->resumePreview()I

    return-void
.end method

.method public updateDeferPreviewSession(Landroid/view/Surface;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "E: updateDeferPreviewSession"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    if-nez v1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    .line 5
    iput-object p1, p0, Lcom/android/camera2/MiCamera2;->mDeferPreviewSurface:Landroid/view/Surface;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 7
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "X: updateDeferPreviewSession: it is no need to update"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    monitor-exit v0

    return v1

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez p1, :cond_2

    .line 10
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "X: updateDeferPreviewSession: capture session is not ready"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    monitor-exit v0

    return v1

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    if-nez p1, :cond_3

    .line 13
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "X: updateDeferPreviewSession: preview surface is not ready"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    monitor-exit v0

    return v1

    .line 15
    :cond_3
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->isLocalParallelServiceReady()Z

    move-result p1

    if-nez p1, :cond_4

    .line 16
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "updateDeferPreviewSession: ParallelService is not ready"

    invoke-static {p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mHelperHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xa

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 19
    monitor-exit v0

    return v1

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mFakeOutputTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_6

    .line 23
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/imagereaders/OutputConfigurationSpec;

    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/OutputConfigurationSpec;->getConfiguration()Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 25
    iget-boolean v3, p0, Lcom/android/camera2/MiCamera2;->mSetRepeatingEarly:Z

    if-eqz v3, :cond_5

    .line 26
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 27
    :cond_5
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    .line 28
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_6
    iget-boolean v2, p0, Lcom/android/camera2/MiCamera2;->mEnableParallelSession:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mDeferImageReaderList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_8

    .line 30
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->prepareRemoteImageReader()Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera2/MiCamera2;->mParallelSpecList:Landroid/util/SparseArray;

    if-eqz v2, :cond_8

    .line 31
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 32
    :goto_0
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 33
    iget-object v2, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/imagereaders/OutputConfigurationSpec;

    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/OutputConfigurationSpec;->getKey()I

    move-result v2

    .line 34
    iget-object v3, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera2/imagereaders/OutputConfigurationSpec;

    invoke-virtual {v3}, Lcom/android/camera2/imagereaders/OutputConfigurationSpec;->getConfiguration()Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v3

    .line 35
    iget-object v4, p0, Lcom/android/camera2/MiCamera2;->mParallelSpecList:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    if-eqz v2, :cond_7

    .line 36
    invoke-virtual {v2}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getImageReader()Landroid/media/ImageReader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    .line 37
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_8
    iget-object v1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraCaptureSession;->finalizeOutputConfigurations(Ljava/util/List;)V

    .line 39
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "updateDeferPreviewSession: finalizeOutputConfigurations success"

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 40
    :try_start_2
    sget-object v1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v2, "updateDeferPreviewSession: finalizeOutputConfigurations failed"

    invoke-static {v1, v2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    :goto_1
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mDeferImageReaderList:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/camera2/imagereaders/ImageReaderSurface;->getValueFromSparseArray(Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;

    .line 43
    invoke-virtual {v1}, Lcom/android/camera2/imagereaders/ImageReaderSurfaceSpec;->getImageReader()Landroid/media/ImageReader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    goto :goto_2

    .line 44
    :cond_9
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mDeferImageReaderList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 45
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mDeferOutputConfigurations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 46
    iget-boolean p1, p0, Lcom/android/camera2/MiCamera2;->mEnableParallelSession:Z

    if-eqz p1, :cond_a

    .line 47
    invoke-direct {p0}, Lcom/android/camera2/MiCamera2;->configMaxParallelRequestNumber()V

    .line 48
    :cond_a
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    if-eqz p1, :cond_b

    .line 49
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCaptureSessionStateCallback:Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;

    invoke-virtual {p1}, Lcom/android/camera2/MiCamera2$CaptureSessionStateCallback;->onPreviewSessionSuccess()V

    .line 50
    :cond_b
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    sget-object p1, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v0, "X: updateDeferPreviewSession"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 52
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public updateFlashStateTimeLock()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/MiCamera2;->mSupportFlashTimeLock:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-boolean v0, Lcom/android/camera2/MiCamera2;->FLASH_LOCK_DEBUG:Z

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/android/camera2/MiCamera2;->TAG:Ljava/lang/String;

    const-string v1, "update flash state time lock!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera2/MiCamera2;->mLastFlashTimeMillis:J

    return-void
.end method

.method public updateFrameNumber(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera2/MiCamera2;->mCurrentFrameNum:J

    return-void
.end method

.method public useLegacyFlashStrategy()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mConfigs:Lcom/android/camera2/CameraConfigs;

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isUseLegacyFlashMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public useSingleCaptureForHdrPlusMfnr(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O0o000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 3
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getFacing(Lcom/android/camera2/CameraCapabilities;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->isMacroMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/camera2/MiCamera2;->getCameraConfigs()Lcom/android/camera2/CameraConfigs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/CameraConfigs;->isDualBokehEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 6
    :goto_0
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedHdrType(Lcom/android/camera2/CameraCapabilities;)I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    return v0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result p1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/android/camera2/MiCamera2;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-eqz p1, :cond_2

    .line 9
    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportHighQualityPreferred(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2
.end method
