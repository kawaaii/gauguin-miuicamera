.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooOoo/o0OoOo0/OooO00o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/modeui/BaseModeUI;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/modeui/BaseModeUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooOoo/o0OoOo0/OooO00o;->OooO00o:Lcom/android/camera/fragment/modeui/BaseModeUI;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooOoo/o0OoOo0/OooO00o;->OooO00o:Lcom/android/camera/fragment/modeui/BaseModeUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/modeui/BaseModeUI;->switchCamera(Landroid/view/View;)V

    return-void
.end method
