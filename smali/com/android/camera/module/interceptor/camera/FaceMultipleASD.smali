.class public Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;
.super Lcom/android/camera/module/interceptor/MultipleASDInterceptor;
.source "FaceMultipleASD.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/MultipleASDInterceptor<",
        "Lcom/android/camera/module/BaseModule;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public EMPTY_CROP_REGION:Landroid/graphics/Rect;

.field public EMPTY_FACES:[Lcom/android/camera2/CameraHardwareFace;

.field public EMPTY_FACE_ANALYZE_INFO:Lcom/android/camera/effect/FaceAnalyzeInfo;

.field public mCameraFaces:[Lcom/android/camera2/CameraHardwareFace;

.field public mCropRegion:Lcom/android/camera/module/interceptor/RequestTagHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/module/interceptor/RequestTagHolder<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public mEyePos:Lcom/android/camera/module/interceptor/ASDTagHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/module/interceptor/ASDTagHolder<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mEyeRect:Lcom/android/camera/module/interceptor/ASDTagHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/module/interceptor/ASDTagHolder<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public mEyeTrackConfig:Lcom/android/camera/trackfocus/ComponentConfigTrackEye;

.field public mFaceCallbackReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mFaceInfo:Lcom/android/camera/effect/FaceAnalyzeInfo;

.field public mFaces:[Landroid/hardware/camera2/params/Face;

.field public mNeedEyeInfo:Z

.field public mNeedFaceInfo:Z

.field public mTrackMode:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/module/loader/FuncFaceDetect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/camera2/CameraHardwareFace;

    .line 2
    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->EMPTY_FACES:[Lcom/android/camera2/CameraHardwareFace;

    .line 3
    new-instance v0, Lcom/android/camera/effect/FaceAnalyzeInfo;

    invoke-direct {v0}, Lcom/android/camera/effect/FaceAnalyzeInfo;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->EMPTY_FACE_ANALYZE_INFO:Lcom/android/camera/effect/FaceAnalyzeInfo;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->EMPTY_CROP_REGION:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mFaceCallbackReference:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mNeedFaceInfo:Z

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentConfigTrackEye()Lcom/android/camera/trackfocus/ComponentConfigTrackEye;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mEyeTrackConfig:Lcom/android/camera/trackfocus/ComponentConfigTrackEye;

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrackEyeOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mNeedEyeInfo:Z

    return-void
.end method


# virtual methods
.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mFaces:[Landroid/hardware/camera2/params/Face;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mFaceCallbackReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;

    .line 4
    iget-object p2, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mFaces:[Landroid/hardware/camera2/params/Face;

    array-length p2, p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-lez p2, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;->useSingleFace()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "need trim faces."

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mFaces:[Landroid/hardware/camera2/params/Face;

    aget-object p1, p1, v0

    new-array p2, p3, [Landroid/hardware/camera2/params/Face;

    aput-object p1, p2, v0

    .line 7
    iput-object p2, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mFaces:[Landroid/hardware/camera2/params/Face;

    .line 8
    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mNeedFaceInfo:Z

    .line 9
    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mFaces:[Landroid/hardware/camera2/params/Face;

    invoke-static {p1}, Lcom/android/camera2/CameraHardwareFace;->convertCameraHardwareFace([Landroid/hardware/camera2/params/Face;)[Lcom/android/camera2/CameraHardwareFace;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mCameraFaces:[Lcom/android/camera2/CameraHardwareFace;

    .line 10
    array-length p1, p1

    if-lez p1, :cond_5

    iget-boolean p1, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mNeedEyeInfo:Z

    if-eqz p1, :cond_5

    .line 11
    sget-object p1, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eye rect"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mEyeRect:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {v1}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pos:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mEyePos:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {v1}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mCameraFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/android/camera2/CameraHardwareFace;->eyeInfo:Lcom/android/camera/trackfocus/EyeInfo;

    iget-object p2, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mEyeRect:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {p2}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mEyeRect:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {p2}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/android/camera/trackfocus/EyeInfo;->EMPTY_EYE_RECT:Landroid/graphics/Rect;

    :goto_0
    iput-object p2, p1, Lcom/android/camera/trackfocus/EyeInfo;->rect:Landroid/graphics/Rect;

    .line 13
    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mCameraFaces:[Lcom/android/camera2/CameraHardwareFace;

    aget-object p1, p1, v0

    iget-object p1, p1, Lcom/android/camera2/CameraHardwareFace;->eyeInfo:Lcom/android/camera/trackfocus/EyeInfo;

    iget-object p2, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mEyePos:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {p2}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mEyePos:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {p2}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    iput v0, p1, Lcom/android/camera/trackfocus/EyeInfo;->eyePos:I

    .line 14
    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mEyeRect:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {p1}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/android/camera/trackfocus/EyeInfo;->EMPTY_EYE_RECT:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mEyeRect:Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {p2}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 15
    invoke-static {}, Lcom/android/camera/ui/drawable/focus/FocusFrameState;->getInstance()Lcom/android/camera/ui/drawable/focus/FocusFrameState;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/drawable/focus/FocusFrameState;->setFocusFrameType(I)V

    goto :goto_2

    .line 16
    :cond_4
    invoke-static {}, Lcom/android/camera/ui/drawable/focus/FocusFrameState;->getInstance()Lcom/android/camera/ui/drawable/focus/FocusFrameState;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/camera/ui/drawable/focus/FocusFrameState;->setFocusFrameType(I)V

    goto :goto_2

    .line 17
    :cond_5
    invoke-static {}, Lcom/android/camera/ui/drawable/focus/FocusFrameState;->getInstance()Lcom/android/camera/ui/drawable/focus/FocusFrameState;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/drawable/focus/FocusFrameState;->setFocusFrameType(I)V

    :goto_2
    return-void
.end method

.method public bridge synthetic acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    return-void
.end method

.method public consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/BaseModule;)V
    .locals 3

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mFaceCallbackReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;

    if-eqz p1, :cond_3

    .line 3
    invoke-interface {p1}, Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;->ignoreFace()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mTrackMode:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->EMPTY_FACES:[Lcom/android/camera2/CameraHardwareFace;

    iget-object v1, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->EMPTY_FACE_ANALYZE_INFO:Lcom/android/camera/effect/FaceAnalyzeInfo;

    iget-object v2, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->EMPTY_CROP_REGION:Landroid/graphics/Rect;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;->onFaceDetected([Lcom/android/camera2/CameraHardwareFace;Lcom/android/camera/effect/FaceAnalyzeInfo;Landroid/graphics/Rect;)V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mFaces:[Landroid/hardware/camera2/params/Face;

    if-nez v0, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mCropRegion:Lcom/android/camera/module/interceptor/RequestTagHolder;

    invoke-virtual {v0}, Lcom/android/camera/module/interceptor/RequestTagHolder;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 8
    iget-object v1, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mCameraFaces:[Lcom/android/camera2/CameraHardwareFace;

    iget-object v2, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mFaceInfo:Lcom/android/camera/effect/FaceAnalyzeInfo;

    invoke-interface {p1, v1, v2, v0}, Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;->onFaceDetected([Lcom/android/camera2/CameraHardwareFace;Lcom/android/camera/effect/FaceAnalyzeInfo;Landroid/graphics/Rect;)V

    .line 9
    sget-object p1, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "camera faces size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mCameraFaces:[Lcom/android/camera2/CameraHardwareFace;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/BaseModule;)V

    return-void
.end method

.method public declareRequestUsage()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->declareRequestUsage()V

    .line 2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addAndGetRequestUsage(Landroid/hardware/camera2/CaptureRequest$Key;)Lcom/android/camera/module/interceptor/RequestTagHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mCropRegion:Lcom/android/camera/module/interceptor/RequestTagHolder;

    return-void
.end method

.method public declareTags()V
    .locals 1

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addTag(Landroid/hardware/camera2/CaptureResult$Key;)Lcom/android/camera/module/interceptor/MultipleASDInterceptor;

    .line 2
    sget-object v0, Lcom/android/camera/trackfocus/TrackFocusResultTag;->TRACK_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/MultipleASDInterceptor;

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mNeedFaceInfo:Z

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->STATISTICS_FACE_AGE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/MultipleASDInterceptor;

    .line 5
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->STATISTICS_FACE_GENDER:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/MultipleASDInterceptor;

    .line 6
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->STATISTICS_FACE_FACESCORE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/MultipleASDInterceptor;

    .line 7
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->STATISTICS_FACE_PROP:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/MultipleASDInterceptor;

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mNeedEyeInfo:Z

    if-eqz v0, :cond_1

    .line 9
    sget-object v0, Lcom/android/camera/trackfocus/TrackFocusResultTag;->EYE_ROI:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addAndGetTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/ASDTagHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mEyeRect:Lcom/android/camera/module/interceptor/ASDTagHolder;

    .line 10
    sget-object v0, Lcom/android/camera/trackfocus/TrackFocusResultTag;->EYE_POS:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addAndGetTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/ASDTagHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mEyePos:Lcom/android/camera/module/interceptor/ASDTagHolder;

    :cond_1
    return-void
.end method

.method public getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;)Z
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mFaceCallbackReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/android/camera2/Camera2Proxy$FaceDetectionCallback;->isFaceDetectStarted()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;)Z

    move-result p1

    return p1
.end method

.method public getSampleTime()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScope()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/module/BaseModule;Lcom/android/camera2/CameraCapabilities;LOooO00o/OooO0Oo/OooO00o/OooO00o;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic initAndGetPriorCondition(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;LOooO00o/OooO0Oo/OooO00o/OooO00o;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->initAndGetPriorCondition(Lcom/android/camera/module/BaseModule;Lcom/android/camera2/CameraCapabilities;LOooO00o/OooO0Oo/OooO00o/OooO00o;)Z

    move-result p1

    return p1
.end method

.method public moveOnMainThread()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public tagValueAutomaticParsed()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->getTagValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/Face;

    iput-object v1, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mFaces:[Landroid/hardware/camera2/params/Face;

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->getTagValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/FaceMultipleASD;->mTrackMode:Ljava/lang/Integer;

    return-void
.end method
