.class public final synthetic LOooO00o/OooO0O0/OooO00o/OooooOo/o000Ooo0/OooO0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o000Ooo0/OooO0o0;->OooO00o:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o000Ooo0/OooO0o0;->OooO00o:Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-static {v0}, Lcom/android/camera/module/image/MultiCaptureManager;->OooO00o(Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;)V

    return-void
.end method
