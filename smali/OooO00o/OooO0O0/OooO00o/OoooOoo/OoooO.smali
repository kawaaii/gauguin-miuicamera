.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooOoo/OoooO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/CameraPresentation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/CameraPresentation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooOoo/OoooO;->OooO00o:Lcom/android/camera/fragment/CameraPresentation;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooOoo/OoooO;->OooO00o:Lcom/android/camera/fragment/CameraPresentation;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/PresentationDisplay;->OooO00o(Lcom/android/camera/fragment/CameraPresentation;Landroid/content/DialogInterface;)V

    return-void
.end method
