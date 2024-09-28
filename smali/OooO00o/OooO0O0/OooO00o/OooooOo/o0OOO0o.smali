.class public final synthetic LOooO00o/OooO0O0/OooO00o/OooooOo/o0OOO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/DollyZoomModule;

.field private final synthetic OooO0O0:I

.field private final synthetic OooO0OO:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/DollyZoomModule;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o0OOO0o;->OooO00o:Lcom/android/camera/module/DollyZoomModule;

    iput p2, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o0OOO0o;->OooO0O0:I

    iput p3, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o0OOO0o;->OooO0OO:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o0OOO0o;->OooO00o:Lcom/android/camera/module/DollyZoomModule;

    iget v1, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o0OOO0o;->OooO0O0:I

    iget v2, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o0OOO0o;->OooO0OO:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/DollyZoomModule;->OooO00o(II)V

    return-void
.end method
