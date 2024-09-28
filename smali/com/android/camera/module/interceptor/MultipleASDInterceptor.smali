.class public abstract Lcom/android/camera/module/interceptor/MultipleASDInterceptor;
.super Lcom/android/camera/module/interceptor/BaseASDInterceptor;
.source "MultipleASDInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/android/camera/module/Module;",
        ">",
        "Lcom/android/camera/module/interceptor/BaseASDInterceptor<",
        "TM;>;"
    }
.end annotation


# instance fields
.field public requestTagHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/module/interceptor/RequestTagHolder;",
            ">;"
        }
    .end annotation
.end field

.field public tagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/module/interceptor/ASDTagHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/BaseASDInterceptor;-><init>()V

    return-void
.end method


# virtual methods
.method public addAndGetRequestUsage(Landroid/hardware/camera2/CaptureRequest$Key;)Lcom/android/camera/module/interceptor/RequestTagHolder;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/interceptor/RequestTagHolder;

    invoke-direct {v0, p1}, Lcom/android/camera/module/interceptor/RequestTagHolder;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->requestTagHolders:Ljava/util/List;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->requestTagHolders:Ljava/util/List;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->requestTagHolders:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addAndGetTag(Landroid/hardware/camera2/CaptureResult$Key;)Lcom/android/camera/module/interceptor/ASDTagHolder;
    .locals 1

    .line 3
    new-instance v0, Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-direct {v0, p1}, Lcom/android/camera/module/interceptor/ASDTagHolder;-><init>(Landroid/hardware/camera2/CaptureResult$Key;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->tagList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addAndGetTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/ASDTagHolder;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-direct {v0, p1}, Lcom/android/camera/module/interceptor/ASDTagHolder;-><init>(Lcom/android/camera2/vendortag/VendorTag;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->tagList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addTag(Landroid/hardware/camera2/CaptureResult$Key;)Lcom/android/camera/module/interceptor/MultipleASDInterceptor;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->tagList:Ljava/util/List;

    new-instance v1, Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-direct {v1, p1}, Lcom/android/camera/module/interceptor/ASDTagHolder;-><init>(Landroid/hardware/camera2/CaptureResult$Key;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/MultipleASDInterceptor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->tagList:Ljava/util/List;

    new-instance v1, Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-direct {v1, p1}, Lcom/android/camera/module/interceptor/ASDTagHolder;-><init>(Lcom/android/camera2/vendortag/VendorTag;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public dataChanged()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->tagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/interceptor/ASDTagHolder;

    .line 2
    invoke-virtual {v1}, Lcom/android/camera/module/interceptor/ASDTagHolder;->isTagDataChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public declareRequestUsage()V
    .locals 0

    return-void
.end method

.method public abstract declareTags()V
.end method

.method public getPriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getTagValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->tagList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {v0}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->tagList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/interceptor/ASDTagHolder;

    invoke-virtual {p1}, Lcom/android/camera/module/interceptor/ASDTagHolder;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final onCaptureResultNext(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureResult;",
            "Lcom/android/camera2/Camera2Proxy;",
            "TM;",
            "Lcom/android/camera/module/interceptor/ASDInterceptorChain;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->supportPrior:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->supportInTime:Z

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->tagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/interceptor/ASDTagHolder;

    .line 4
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/module/interceptor/ASDTagHolder;->onCaptureResultNext(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/Camera2Proxy;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->requestTagHolders:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/interceptor/RequestTagHolder;

    .line 7
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/module/interceptor/RequestTagHolder;->parseCaptureRequest(Landroid/hardware/camera2/CaptureRequest;)V

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->tagValueAutomaticParsed()V

    .line 9
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->parseComplexValueManually(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera/module/Module;Lcom/android/camera2/Camera2Proxy;)V

    .line 10
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final prepare(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;LOooO00o/OooO0Oo/OooO00o/OooO00o;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/android/camera2/CameraCapabilities;",
            "LOooO00o/OooO0Oo/OooO00o/OooO00o;",
            ")Z"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->tagList:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->declareTags()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->declareRequestUsage()V

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->initAndGetPriorCondition(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;LOooO00o/OooO0Oo/OooO00o/OooO00o;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->supportPrior:Z

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    .line 5
    :cond_0
    iput-boolean p3, p0, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->supportPrior:Z

    .line 6
    iget-object p1, p0, Lcom/android/camera/module/interceptor/MultipleASDInterceptor;->tagList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/interceptor/ASDTagHolder;

    .line 7
    invoke-virtual {v0, p2}, Lcom/android/camera/module/interceptor/ASDTagHolder;->judge(Lcom/android/camera2/CameraCapabilities;)V

    .line 8
    iget-boolean v1, p0, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->supportPrior:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/module/interceptor/ASDTagHolder;->isTagExists()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, p3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->supportPrior:Z

    goto :goto_0

    .line 9
    :cond_3
    iget-boolean p1, p0, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->supportPrior:Z

    return p1
.end method

.method public abstract tagValueAutomaticParsed()V
.end method
