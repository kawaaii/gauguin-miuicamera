.class public Lcom/android/camera/fragment/PresentationDisplay;
.super Ljava/lang/Object;
.source "PresentationDisplay.java"

# interfaces
.implements Lcom/android/camera/CameraScreenNail$RequestRenderListener;
.implements Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;


# static fields
.field public static final TAG:Ljava/lang/String; = "PresentationDisplay"


# instance fields
.field public mCameraActivity:Lcom/android/camera/Camera;

.field public mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

.field public mCurrentMode:I

.field public mDegree:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDegree:I

    .line 3
    check-cast p1, Lcom/android/camera/Camera;

    iput-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraActivity:Lcom/android/camera/Camera;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/fragment/CameraPresentation;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/CameraPresentation;->cancel()V

    :cond_0
    return-void
.end method

.method private addRequestListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraScreenNail;->addRequestListener(Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V

    :cond_0
    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/fragment/PresentationDisplay;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/fragment/PresentationDisplay;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/PresentationDisplay;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method public static getDisplay(Landroid/content/Context;)Landroid/view/Display;
    .locals 1

    const-string v0, "display"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method private initCameraPresentation(Landroid/content/Context;II)Lcom/android/camera/fragment/CameraPresentation;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/fragment/CameraPresentation;

    invoke-static {p1}, Lcom/android/camera/fragment/PresentationDisplay;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/android/camera/fragment/CameraPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;II)V

    return-object v0
.end method

