.class public final synthetic Ljava8/util/stream/LongPipeline$$Lambda$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/ObjLongConsumer;


# static fields
.field public static final instance:Ljava8/util/stream/LongPipeline$$Lambda$8;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava8/util/stream/LongPipeline$$Lambda$8;

    invoke-direct {v0}, Ljava8/util/stream/LongPipeline$$Lambda$8;-><init>()V

    sput-object v0, Ljava8/util/stream/LongPipeline$$Lambda$8;->instance:Ljava8/util/stream/LongPipeline$$Lambda$8;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava8/util/function/ObjLongConsumer;
    .locals 1

    sget-object v0, Ljava8/util/stream/LongPipeline$$Lambda$8;->instance:Ljava8/util/stream/LongPipeline$$Lambda$8;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;J)V
    .locals 0

    check-cast p1, [J

    invoke-static {p1, p2, p3}, Ljava8/util/stream/LongPipeline;->lambda$average$91([JJ)V

    return-void
.end method
