.class public final synthetic LOooO00o/OooO0O0/OooO00o/OooooOo/o0000Oo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/protocol/ModeProtocol$RecordState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/protocol/ModeProtocol$RecordState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o0000Oo0;->OooO00o:Lcom/android/camera/protocol/ModeProtocol$RecordState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o0000Oo0;->OooO00o:Lcom/android/camera/protocol/ModeProtocol$RecordState;

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$RecordState;->onFinish()V

    return-void
.end method
