.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooOOo/o0Oo0oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/DualVideoRecordModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/DualVideoRecordModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooOOo/o0Oo0oo;->OooO00o:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooOOo/o0Oo0oo;->OooO00o:Lcom/android/camera/dualvideo/DualVideoRecordModule;

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->OooOO0o(Lcom/android/camera/dualvideo/render/RenderManager;)V

    return-void
.end method
