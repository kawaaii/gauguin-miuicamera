.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooOOO/OooO00o/OooO0OO/OooOOOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOO/OooO00o/OooO0OO/OooOOOo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooOOO/OooO00o/OooO0OO/OooOOOo;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO00o/OoooOOO/OooO00o/OooO0OO/OooOOOo;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO00o/OoooOOO/OooO00o/OooO0OO/OooOOOo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOO/OooO00o/OooO0OO/OooOOOo;

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

    check-cast p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;

    invoke-static {p1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->OooO0OO(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object p1

    return-object p1
.end method
