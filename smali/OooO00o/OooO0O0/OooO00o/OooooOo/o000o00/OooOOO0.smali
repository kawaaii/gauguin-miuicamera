.class public final synthetic LOooO00o/OooO0O0/OooO00o/OooooOo/o000o00/OooOOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/video/UserRecordSetting;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/video/UserRecordSetting;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o000o00/OooOOO0;->OooO00o:Lcom/android/camera/module/video/UserRecordSetting;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o000o00/OooOOO0;->OooO00o:Lcom/android/camera/module/video/UserRecordSetting;

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ZoomProtocol;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/video/UserRecordSetting;->OooO00o(Lcom/android/camera/protocol/ModeProtocol$ZoomProtocol;)V

    return-void
.end method
