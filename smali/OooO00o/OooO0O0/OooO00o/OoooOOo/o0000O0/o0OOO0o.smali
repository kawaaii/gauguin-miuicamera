.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooOOo/o0000O0/o0OOO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/o0000O0/o0OOO0o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooOOo/o0000O0/o0OOO0o;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO00o/OoooOOo/o0000O0/o0OOO0o;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO00o/OoooOOo/o0000O0/o0OOO0o;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOOo/o0000O0/o0OOO0o;

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

    check-cast p1, Lcom/android/camera/dualvideo/render/CameraItemInterface;

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/RenderManager;->OooO0o(Lcom/android/camera/dualvideo/render/CameraItemInterface;)Z

    move-result p1

    return p1
.end method