.method private removeRequestListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->removeRequestListener(Lcom/android/camera/CameraScreenNail$RequestRenderListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public animateCapture()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/fragment/CameraPresentation;->animateCapture()V

    :cond_0
    return-void
.end method

.method public canProvide()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cancel()V
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00oOOoO()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/PresentationDisplay;->removeRequestListener()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lcom/android/camera/display/Display;->switchPresentationDisplay(Z)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    invoke-virtual {v0}, Lcom/android/camera/fragment/CameraPresentation;->cancel()V

    .line 6
    sget-object v0, Lcom/android/camera/fragment/PresentationDisplay;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "presentation display cancel"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    :cond_1
    return-void
.end method

.method public hideAutoHibernation()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/PresentationDisplay;->show(I)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/fragment/CameraPresentation;->hideAutoHibernation()V

    :cond_1
    return-void
.end method

.method public hideDelayNumber()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/fragment/CameraPresentation;->hideDelayNumber()V

    :cond_0
    return-void
.end method

.method public isEnableClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needViewClear()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isESPDisplayOn()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/PresentationDisplay;->cancel()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/PresentationDisplay;->show(I)V

    :goto_0
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0

    return-void
.end method

.method public notifyThemeChanged(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCurrentMode:I

    return-void
.end method

.method public provideOrientationChanged(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/android/camera/fragment/PresentationDisplay;->provideRotateItem(Ljava/util/List;I)V

    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    const/16 p1, 0x168

    rsub-int p2, p2, 0x168

    if-ltz p2, :cond_0

    .line 1
    rem-int/2addr p2, p1

    goto :goto_0

    :cond_0
    rem-int/2addr p2, p1

    add-int/2addr p2, p1

    .line 2
    :goto_0
    iget v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDegree:I

    if-ne p2, v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Presentation;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    iput p2, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDegree:I

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/fragment/CameraPresentation;->isInited()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/camera/fragment/CameraPresentation;->getDelayNumberTv()Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    invoke-virtual {p1}, Lcom/android/camera/fragment/CameraPresentation;->getDelayNumberTv()Landroid/widget/TextView;

    move-result-object p1

    iget p2, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDegree:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setRotation(F)V

    :cond_2
    return-void

    .line 8
    :cond_3
    iget v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDegree:I

    sub-int v0, p2, v0

    if-ltz v0, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit16 v0, v0, 0x168

    :goto_1
    const/16 v1, 0xb4

    if-le v0, v1, :cond_5

    add-int/lit16 v0, v0, -0x168

    :cond_5
    const/4 v1, 0x0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    add-int/lit16 v2, p2, 0x168

    .line 9
    rem-int/2addr v2, p1

    .line 10
    iget v3, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDegree:I

    if-eqz v0, :cond_9

    if-ne v3, p1, :cond_7

    goto :goto_3

    :cond_7
    move v1, v3

    :goto_3
    if-nez v2, :cond_8

    goto :goto_5

    :cond_8
    move p1, v2

    goto :goto_5

    :cond_9
    if-nez v3, :cond_a

    move v3, p1

    :cond_a
    if-ne v2, p1, :cond_b

    goto :goto_4

    :cond_b
    move v1, v2

    :goto_4
    move p1, v1

    move v1, v3

    .line 11
    :goto_5
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/camera/fragment/CameraPresentation;->getDelayNumberTv()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 12
    new-instance v0, Lcom/android/camera/animation/type/RotateOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    invoke-virtual {v2}, Lcom/android/camera/fragment/CameraPresentation;->getDelayNumberTv()Landroid/widget/TextView;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/animation/type/RotateOnSubscribe;-><init>(Landroid/view/View;)V

    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/android/camera/animation/type/RotateOnSubscribe;->setRotateDegree(II)Lcom/android/camera/animation/type/RotateOnSubscribe;

    move-result-object p1

    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 14
    invoke-virtual {p1, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    const/16 v0, 0x12c

    .line 15
    invoke-virtual {p1, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    .line 16
    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 18
    :cond_c
    iput p2, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDegree:I

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz p1, :cond_d

    .line 20
    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/CameraPresentation;->setDegree(I)V

    :cond_d
    return-void
.end method

.method public registerAnimationResource(Lcom/android/camera/animation/AnimationComposite;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0xffffff1

    .line 1
    invoke-virtual {p1, v0, p0}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    .line 2
    iput p2, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCurrentMode:I

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDegree:I

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->addInBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/fragment/CameraPresentation;->getTextureView()Lcom/android/camera/ui/GLTextureView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    invoke-virtual {v0}, Lcom/android/camera/fragment/CameraPresentation;->getTextureView()Lcom/android/camera/ui/GLTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/GLTextureView;->requestRender()V

    :cond_0
    return-void
.end method

.method public setClickEnable(Z)V
    .locals 0

    return-void
.end method

.method public setESPRecordingTimeState(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/CameraPresentation;->setESPRecordingTimeState(I)V

    :cond_1
    return-void
.end method

.method public show(I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isESPDisplayOn()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 3
    invoke-static {p1}, Lcom/android/camera/display/Display;->switchPresentationDisplay(Z)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraActivity:Lcom/android/camera/Camera;

    iget v1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCurrentMode:I

    iget v2, p0, Lcom/android/camera/fragment/PresentationDisplay;->mDegree:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/fragment/PresentationDisplay;->initCameraPresentation(Landroid/content/Context;II)Lcom/android/camera/fragment/CameraPresentation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    .line 6
    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOoo/OoooO;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/OoooOoo/OoooO;-><init>(Lcom/android/camera/fragment/CameraPresentation;)V

    invoke-virtual {v0, v1}, Landroid/app/Presentation;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    invoke-virtual {p1}, Landroid/app/Presentation;->show()V

    .line 8
    invoke-direct {p0}, Lcom/android/camera/fragment/PresentationDisplay;->addRequestListener()V

    .line 9
    sget-object p1, Lcom/android/camera/fragment/PresentationDisplay;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "presentation display show"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showAutoHibernation()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/PresentationDisplay;->cancel()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/fragment/CameraPresentation;->showAutoHibernation()V

    :cond_1
    return-void
.end method

.method public showDelayNumber(IZ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/CameraPresentation;->showDelayNumber(IZ)V

    :cond_1
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/PresentationDisplay;->cancel()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3b1

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->removeBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    :cond_0
    return-void
.end method

.method public updateRecordingTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->isFoldDisplayType()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/PresentationDisplay;->mCameraPresentation:Lcom/android/camera/fragment/CameraPresentation;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/fragment/CameraPresentation;->updateRecordingTime(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
