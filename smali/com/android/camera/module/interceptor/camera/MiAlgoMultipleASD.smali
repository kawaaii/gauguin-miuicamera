.class public Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;
.super Lcom/android/camera/module/interceptor/MultipleASDInterceptor;
.source "MiAlgoMultipleASD.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/MultipleASDInterceptor<",
        "Lcom/android/camera/module/BaseModule;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "MI_ALGO_ASD_SCENE"


# instance fields
.field public mNonSemanticScene:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

.field public mResultParseList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/scene/IResultParse;",
            ">;"
        }
    .end annotation
.end field

.field public mSemanticScene:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

.field public mStateScene:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "MI_ALGO_ASD_SCENE"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->mResultParseList:Landroid/util/SparseArray;

    return-void
.end method

.method public static LOGD(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MI_ALGO_ASD_SCENE"

    .line 3
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private parseMiAlgoASDSceneResult(ILcom/android/camera/module/BaseModule;[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->mResultParseList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/scene/IResultParse;

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_4

    .line 2
    new-instance v0, Lcom/android/camera/scene/StateClassResultParse;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/android/camera/scene/StateClassResultParse;-><init>(Ljava/lang/ref/WeakReference;)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_4

    .line 3
    new-instance v0, Lcom/android/camera/scene/NoneSemanticsClassResultParse;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/android/camera/scene/NoneSemanticsClassResultParse;-><init>(Ljava/lang/ref/WeakReference;)V

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    .line 4
    new-instance v0, Lcom/android/camera/scene/SemanticsClassResultParse;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/android/camera/scene/SemanticsClassResultParse;-><init>(Ljava/lang/ref/WeakReference;)V

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 5
    iget-object p2, p0, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->mResultParseList:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    invoke-interface {v0, p3}, Lcom/android/camera/scene/IResultParse;->parseMiAlgoAsdResult(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->mSemanticScene:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    const/4 p3, 0x0

    invoke-direct {p0, p3, p2, p1}, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->parseMiAlgoASDSceneResult(ILcom/android/camera/module/BaseModule;[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->mNonSemanticScene:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    const/4 p3, 0x1

    invoke-direct {p0, p3, p2, p1}, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->parseMiAlgoASDSceneResult(ILcom/android/camera/module/BaseModule;[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->mStateScene:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    const/4 p3, 0x2

    invoke-direct {p0, p3, p2, p1}, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->parseMiAlgoASDSceneResult(ILcom/android/camera/module/BaseModule;[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    return-void
.end method

.method public bridge synthetic acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    return-void
.end method

.method public consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/BaseModule;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Module;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/BaseModule;)V

    return-void
.end method

.method public declareTags()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SEMANTIC_SCENE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/MultipleASDInterceptor;

    .line 2
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->NON_SEMANTIC_SCENE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/MultipleASDInterceptor;

    .line 3
    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->STATE_SCENE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->addTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/MultipleASDInterceptor;

    return-void
.end method

.method public getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;)Z
    .locals 2

    .line 2
    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/module/BaseModule;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/BaseModule;)Z

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

    const-string v0, "MI_ALGO_ASD_SCENE"

    return-object v0
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/module/BaseModule;Lcom/android/camera2/CameraCapabilities;LOooO00o/OooO0Oo/OooO00o/OooO00o;)Z
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p3

    const/4 v0, 0x0

    const/16 v1, 0xa3

    if-eq p3, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p3

    const/16 v1, 0xcd

    if-eq p3, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p1

    const/16 p3, 0xbb

    if-eq p1, p3, :cond_0

    const-string/jumbo p1, "no capture mode!"

    .line 5
    invoke-static {p1}, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->LOGD(Ljava/lang/String;)V

    return v0

    .line 6
    :cond_0
    invoke-static {p2}, Lcom/android/camera2/CameraCapabilitiesUtil;->getMiAlgoASDVersion(Lcom/android/camera2/CameraCapabilities;)F

    move-result p1

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mi algo asd version:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->LOGD(Ljava/lang/String;)V

    const/high16 p2, 0x40000000    # 2.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic initAndGetPriorCondition(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;LOooO00o/OooO0Oo/OooO00o/OooO00o;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/module/BaseModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->initAndGetPriorCondition(Lcom/android/camera/module/BaseModule;Lcom/android/camera2/CameraCapabilities;LOooO00o/OooO0Oo/OooO00o/OooO00o;)Z

    move-result p1

    return p1
.end method

.method public moveOnMainThread()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public tagValueAutomaticParsed()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->getTagValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    iput-object v1, p0, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->mSemanticScene:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->getTagValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    iput-object v1, p0, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->mNonSemanticScene:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    const/4 v1, 0x2

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->getTagValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    iput-object v0, p0, Lcom/android/camera/module/interceptor/camera/MiAlgoMultipleASD;->mStateScene:[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    return-void
.end method
