.class public final synthetic LOooO00o/OooO0O0/OooO00o/Oooooo/OooO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/performance/PerformanceManager;

.field private final synthetic OooO0O0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/performance/PerformanceManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/Oooooo/OooO0o;->OooO00o:Lcom/android/camera/performance/PerformanceManager;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/Oooooo/OooO0o;->OooO0O0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/Oooooo/OooO0o;->OooO00o:Lcom/android/camera/performance/PerformanceManager;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/Oooooo/OooO0o;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/performance/PerformanceManager;->OooO00o(Ljava/lang/String;)V

    return-void
.end method
