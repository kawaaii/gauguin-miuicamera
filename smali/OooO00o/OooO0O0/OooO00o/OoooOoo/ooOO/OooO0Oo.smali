.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooOoo/ooOO/OooO0Oo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOoo/ooOO/OooO0Oo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooOoo/ooOO/OooO0Oo;

    invoke-direct {v0}, LOooO00o/OooO0O0/OooO00o/OoooOoo/ooOO/OooO0Oo;-><init>()V

    sput-object v0, LOooO00o/OooO0O0/OooO00o/OoooOoo/ooOO/OooO0Oo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooOoo/ooOO/OooO0Oo;

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

    check-cast p1, Lcom/android/camera/resource/tmmusic/TMMusicList;

    invoke-static {p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->OooO00o(Lcom/android/camera/resource/tmmusic/TMMusicList;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
