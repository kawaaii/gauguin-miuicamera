.class public final synthetic LOooO00o/OooO0O0/OooO00o/OooooOo/o000OooO/OooO00o/OooOoo0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic OooO00o:LOooO00o/OooO0O0/OooO00o/OooooOo/o000OooO/OooO00o/OooOoo0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OooooOo/o000OooO/OooO00o/OooOoo0;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO00o/OooooOo/o000OooO/OooO00o/OooOoo0;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO00o/OooooOo/o000OooO/OooO00o/OooOoo0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OooooOo/o000OooO/OooO00o/OooOoo0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/camera/module/Module;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->OooOo(Lcom/android/camera/module/Module;)V

    return-void
.end method
