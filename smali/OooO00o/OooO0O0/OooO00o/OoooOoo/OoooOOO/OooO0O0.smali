.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooOoo/OoooOOO/OooO0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic OooO00o:Ljava/lang/String;

.field private final synthetic OooO0O0:Lcom/android/camera/fragment/beauty/IBeautyMutex;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/camera/fragment/beauty/IBeautyMutex;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooOoo/OoooOOO/OooO0O0;->OooO00o:Ljava/lang/String;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/OoooOoo/OoooOOO/OooO0O0;->OooO0O0:Lcom/android/camera/fragment/beauty/IBeautyMutex;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooOoo/OoooOOO/OooO0O0;->OooO00o:Ljava/lang/String;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/OoooOoo/OoooOOO/OooO0O0;->OooO0O0:Lcom/android/camera/fragment/beauty/IBeautyMutex;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, v1, p1}, Lcom/android/camera/fragment/beauty/BeautyMutexManager;->OooO00o(Ljava/lang/String;Lcom/android/camera/fragment/beauty/IBeautyMutex;Ljava/util/Map$Entry;)V

    return-void
.end method
