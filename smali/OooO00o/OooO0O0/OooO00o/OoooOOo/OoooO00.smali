.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooO00;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooO00;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooO00;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooO00;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooO00;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/OoooO00;

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

    check-cast p1, Lcom/android/camera/dualvideo/render/RenderManager;

    invoke-static {p1}, Lcom/android/camera/dualvideo/DualVideoModuleBase;->OooO(Lcom/android/camera/dualvideo/render/RenderManager;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
