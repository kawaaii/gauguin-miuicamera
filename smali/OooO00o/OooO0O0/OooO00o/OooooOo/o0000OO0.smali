.class public final synthetic LOooO00o/OooO0O0/OooO00o/OooooOo/o0000OO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/SuperMoonModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/SuperMoonModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o0000OO0;->OooO00o:Lcom/android/camera/module/SuperMoonModule;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/o0000OO0;->OooO00o:Lcom/android/camera/module/SuperMoonModule;

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/SuperMoonModule;->OooO0OO(Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;)V

    return-void
.end method
