.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooOOo/Oooo0oO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/remote/RemoteDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/remote/RemoteDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooOOo/Oooo0oO;->OooO00o:Lcom/android/camera/dualvideo/remote/RemoteDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooOOo/Oooo0oO;->OooO00o:Lcom/android/camera/dualvideo/remote/RemoteDevice;

    check-cast p1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    invoke-static {v0, p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->OooO00o(Lcom/android/camera/dualvideo/remote/RemoteDevice;Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;)V

    return-void
.end method
