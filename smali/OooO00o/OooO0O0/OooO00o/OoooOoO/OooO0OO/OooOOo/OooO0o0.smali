.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0OO/OooOOo/OooO0o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;


# static fields
.field public static final synthetic OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0OO/OooOOo/OooO0o0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0OO/OooOOo/OooO0o0;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0OO/OooOOo/OooO0o0;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0OO/OooOOo/OooO0o0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0OO/OooOOo/OooO0o0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final updateResource(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;
    .locals 0

    invoke-static {p1}, Lcom/android/camera/features/mode/video/VideoConfigUtils;->OooO0OO(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p1

    return-object p1
.end method
