.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0OO/OooO0O0/OooO0O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ExtraResourceUpdater;


# static fields
.field public static final synthetic OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0OO/OooO0O0/OooO0O0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0OO/OooO0O0/OooO0O0;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0OO/OooO0O0/OooO0O0;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0OO/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0OO/OooO0O0/OooO0O0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final updateResource()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;
    .locals 1

    invoke-static {}, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->OooO0O0()Lcom/android/camera/fragment/modeui/topconfig/ExtraTopConfigResource;

    move-result-object v0

    return-object v0
.end method
