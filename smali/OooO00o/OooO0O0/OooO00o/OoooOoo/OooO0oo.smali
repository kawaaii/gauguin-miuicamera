.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooOoo/OooO0oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/beauty/SubEffectUI;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/beauty/SubEffectUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooOoo/OooO0oo;->OooO00o:Lcom/android/camera/fragment/beauty/SubEffectUI;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooOoo/OooO0oo;->OooO00o:Lcom/android/camera/fragment/beauty/SubEffectUI;

    check-cast p1, Lcom/android/camera/fragment/beauty/IBeautyTypeUI;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/FragmentBeauty;->OooO00o(Lcom/android/camera/fragment/beauty/SubEffectUI;Lcom/android/camera/fragment/beauty/IBeautyTypeUI;)V

    return-void
.end method
