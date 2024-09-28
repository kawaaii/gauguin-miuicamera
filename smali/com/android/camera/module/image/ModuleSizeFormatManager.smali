.class public Lcom/android/camera/module/image/ModuleSizeFormatManager;
.super Ljava/lang/Object;
.source "ModuleSizeFormatManager.java"


# static fields
.field public static final AI_SR_SIZE_LIST:[Lcom/android/camera/CameraSize;

.field public static final TAG:Ljava/lang/String; = "CameraSizeManager"


# instance fields
.field public mAlgorithmOutputSize:Lcom/android/camera/CameraSize;

.field public mBinningPictureSize:Lcom/android/camera/CameraSize;

.field public mBokehDepthSize:Lcom/android/camera/CameraSize;

.field public mBokehMainRawSize:Lcom/android/camera/CameraSize;

.field public mBokehSubRawSize:Lcom/android/camera/CameraSize;

.field public mFakeSatTeleOutputSize:Lcom/android/camera/CameraSize;

.field public mFakeSatTelePictureSize:Lcom/android/camera/CameraSize;

.field public mFakeSatUltraTeleOutputSize:Lcom/android/camera/CameraSize;

.field public mFakeSatUltraTelePictureSize:Lcom/android/camera/CameraSize;

.field public mFakeSatUltraWideOutputSize:Lcom/android/camera/CameraSize;

.field public mFakeSatUltraWidePictureSize:Lcom/android/camera/CameraSize;

.field public mFakeSatWideOutputSize:Lcom/android/camera/CameraSize;

.field public mFakeSatWidePictureSize:Lcom/android/camera/CameraSize;

.field public mMacroPictureSize:Lcom/android/camera/CameraSize;

.field public mOutputPictureFormat:I

.field public mOutputPictureSize:Lcom/android/camera/CameraSize;

.field public mRawSizeOfMacro:Lcom/android/camera/CameraSize;

.field public mRawSizeOfTele:Lcom/android/camera/CameraSize;

.field public mRawSizeOfUltraTele:Lcom/android/camera/CameraSize;

.field public mRawSizeOfUltraWide:Lcom/android/camera/CameraSize;

.field public mRawSizeOfWide:Lcom/android/camera/CameraSize;

.field public mSATRemosaicPictureSize:Lcom/android/camera/CameraSize;

.field public mSensorRawImageSize:Lcom/android/camera/CameraSize;

.field public mSubPictureSize:Lcom/android/camera/CameraSize;

.field public mTelePictureSize:Lcom/android/camera/CameraSize;

.field public mUltraTelePictureSize:Lcom/android/camera/CameraSize;

.field public mUltraWidePictureSize:Lcom/android/camera/CameraSize;

.field public mVideoSize:Lcom/android/camera/CameraSize;

.field public mWidePictureSize:Lcom/android/camera/CameraSize;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/CameraSize;

    .line 1
    new-instance v1, Lcom/android/camera/CameraSize;

    const/16 v2, 0x2f00

    const/16 v3, 0x2340

    invoke-direct {v1, v2, v3}, Lcom/android/camera/CameraSize;-><init>(II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/camera/CameraSize;

    const/16 v2, 0x2d10

    const/16 v3, 0x21cc

    invoke-direct {v1, v2, v3}, Lcom/android/camera/CameraSize;-><init>(II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->AI_SR_SIZE_LIST:[Lcom/android/camera/CameraSize;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJpegThumbnailSize(Lcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;
    .locals 5

    .line 1
    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedThumbnailSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p0

    int-to-double v3, p0

    div-double/2addr v1, v3

    .line 3
    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->getOptimalJpegThumbnailSize(Ljava/util/List;D)Lcom/android/camera/CameraSize;

    move-result-object p0

    return-object p0
.end method

.method public static getLimitSize(Ljava/util/List;Lcom/android/camera/module/common/ModuleCameraManagerInterface;I)Lcom/android/camera/CameraSize;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;",
            "Lcom/android/camera/module/common/ModuleCameraManagerInterface;",
            "I)",
            "Lcom/android/camera/CameraSize;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getActiveArraySize(Lcom/android/camera2/CameraCapabilities;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLimitSize: maxSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraSizeManager"

    invoke-static {v2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/2addr v1, v0

    .line 4
    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result p1

    invoke-static {p0, v1, p2, p1}, Lcom/android/camera/PictureSizeManager;->initialize(Ljava/util/List;III)V

    .line 5
    invoke-static {p2}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object p0

    return-object p0
.end method

.method public static isLimitSize(Lcom/android/camera/module/common/ModuleCameraManagerInterface;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p0

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object p0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00O0OO()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static updateAlgorithmPreviewSizeAndFormat(Ljava/util/List;Lcom/android/camera/CameraSize;DLcom/android/camera/module/common/ModuleCameraManagerInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;",
            "Lcom/android/camera/CameraSize;",
            "D",
            "Lcom/android/camera/module/common/ModuleCameraManagerInterface;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->oo0o0O0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0, p2, p3, p1}, Lcom/android/camera/Util;->getAlgorithmPreviewSize(Ljava/util/List;DLcom/android/camera/CameraSize;)Lcom/android/camera/CameraSize;

    move-result-object p0

    .line 3
    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera2/Camera2Proxy;->setAlgorithmPreviewSize(Lcom/android/camera/CameraSize;)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->setAlgorithmPreviewSize(Lcom/android/camera/CameraSize;)V

    .line 5
    :goto_1
    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p0

    const/16 p1, 0x23

    invoke-virtual {p0, p1}, Lcom/android/camera2/Camera2Proxy;->setAlgorithmPreviewFormat(I)V

    return-void
.end method

.method private updatePortraitRawSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const/16 v1, 0x20

    if-eqz p3, :cond_1

    .line 1
    invoke-static {p1, p2, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalMasterBokeh1XSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;I)Landroid/util/Size;

    move-result-object v2

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {p1, p2, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalMasterBokehSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;I)Landroid/util/Size;

    move-result-object v2

    :goto_0
    if-eqz p3, :cond_2

    .line 3
    invoke-static {p1, p2, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalSlaveBokeh1XSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;I)Landroid/util/Size;

    move-result-object p1

    goto :goto_1

    .line 4
    :cond_2
    invoke-static {p1, p2, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalSlaveBokehSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;I)Landroid/util/Size;

    move-result-object p1

    :goto_1
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 5
    new-instance p2, Lcom/android/camera/CameraSize;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {p2, p3, v0}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBokehMainRawSize:Lcom/android/camera/CameraSize;

    .line 6
    new-instance p2, Lcom/android/camera/CameraSize;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {p2, p3, p1}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBokehSubRawSize:Lcom/android/camera/CameraSize;

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0

    .line 7
    :cond_4
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updatePortraitRawSize: null "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_5

    const-string p1, "CameraCapabilities"

    goto :goto_3

    :cond_5
    const-string/jumbo p1, "ratio"

    :goto_3
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraSizeManager"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static updateTuningBufferSize(ZLcom/android/camera/module/common/ModuleCameraManagerInterface;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getTuningBufferSize(Lcom/android/camera2/CameraCapabilities;I)Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera2/Camera2Proxy;->setTuningBufferSize(Lcom/android/camera/CameraSize;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSize: yuv tuning buffer size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSizeManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getTuningBufferSize(Lcom/android/camera2/CameraCapabilities;I)Lcom/android/camera/CameraSize;

    move-result-object p0

    .line 5
    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/camera2/Camera2Proxy;->setRawSizeOfTuningBuffer(Lcom/android/camera/CameraSize;)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateSize: raw tuning buffer size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getOutputSize(Lcom/android/camera/CameraSize;ZZLcom/android/camera/module/common/ModuleCameraManagerInterface;IZI)Lcom/android/camera/CameraSize;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    const-string v1, "CameraSizeManager"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSRTo108mModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->Oooo0()I

    move-result p1

    .line 3
    sget-object p2, Lcom/android/camera/module/image/ModuleSizeFormatManager;->AI_SR_SIZE_LIST:[Lcom/android/camera/CameraSize;

    aget-object p3, p2, p1

    .line 4
    aget-object p1, p2, p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mAlgorithmOutputSize:Lcom/android/camera/CameraSize;

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateSize: UltraPixel algorithmOutputSize: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mAlgorithmOutputSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 8
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0, p3, p4, p7}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getSupportedOutputSizes(ZLcom/android/camera/module/common/ModuleCameraManagerInterface;I)Ljava/util/List;

    move-result-object p5

    .line 10
    invoke-static {p5, p1, p2}, Lcom/android/camera/PictureSizeManager;->getBestSquareSize(Ljava/util/List;IZ)Lcom/android/camera/CameraSize;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result p5

    const-string/jumbo p7, "x"

    if-eqz p5, :cond_2

    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateSize: Could not find a proper squared Jpeg size, defaults to: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance p2, Lcom/android/camera/CameraSize;

    invoke-direct {p2, p1, p1}, Lcom/android/camera/CameraSize;-><init>(II)V

    goto :goto_1

    .line 14
    :cond_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result p5

    if-eqz p5, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p3

    if-le p3, p1, :cond_3

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateSize: force reset HEIF output size to: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-instance p2, Lcom/android/camera/CameraSize;

    invoke-direct {p2, p1, p1}, Lcom/android/camera/CameraSize;-><init>(II)V

    :cond_3
    :goto_1
    move-object p3, p2

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_5

    .line 17
    new-instance p3, Lcom/android/camera/CameraSize;

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result p1

    invoke-direct {p3, p2, p1}, Lcom/android/camera/CameraSize;-><init>(II)V

    goto :goto_3

    :cond_5
    const/16 p1, 0xab

    if-ne p5, p1, :cond_7

    .line 18
    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportOptimalBokehSize(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p1

    if-nez p1, :cond_7

    .line 19
    invoke-virtual {p0, p3, p4, p7}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getSupportedOutputSizes(ZLcom/android/camera/module/common/ModuleCameraManagerInterface;I)Ljava/util/List;

    move-result-object p1

    .line 20
    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    invoke-static {p5}, Lcom/android/camera/CameraSettings;->getPictureSizeRatioString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalPictureBokehSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;)Landroid/util/Size;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 21
    new-instance p1, Lcom/android/camera/CameraSize;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-direct {p1, p3, p2}, Lcom/android/camera/CameraSize;-><init>(II)V

    goto :goto_2

    .line 22
    :cond_6
    invoke-static {p1, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p1

    :goto_2
    move-object p3, p1

    goto :goto_3

    .line 23
    :cond_7
    invoke-static {p4}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->isLimitSize(Lcom/android/camera/module/common/ModuleCameraManagerInterface;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 24
    invoke-virtual {p0, p3, p4, p7}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getSupportedOutputSizes(ZLcom/android/camera/module/common/ModuleCameraManagerInterface;I)Ljava/util/List;

    move-result-object p1

    .line 25
    invoke-static {p1, p4, p5}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getLimitSize(Ljava/util/List;Lcom/android/camera/module/common/ModuleCameraManagerInterface;I)Lcom/android/camera/CameraSize;

    move-result-object p3

    goto :goto_3

    .line 26
    :cond_8
    invoke-virtual {p0, p3, p4, p7}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getSupportedOutputSizes(ZLcom/android/camera/module/common/ModuleCameraManagerInterface;I)Ljava/util/List;

    move-result-object p1

    .line 27
    invoke-static {p1, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p3

    :goto_3
    if-eqz p6, :cond_9

    .line 28
    new-instance p1, Lcom/android/camera/CameraSize;

    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/camera/CameraSize;-><init>(Lcom/android/camera/CameraSize;)V

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mAlgorithmOutputSize:Lcom/android/camera/CameraSize;

    .line 29
    iget-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBinningPictureSize:Lcom/android/camera/CameraSize;

    if-eqz p1, :cond_9

    .line 30
    new-instance p2, Lcom/android/camera/CameraSize;

    invoke-direct {p2, p1}, Lcom/android/camera/CameraSize;-><init>(Lcom/android/camera/CameraSize;)V

    iput-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mAlgorithmOutputSize:Lcom/android/camera/CameraSize;

    :cond_9
    return-object p3
.end method

.method public getPictureSize(IILcom/android/camera/CameraSize;II)Lcom/android/camera/CameraSize;
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const-string v1, "CameraSizeManager"

    if-eqz v0, :cond_3

    .line 2
    invoke-static {v0, p4}, Lcom/android/camera2/CameraCapabilitiesUtil;->setOperatingMode(Lcom/android/camera2/CameraCapabilities;I)V

    .line 3
    invoke-static {v0, p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p2

    if-eqz p3, :cond_2

    .line 4
    new-instance p4, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 6
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraSize;

    .line 7
    invoke-virtual {v2, p3}, Lcom/android/camera/CameraSize;->compareTo(Lcom/android/camera/CameraSize;)I

    move-result v3

    if-gtz v3, :cond_0

    .line 8
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object p2, p4

    .line 9
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getPictureSize: matchSizes = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {p2, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p2

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    .line 11
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getPictureSize: cameraId = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " size = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method public getSatPictureSize(Lcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;
    .locals 6

    .line 1
    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getSatMasterCameraId()I

    move-result p1

    const-string v0, "CameraSizeManager"

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSatPictureSize: unexpected satMasterCameraId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mWidePictureSize:Lcom/android/camera/CameraSize;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mUltraTelePictureSize:Lcom/android/camera/CameraSize;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mTelePictureSize:Lcom/android/camera/CameraSize;

    goto :goto_0

    .line 6
    :cond_2
    iget-object v3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mWidePictureSize:Lcom/android/camera/CameraSize;

    goto :goto_0

    .line 7
    :cond_3
    iget-object v3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mUltraWidePictureSize:Lcom/android/camera/CameraSize;

    .line 8
    :goto_0
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    aput-object v3, v1, v2

    const-string p1, "getSatPictureSize: activeCameraId = %d, size = %s"

    invoke-static {v4, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public getSatRawSize(Lcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;
    .locals 6

    .line 1
    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getSatMasterCameraId()I

    move-result p1

    const-string v0, "CameraSizeManager"

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSatRawSize: unexpected satMasterCameraId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mWidePictureSize:Lcom/android/camera/CameraSize;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfUltraTele:Lcom/android/camera/CameraSize;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfTele:Lcom/android/camera/CameraSize;

    goto :goto_0

    .line 6
    :cond_2
    iget-object v3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfWide:Lcom/android/camera/CameraSize;

    goto :goto_0

    .line 7
    :cond_3
    iget-object v3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfUltraWide:Lcom/android/camera/CameraSize;

    .line 8
    :goto_0
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    aput-object v3, v1, v2

    const-string p1, "getSatRawSize: activeCameraId = %d, size = %s"

    invoke-static {v4, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public getSupportedOutputSizes(ZLcom/android/camera/module/common/ModuleCameraManagerInterface;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/camera/module/common/ModuleCameraManagerInterface;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    .line 2
    invoke-static {p3}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/16 p1, 0x23

    .line 4
    invoke-static {p2, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->hasStandaloneHeicStreamConfigurations(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedHeicOutputStreamSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p2, p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/16 p1, 0x100

    .line 8
    invoke-static {p2, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public setVideoSize(Lcom/android/camera/module/common/ModuleCameraManagerInterface;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraDisplayOrientation()I

    move-result p1

    rem-int/lit16 p1, p1, 0xb4

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/android/camera/CameraSize;

    iget v1, v0, Lcom/android/camera/CameraSize;->width:I

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {p1, v1, v0}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mVideoSize:Lcom/android/camera/CameraSize;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/android/camera/CameraSize;

    iget v1, v0, Lcom/android/camera/CameraSize;->height:I

    iget v0, v0, Lcom/android/camera/CameraSize;->width:I

    invoke-direct {p1, v1, v0}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mVideoSize:Lcom/android/camera/CameraSize;

    :goto_0
    return-void
.end method

.method public updateBinningSize(Lcom/android/camera/CameraSize;FLcom/android/camera/module/common/ModuleCameraManagerInterface;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/android/camera/CameraSize;->width:I

    div-int/lit8 v0, v0, 0x2

    .line 2
    iget p1, p1, Lcom/android/camera/CameraSize;->height:I

    div-int/lit8 p1, p1, 0x2

    .line 3
    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v1, v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputStreamSizes(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object v1

    mul-int v2, v0, p1

    .line 4
    invoke-static {v1, p2, v2}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;FI)Lcom/android/camera/CameraSize;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBinningPictureSize:Lcom/android/camera/CameraSize;

    .line 5
    invoke-virtual {p2}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    new-instance p2, Lcom/android/camera/CameraSize;

    invoke-direct {p2, v0, p1}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBinningPictureSize:Lcom/android/camera/CameraSize;

    .line 7
    :cond_0
    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    const-string p2, "CameraSizeManager"

    if-eqz p1, :cond_1

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->alwaysUseRemosaicSize()Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    :cond_1
    new-instance p1, Lcom/android/camera/CameraSize;

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBinningPictureSize:Lcom/android/camera/CameraSize;

    invoke-direct {p1, p3}, Lcom/android/camera/CameraSize;-><init>(Lcom/android/camera/CameraSize;)V

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mAlgorithmOutputSize:Lcom/android/camera/CameraSize;

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateSize: binning algorithmOutputSize: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mAlgorithmOutputSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateSize: binning size: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBinningPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateMultiSurfaceSatPicSize(IZILcom/android/camera/module/common/ModuleCameraManagerInterface;I)V
    .locals 14

    move-object v6, p0

    move/from16 v7, p3

    move-object/from16 v8, p4

    .line 1
    invoke-interface/range {p4 .. p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getSATSubCameraIds()[I

    move-result-object v9

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSize: [SAT]camera list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "CameraSizeManager"

    invoke-static {v10, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    array-length v11, v9

    const/4 v0, 0x0

    move v12, v0

    move v13, v12

    :goto_0
    if-ge v12, v11, :cond_5

    aget v0, v9, v12

    .line 4
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual/range {p0 .. p5}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updateSatUltraWideSize(IZILcom/android/camera/module/common/ModuleCameraManagerInterface;I)Z

    move-result v0

    :goto_1
    or-int/2addr v0, v13

    move v13, v0

    goto/16 :goto_2

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v1

    if-ne v0, v1, :cond_1

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p3

    move-object/from16 v5, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updateSatWideSize(IZIILcom/android/camera/module/common/ModuleCameraManagerInterface;)Z

    move-result v0

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v1

    if-ne v0, v1, :cond_2

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p3

    move-object/from16 v5, p4

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updateSatTeleSize(IZIILcom/android/camera/module/common/ModuleCameraManagerInterface;)Z

    move-result v0

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result v1

    if-ne v0, v1, :cond_3

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p3

    move-object/from16 v5, p4

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updateSatUltraTeleSize(IZIILcom/android/camera/module/common/ModuleCameraManagerInterface;)Z

    move-result v0

    goto :goto_1

    .line 12
    :cond_3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v1

    if-ne v0, v1, :cond_4

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p3

    move-object/from16 v5, p4

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updateSatMacroSize(IZIILcom/android/camera/module/common/ModuleCameraManagerInterface;)V

    :cond_4
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_5
    if-nez v13, :cond_6

    .line 14
    invoke-virtual {p0, v7, v8}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updateSatFakeTeleSize(ILcom/android/camera/module/common/ModuleCameraManagerInterface;)V

    .line 15
    :cond_6
    invoke-virtual {p0, v8}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getSatPictureSize(Lcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSize: [SAT]picture size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p4 .. p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_7

    .line 17
    invoke-virtual {p0, v8}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getSatRawSize(Lcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object v0

    iput-object v0, v6, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSize: [SAT]raw size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_7
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0oO:Z

    if-nez v0, :cond_8

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0oo:Z

    if-eqz v0, :cond_9

    :cond_8
    invoke-interface/range {p4 .. p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 20
    invoke-interface/range {p4 .. p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera2/Camera2Proxy;->getSatMasterCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    iget v1, v6, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureFormat:I

    invoke-static {v0, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 21
    invoke-interface/range {p4 .. p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 22
    invoke-static {v0, v7}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSize: [SAT]Could not match a proper Jpeg size in supportedPictureSizes, update by SAT size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p4 .. p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public updateNormalSurfacePicSize(IZLcom/android/camera/module/common/ModuleCameraManagerInterface;IZIZZZ)V
    .locals 3

    .line 1
    invoke-static {p5}, Lcom/android/camera/module/image/ImageModuleUtil;->getImageFormat(Z)I

    move-result v0

    .line 2
    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera2/Camera2Proxy;->getId()I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isUltraTeleCamera(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa7

    if-ne p4, v1, :cond_0

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0ooOO0()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0, v1, p3, p4, p7}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updateSensorRawImageSize(ILcom/android/camera/module/common/ModuleCameraManagerInterface;IZ)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const/16 p1, 0x20

    .line 6
    invoke-static {v2, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    .line 7
    invoke-static {p1, p4, p3}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p1

    .line 8
    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera2/Camera2Proxy;->setSensorRawImageSize(Lcom/android/camera/CameraSize;)V

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p7, "updateSize: raw buffer size: "

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraSizeManager"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    if-eqz p5, :cond_3

    const/16 p1, 0xab

    if-ne p4, p1, :cond_3

    .line 10
    invoke-virtual {p0, v0, p4, p3, p6}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updatePortraitPictureSize(IILcom/android/camera/module/common/ModuleCameraManagerInterface;I)V

    goto/16 :goto_3

    .line 11
    :cond_3
    invoke-static {v2, v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    .line 12
    invoke-static {p1, p4, p3}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p2

    .line 13
    sget-boolean p7, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOoO0:Z

    if-eqz p7, :cond_4

    const p7, 0x9003

    if-ne p6, p7, :cond_4

    .line 14
    new-instance p6, Lcom/android/camera/CameraSize;

    iget p7, p2, Lcom/android/camera/CameraSize;->width:I

    div-int/lit8 p7, p7, 0x2

    iget p2, p2, Lcom/android/camera/CameraSize;->height:I

    div-int/lit8 p2, p2, 0x2

    invoke-direct {p6, p7, p2}, Lcom/android/camera/CameraSize;-><init>(II)V

    move-object p2, p6

    .line 15
    :cond_4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object p6

    invoke-virtual {p6}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00o000O()Z

    move-result p6

    if-eqz p6, :cond_6

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result p6

    if-eqz p6, :cond_6

    .line 16
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result p6

    if-eqz p6, :cond_5

    if-nez p8, :cond_6

    .line 17
    :cond_5
    new-instance p6, Lcom/android/camera/CameraSize;

    iget p7, p2, Lcom/android/camera/CameraSize;->width:I

    div-int/lit8 p7, p7, 0x2

    iget p2, p2, Lcom/android/camera/CameraSize;->height:I

    div-int/lit8 p2, p2, 0x2

    invoke-direct {p6, p7, p2}, Lcom/android/camera/CameraSize;-><init>(II)V

    move-object p2, p6

    :cond_6
    if-eqz p5, :cond_7

    .line 18
    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedQcfa(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p6

    if-nez p6, :cond_7

    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result p6

    if-eqz p6, :cond_7

    .line 19
    new-instance p6, Lcom/android/camera/CameraSize;

    iget p7, p2, Lcom/android/camera/CameraSize;->width:I

    div-int/lit8 p7, p7, 0x2

    iget p2, p2, Lcom/android/camera/CameraSize;->height:I

    div-int/lit8 p2, p2, 0x2

    invoke-direct {p6, p7, p2}, Lcom/android/camera/CameraSize;-><init>(II)V

    move-object p2, p6

    :cond_7
    if-eqz v1, :cond_8

    .line 20
    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result p2

    invoke-static {p1, v1, p4, p2}, Lcom/android/camera/PictureSizeManager;->initializeLimitWidth(Ljava/util/List;III)V

    .line 21
    invoke-static {p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object p2

    .line 22
    :cond_8
    invoke-static {p3}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->isLimitSize(Lcom/android/camera/module/common/ModuleCameraManagerInterface;)Z

    move-result p6

    if-eqz p6, :cond_9

    .line 23
    invoke-static {p1, p3, p4}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getLimitSize(Ljava/util/List;Lcom/android/camera/module/common/ModuleCameraManagerInterface;I)Lcom/android/camera/CameraSize;

    move-result-object p2

    :cond_9
    const/16 p6, 0xad

    if-ne p4, p6, :cond_b

    .line 24
    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSuperNightLimitSize(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p6

    if-eqz p6, :cond_a

    .line 25
    invoke-static {v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSuperNightLimitSize(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p2

    goto :goto_2

    .line 26
    :cond_a
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object p6

    invoke-virtual {p6}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0000o0()I

    move-result p6

    if-eqz p6, :cond_b

    .line 27
    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result p2

    invoke-static {p1, p6, p4, p2}, Lcom/android/camera/PictureSizeManager;->initializeLimitWidth(Ljava/util/List;III)V

    .line 28
    invoke-static {p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object p2

    .line 29
    :cond_b
    :goto_2
    invoke-interface {p3, p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    .line 30
    invoke-static {p3, p5, p9}, Lcom/android/camera/module/image/ImageModuleUtil;->isEnableQcfaForAlgoUp(Lcom/android/camera/module/common/ModuleCameraManagerInterface;ZZ)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 31
    invoke-static {p4}, Lcom/android/camera/CameraSettings;->getPictureSizeRatioString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->getRatio(Ljava/lang/String;)F

    move-result p1

    .line 32
    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updateBinningSize(Lcom/android/camera/CameraSize;FLcom/android/camera/module/common/ModuleCameraManagerInterface;)V

    :cond_c
    :goto_3
    return-void
.end method

.method public updateOutputSize(Lcom/android/camera/CameraSize;ILcom/android/camera/module/common/ModuleCameraManagerInterface;I)V
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string/jumbo v2, "updateOutputSize: E. satCameraId = %d, size = %s"

    .line 3
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSizeManager"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq v0, p2, :cond_0

    .line 5
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->mapSatCameraIdToFrameworkCameraId(I)I

    move-result p2

    .line 6
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera2/Camera2Proxy;->getSatMasterCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    const/16 p1, 0x100

    .line 8
    invoke-static {p2, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    .line 9
    invoke-static {p1, p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p1

    .line 10
    :cond_1
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    iget p2, p1, Lcom/android/camera/CameraSize;->width:I

    iget p1, p1, Lcom/android/camera/CameraSize;->height:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 12
    new-instance p2, Lcom/android/camera/CameraSize;

    invoke-direct {p2, p1, p1}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    goto :goto_1

    .line 13
    :cond_2
    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    .line 14
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateOutputSize: X. size = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateParallelSessionPicSize(ZZLcom/android/camera/module/common/ModuleCameraManagerInterface;IZZ)V
    .locals 8

    if-eqz p5, :cond_3

    .line 1
    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    iget v7, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureFormat:I

    move-object v0, p0

    move v2, p2

    move v3, p1

    move-object v4, p3

    move v5, p4

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getOutputSize(Lcom/android/camera/CameraSize;ZZLcom/android/camera/module/common/ModuleCameraManagerInterface;IZI)Lcom/android/camera/CameraSize;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    .line 2
    sget-boolean p2, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0oO:Z

    const-string p4, "CameraSizeManager"

    if-nez p2, :cond_0

    sget-boolean p2, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0oo:Z

    if-eqz p2, :cond_1

    :cond_0
    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    iget-object p5, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p2, p5}, Lcom/android/camera/CameraSize;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    iget p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureFormat:I

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getSupportedOutputSizes(ZLcom/android/camera/module/common/ModuleCameraManagerInterface;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    invoke-interface {p3, p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateSize: Could not match a proper Jpeg size with YUV size, update to Jpeg size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_1
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    iget p5, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureFormat:I

    .line 9
    invoke-static {p5}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->isHeicImageFormat(I)Z

    move-result p5

    if-eqz p5, :cond_2

    const-string p5, "HEIC"

    goto :goto_0

    :cond_2
    const-string p5, "JPEG"

    :goto_0
    aput-object p5, p2, p3

    const/4 p3, 0x1

    iget-object p5, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    aput-object p5, p2, p3

    const-string/jumbo p3, "updateSize: algoUp output size (%s): %s"

    .line 10
    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public updatePortraitOptimalSize(ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Z
    .locals 13

    .line 1
    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CameraSizeManager"

    if-eqz v0, :cond_7

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    const-string/jumbo v4, "pref_ultra_wide_bokeh_enabled"

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00ooOo0()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    const-string v5, ", subYuvSize = "

    const-string v6, ", subRawSize = "

    const-string v7, ", slaveId = "

    const/16 v8, 0x23

    const/4 v9, -0x1

    if-eqz v3, :cond_4

    .line 4
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportBokehRole(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalMasterBokeh1XId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v3

    .line 6
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalSlaveBokeh1XId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v10

    .line 7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updatePortraitOptimalSize1x: masterId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v3, v9, :cond_7

    if-le v10, v9, :cond_7

    .line 8
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getPictureSizeRatioString(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {v0, p1, v8}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalMasterBokeh1XSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;I)Landroid/util/Size;

    move-result-object v3

    .line 10
    invoke-static {v0, p1, v8}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalSlaveBokeh1XSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;I)Landroid/util/Size;

    move-result-object v7

    .line 11
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviBokehSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 12
    invoke-direct {p0, v0, p1, v4}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updatePortraitRawSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;Z)Z

    move-result p1

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePortraitOptimalSize1x: mainRawSize = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBokehMainRawSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBokehSubRawSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move p1, v4

    :goto_2
    if-eqz v3, :cond_3

    if-eqz v7, :cond_3

    if-eqz p1, :cond_3

    .line 14
    new-instance p1, Lcom/android/camera/CameraSize;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {p2, p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    .line 15
    new-instance p1, Lcom/android/camera/CameraSize;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSubPictureSize:Lcom/android/camera/CameraSize;

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updatePortraitOptimalSize1x: mainYuvSize = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSubPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    const-string/jumbo p1, "updatePortraitOptimalSize1x: could not get master or slave capabilities"

    .line 17
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 18
    :cond_4
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalMasterBokehId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v3

    .line 19
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalSlaveBokehId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v10

    .line 20
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updatePortraitOptimalSize: masterId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v3, v9, :cond_7

    if-le v10, v9, :cond_7

    .line 21
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getPictureSizeRatioString(I)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {v0, p1, v8}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalMasterBokehSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;I)Landroid/util/Size;

    move-result-object v3

    .line 23
    invoke-static {v0, p1, v8}, Lcom/android/camera2/CameraCapabilitiesUtil;->getOptimalSlaveBokehSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;I)Landroid/util/Size;

    move-result-object v7

    .line 24
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviBokehSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 25
    invoke-direct {p0, v0, p1, v1}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updatePortraitRawSize(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;Z)Z

    move-result p1

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updatePortraitOptimalSize: mainRawSize = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBokehMainRawSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBokehSubRawSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    move p1, v4

    :goto_3
    if-eqz v3, :cond_6

    if-eqz v7, :cond_6

    if-eqz p1, :cond_6

    .line 27
    new-instance p1, Lcom/android/camera/CameraSize;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {p2, p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    .line 28
    new-instance p1, Lcom/android/camera/CameraSize;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/android/camera/CameraSize;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSubPictureSize:Lcom/android/camera/CameraSize;

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updatePortraitOptimalSize: mainYuvSize = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSubPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_6
    const-string/jumbo p1, "updatePortraitOptimalSize: could not get master or slave capabilities"

    .line 30
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    const-string/jumbo p1, "updatePortraitOptimalSize: could not get logical capabilities"

    .line 31
    invoke-static {v2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public updatePortraitPictureSize(IILcom/android/camera/module/common/ModuleCameraManagerInterface;I)V
    .locals 3

    .line 1
    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportOptimalBokehSize(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updatePortraitOptimalSize(ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->updatePortraitSizeLegacy(ILcom/android/camera/module/common/ModuleCameraManagerInterface;II)V

    .line 5
    :cond_1
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getBokeBufferSize(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/CameraSize;

    move-result-object p1

    .line 6
    sget-object p2, Lcom/android/camera/Util;->mDepthBokeBufferSizeScale:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p4, 0x2

    if-nez p1, :cond_4

    .line 7
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getDualBokehVendorId(Lcom/android/camera2/CameraCapabilities;)I

    move-result p1

    .line 8
    sget-object v0, Lcom/android/camera/BokehVendor;->ARCSOFT_DUAL_BOKEH:Lcom/android/camera/BokehVendor;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 9
    new-instance p1, Lcom/android/camera/CameraSize;

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/CameraSize;->width:I

    div-int/2addr v0, p4

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    iget v1, v1, Lcom/android/camera/CameraSize;->height:I

    div-int/2addr v1, p4

    invoke-direct {p1, v0, v1}, Lcom/android/camera/CameraSize;-><init>(II)V

    goto :goto_1

    .line 10
    :cond_2
    sget-object v0, Lcom/android/camera/BokehVendor;->MI_DUAL_BOKEH:Lcom/android/camera/BokehVendor;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 11
    new-instance p1, Lcom/android/camera/CameraSize;

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/CameraSize;->width:I

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    iget v1, v1, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {p1, v0, v1}, Lcom/android/camera/CameraSize;-><init>(II)V

    goto :goto_1

    .line 12
    :cond_3
    new-instance p1, Lcom/android/camera/CameraSize;

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/CameraSize;->width:I

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    iget v1, v1, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {p1, v0, v1}, Lcom/android/camera/CameraSize;-><init>(II)V

    .line 13
    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBokehDepthSize:Lcom/android/camera/CameraSize;

    .line 14
    iget v0, p1, Lcom/android/camera/CameraSize;->width:I

    mul-int/2addr v0, p2

    iput v0, p1, Lcom/android/camera/CameraSize;->width:I

    .line 15
    iget v0, p1, Lcom/android/camera/CameraSize;->height:I

    mul-int/2addr v0, p2

    iput v0, p1, Lcom/android/camera/CameraSize;->height:I

    .line 16
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v2

    const/4 p2, 0x1

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p3

    aput-object p3, v0, p2

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSubPictureSize:Lcom/android/camera/CameraSize;

    aput-object p2, v0, p4

    const/4 p2, 0x3

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mBokehDepthSize:Lcom/android/camera/CameraSize;

    aput-object p3, v0, p2

    const-string/jumbo p2, "scale = %s mainSize = %s subSize = %s depthSize = %s"

    .line 18
    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraSizeManager"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updatePortraitSizeLegacy(ILcom/android/camera/module/common/ModuleCameraManagerInterface;II)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 1
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isDualFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxFrontCameraId()I

    move-result v0

    move v11, v0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    move v11, v1

    const/4 v10, 0x0

    :goto_0
    const/4 v12, 0x0

    goto :goto_2

    .line 4
    :cond_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o000OOO()Z

    move-result v0

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    const-string/jumbo v3, "pref_ultra_wide_bokeh_enabled"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v3

    :goto_1
    move v10, v0

    move v12, v2

    move v11, v3

    goto :goto_2

    .line 7
    :cond_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00Oo0Oo()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 8
    sget-boolean v3, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0OO00O:Z

    if-eqz v3, :cond_3

    .line 9
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehDepthCameraId()I

    move-result v3

    goto :goto_1

    .line 10
    :cond_3
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera2/Camera2Proxy;->getBokehAuxCameraId()I

    move-result v3

    goto :goto_1

    .line 11
    :cond_4
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v3

    goto :goto_1

    .line 12
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSize: isBigSmall = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isUW = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "CameraSizeManager"

    invoke-static {v13, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    move/from16 v2, p1

    invoke-static {v0, v2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object v0

    .line 14
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->Oooo0O0()I

    move-result v3

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 15
    :goto_3
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v4

    move/from16 v5, p4

    invoke-static {v0, v3, v5, v4}, Lcom/android/camera/PictureSizeManager;->initializeLimitWidth(Ljava/util/List;III)V

    .line 16
    invoke-static/range {p4 .. p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object v0

    .line 17
    sget-boolean v3, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOoO0:Z

    const/4 v14, 0x2

    if-eqz v3, :cond_6

    const v3, 0x9003

    move/from16 v4, p3

    if-ne v4, v3, :cond_7

    .line 18
    new-instance v3, Lcom/android/camera/CameraSize;

    iget v15, v0, Lcom/android/camera/CameraSize;->width:I

    div-int/2addr v15, v14

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    div-int/2addr v0, v14

    invoke-direct {v3, v15, v0}, Lcom/android/camera/CameraSize;-><init>(II)V

    move-object v0, v3

    goto :goto_4

    :cond_6
    move/from16 v4, p3

    .line 19
    :cond_7
    :goto_4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00o000O()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 20
    new-instance v3, Lcom/android/camera/CameraSize;

    iget v15, v0, Lcom/android/camera/CameraSize;->width:I

    div-int/2addr v15, v14

    iget v0, v0, Lcom/android/camera/CameraSize;->height:I

    div-int/2addr v0, v14

    invoke-direct {v3, v15, v0}, Lcom/android/camera/CameraSize;-><init>(II)V

    move-object v15, v3

    goto :goto_5

    :cond_8
    move-object v15, v0

    :goto_5
    const/4 v0, 0x0

    if-ne v1, v11, :cond_9

    .line 21
    invoke-interface {v7, v15}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    .line 22
    iput-object v0, v6, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSubPictureSize:Lcom/android/camera/CameraSize;

    goto/16 :goto_9

    :cond_9
    if-eqz v10, :cond_a

    move-object v0, v15

    .line 23
    :cond_a
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->Oooo0OO()I

    move-result v1

    if-eqz v1, :cond_c

    .line 24
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->Oooo0OO()I

    move-result v0

    .line 25
    invoke-static/range {p4 .. p4}, Lcom/android/camera/CameraSettings;->getPictureSizeRatioString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getRatio(Ljava/lang/String;)F

    move-result v1

    int-to-float v3, v0

    div-float/2addr v3, v1

    float-to-double v8, v3

    .line 26
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v1, v8

    .line 27
    new-instance v3, Lcom/android/camera/CameraSize;

    rem-int/lit8 v8, v1, 0x2

    if-nez v8, :cond_b

    goto :goto_6

    :cond_b
    add-int/lit8 v1, v1, 0x1

    :goto_6
    invoke-direct {v3, v0, v1}, Lcom/android/camera/CameraSize;-><init>(II)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSize: maxPhysicSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_c
    move-object v3, v0

    :goto_7
    move-object/from16 v0, p0

    move v1, v11

    move/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    .line 29
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/module/image/ModuleSizeFormatManager;->getPictureSize(IILcom/android/camera/CameraSize;II)Lcom/android/camera/CameraSize;

    move-result-object v0

    if-nez v12, :cond_f

    if-eqz v10, :cond_d

    goto :goto_8

    .line 30
    :cond_d
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v1

    if-ne v11, v1, :cond_e

    .line 31
    invoke-interface {v7, v15}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    .line 32
    iput-object v0, v6, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSubPictureSize:Lcom/android/camera/CameraSize;

    goto :goto_9

    .line 33
    :cond_e
    invoke-interface {v7, v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    .line 34
    iput-object v15, v6, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSubPictureSize:Lcom/android/camera/CameraSize;

    goto :goto_9

    .line 35
    :cond_f
    :goto_8
    invoke-interface {v7, v15}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    .line 36
    iput-object v0, v6, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSubPictureSize:Lcom/android/camera/CameraSize;

    .line 37
    :goto_9
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v14, [Ljava/lang/Object;

    .line 38
    invoke-interface/range {p2 .. p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, v6, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSubPictureSize:Lcom/android/camera/CameraSize;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "updateSize: mainSize = %s subSize = %s"

    .line 39
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateSatFakeTeleSize(ILcom/android/camera/module/common/ModuleCameraManagerInterface;)V
    .locals 3

    .line 1
    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isFakeSatV1Supported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFakeSatYuvSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-static {v1, p1, p2}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatWidePictureSize:Lcom/android/camera/CameraSize;

    .line 5
    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatWidePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v1, v2}, Lcom/android/camera2/Camera2Proxy;->setFakeSatWidePictureSize(Lcom/android/camera/CameraSize;)V

    .line 6
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFakeSatJpegSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-static {v0, p1, p2}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatWideOutputSize:Lcom/android/camera/CameraSize;

    .line 8
    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatWideOutputSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Lcom/android/camera2/Camera2Proxy;->setFakeSatWideOutputSize(Lcom/android/camera/CameraSize;)V

    .line 9
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatWidePictureSize:Lcom/android/camera/CameraSize;

    aput-object v1, p2, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatWideOutputSize:Lcom/android/camera/CameraSize;

    aput-object v1, p2, v0

    const-string/jumbo v0, "updateSize: [SAT]fake wide size: %s -> %s"

    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraSizeManager"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public updateSatMacroSize(IZIILcom/android/camera/module/common/ModuleCameraManagerInterface;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->setOperatingMode(Lcom/android/camera2/CameraCapabilities;I)V

    .line 3
    invoke-static {v0, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-static {p1, p4, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mMacroPictureSize:Lcom/android/camera/CameraSize;

    .line 5
    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mMacroPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p3}, Lcom/android/camera2/Camera2Proxy;->setMarcroPictureSize(Lcom/android/camera/CameraSize;)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateSize: [SAT]macro picture size: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mMacroPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "CameraSizeManager"

    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const/16 p1, 0x20

    .line 7
    invoke-static {v0, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-static {p1, p4}, Lcom/android/camera/PictureSizeManager;->getBestRawPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfMacro:Lcom/android/camera/CameraSize;

    .line 9
    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfMacro:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Lcom/android/camera2/Camera2Proxy;->setRawSizeOfMacro(Lcom/android/camera/CameraSize;)V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateSize: [SAT]macro raw size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfMacro:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public updateSatTeleSize(IZIILcom/android/camera/module/common/ModuleCameraManagerInterface;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getTeleCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {v0, p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->setOperatingMode(Lcom/android/camera2/CameraCapabilities;I)V

    .line 3
    invoke-static {v0, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-static {p1, p4, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mTelePictureSize:Lcom/android/camera/CameraSize;

    .line 5
    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mTelePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p3}, Lcom/android/camera2/Camera2Proxy;->setTelePictureSize(Lcom/android/camera/CameraSize;)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateSize: [SAT]tele picture size: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mTelePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "CameraSizeManager"

    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const/16 p1, 0x20

    .line 7
    invoke-static {v0, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-static {p1, p4}, Lcom/android/camera/PictureSizeManager;->getBestRawPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfTele:Lcom/android/camera/CameraSize;

    .line 9
    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfTele:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Lcom/android/camera2/Camera2Proxy;->setRawSizeOfTele(Lcom/android/camera/CameraSize;)V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateSize: [SAT]tele raw size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfTele:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_0
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isFakeSatV2Supported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFakeSatYuvSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p1

    .line 13
    invoke-static {p1, p4, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatTelePictureSize:Lcom/android/camera/CameraSize;

    .line 14
    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatTelePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Lcom/android/camera2/Camera2Proxy;->setFakeSatTelePictureSize(Lcom/android/camera/CameraSize;)V

    .line 15
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFakeSatJpegSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p1

    .line 16
    invoke-static {p1, p4, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatTeleOutputSize:Lcom/android/camera/CameraSize;

    .line 17
    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatTeleOutputSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Lcom/android/camera2/Camera2Proxy;->setFakeSatTeleOutputSize(Lcom/android/camera/CameraSize;)V

    .line 18
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget-object p4, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatTelePictureSize:Lcom/android/camera/CameraSize;

    aput-object p4, p2, v2

    iget-object p4, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatTeleOutputSize:Lcom/android/camera/CameraSize;

    aput-object p4, p2, v1

    const-string/jumbo p4, "updateSize: [SAT]tele fake size: %s -> %s"

    invoke-static {p1, p4, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public updateSatUltraTeleSize(IZIILcom/android/camera/module/common/ModuleCameraManagerInterface;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {v0, p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->setOperatingMode(Lcom/android/camera2/CameraCapabilities;I)V

    .line 3
    invoke-static {v0, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object p3

    invoke-virtual {p3}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0000oOO()I

    move-result p3

    if-eqz p3, :cond_0

    .line 5
    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v3

    invoke-static {p1, p3, p4, v3}, Lcom/android/camera/PictureSizeManager;->initializeLimitWidth(Ljava/util/List;III)V

    .line 6
    invoke-static {p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mUltraTelePictureSize:Lcom/android/camera/CameraSize;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1, p4, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mUltraTelePictureSize:Lcom/android/camera/CameraSize;

    .line 8
    :goto_0
    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mUltraTelePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p3}, Lcom/android/camera2/Camera2Proxy;->setUltraTelePictureSize(Lcom/android/camera/CameraSize;)V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateSize: [SAT]ultra tele picture size: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mUltraTelePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "CameraSizeManager"

    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    const/16 p1, 0x20

    .line 10
    invoke-static {v0, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    .line 11
    invoke-static {p1, p4}, Lcom/android/camera/PictureSizeManager;->getBestRawPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfUltraTele:Lcom/android/camera/CameraSize;

    .line 12
    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfUltraTele:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Lcom/android/camera2/Camera2Proxy;->setRawSizeOfUltraTele(Lcom/android/camera/CameraSize;)V

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateSize: [SAT]ultra tele raw size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfUltraTele:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_1
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isFakeSatV2Supported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFakeSatYuvSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p1

    .line 16
    invoke-static {p1, p4, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatUltraTelePictureSize:Lcom/android/camera/CameraSize;

    .line 17
    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatUltraTelePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Lcom/android/camera2/Camera2Proxy;->setFakeSatUltraTelePictureSize(Lcom/android/camera/CameraSize;)V

    .line 18
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFakeSatJpegSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p1

    .line 19
    invoke-static {p1, p4, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatUltraTeleOutputSize:Lcom/android/camera/CameraSize;

    .line 20
    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatUltraTeleOutputSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Lcom/android/camera2/Camera2Proxy;->setFakeSatUltraTeleOutputSize(Lcom/android/camera/CameraSize;)V

    .line 21
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget-object p4, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatUltraTelePictureSize:Lcom/android/camera/CameraSize;

    aput-object p4, p2, v2

    iget-object p4, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatUltraTeleOutputSize:Lcom/android/camera/CameraSize;

    aput-object p4, p2, v1

    const-string/jumbo p4, "updateSize: [SAT]ultra tele fake size: %s -> %s"

    invoke-static {p1, p4, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public updateSatUltraWideSize(IZILcom/android/camera/module/common/ModuleCameraManagerInterface;I)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {v0, p5}, Lcom/android/camera2/CameraCapabilitiesUtil;->setOperatingMode(Lcom/android/camera2/CameraCapabilities;I)V

    .line 3
    invoke-static {v0, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object p5

    invoke-virtual {p5}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0000oOo()I

    move-result p5

    if-eqz p5, :cond_0

    .line 5
    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v3

    invoke-static {p1, p5, p3, v3}, Lcom/android/camera/PictureSizeManager;->initializeLimitWidth(Ljava/util/List;III)V

    .line 6
    invoke-static {p3}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mUltraWidePictureSize:Lcom/android/camera/CameraSize;

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1, p3, p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mUltraWidePictureSize:Lcom/android/camera/CameraSize;

    .line 8
    :goto_0
    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    iget-object p5, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mUltraWidePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p5}, Lcom/android/camera2/Camera2Proxy;->setUltraWidePictureSize(Lcom/android/camera/CameraSize;)V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "updateSize: [SAT]ultra wide picture size: "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mUltraWidePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p5, "CameraSizeManager"

    invoke-static {p5, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    const/16 p1, 0x20

    .line 10
    invoke-static {v0, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    .line 11
    invoke-static {p1, p3}, Lcom/android/camera/PictureSizeManager;->getBestRawPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfUltraWide:Lcom/android/camera/CameraSize;

    .line 12
    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfUltraWide:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Lcom/android/camera2/Camera2Proxy;->setRawSizeOfUltraWide(Lcom/android/camera/CameraSize;)V

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateSize: [SAT]ultra wide raw size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfUltraWide:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_1
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isFakeSatV2Supported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFakeSatYuvSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p1

    .line 16
    invoke-static {p1, p3, p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatUltraWidePictureSize:Lcom/android/camera/CameraSize;

    .line 17
    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatUltraWidePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Lcom/android/camera2/Camera2Proxy;->setFakeSatUltraWidePictureSize(Lcom/android/camera/CameraSize;)V

    .line 18
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFakeSatJpegSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p1

    .line 19
    invoke-static {p1, p3, p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatUltraWideOutputSize:Lcom/android/camera/CameraSize;

    .line 20
    invoke-interface {p4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatUltraWideOutputSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Lcom/android/camera2/Camera2Proxy;->setFakeSatUltraWideOutputSize(Lcom/android/camera/CameraSize;)V

    .line 21
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatUltraWidePictureSize:Lcom/android/camera/CameraSize;

    aput-object p3, p2, v2

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatUltraWideOutputSize:Lcom/android/camera/CameraSize;

    aput-object p3, p2, v1

    const-string/jumbo p3, "updateSize: [SAT]ultra wide fake size: %s -> %s"

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p5, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public updateSatWideSize(IZIILcom/android/camera/module/common/ModuleCameraManagerInterface;)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getWideCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    invoke-static {v0, p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->setOperatingMode(Lcom/android/camera2/CameraCapabilities;I)V

    .line 3
    invoke-static {v0, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p3

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateSize: [SAT]wide picture size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o000Oo0()I

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v4

    invoke-static {p3, v3, p4, v4}, Lcom/android/camera/PictureSizeManager;->initializeLimitWidth(Ljava/util/List;III)V

    .line 7
    invoke-static {p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mWidePictureSize:Lcom/android/camera/CameraSize;

    .line 8
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", width limit: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p3, p4, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mWidePictureSize:Lcom/android/camera/CameraSize;

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    :goto_0
    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mWidePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v3, v4}, Lcom/android/camera2/Camera2Proxy;->setWidePictureSize(Lcom/android/camera/CameraSize;)V

    .line 12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraSizeManager"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    const/16 p2, 0x20

    .line 13
    invoke-static {v0, p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p3

    .line 14
    invoke-static {p3, p4}, Lcom/android/camera/PictureSizeManager;->getBestRawPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfWide:Lcom/android/camera/CameraSize;

    .line 15
    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p2

    iget-object v2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfWide:Lcom/android/camera/CameraSize;

    invoke-virtual {p2, v2}, Lcom/android/camera2/Camera2Proxy;->setRawSizeOfWide(Lcom/android/camera/CameraSize;)V

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSize: [SAT]wide raw size: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mRawSizeOfWide:Lcom/android/camera/CameraSize;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOOo00()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 18
    invoke-static {p3, p4, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSATRemosaicPictureSize:Lcom/android/camera/CameraSize;

    .line 19
    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p2

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSATRemosaicPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p2, p3}, Lcom/android/camera2/Camera2Proxy;->setSATRemosaicPictureSize(Lcom/android/camera/CameraSize;)V

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateSize: [SAT]wide remosic size: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSATRemosaicPictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_2
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isFakeSatV2Supported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    .line 22
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFakeSatYuvSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p2

    .line 23
    invoke-static {p2, p4, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatWidePictureSize:Lcom/android/camera/CameraSize;

    .line 24
    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p2

    iget-object v2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatWidePictureSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p2, v2}, Lcom/android/camera2/Camera2Proxy;->setFakeSatWidePictureSize(Lcom/android/camera/CameraSize;)V

    .line 25
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedFakeSatJpegSizes(Lcom/android/camera2/CameraCapabilities;)Ljava/util/List;

    move-result-object p2

    .line 26
    invoke-static {p2, p4, p5}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;ILcom/android/camera/module/common/ModuleCameraManagerInterface;)Lcom/android/camera/CameraSize;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatWideOutputSize:Lcom/android/camera/CameraSize;

    .line 27
    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p2

    iget-object v2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatWideOutputSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p2, v2}, Lcom/android/camera2/Camera2Proxy;->setFakeSatWideOutputSize(Lcom/android/camera/CameraSize;)V

    .line 28
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatWidePictureSize:Lcom/android/camera/CameraSize;

    aput-object v4, v2, v1

    iget-object v1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mFakeSatWideOutputSize:Lcom/android/camera/CameraSize;

    aput-object v1, v2, p3

    const-string/jumbo v1, "updateSize: [SAT]wide fake size: %s -> %s"

    invoke-static {p2, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, p3

    .line 29
    :cond_3
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getBinningSrData(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera2/vendortag/struct/BinningSrData;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 30
    invoke-virtual {p2}, Lcom/android/camera2/vendortag/struct/BinningSrData;->isBinningSrEnabled()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 31
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSize: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/camera2/vendortag/struct/BinningSrData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {v0, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    .line 33
    invoke-virtual {p2}, Lcom/android/camera2/vendortag/struct/BinningSrData;->getMaxYuvWidthForWideSensor()I

    move-result p3

    .line 34
    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v0

    invoke-static {p1, p3, p4, v0}, Lcom/android/camera/PictureSizeManager;->initializeLimitWidth(Ljava/util/List;III)V

    .line 35
    invoke-static {p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object p3

    .line 36
    invoke-virtual {p2}, Lcom/android/camera2/vendortag/struct/BinningSrData;->getMaxJpegWidthForWideSensor()I

    move-result v0

    .line 37
    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v2

    invoke-static {p1, v0, p4, v2}, Lcom/android/camera/PictureSizeManager;->initializeLimitWidth(Ljava/util/List;III)V

    .line 38
    invoke-static {p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object p1

    .line 39
    invoke-virtual {p2, p3}, Lcom/android/camera2/vendortag/struct/BinningSrData;->setBinningSrInputSize(Lcom/android/camera/CameraSize;)V

    .line 40
    invoke-virtual {p2, p1}, Lcom/android/camera2/vendortag/struct/BinningSrData;->setBinningSrOutputSize(Lcom/android/camera/CameraSize;)V

    .line 41
    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera2/Camera2Proxy;->setBinningSrData(Lcom/android/camera2/vendortag/struct/BinningSrData;)V

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateSize: [SAT]wide binning sr size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "->binningSrOutputSize"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 43
    :cond_4
    invoke-interface {p5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/camera2/Camera2Proxy;->setBinningSrData(Lcom/android/camera2/vendortag/struct/BinningSrData;)V

    :cond_5
    :goto_1
    return v1
.end method

.method public updateSensorRawImageSize(ILcom/android/camera/module/common/ModuleCameraManagerInterface;IZ)V
    .locals 5

    .line 1
    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    const/16 v1, 0x20

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object v2

    const-string v3, "CameraSizeManager"

    const/16 v4, 0xa7

    if-ne p3, v4, :cond_3

    if-eqz v2, :cond_2

    .line 3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const p4, 0x3faaaaaa

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 4
    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result p2

    invoke-static {v2, p1, p3, p2}, Lcom/android/camera/PictureSizeManager;->initialize(Ljava/util/List;III)V

    .line 5
    invoke-static {p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(F)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result p2

    invoke-static {v2, p1, p3, p2}, Lcom/android/camera/PictureSizeManager;->initializeLimitWidth(Ljava/util/List;III)V

    .line 7
    invoke-static {p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(F)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    goto :goto_1

    :cond_2
    :goto_0
    const-string/jumbo p1, "updateSize: The supported raw size list return from hal is null!"

    .line 8
    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    .line 9
    invoke-static {v0, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputStreamSizes(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-static {p1, p3}, Lcom/android/camera/PictureSizeManager;->getBestRawPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateSize : The best sensor raw image size for cup capture "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const/16 p1, 0xad

    if-ne p3, p1, :cond_5

    .line 12
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviNightModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    invoke-static {v0, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputStreamSizes(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    .line 14
    invoke-static {p1, p3}, Lcom/android/camera/PictureSizeManager;->getBestRawPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    goto :goto_1

    .line 15
    :cond_5
    invoke-static {v2, p3}, Lcom/android/camera/PictureSizeManager;->getBestRawPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    .line 16
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateSize: The best sensor raw image size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mSensorRawImageSize:Lcom/android/camera/CameraSize;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateThirdPartyPicSize(IZLcom/android/camera/module/common/ModuleCameraManagerInterface;IZ)V
    .locals 4

    const-string v0, "CameraSizeManager"

    .line 1
    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    if-eqz p2, :cond_2

    .line 2
    invoke-static {v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportLightTripartite(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPictureSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    iget p2, p2, Lcom/android/camera/CameraSize;->width:I

    const/16 v2, 0x1004

    if-le p2, v2, :cond_2

    .line 3
    invoke-static {v1, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 4
    :try_start_0
    invoke-interface {p3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getBogusCameraId()I

    move-result v3

    invoke-static {p1, v2, p4, v3}, Lcom/android/camera/PictureSizeManager;->initializeLimitWidth(Ljava/util/List;III)V

    .line 5
    invoke-static {p4}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(I)Lcom/android/camera/CameraSize;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "updateSize: No find tempSize for tripartite used"

    .line 6
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p2, :cond_2

    .line 7
    iget p1, p2, Lcom/android/camera/CameraSize;->width:I

    const/16 p4, 0xbb8

    if-lt p1, p4, :cond_2

    if-eqz p5, :cond_1

    const/16 p1, 0x100

    .line 8
    invoke-static {v1, p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 10
    iget p4, p2, Lcom/android/camera/CameraSize;->width:I

    iget p5, p2, Lcom/android/camera/CameraSize;->height:I

    invoke-static {p4, p5}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 11
    new-instance p5, Lcom/android/camera/CameraSize;

    invoke-direct {p5, p4, p4}, Lcom/android/camera/CameraSize;-><init>(II)V

    goto :goto_1

    :cond_0
    move-object p5, p2

    .line 12
    :goto_1
    invoke-interface {p1, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    invoke-interface {p3, p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    .line 14
    iput-object p5, p0, Lcom/android/camera/module/image/ModuleSizeFormatManager;->mOutputPictureSize:Lcom/android/camera/CameraSize;

    .line 15
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string p4, "JPEG"

    aput-object p4, p2, p3

    const/4 p3, 0x1

    aput-object p5, p2, p3

    const-string/jumbo p3, "updateSize: algoUp picture size for tripartite (%s): %s"

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 16
    :cond_1
    invoke-interface {p3, p2}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->setPictureSize(Lcom/android/camera/CameraSize;)V

    :cond_2
    :goto_2
    return-void
.end method
