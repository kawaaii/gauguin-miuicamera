.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooooo/OooO0oO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/performance/PerformanceManager;

.field private final synthetic OooO0O0:Lcom/android/camera/performance/Action$Event;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/performance/PerformanceManager;Lcom/android/camera/performance/Action$Event;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Oooooo/OooO0oO;->OooO00o:Lcom/android/camera/performance/PerformanceManager;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/Oooooo/OooO0oO;->OooO0O0:Lcom/android/camera/performance/Action$Event;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Oooooo/OooO0oO;->OooO00o:Lcom/android/camera/performance/PerformanceManager;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/Oooooo/OooO0oO;->OooO0O0:Lcom/android/camera/performance/Action$Event;

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->OooO00o(Lcom/android/camera/performance/Action$Event;)V

    return-void
.end method
