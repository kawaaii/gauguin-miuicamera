.class public final synthetic LOooO00o/OooO0O0/OooO00o/OooooOo/OooOO0O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:I

.field private final synthetic OooO0O0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/OooOO0O;->OooO00o:I

    iput p2, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/OooOO0O;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/OooOO0O;->OooO00o:I

    iget v1, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/OooOO0O;->OooO0O0:I

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-static {v0, v1, p1}, Lcom/android/camera/module/BaseModule;->OooO00o(IILcom/android/camera/protocol/ModeProtocol$MainContentProtocol;)V

    return-void
.end method
