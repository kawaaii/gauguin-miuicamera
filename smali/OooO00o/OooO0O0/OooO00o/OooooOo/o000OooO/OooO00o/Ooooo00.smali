.class public final synthetic LOooO00o/OooO0O0/OooO00o/OooooOo/o000OooO/OooO00o/Ooooo00;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic OooO00o:LOooO00o/OooO0O0/OooO00o/OooooOo/o000OooO/OooO00o/Ooooo00;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OooooOo/o000OooO/OooO00o/Ooooo00;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO00o/OooooOo/o000OooO/OooO00o/Ooooo00;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO00o/OooooOo/o000OooO/OooO00o/Ooooo00;->OooO00o:LOooO00o/OooO0O0/OooO00o/OooooOo/o000OooO/OooO00o/Ooooo00;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    return-object p1
.end method
