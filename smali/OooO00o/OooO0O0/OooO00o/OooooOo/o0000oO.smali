.class public final synthetic LOooO00o/OooO0O0/OooO00o/OooooOo/o0000oO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/MiLiveModule;

.field private final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/MiLiveModule;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o0000oO;->OooO00o:Lcom/android/camera/module/MiLiveModule;

    iput-boolean p2, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o0000oO;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o0000oO;->OooO00o:Lcom/android/camera/module/MiLiveModule;

    iget-boolean v1, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o0000oO;->OooO0O0:Z

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/module/MiLiveModule;->OooO00o(ZLcom/android/camera/protocol/ModeProtocol$MainContentProtocol;)V

    return-void
.end method
