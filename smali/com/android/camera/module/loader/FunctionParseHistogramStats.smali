.class public Lcom/android/camera/module/loader/FunctionParseHistogramStats;
.super Ljava/lang/Object;
.source "FunctionParseHistogramStats.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Landroid/hardware/camera2/CaptureResult;",
        "[I>;"
    }
.end annotation


# instance fields
.field public mStats:[I


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Module;Lcom/android/camera/protocol/ModeProtocol$TopAlert;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/loader/FunctionParseHistogramStats;->apply(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p1

    return-object p1
.end method

.method public apply(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/loader/FunctionParseHistogramStats;->mStats:[I

    return-object p1
.end method
