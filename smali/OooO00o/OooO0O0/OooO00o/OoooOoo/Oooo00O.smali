.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooOoo/Oooo00O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

.field private final synthetic OooO0O0:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/protocol/ModeProtocol$TopAlert;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooOoo/Oooo00O;->OooO00o:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iput p2, p0, LOooO00o/OooO0O0/OooO00o/OoooOoo/Oooo00O;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooOoo/Oooo00O;->OooO00o:Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    iget v1, p0, LOooO00o/OooO0O0/OooO00o/OoooOoo/Oooo00O;->OooO0O0:I

    invoke-static {v0, v1}, Lcom/android/camera/fragment/FragmentMainContent;->OooO00o(Lcom/android/camera/protocol/ModeProtocol$TopAlert;I)V

    return-void
.end method
