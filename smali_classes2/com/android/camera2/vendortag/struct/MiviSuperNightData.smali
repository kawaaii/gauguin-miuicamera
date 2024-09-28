.class public Lcom/android/camera2/vendortag/struct/MiviSuperNightData;
.super Ljava/lang/Object;
.source "MiviSuperNightData.java"


# static fields
.field public static final MIN_DURATION_FOR_NON_ALGO_UP:I = 0x190

.field public static final MIN_DURATION_FOR_RAW_ALGO_UP:I = 0x3e8

.field public static final SUPER_NIGHT_TRIGGER_MODE_LLS:I = 0x0

.field public static final SUPER_NIGHT_TRIGGER_MODE_OWL:I = 0x2

.field public static final TAG:Ljava/lang/String; = "MiviSuperNightData"


# instance fields
.field public mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

.field public mCurMasterCameraId:I

.field public mCurMode:I

.field public mFeatureMask:I

.field public mIsDarkSeForPortrait:Z

.field public mIsFront:Z

.field public mLlsNeeded:Z

.field public mNightCaptureInProgress:Z

.field public mReadPixelRequested:Z

.field public mSuperNightEvValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

.field public mTriggerMode:I


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureResult;ZILcom/android/camera2/CameraCapabilities;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 2
    invoke-static {p4}, Lcom/android/camera2/CameraCapabilitiesUtil;->isCaptureExpTimeDefined(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    .line 3
    invoke-static {p4}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportExtremeDarkSeResult(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v2

    .line 4
    invoke-static {p4}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMiviSuperNightSupportedMask(Lcom/android/camera2/CameraCapabilities;)I

    move-result p4

    iput p4, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mFeatureMask:I

    goto :goto_0

    :cond_0
    move v1, v0

    move v2, v1

    .line 5
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mIsFront:Z

    .line 6
    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->isLLSNeeded(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mLlsNeeded:Z

    .line 7
    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getSatMasterCameraId(Landroid/hardware/camera2/CaptureResult;)I

    move-result p4

    iput p4, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCurMasterCameraId:I

    .line 8
    iput p3, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCurMode:I

    const/16 p4, 0xad

    const-string v3, "MiviSuperNightData"

    const/4 v4, 0x1

    if-ne p3, p4, :cond_4

    .line 9
    sget-object p3, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SUPER_NIGHT_ELLC_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p3}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_1

    .line 10
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mTriggerMode:I

    :cond_1
    if-eqz v1, :cond_2

    .line 11
    sget-object p3, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->CAPTURE_EXP_TIME:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p3}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    goto :goto_1

    .line 12
    :cond_2
    sget-object p3, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SUPER_NIGHT_SE_CAPTURE_TIME:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p3}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    .line 13
    :goto_1
    invoke-static {p3}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->parseCaptureExpTimes([B)Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object p3

    iput-object p3, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    if-eqz p3, :cond_8

    if-nez p2, :cond_3

    .line 14
    invoke-virtual {p0, v4}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->overrideTriggerMode(Z)V

    goto :goto_3

    .line 15
    :cond_3
    iget p2, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mTriggerMode:I

    invoke-virtual {p3, p2}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->setNightTriggerMode(I)V

    goto :goto_3

    .line 16
    :cond_4
    invoke-static {p1, v1}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->parseCaptureExpTimes(Landroid/hardware/camera2/CaptureResult;Z)Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    move-result-object p3

    iput-object p3, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    if-eqz p3, :cond_8

    if-nez p2, :cond_5

    .line 17
    invoke-virtual {p0, v4}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->overrideTriggerMode(Z)V

    goto :goto_2

    .line 18
    :cond_5
    invoke-virtual {p3}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getNightTriggerMode()I

    move-result p2

    iput p2, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mTriggerMode:I

    .line 19
    :goto_2
    iget p2, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCurMode:I

    const/16 p3, 0xab

    if-ne p2, p3, :cond_8

    if-eqz v1, :cond_6

    .line 20
    iget-object p2, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    invoke-virtual {p2}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->isLlsDetected()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 21
    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getHdrDetectedScene(Landroid/hardware/camera2/CaptureResult;)I

    move-result p2

    if-ne p2, v4, :cond_8

    .line 22
    iget-object p2, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    invoke-virtual {p2, v4}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->setHdrDetected(Z)V

    .line 23
    iget-object p2, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    invoke-virtual {p2}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getNightTriggerMode()I

    move-result p2

    iput p2, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mTriggerMode:I

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_8

    .line 24
    sget-object p2, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->EXTREME_DARK_SE_RESULT:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, p2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 25
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "CaptureExpTimes : darkSe = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_7

    .line 26
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v4, :cond_7

    move v0, v4

    :cond_7
    iput-boolean v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mIsDarkSeForPortrait:Z

    .line 27
    :cond_8
    :goto_3
    iget-object p2, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    if-nez p2, :cond_9

    const-string p2, "MiviSuperNightData : Capture Exp Times is null !"

    .line 28
    invoke-static {v3, p2}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_9
    invoke-static {p1}, Lcom/android/camera2/CaptureResultParser;->getSuperNightCheckerEv(Landroid/hardware/camera2/CaptureResult;)[B

    move-result-object p1

    const-string p2, "camera.debug.superlowlight"

    .line 30
    invoke-static {p2}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_a

    const-string p3, "MiviSuperNightData : halSuperNightValues is null !"

    .line 31
    invoke-static {v3, p3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_a
    iget-boolean p3, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mIsFront:Z

    invoke-static {p1, p2, p3}, Lcom/android/camera2/vendortag/struct/SuperNightEvValue;->parseSuperNightEvValue([BLjava/lang/String;Z)Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mSuperNightEvValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    return-void
.end method

.method private isRawAlgoUp()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCurMode:I

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviSatSuperNightSupported()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCurMode:I

    const/16 v1, 0xab

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviBokehSuperNightSupported()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCurMode:I

    const/16 v1, 0xad

    if-ne v0, v1, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviNightModeSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static parseResult(Landroid/hardware/camera2/CaptureResult;ZILcom/android/camera2/CameraCapabilities;)Lcom/android/camera2/vendortag/struct/MiviSuperNightData;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;-><init>(Landroid/hardware/camera2/CaptureResult;ZILcom/android/camera2/CameraCapabilities;)V

    return-object v0
.end method


# virtual methods
.method public asdNightIsValid()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mIsFront:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviNightSeSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCurMode:I

    const/16 v2, 0xa3

    if-eq v0, v2, :cond_1

    const/16 v2, 0xab

    if-ne v0, v2, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviBokehSuperNightSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public getCaptureExpTime()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCurMode:I

    const/16 v1, 0xad

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviNightModeSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getCaptureExpTime()I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    invoke-virtual {v0}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getCaptureExpTime()I

    move-result v0

    return v0
.end method

.method public getCaptureExpTimes()Lcom/android/camera2/vendortag/struct/CaptureExpTimes;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    return-object v0
.end method

.method public getSuperNightEvValue()Lcom/android/camera2/vendortag/struct/SuperNightEvValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mSuperNightEvValue:Lcom/android/camera2/vendortag/struct/SuperNightEvValue;

    return-object v0
.end method

.method public isDarkSeForPortrait()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mIsDarkSeForPortrait:Z

    return v0
.end method

.method public isLongNightCaptureAnimEnabled()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCurMode:I

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/16 v4, 0xad

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviNightModeSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTime()I

    move-result v0

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTime()I

    move-result v0

    invoke-direct {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isRawAlgoUp()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x190

    :goto_1
    if-le v0, v2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    return v1

    :cond_4
    return v3
.end method

.method public isMiviBokehSuperNightSupported()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mFeatureMask:I

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviBokehSuperNightSupported(I)Z

    move-result v0

    return v0
.end method

.method public isMiviNightCaptureInProgress()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mNightCaptureInProgress:Z

    return v0
.end method

.method public isMiviNightModeSupported()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mFeatureMask:I

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviNightModeSupported(I)Z

    move-result v0

    return v0
.end method

.method public isMiviNightSeSupported()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMiviSatSuperNightSupported()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mFeatureMask:I

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMiviSatSuperNightSupported(I)Z

    move-result v0

    return v0
.end method

.method public isNightPreviewAnimEnabled()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isRawAlgoUp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTime()I

    move-result v0

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isReadPixelRequested()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mReadPixelRequested:Z

    return v0
.end method

.method public isShortNightCaptureAnimEnabled()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCurMode:I

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/16 v4, 0xad

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviNightModeSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTime()I

    move-result v0

    if-eqz v0, :cond_0

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->getCaptureExpTime()I

    move-result v0

    if-lez v0, :cond_3

    .line 5
    invoke-direct {p0}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isRawAlgoUp()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x190

    :goto_1
    if-ge v0, v2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    return v1

    :cond_4
    return v3
.end method

.method public isSuperNightOwlDetected()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mTriggerMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public overrideTriggerMode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mCaptureExpTimes:Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mTriggerMode:I

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->setNightTriggerMode(I)V

    :cond_0
    return-void
.end method

.method public setNightCaptureInProgress(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mNightCaptureInProgress:Z

    return-void
.end method

.method public setReadPixelRequested(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->mReadPixelRequested:Z

    return-void
.end method
