.class public final synthetic LOooO00o/OooO0O0/OooO00o/OooooOo/OoooooO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/CloneModule;

.field private final synthetic OooO0O0:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/CloneModule;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/OoooooO;->OooO00o:Lcom/android/camera/module/CloneModule;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/OoooooO;->OooO0O0:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/OoooooO;->OooO00o:Lcom/android/camera/module/CloneModule;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/OoooooO;->OooO0O0:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CloneModule;->OooO00o(Landroid/net/Uri;)V

    return-void
.end method
