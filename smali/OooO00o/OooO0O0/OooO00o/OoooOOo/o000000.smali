.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooOOo/o000000;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooOOo/o000000;->OooO00o:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooOOo/o000000;->OooO00o:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/camera/dualvideo/DualVideoRecordModule;->OooO00o(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method
