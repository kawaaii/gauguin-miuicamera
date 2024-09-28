.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooOoo/OoooOOO/OooOO0O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:[Ljava/lang/String;

.field private final synthetic OooO0O0:Z


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooOoo/OoooOOO/OooOO0O;->OooO00o:[Ljava/lang/String;

    iput-boolean p2, p0, LOooO00o/OooO0O0/OooO00o/OoooOoo/OoooOOO/OooOO0O;->OooO0O0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooOoo/OoooOOO/OooOO0O;->OooO00o:[Ljava/lang/String;

    iget-boolean v1, p0, LOooO00o/OooO0O0/OooO00o/OoooOoo/OoooOOO/OooOO0O;->OooO0O0:Z

    check-cast p1, Lcom/android/camera/data/data/TypeItem;

    invoke-static {v0, v1, p1}, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;->OooO00o([Ljava/lang/String;ZLcom/android/camera/data/data/TypeItem;)V

    return-void
.end method
