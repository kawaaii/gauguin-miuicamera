.class public final synthetic LOooO00o/OooO0O0/OooO00o/OooooOo/OooO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/module/BaseModule;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/module/BaseModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/OooO;->OooO00o:Lcom/android/camera/module/BaseModule;

    return-void
.end method


# virtual methods
.method public final subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OooooOo/OooO;->OooO00o:Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/BaseModule;->OooO00o(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method
