.class public final synthetic LOooO00o/OooO0O0/OooO00o/OooooOo/o000OoO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/VideoModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o000OoO;->OooO00o:Lcom/android/camera/module/VideoModule;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o000OoO;->OooO00o:Lcom/android/camera/module/VideoModule;

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/VideoModule;->OooO0o(Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;)V

    return-void
.end method
