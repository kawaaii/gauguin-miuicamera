.class public Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "OpenCameraCallable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/camera/device/callable/OpenCameraCallable;-><init>(Ljava/lang/String;Lcom/xiaomi/camera/device/callable/CameraListener;Lcom/xiaomi/camera/device/callable/OpenCameraListener;Landroid/os/Handler;Landroid/os/Handler;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;


# direct methods
.method public constructor <init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {v0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$300(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)Lcom/xiaomi/camera/device/callable/OpenCameraListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/camera/device/callable/OpenCameraListener;->onClosed(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public synthetic OooO00o(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {v0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$300(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)Lcom/xiaomi/camera/device/callable/OpenCameraListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/camera/device/callable/OpenCameraListener;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    return-void
.end method

.method public synthetic OooO0O0(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {v0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$300(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)Lcom/xiaomi/camera/device/callable/OpenCameraListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/camera/device/callable/OpenCameraListener;->onDisconnected(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public synthetic OooO0O0(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {v0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$300(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)Lcom/xiaomi/camera/device/callable/OpenCameraListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/camera/device/callable/OpenCameraListener;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    return-void
.end method

.method public synthetic OooO0OO(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {v0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$300(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)Lcom/xiaomi/camera/device/callable/OpenCameraListener;

    move-result-object v0

    const/16 v1, 0xe7

    invoke-interface {v0, p1, v1}, Lcom/xiaomi/camera/device/callable/OpenCameraListener;->onError(Landroid/hardware/camera2/CameraDevice;I)V

    return-void
.end method

.method public synthetic OooO0Oo(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {v0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$300(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)Lcom/xiaomi/camera/device/callable/OpenCameraListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaomi/camera/device/callable/OpenCameraListener;->onOpened(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClosed: cid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/CameraCallable;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->getCookie(Ljava/lang/String;)Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 5
    iput-object v3, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 6
    iget-object v2, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v2}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClosed: cache removed: cid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsOpening:Z

    .line 8
    iget-object v0, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mStreamingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    new-instance v1, LOooO00o/OooO0o/OooO00o/OooO0O0/OooO0Oo/OooO0Oo;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0o/OooO00o/OooO0O0/OooO0Oo/OooO0Oo;-><init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;Landroid/hardware/camera2/CameraDevice;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/device/callable/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnected: cid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/CameraCallable;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->getCookie(Ljava/lang/String;)Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 5
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->onCameraDisconnected()V

    .line 6
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/camera2/Camera2Proxy;->releasePreview(I)V

    .line 7
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->resetConfigs()V

    .line 8
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2, v4}, Lcom/android/camera2/Camera2Proxy;->close(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsClosing:Z

    const/4 v2, 0x0

    .line 9
    iput-boolean v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsOpening:Z

    .line 10
    iput-boolean v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsReleasing:Z

    .line 11
    iput-object v3, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 12
    iget-object v2, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v2}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDisconnected: cache removed: cid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_0
    iget-object v0, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mStreamingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    new-instance v1, LOooO00o/OooO0o/OooO00o/OooO0O0/OooO0Oo/OooO0o;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0o/OooO00o/OooO0O0/OooO0Oo/OooO0o;-><init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;Landroid/hardware/camera2/CameraDevice;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/device/callable/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError: cid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3, v1, v2}, Lcom/android/camera/log/Log;->k(ILjava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/CameraCallable;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->getCookie(Ljava/lang/String;)Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 5
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->onCameraError()V

    .line 6
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2, v5}, Lcom/android/camera2/Camera2Proxy;->releasePreview(I)V

    .line 7
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->resetConfigs()V

    .line 8
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v2, v5}, Lcom/android/camera2/Camera2Proxy;->close(I)Z

    .line 9
    iput-boolean v4, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsReleasing:Z

    .line 10
    iput-object v3, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 11
    iget-object v2, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v2}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onError: cache removed: cid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_0
    iget-object v0, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mStreamingHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 14
    :cond_1
    iget-boolean v0, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsOpening:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {v0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$000(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_2

    .line 15
    invoke-static {}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onError: post onError to listener"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    new-instance v2, LOooO00o/OooO0o/OooO00o/OooO0O0/OooO0Oo/OooO0OO;

    invoke-direct {v2, p0, p1, p2}, LOooO00o/OooO0o/OooO00o/OooO0O0/OooO0Oo/OooO0OO;-><init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;Landroid/hardware/camera2/CameraDevice;I)V

    invoke-virtual {v0, v2}, Lcom/xiaomi/camera/device/callable/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    .line 17
    iput-boolean v4, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsOpening:Z

    goto :goto_0

    .line 18
    :cond_2
    iget-boolean v0, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsOpening:Z

    if-nez v0, :cond_3

    .line 19
    invoke-static {}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onError: post onError when using"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    new-instance v1, LOooO00o/OooO0o/OooO00o/OooO0O0/OooO0Oo/OooO0oO;

    invoke-direct {v1, p0, p1, p2}, LOooO00o/OooO0o/OooO00o/OooO0O0/OooO0Oo/OooO0oO;-><init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;Landroid/hardware/camera2/CameraDevice;I)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/device/callable/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 21
    :cond_3
    invoke-static {}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$100()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v0, v5, [Ljava/lang/Object;

    iget-boolean v1, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsOpening:Z

    .line 22
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {v2}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$000(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "onError: openCamera error. isOpening = %b, triedTimes = %d"

    .line 23
    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOpened: cid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v4, v1, v2}, LOooO00o/OooO0O0/OooO0OO/OooO00o;->OooO00o(ILjava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openCamera@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/performance/PerformanceManager;->endAction(Ljava/lang/String;)J

    .line 4
    invoke-static {}, Lcom/android/camera/performance/PerformanceManager;->getInstance()Lcom/android/camera/performance/PerformanceManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cameraOpened2createCaptureSession@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/performance/PerformanceManager;->startAction(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/CameraCallable;->getCookieStore()Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/camera/device/CameraHandlerThread$CookieStore;->getCookie(Ljava/lang/String;)Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;

    move-result-object v1

    .line 6
    iget-boolean v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsReleasing:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 7
    iput-boolean v4, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsReleasing:Z

    .line 8
    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but camera has been released"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    return-void

    .line 10
    :cond_0
    iput-boolean v4, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mIsOpening:Z

    .line 11
    iget-object v2, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-static {v2}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$000(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 12
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-nez v2, :cond_1

    .line 13
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    .line 14
    :cond_1
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    if-nez v2, :cond_2

    .line 15
    iget-object v1, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v1}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but camera capabilities is null"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 17
    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    new-instance v1, LOooO00o/OooO0o/OooO00o/OooO0O0/OooO0Oo/OooO0o0;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0o/OooO00o/OooO0O0/OooO0Oo/OooO0o0;-><init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;Landroid/hardware/camera2/CameraDevice;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/device/callable/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void

    .line 18
    :cond_2
    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    if-eqz v2, :cond_3

    .line 19
    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 20
    invoke-virtual {v2}, Lcom/android/camera2/Camera2Proxy;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    if-eq v2, p1, :cond_3

    .line 21
    iget-object v2, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    invoke-virtual {v2}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOpened: already cached: cid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->setCurrentOpenedCameraId(I)V

    .line 23
    new-instance v2, Lcom/android/camera2/MiCamera2;

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v7, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCameraCapabilities:Lcom/android/camera2/CameraCapabilities;

    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    .line 25
    invoke-static {v0}, Lcom/xiaomi/camera/device/callable/OpenCameraCallable;->access$200(Lcom/xiaomi/camera/device/callable/OpenCameraCallable;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mStreamingHandler:Landroid/os/Handler;

    move-object v4, v2

    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/camera2/MiCamera2;-><init>(ILandroid/hardware/camera2/CameraDevice;Lcom/android/camera2/CameraCapabilities;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v2, v1, Lcom/xiaomi/camera/device/CameraHandlerThread$Cookie;->mCamera2Device:Lcom/android/camera2/Camera2Proxy;

    .line 26
    iget-object v0, p0, Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;->this$0:Lcom/xiaomi/camera/device/callable/OpenCameraCallable;

    new-instance v1, LOooO00o/OooO0o/OooO00o/OooO0O0/OooO0Oo/OooO0O0;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0o/OooO00o/OooO0O0/OooO0Oo/OooO0O0;-><init>(Lcom/xiaomi/camera/device/callable/OpenCameraCallable$1;Landroid/hardware/camera2/CameraDevice;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/device/callable/CameraCallable;->postCallback(Ljava/lang/Runnable;)V

    return-void
.end method
