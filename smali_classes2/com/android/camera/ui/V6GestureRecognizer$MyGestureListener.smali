.class public Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "V6GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyGestureListener"
.end annotation


# instance fields
.field public mHandleConfirmTap:Z

.field public final synthetic this$0:Lcom/android/camera/ui/V6GestureRecognizer;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/V6GestureRecognizer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;)V

    return-void
.end method

.method private handleSingleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$500(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {v0, v2, p1, v1}, Lcom/android/camera/module/common/IUserEventMgr;->onSingleTapUp(IIZ)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->mHandleConfirmTap:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    .line 2
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->mHandleConfirmTap:Z

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectController;->getInvertFlag()I

    move-result p1

    .line 4
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    return v2

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->onDoubleTap(Landroid/view/MotionEvent;)Z

    :cond_4
    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    const-string v0, "CameraGestureRecognizer"

    const-string/jumbo v1, "onLongPress"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$500(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/android/camera/module/common/IUserEventMgr;->onLongPress(FF)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/ui/V6GestureRecognizer;->isSupportScrollChangeModule()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$700(Lcom/android/camera/ui/V6GestureRecognizer;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$800(Lcom/android/camera/ui/V6GestureRecognizer;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$900(Lcom/android/camera/ui/V6GestureRecognizer;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 5
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScroll: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|distanceX:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "|distanceY:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "CameraGestureRecognizer"

    invoke-static {p4, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    sub-float/2addr p4, v0

    invoke-static {p3, p4}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1002(Lcom/android/camera/ui/V6GestureRecognizer;F)F

    .line 7
    iget-object p3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-static {p3, p2}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1102(Lcom/android/camera/ui/V6GestureRecognizer;F)F

    .line 8
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result p1

    const/4 p2, 0x7

    if-ne p1, p2, :cond_4

    return v1

    .line 9
    :cond_4
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1200(Lcom/android/camera/ui/V6GestureRecognizer;)Landroid/view/VelocityTracker;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_5

    .line 10
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1200(Lcom/android/camera/ui/V6GestureRecognizer;)Landroid/view/VelocityTracker;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_5
    const p1, 0x4191745d

    .line 11
    invoke-static {p1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p1

    const p3, 0x41e8ba2f

    .line 12
    invoke-static {p3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p3

    const/4 p4, -0x1

    .line 13
    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v0, :cond_c

    .line 14
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1000(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float p3, p3

    cmpl-float p3, v0, p3

    if-lez p3, :cond_6

    return v1

    .line 15
    :cond_6
    iget-object p3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p3}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1100(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    int-to-float p1, p1

    cmpg-float p1, p3, p1

    if-gez p1, :cond_7

    return v1

    .line 16
    :cond_7
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1200(Lcom/android/camera/ui/V6GestureRecognizer;)Landroid/view/VelocityTracker;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1200(Lcom/android/camera/ui/V6GestureRecognizer;)Landroid/view/VelocityTracker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v2

    if-gez p1, :cond_8

    return v1

    .line 17
    :cond_8
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1300(Lcom/android/camera/ui/V6GestureRecognizer;)I

    move-result p1

    const/16 p3, 0x5a

    if-ne p1, p3, :cond_a

    .line 18
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1100(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_9

    .line 19
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1, p2}, Lcom/android/camera/ui/V6GestureRecognizer;->access$902(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    goto/16 :goto_0

    .line 20
    :cond_9
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1100(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result p1

    cmpg-float p1, p1, v5

    if-gez p1, :cond_13

    .line 21
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1, p2}, Lcom/android/camera/ui/V6GestureRecognizer;->access$902(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    goto/16 :goto_1

    .line 22
    :cond_a
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1100(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_b

    .line 23
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1, p2}, Lcom/android/camera/ui/V6GestureRecognizer;->access$902(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    goto/16 :goto_1

    .line 24
    :cond_b
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1100(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result p1

    cmpg-float p1, p1, v5

    if-gez p1, :cond_13

    .line 25
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1, p2}, Lcom/android/camera/ui/V6GestureRecognizer;->access$902(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    goto :goto_0

    .line 26
    :cond_c
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1100(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float p3, p3

    cmpl-float p3, v0, p3

    if-lez p3, :cond_d

    return v1

    .line 27
    :cond_d
    iget-object p3, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p3}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1000(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    int-to-float p1, p1

    cmpg-float p1, p3, p1

    if-gez p1, :cond_e

    return v1

    .line 28
    :cond_e
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1200(Lcom/android/camera/ui/V6GestureRecognizer;)Landroid/view/VelocityTracker;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1200(Lcom/android/camera/ui/V6GestureRecognizer;)Landroid/view/VelocityTracker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v2

    if-gez p1, :cond_f

    return v1

    .line 29
    :cond_f
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1300(Lcom/android/camera/ui/V6GestureRecognizer;)I

    move-result p1

    const/16 p3, 0xb4

    if-ne p1, p3, :cond_11

    .line 30
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1000(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_10

    .line 31
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1, p2}, Lcom/android/camera/ui/V6GestureRecognizer;->access$902(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    :goto_0
    move p4, v3

    goto :goto_2

    .line 32
    :cond_10
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1000(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result p1

    cmpg-float p1, p1, v5

    if-gez p1, :cond_13

    .line 33
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1, p2}, Lcom/android/camera/ui/V6GestureRecognizer;->access$902(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    goto :goto_1

    .line 34
    :cond_11
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1000(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_12

    .line 35
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1, p2}, Lcom/android/camera/ui/V6GestureRecognizer;->access$902(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    :goto_1
    move p4, v4

    goto :goto_2

    .line 36
    :cond_12
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1000(Lcom/android/camera/ui/V6GestureRecognizer;)F

    move-result p1

    cmpg-float p1, p1, v5

    if-gez p1, :cond_13

    .line 37
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1, p2}, Lcom/android/camera/ui/V6GestureRecognizer;->access$902(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    goto :goto_0

    .line 38
    :cond_13
    :goto_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p3, 0xb3

    .line 39
    invoke-virtual {p1, p3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    if-eqz p1, :cond_14

    .line 40
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->canSwipeChangeMode()Z

    move-result p3

    if-eqz p3, :cond_14

    .line 41
    invoke-interface {p1, p4, v1}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->changeModeByGravity(II)V

    return p2

    :cond_14
    :goto_3
    return v1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$500(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/IUserEventMgr;->isReceiveDoubleTap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->handleSingleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xa6

    .line 4
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->isEffectViewVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->mHandleConfirmTap:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->handleSingleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "CameraGestureRecognizer"

    const-string/jumbo v1, "onSingleTapUp"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->mHandleConfirmTap:Z

    .line 3
    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v1, v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$500(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {v1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/IUserEventMgr;->isReceiveDoubleTap()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa6

    .line 5
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$EffectCropViewController;->isEffectViewVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-static {p1, v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$500(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->mHandleConfirmTap:Z

    return v0

    .line 8
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->handleSingleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
