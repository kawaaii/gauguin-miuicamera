.class public final synthetic LOooO00o/OooO0O0/OooO00o/OooooOo/o000;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/VideoModule;

.field private final synthetic OooO0O0:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/VideoModule;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o000;->OooO00o:Lcom/android/camera/module/VideoModule;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o000;->OooO0O0:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o000;->OooO00o:Lcom/android/camera/module/VideoModule;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o000;->OooO0O0:Landroid/graphics/Rect;

    check-cast p1, Lcom/android/camera2/Camera2Proxy;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/module/VideoModule;->OooO00o(Landroid/graphics/Rect;Lcom/android/camera2/Camera2Proxy;)V

    return-void
.end method
