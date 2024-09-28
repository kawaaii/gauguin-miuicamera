.class public final synthetic LOooO00o/OooO0O0/OooO00o/OooooOo/o000Oooo/OooO0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# static fields
.field public static final synthetic OooO00o:LOooO00o/OooO0O0/OooO00o/OooooOo/o000Oooo/OooO0O0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OooooOo/o000Oooo/OooO0O0;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO00o/OooooOo/o000Oooo/OooO0O0;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO00o/OooooOo/o000Oooo/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OooooOo/o000Oooo/OooO0O0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/android/camera/module/interceptor/ASDInterceptorChain;->OooO0O0(Ljava/util/List;)Z

    move-result p1

    return p1
.end method
