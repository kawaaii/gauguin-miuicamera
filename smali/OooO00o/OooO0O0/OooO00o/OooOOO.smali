.class public final synthetic LOooO00o/OooO0O0/OooO00o/OooOOO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/Camera;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OooOOO;->OooO00o:Lcom/android/camera/Camera;

    return-void
.end method


# virtual methods
.method public final onLaunchStatusFetched(I)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OooOOO;->OooO00o:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->OooO0OO(I)V

    return-void
.end method
