.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooOOo/o0000O0/Oooo0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/dualvideo/render/CameraItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/dualvideo/render/CameraItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooOOo/o0000O0/Oooo0O0;->OooO00o:Lcom/android/camera/dualvideo/render/CameraItem;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooOOo/o0000O0/Oooo0O0;->OooO00o:Lcom/android/camera/dualvideo/render/CameraItem;

    check-cast p1, Lcom/android/camera/dualvideo/util/UserSelectData;

    invoke-static {v0, p1}, Lcom/android/camera/dualvideo/render/CameraItemManager;->OooO00o(Lcom/android/camera/dualvideo/render/CameraItem;Lcom/android/camera/dualvideo/util/UserSelectData;)Z

    move-result p1

    return p1
.end method
