.class public final synthetic Ljava8/util/stream/AbstractPipeline$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Supplier;


# instance fields
.field public final arg$1:Ljava8/util/stream/AbstractPipeline;


# direct methods
.method public constructor <init>(Ljava8/util/stream/AbstractPipeline;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/AbstractPipeline$$Lambda$1;->arg$1:Ljava8/util/stream/AbstractPipeline;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/stream/AbstractPipeline;)Ljava8/util/function/Supplier;
    .locals 1

    new-instance v0, Ljava8/util/stream/AbstractPipeline$$Lambda$1;

    invoke-direct {v0, p0}, Ljava8/util/stream/AbstractPipeline$$Lambda$1;-><init>(Ljava8/util/stream/AbstractPipeline;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava8/util/stream/AbstractPipeline$$Lambda$1;->arg$1:Ljava8/util/stream/AbstractPipeline;

    invoke-static {v0}, Ljava8/util/stream/AbstractPipeline;->lambda$spliterator$77(Ljava8/util/stream/AbstractPipeline;)Ljava8/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
