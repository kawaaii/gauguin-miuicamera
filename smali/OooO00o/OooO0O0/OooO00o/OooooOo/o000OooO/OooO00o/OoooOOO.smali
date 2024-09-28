.class public final synthetic LOooO00o/OooO0O0/OooO00o/OooooOo/o000OooO/OooO00o/OoooOOO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/BiFunction;


# static fields
.field public static final synthetic OooO00o:LOooO00o/OooO0O0/OooO00o/OooooOo/o000OooO/OooO00o/OoooOOO;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OooooOo/o000OooO/OooO00o/OoooOOO;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO00o/OooooOo/o000OooO/OooO00o/OoooOOO;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO00o/OooooOo/o000OooO/OooO00o/OoooOOO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OooooOo/o000OooO/OooO00o/OoooOOO;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    check-cast p2, Ljava/lang/Long;

    invoke-static {p1, p2}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->OooO00o(Lcom/android/camera/data/data/ComponentDataItem;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
