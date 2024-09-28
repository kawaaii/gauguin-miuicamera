.class public Lcom/android/camera/module/interceptor/ASDInterceptorChain;
.super Ljava/lang/Object;
.source "ASDInterceptorChain.java"

# interfaces
.implements Lio/reactivex/functions/Function;
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/android/camera/module/Module;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Landroid/hardware/camera2/CaptureResult;",
        "Ljava/util/List<",
        "Ljava/lang/Integer;",
        ">;>;",
        "Ljava/util/function/Consumer<",
        "Ljava/util/List<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final ENABLE_LOG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mAtomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mCameraDevice:Lcom/android/camera2/Camera2Proxy;

.field public mConditionAllocation:Lcom/android/camera/module/interceptor/ASDConditionAllocation;

.field public mInterceptionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/module/interceptor/BaseASDInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field public mMetaDataDisposable:Lio/reactivex/disposables/Disposable;

.field public mMetaDataFlowableEmitter:Lio/reactivex/FlowableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/FlowableEmitter<",
            "Landroid/hardware/camera2/CaptureResult;",
            ">;"
        }
    .end annotation
.end field

.field public mModule:Lcom/android/camera/module/Module;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field public mTempList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/module/interceptor/BaseASDInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->TAG:Ljava/lang/String;

    const-string v0, "camera.debug.asdInterceptor"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->ENABLE_LOG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/Module;Lcom/android/camera2/Camera2Proxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/android/camera2/Camera2Proxy;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mModule:Lcom/android/camera/module/Module;

    .line 3
    iput-object p2, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mTempList:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mInterceptionList:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mAtomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic OooO00o(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    sget-object p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->TAG:Ljava/lang/String;

    const-string v0, "drop"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic OooO0O0(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public synthetic OooO00o(Lio/reactivex/FlowableEmitter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mMetaDataFlowableEmitter:Lio/reactivex/FlowableEmitter;

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->accept(Ljava/util/List;)V

    return-void
.end method

.method public accept(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mAtomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v3, 0x0

    .line 3
    sget-boolean v0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->ENABLE_LOG:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 5
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6
    iget-object v5, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mInterceptionList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/interceptor/BaseASDInterceptor;

    iget-object v5, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mModule:Lcom/android/camera/module/Module;

    invoke-virtual {v0, v5}, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Module;)V

    goto :goto_0

    .line 7
    :cond_2
    sget-boolean p1, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->ENABLE_LOG:Z

    if-eqz p1, :cond_3

    .line 8
    sget-object p1, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "consumeResultOnMainThread : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mAtomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method

.method public addInterceptor(Lcom/android/camera/module/interceptor/BaseASDInterceptor;)Lcom/android/camera/module/interceptor/ASDInterceptorChain;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mTempList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->apply(Landroid/hardware/camera2/CaptureResult;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public apply(Landroid/hardware/camera2/CaptureResult;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureResult;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    sget-boolean v0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->ENABLE_LOG:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mInterceptionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    iget-object v4, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mAtomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    .line 7
    :goto_1
    iget-object v8, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mInterceptionList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 8
    iget-object v8, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mInterceptionList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/module/interceptor/BaseASDInterceptor;

    .line 9
    invoke-virtual {v8, v1, v2}, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->compareAndSetTime(J)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_2

    .line 10
    :cond_1
    invoke-virtual {v8}, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->moveOnMainThread()Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 12
    :cond_3
    iget-object v9, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mCameraDevice:Lcom/android/camera2/Camera2Proxy;

    iget-object v10, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mModule:Lcom/android/camera/module/Module;

    invoke-virtual {v8, p1, v9, v10, p0}, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->onCaptureResultNext(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/ASDInterceptorChain;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {v8}, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->moveOnMainThread()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 14
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v0, :cond_6

    .line 15
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->getTAG()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " | "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    .line 16
    sget-object p1, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object v3
.end method

.method public createAndStart(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;LOooO00o/OooO0Oo/OooO00o/OooO00o;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/android/camera2/CameraCapabilities;",
            "LOooO00o/OooO0Oo/OooO00o/OooO00o;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mTempList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/interceptor/BaseASDInterceptor;

    .line 2
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->create(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;LOooO00o/OooO0Oo/OooO00o/OooO00o;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mInterceptionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mTempList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 5
    new-instance p1, LOooO00o/OooO0O0/OooO00o/OooooOo/o000Oooo/OooO00o;

    invoke-direct {p1, p0}, LOooO00o/OooO0O0/OooO00o/OooooOo/o000Oooo/OooO00o;-><init>(Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    sget-object p2, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    .line 6
    invoke-static {p1, p2}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object p1

    sget-object p2, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 7
    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance p2, LOooO00o/OooO0O0/OooO00o/OooooOo/o000Oooo/OooO0Oo;

    invoke-direct {p2, p0}, LOooO00o/OooO0O0/OooO00o/OooooOo/o000Oooo/OooO0Oo;-><init>(Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    .line 8
    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    sget-object p2, LOooO00o/OooO0O0/OooO00o/OooooOo/o000Oooo/OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OooooOo/o000Oooo/OooO0OO;

    .line 9
    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->onBackpressureDrop(Lio/reactivex/functions/Consumer;)Lio/reactivex/Flowable;

    move-result-object p1

    sget-object p2, LOooO00o/OooO0O0/OooO00o/OooooOo/o000Oooo/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OooooOo/o000Oooo/OooO0O0;

    .line 10
    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 11
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lio/reactivex/Flowable;->onTerminateDetach()Lio/reactivex/Flowable;

    move-result-object p1

    new-instance p2, LOooO00o/OooO0O0/OooO00o/OooooOo/o000Oooo/OooO0o0;

    invoke-direct {p2, p0}, LOooO00o/OooO0O0/OooO00o/OooooOo/o000Oooo/OooO0o0;-><init>(Lcom/android/camera/module/interceptor/ASDInterceptorChain;)V

    .line 13
    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mMetaDataDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mMetaDataFlowableEmitter:Lio/reactivex/FlowableEmitter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/reactivex/Emitter;->onComplete()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mMetaDataDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mInterceptionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/interceptor/BaseASDInterceptor;

    .line 6
    invoke-virtual {v1}, Lcom/android/camera/module/interceptor/BaseASDInterceptor;->dispose()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getConditionAllocation()Lcom/android/camera/module/interceptor/ASDConditionAllocation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mConditionAllocation:Lcom/android/camera/module/interceptor/ASDConditionAllocation;

    return-object v0
.end method

.method public onCaptureResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->mMetaDataFlowableEmitter:Lio/reactivex/FlowableEmitter;

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onCaptureResult: emitter is null, returning."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-interface {v0, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method
