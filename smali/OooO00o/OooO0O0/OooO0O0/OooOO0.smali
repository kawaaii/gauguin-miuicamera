.class public final synthetic LOooO00o/OooO0O0/OooO0O0/OooOO0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/xiaomi/engine/BufferFormat;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaomi/engine/BufferFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0O0/OooOO0;->OooO00o:Lcom/xiaomi/engine/BufferFormat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LOooO00o/OooO0O0/OooO0O0/OooOO0;->OooO00o:Lcom/xiaomi/engine/BufferFormat;

    invoke-static {v0}, Lcom/android/camera2/MiCamera2ShotParallel;->OooO00o(Lcom/xiaomi/engine/BufferFormat;)V

    return-void
.end method
