.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0OO/OooO0O0/OooO0o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/fragment/modeui/topconfig/TopConfigItem$ResourceUpdater;


# static fields
.field public static final synthetic OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0OO/OooO0O0/OooO0o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0OO/OooO0O0/OooO0o;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0OO/OooO0O0/OooO0o;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0OO/OooO0O0/OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0OO/OooO0O0/OooO0o;

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

    invoke-static {p1}, Lcom/android/camera/features/mode/capture/CaptureConfigUtils;->OooO0OO(I)Lcom/android/camera/fragment/modeui/topconfig/TopItemResource;

    move-result-object p1

    return-object p1
.end method
