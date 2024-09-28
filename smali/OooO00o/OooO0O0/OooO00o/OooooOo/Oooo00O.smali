.class public final synthetic LOooO00o/OooO0O0/OooO00o/OooooOo/Oooo00O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/Camera2Module;

.field private final synthetic OooO0O0:Lcom/android/camera/Camera;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/Camera2Module;Lcom/android/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/Oooo00O;->OooO00o:Lcom/android/camera/module/Camera2Module;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/Oooo00O;->OooO0O0:Lcom/android/camera/Camera;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/Oooo00O;->OooO00o:Lcom/android/camera/module/Camera2Module;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/Oooo00O;->OooO0O0:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/Camera2Module;->OooO00o(Lcom/android/camera/Camera;)V

    return-void
.end method
