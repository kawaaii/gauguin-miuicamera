.class public Lcom/android/camera/module/interceptor/camera/AiShutterExistMotionSimpleASD;
.super Lcom/android/camera/module/interceptor/SimpleASDInterceptor;
.source "AiShutterExistMotionSimpleASD.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/SimpleASDInterceptor<",
        "[I",
        "Lcom/android/camera/module/Camera2Module;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AiShutterExistMotion"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 2

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;->getTagValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/camera/module/interceptor/SimpleASDInterceptor;->getTagValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    aget p2, p2, v1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/camera2/Camera2Proxy;->setAiShutterExistMotion(Z)V

    return-void
.end method

.method public bridge synthetic acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/AiShutterExistMotionSimpleASD;->acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    return-void
.end method

.method public consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Camera2Module;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/camera/AiShutterExistMotionSimpleASD;->consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Camera2Module;)V

    return-void
.end method

.method public getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;)Z
    .locals 0

    .line 2
    invoke-virtual {p2}, Lcom/android/camera/module/Camera2Module;->isIsAiShutterOn()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/AiShutterExistMotionSimpleASD;->getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Camera2Module;)Z

    move-result p1

    return p1
.end method

.method public getNativeTag()Landroid/hardware/camera2/CaptureResult$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleTime()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScope()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 1

    const-string v0, "AiShutterExistMotion"

    return-object v0
.end method

.method public getVendorTag()Lcom/android/camera2/vendortag/VendorTag;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;>;"
        }
    .end annotation

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OoooOOo:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->AISHUT_EXIST_MOTION:Lcom/android/camera2/vendortag/VendorTag;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->MTK_3A_FEATURE_AISHUT_CAPTURE:Lcom/android/camera2/vendortag/VendorTag;

    return-object v0
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/module/Camera2Module;Lcom/android/camera2/CameraCapabilities;LOooO00o/OooO0Oo/OooO00o/OooO00o;)Z
    .locals 0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->isMtkAiShutterVersionOne(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic initAndGetPriorCondition(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;LOooO00o/OooO0Oo/OooO00o/OooO00o;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/Camera2Module;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/AiShutterExistMotionSimpleASD;->initAndGetPriorCondition(Lcom/android/camera/module/Camera2Module;Lcom/android/camera2/CameraCapabilities;LOooO00o/OooO0Oo/OooO00o/OooO00o;)Z

    move-result p1

    return p1
.end method

.method public isNativeTag()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public moveOnMainThread()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
