.class public final synthetic LOooO00o/OooO0O0/OooO00o/OooOoo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic OooO00o:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OooOoo0;->OooO00o:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OooOoo0;->OooO00o:Landroid/os/Handler;

    invoke-static {v0, p1, p2}, Lcom/android/camera/RotateDialogController;->OooO00o(Landroid/os/Handler;Landroid/content/DialogInterface;I)V

    return-void
.end method
