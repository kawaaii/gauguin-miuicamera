.class public Lcom/android/camera/module/SuperMoonModule$1;
.super Ljava/lang/Object;
.source "SuperMoonModule.java"

# interfaces
.implements Lcom/android/camera/SensorStateManager$SensorStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/SuperMoonModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

.field public final synthetic this$0:Lcom/android/camera/module/SuperMoonModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/SuperMoonModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isWorking()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyDevicePostureChanged()V
    .locals 0

    return-void
.end method

.method public onDeviceBecomeStable()V
    .locals 0

    return-void
.end method

.method public onDeviceBeginMoving()V
    .locals 0

    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getFocusManager()Lcom/android/camera/module/loader/camera2/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    invoke-static {v0}, Lcom/android/camera/module/SuperMoonModule;->access$500(Lcom/android/camera/module/SuperMoonModule;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    invoke-static {v0}, Lcom/android/camera/module/SuperMoonModule;->access$600(Lcom/android/camera/module/SuperMoonModule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/module/common/ModuleUtil;->getMainProtocol()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$IndicatorProtocol;->isEvAdjusted(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    invoke-static {v0, p1, p2}, Lcom/android/camera/module/SuperMoonModule;->access$701(Lcom/android/camera/module/SuperMoonModule;D)V

    :cond_0
    return-void
.end method

.method public onDeviceKeepStable()V
    .locals 0

    return-void
.end method

.method public onDeviceLieChanged(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    invoke-static {v0}, Lcom/android/camera/module/SuperMoonModule;->access$800(Lcom/android/camera/module/SuperMoonModule;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientationCompensation()I

    move-result v1

    add-int/2addr v1, p1

    if-eq v0, v1, :cond_4

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object v1, v0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientationCompensation()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/android/camera/module/SuperMoonModule;->access$802(Lcom/android/camera/module/SuperMoonModule;I)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$1;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xac

    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iput-object v0, p0, Lcom/android/camera/module/SuperMoonModule$1;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$1;->mTopAlert:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x4

    new-array v3, v3, [I

    .line 8
    fill-array-data v3, :array_0

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->isContainAlertRecommendTip([I)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    move p1, v2

    :cond_2
    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object v0, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    .line 10
    invoke-interface {p1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientationCompensation()I

    move-result p1

    invoke-virtual {v0, v1, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v3, 0x190

    .line 11
    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 12
    iget-object p1, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object v0, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    .line 13
    invoke-interface {p1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientationCompensation()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x1388

    .line 14
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object v0, p1, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    .line 16
    invoke-interface {p1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientationCompensation()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x1f4

    .line 17
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x7f12035d
        0x7f120619
        0x7f120618
        0x7f12061a
    .end array-data
.end method

.method public onDeviceOrientationChanged(FZ)V
    .locals 3

    if-nez p2, :cond_0

    move v0, p1

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result v0

    int-to-float v0, v0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {v1, v0}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->setDeviceRotation(F)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mCameraManager:Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isGradienterOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object v2, v1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    .line 5
    invoke-interface {v1}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getDeviceRotation()F

    move-result v1

    invoke-static {v2, v1}, Lcom/android/camera/Util;->getShootRotation(Landroid/app/Activity;F)F

    move-result v1

    .line 6
    invoke-virtual {v0, p2, v1}, Lcom/android/camera/effect/EffectController;->setDeviceRotation(ZF)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mModuleStateMgr:Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    invoke-interface {v0}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isPaused()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_3

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_3

    .line 9
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object p2, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object p2, p2, Lcom/android/camera/module/BaseModule;->mAppStateMgr:Lcom/android/camera/module/common/BaseAppStateManagerInterface;

    invoke-interface {p2}, Lcom/android/camera/module/common/BaseAppStateManagerInterface;->getOrientation()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result p1

    .line 10
    iget-object p2, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object p2, p2, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {p2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result p2

    add-int/2addr p2, p1

    .line 11
    rem-int/lit16 p2, p2, 0x168

    .line 12
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    return-void
.end method

.method public onDeviceRotationChanged([F)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    invoke-static {v0}, Lcom/android/camera/module/SuperMoonModule;->access$1000(Lcom/android/camera/module/SuperMoonModule;)[F

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/module/SuperMoonModule;->access$902(Lcom/android/camera/module/SuperMoonModule;[F)[F

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/SuperMoonModule$1;->this$0:Lcom/android/camera/module/SuperMoonModule;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, p1}, Lcom/android/camera/module/SuperMoonModule;->access$1002(Lcom/android/camera/module/SuperMoonModule;[F)[F

    :goto_0
    return-void
.end method
