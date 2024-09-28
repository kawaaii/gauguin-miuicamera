.class public Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;
.super Lcom/android/camera/aiwatermark/handler/CityHandler;
.source "ChinaCityHandler.java"


# static fields
.field public static CITY_NAME:Ljava/lang/String; = ""

.field public static final DISTANCE_THRESHOLDS:I = 0x32

.field public static LAT:D = 4.9E-324

.field public static LON:D = 4.9E-324

.field public static final TAG:Ljava/lang/String; = "ChinaCityHandler"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ZLandroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/aiwatermark/handler/CityHandler;-><init>(Z)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->mContext:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/aiwatermark/handler/CityHandler;->getLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/aiwatermark/handler/AbstractHandler;->debugGPS()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "0"

    const-string/jumbo p2, "test.gps.latitude"

    .line 6
    invoke-static {p2, p1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-string/jumbo p2, "test.gps.longtitude"

    .line 7
    invoke-static {p2, p1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .line 9
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    .line 10
    :goto_0
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->initCityName(DD)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private format(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p1, :cond_0

    const-string v1, " "

    .line 1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getDistance(DDDD)D
    .locals 4

    sub-double p5, p1, p5

    const-wide v0, 0x405bc00000000000L    # 111.0

    mul-double/2addr p5, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 1
    invoke-static {p5, p6, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p5

    sub-double/2addr p3, p7

    mul-double/2addr p3, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    mul-double/2addr p3, p1

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr p5, p1

    invoke-static {p5, p6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private initCityName(DD)Ljava/lang/String;
    .locals 9

    .line 1
    sget-wide v5, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->LAT:D

    sget-wide v7, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->LON:D

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->getDistance(DDDD)D

    move-result-wide v0

    .line 2
    sget-object v2, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->CITY_NAME:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, ""

    return-object p1

    .line 4
    :cond_1
    sput-wide p1, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->LAT:D

    .line 5
    sput-wide p3, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->LON:D

    .line 6
    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/Scheduler;

    new-instance v7, LOooO00o/OooO0O0/OooO00o/OoooO/OooO00o/OooO00o;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, LOooO00o/OooO0O0/OooO00o/OoooO/OooO00o/OooO00o;-><init>(Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;DD)V

    invoke-virtual {v0, v7}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    .line 7
    :cond_2
    sget-object p1, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->CITY_NAME:Ljava/lang/String;

    return-object p1
.end method

.method private isNetworkConnected(Landroid/content/Context;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 2
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public synthetic OooO00o(DD)V
    .locals 7

    .line 1
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->mContext:Landroid/content/Context;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    move-wide v1, p1

    move-wide v3, p3

    .line 3
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/location/Address;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p2}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p2}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->CITY_NAME:Ljava/lang/String;

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 9
    :goto_2
    :try_start_1
    sget-object p2, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[getAddress] ex = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    .line 10
    :goto_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->CITY_NAME:Ljava/lang/String;

    .line 11
    throw p1
.end method

.method public getAddress(DD)Ljava/lang/String;
    .locals 9

    .line 1
    sget-wide v5, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->LAT:D

    sget-wide v7, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->LON:D

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->getDistance(DDDD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const-string v0, ""

    .line 2
    sput-object v0, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->CITY_NAME:Ljava/lang/String;

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->initCityName(DD)Ljava/lang/String;

    .line 4
    :cond_0
    sget-object p1, Lcom/android/camera/aiwatermark/handler/ChinaCityHandler;->CITY_NAME:Ljava/lang/String;

    return-object p1
.end method

.method public getCityWatermarkList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/aiwatermark/data/WatermarkItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/camera/aiwatermark/data/CityWatermark;

    invoke-direct {v0}, Lcom/android/camera/aiwatermark/data/CityWatermark;-><init>()V

    invoke-virtual {v0}, Lcom/android/camera/aiwatermark/data/CityWatermark;->getForAI()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
