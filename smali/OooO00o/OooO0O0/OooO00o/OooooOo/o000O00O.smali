.class public final synthetic LOooO00o/OooO0O0/OooO00o/OooooOo/o000O00O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera2/CameraCapabilities;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera2/CameraCapabilities;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o000O00O;->OooO00o:Lcom/android/camera2/CameraCapabilities;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o000O00O;->OooO00o:Lcom/android/camera2/CameraCapabilities;

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    invoke-static {v0, p1}, Lcom/android/camera/module/VideoModule;->OooO00o(Lcom/android/camera2/CameraCapabilities;Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method
