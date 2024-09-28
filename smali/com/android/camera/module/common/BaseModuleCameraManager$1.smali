.class public Lcom/android/camera/module/common/BaseModuleCameraManager$1;
.super Ljava/lang/Object;
.source "BaseModuleCameraManager.java"

# interfaces
.implements Lcom/xiaomi/camera/core/IResultDataCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/common/BaseModuleCameraManager;->getResultDataCBListener()Lcom/xiaomi/camera/core/IResultDataCallbackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/common/BaseModuleCameraManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/common/BaseModuleCameraManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager$1;->this$0:Lcom/android/camera/module/common/BaseModuleCameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultDataReceived(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object p2, p0, Lcom/android/camera/module/common/BaseModuleCameraManager$1;->this$0:Lcom/android/camera/module/common/BaseModuleCameraManager;

    invoke-static {p2}, Lcom/android/camera/module/common/BaseModuleCameraManager;->access$000(Lcom/android/camera/module/common/BaseModuleCameraManager;)Lcom/android/camera/module/Module;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/android/camera/module/common/BaseModuleCameraManager$1;->this$0:Lcom/android/camera/module/common/BaseModuleCameraManager;

    invoke-static {p2}, Lcom/android/camera/module/common/BaseModuleCameraManager;->access$000(Lcom/android/camera/module/common/BaseModuleCameraManager;)Lcom/android/camera/module/Module;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result p2

    const-string v0, "BaseModuleCameraManager"

    if-nez p2, :cond_1

    const-string p1, "died while receive result data from postprocessor"

    .line 3
    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 p2, 0xa

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    check-cast p3, Lcom/xiaomi/engine/ResultData;

    .line 5
    invoke-virtual {p3}, Lcom/xiaomi/engine/ResultData;->getTimeStamp()J

    move-result-wide v2

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "get anchor timestamp "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager$1;->this$0:Lcom/android/camera/module/common/BaseModuleCameraManager;

    invoke-virtual {p1}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager$1;->this$0:Lcom/android/camera/module/common/BaseModuleCameraManager;

    invoke-virtual {p1}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getCamera2Device()Lcom/android/camera2/Camera2Proxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera2/Camera2Proxy;->getCacheImageDecoder()Lcom/android/zxing/CacheImageDecoder;

    move-result-object v1

    iget-object p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager$1;->this$0:Lcom/android/camera/module/common/BaseModuleCameraManager;

    .line 9
    invoke-virtual {p1}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object p1

    iget v4, p1, Lcom/android/camera/CameraSize;->width:I

    iget-object p1, p0, Lcom/android/camera/module/common/BaseModuleCameraManager$1;->this$0:Lcom/android/camera/module/common/BaseModuleCameraManager;

    .line 10
    invoke-virtual {p1}, Lcom/android/camera/module/common/BaseModuleCameraManager;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object p1

    iget v5, p1, Lcom/android/camera/CameraSize;->height:I

    const/4 v6, 0x0

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 12
    invoke-virtual/range {v1 .. v8}, Lcom/android/zxing/CacheImageDecoder;->saveAnchorFrameThumbnail(JII[ILjava/lang/String;Lcom/android/camera/module/loader/camera2/ButtonStatus;)V

    :cond_3
    :goto_0
    return-void
.end method
