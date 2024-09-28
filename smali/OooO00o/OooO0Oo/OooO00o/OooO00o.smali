.class public LOooO00o/OooO0Oo/OooO00o/OooO00o;
.super Ljava/lang/Object;
.source "DataItemFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO00o/OooO0Oo/OooO00o/OooO00o$OooO0O0;
    }
.end annotation


# static fields
.field public static final OooO:I = 0x2

.field public static final OooO0OO:Ljava/lang/String; = "OooO00o"

.field public static final OooO0Oo:Z

.field public static final OooO0o:Z

.field public static final OooO0o0:Z

.field public static final OooO0oO:I = 0x0

.field public static final OooO0oo:I = 0x1

.field public static final OooOO0:Ljava/lang/String;

.field public static final OooOO0O:I = 0x1

.field public static final OooOO0o:I = 0x4

.field public static OooOOO:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final OooOOO0:I = 0x8

.field public static final OooOOOO:[Ljava/lang/String;

.field public static final OooOOOo:Z = false


# instance fields
.field public OooO00o:Ljava/lang/String;

.field public OooO0O0:Lcom/mi/device/Common;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/camera/Util;->DEBUG:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "camera.feature.clone"

    invoke-static {v0, v2}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0Oo:Z

    .line 2
    sget-boolean v0, Lcom/android/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "camera.feature.saliencychecker"

    invoke-static {v0, v2}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0o0:Z

    .line 3
    sget-boolean v0, Lcom/android/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "camera.ExternalFrameProcessor.power.test"

    invoke-static {v0, v2}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    sput-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0o:Z

    const-string/jumbo v0, "ro.miui.build.region"

    const-string v1, "cn"

    .line 4
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooOO0:Ljava/lang/String;

    const-string v0, "KR"

    const-string v1, "JP"

    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooOOOO:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OoooO00()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOooO0O0/OooO0O0;->OooO0O0(Ljava/lang/String;)Lcom/mi/device/Common;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    .line 4
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0OO:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init proxy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic constructor <init>(LOooO00o/OooO0Oo/OooO00o/OooO00o$OooO00o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;-><init>()V

    return-void
.end method

.method private OooO00o(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 13
    invoke-direct {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoO0O()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoO0o()Ljava/lang/String;

    move-result-object p1

    .line 14
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p3

    .line 15
    :cond_1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    :cond_3
    return-object p3
.end method

.method private OooO0O0(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 8
    :cond_0
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0000oO0()Landroid/util/Size;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 9
    :cond_1
    invoke-static {p1, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isUltraPixelRawPhotographySupported(Lcom/android/camera2/CameraCapabilities;Landroid/util/Size;)Z

    move-result p1

    return p1
.end method

.method private OooO0OO(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 3
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private OooO0Oo(Ljava/lang/String;)Landroid/util/Size;
    .locals 3

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3a

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    const-string v2, ""

    .line 5
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 6
    array-length v0, p1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    .line 7
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 8
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 9
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p1}, Landroid/util/Size;-><init>(II)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private OooO0o0(Ljava/lang/String;)Z
    .locals 5

    .line 2
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooOOOO:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 3
    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private o0OOoO()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000O00()I

    move-result v0

    return v0
.end method

.method private o0OOoO0()[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooooOO()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v1, ","

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o0OOoO00()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ro.boot.camera.config"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v0, "_pro"

    return-object v0
.end method

.method private o0OOoO0O()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000ooO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private o0OOoO0o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000O000()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;
    .locals 1

    .line 1
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO00o$OooO0O0;->OooO00o:LOooO00o/OooO0Oo/OooO00o/OooO00o;

    return-object v0
.end method

.method public static o0OOoOOO()Z
    .locals 2

    .line 1
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooOO0:Ljava/lang/String;

    const-string v1, "cn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private o0OOoOo()Z
    .locals 2

    .line 1
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooOO0:Ljava/lang/String;

    const-string v1, "in"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private o0OOoOo0()Z
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000oo0()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.hardware.fp.fod"

    .line 2
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private o0OOoo0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0OOo()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public OooO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooO()Z

    move-result v0

    return v0
.end method

.method public OooO00o(I)I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000()I

    move-result v0

    if-gez v0, :cond_0

    return p1

    :cond_0
    return v0
.end method

.method public OooO00o(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000o0()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    return-object v0
.end method

.method public OooO00o(ZZLjava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "capture_inner"

    .line 6
    invoke-direct {p0, v0, v1, p3}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO00o(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_0

    const-string/jumbo p2, "video_inner"

    .line 7
    invoke-direct {p0, v0, p2, p3}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO00o(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {p1}, Lcom/mi/device/Common;->o0000o0o()[Ljava/lang/String;

    move-result-object p1

    aget-object p3, p1, v0

    :cond_1
    const-string p1, ":"

    .line 9
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public OooO00o()Z
    .locals 1

    .line 21
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00Oo0:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    .line 22
    invoke-virtual {v0}, Lcom/mi/device/Common;->OooO00o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooO00o(II)Z
    .locals 1

    .line 20
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0, p1, p2}, Lcom/mi/device/Common;->OooO00o(II)Z

    move-result p1

    return p1
.end method

.method public OooO00o(Lcom/android/camera2/CameraCapabilities;)Z
    .locals 1

    .line 5
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooOOo0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public OooO00o(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {p1}, Lcom/mi/device/Common;->OooOo0o()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public OooO0O0(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->Oooooo()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->Oooo0oO()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public OooO0O0(ZZLjava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "capture_ruler"

    .line 18
    invoke-direct {p0, v0, v1, p3}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO00o(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p2, :cond_0

    const-string/jumbo p2, "video_ruler"

    .line 19
    invoke-direct {p0, v0, p2, p3}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO00o(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    if-eqz p1, :cond_1

    .line 20
    iget-object p1, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {p1}, Lcom/mi/device/Common;->o0000o0o()[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aget-object p3, p1, p2

    :cond_1
    const-string p1, ":"

    .line 21
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 22
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_2

    .line 24
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public OooO0O0()Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.miui.maintenancemode"

    .line 2
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 3
    :catch_0
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0OO:Ljava/lang/String;

    const-string v2, "get packageManager of maintenance mode error"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :catch_1
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0OO:Ljava/lang/String;

    const-string v2, "could not get packageManager of maintenance mode"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public OooO0O0(Ljava/lang/String;)Z
    .locals 7

    .line 25
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0ooO0()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, ";"

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 28
    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    const-string v5, ","

    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 30
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    .line 31
    aget-object v5, v4, v2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 p1, 0x1

    .line 32
    aget-object p1, v4, p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2
.end method

.method public OooO0O0(I)[F
    .locals 5

    .line 10
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O000oo()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1.0:2.0"

    goto :goto_0

    :cond_0
    const-string v0, "1.0"

    :goto_0
    const/16 v1, 0xa1

    const/4 v2, 0x0

    const-string v3, "capture"

    const/4 v4, 0x1

    if-eq p1, v1, :cond_4

    const/16 v1, 0xa2

    if-eq p1, v1, :cond_4

    const/16 v1, 0xa9

    if-eq p1, v1, :cond_4

    const/16 v1, 0xaf

    if-eq p1, v1, :cond_3

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_4

    const/16 v1, 0xb7

    if-eq p1, v1, :cond_4

    const/16 v1, 0xbc

    if-eq p1, v1, :cond_2

    const/16 v1, 0xcc

    if-eq p1, v1, :cond_4

    const/16 v1, 0xac

    if-eq p1, v1, :cond_4

    const/16 v1, 0xad

    if-eq p1, v1, :cond_1

    :goto_1
    move p1, v2

    goto :goto_2

    :cond_1
    const-string/jumbo v3, "supernight"

    const-string v0, "0.6:1:2"

    goto :goto_1

    :cond_2
    const-string/jumbo v3, "supermoon"

    const-string v0, "5:60"

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "pixel"

    const-string v0, "1:2"

    goto :goto_1

    :cond_4
    move p1, v4

    .line 11
    :goto_2
    invoke-direct {p0, v4, v3, v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO00o(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_5

    const-string p1, ""

    const-string/jumbo v1, "video"

    .line 12
    invoke-direct {p0, v4, v1, p1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO00o(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    move-object v0, v1

    :cond_5
    const-string p1, ":"

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    .line 16
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_6

    .line 17
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-object v0
.end method

.method public OooO0OO(I)J
    .locals 6

    const/4 v0, 0x0

    const-string v1, "camera.debug.timeDelayRecord"

    .line 7
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    return-wide v1

    .line 8
    :cond_0
    iget-object v1, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v1}, Lcom/mi/device/Common;->o000O0o()[J

    move-result-object v1

    if-eqz v1, :cond_4

    .line 9
    array-length v2, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0xac

    if-eq p1, v2, :cond_3

    const/16 v0, 0xb7

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 10
    :cond_3
    :goto_0
    array-length p1, v1

    if-ge v0, p1, :cond_4

    .line 11
    aget-wide v0, v1, v0

    return-wide v0

    :cond_4
    :goto_1
    return-wide v3
.end method

.method public OooO0OO(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "4x3"

    return-object p1

    .line 6
    :cond_0
    iget-object p1, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {p1}, Lcom/mi/device/Common;->OoooO()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public OooO0OO()Z
    .locals 1

    .line 5
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooO0O0()Z

    move-result v0

    return v0
.end method

.method public OooO0Oo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooO0Oo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooO0Oo(Z)[I
    .locals 1

    .line 10
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0, p1}, Lcom/mi/device/Common;->OooO00o(Z)[I

    move-result-object p1

    return-object p1
.end method

.method public OooO0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooO0o()Z

    move-result v0

    return v0
.end method

.method public OooO0o0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooO0o0()Z

    move-result v0

    return v0
.end method

.method public OooO0o0(Z)Z
    .locals 3

    const-string/jumbo v0, "ro.miui.customized.region"

    .line 4
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fr_sfr"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "fr_orange"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "jp_kd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "es_vodafone"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OoooO()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return p1

    :cond_2
    :goto_0
    return v2
.end method

.method public OooO0oO()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooO0oO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooO0oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooO0oo()Z

    move-result v0

    return v0
.end method

.method public OooOO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOO0()Z

    move-result v0

    return v0
.end method

.method public OooOO0O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOO0O()Z

    move-result v0

    return v0
.end method

.method public OooOO0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOO0o()Z

    move-result v0

    return v0
.end method

.method public OooOOO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOOOO()Z

    move-result v0

    return v0
.end method

.method public OooOOO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOOO0()Z

    move-result v0

    return v0
.end method

.method public OooOOOO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOOOo()Z

    move-result v0

    return v0
.end method

.method public OooOOOo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOOo0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooOOo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOOoo()Z

    move-result v0

    return v0
.end method

.method public OooOOo0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOOo()Z

    move-result v0

    return v0
.end method

.method public OooOOoo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOo00()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooOo()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooooO0()I

    move-result v0

    return v0
.end method

.method public OooOo0()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OoooOoo()I

    move-result v0

    return v0
.end method

.method public OooOo00()F
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOo0()F

    move-result v0

    return v0
.end method

.method public OooOo0O()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->Ooooo00()I

    move-result v0

    return v0
.end method

.method public OooOo0o()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->Ooooo0o()I

    move-result v0

    return v0
.end method

.method public OooOoO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOo()Z

    move-result v0

    return v0
.end method

.method public OooOoO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOo0O()Z

    move-result v0

    return v0
.end method

.method public OooOoOO()J
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOoO0()J

    move-result-wide v0

    return-wide v0
.end method

.method public OooOoo()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOoOO()I

    move-result v0

    return v0
.end method

.method public OooOoo0()J
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOoO()J

    move-result-wide v0

    return-wide v0
.end method

.method public OooOooO()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOoo0()I

    move-result v0

    return v0
.end method

.method public OooOooo()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOoo()I

    move-result v0

    return v0
.end method

.method public Oooo()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->Oooo0o()I

    move-result v0

    return v0
.end method

.method public Oooo0()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->Oooo00O()I

    move-result v0

    return v0
.end method

.method public Oooo000()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOooO()Z

    move-result v0

    return v0
.end method

.method public Oooo00O()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOooo()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Oooo00o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->Oooo000()Z

    move-result v0

    return v0
.end method

.method public Oooo0O0()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->Oooo00o()I

    move-result v0

    return v0
.end method

.method public Oooo0OO()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->Oooo0()I

    move-result v0

    return v0
.end method

.method public Oooo0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->Oooo0O0()Z

    move-result v0

    return v0
.end method

.method public Oooo0o0()Landroid/util/Size;
    .locals 4

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooOOoo()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 6
    aget-object v0, v0, v2

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 7
    array-length v1, v0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 8
    new-instance v1, Landroid/util/Size;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v3, v0}, Landroid/util/Size;-><init>(II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public Oooo0oO()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->Oooo0OO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Oooo0oo()[I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->Oooo0o0()[I

    move-result-object v0

    return-object v0
.end method

.method public OoooO()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/Util;->sRegion:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OoooO0()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->Oooo0oO()I

    move-result v0

    return v0
.end method

.method public OoooO00()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "agate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "veux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "star"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "mars"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "lime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_5
    const-string v1, "camellia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_6
    const-string/jumbo v1, "secret"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_7
    const-string v1, "evergo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v2, "gl"

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 3
    :pswitch_0
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00O00OO()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/camera/Util;->isInternationalBuild()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "ro.product.name"

    .line 4
    invoke-static {v1}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "_p"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "pgl"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 6
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 7
    :pswitch_1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00O00OO()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "in"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 9
    :pswitch_2
    invoke-static {}, Lcom/android/camera/Util;->isInternationalBuild()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    :cond_2
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoO00()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4cf8117a -> :sswitch_7
        -0x3604b150 -> :sswitch_6
        -0x8ecf5f2 -> :sswitch_5
        0x32afd5 -> :sswitch_4
        0x3306d5 -> :sswitch_3
        0x360652 -> :sswitch_2
        0x372d92 -> :sswitch_1
        0x58734ac -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public OoooO0O()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->Oooo0oo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OoooOO0()F
    .locals 3

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->Oooo()F

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->getDumpCropFrontZoomRatio()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->getDumpCropFrontZoomRatio()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/Util;->getDumpCropFrontZoomRatio()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :cond_0
    return v0
.end method

.method public OoooOOO()[I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OoooO0()[I

    move-result-object v0

    return-object v0
.end method

.method public OoooOOo()[I
    .locals 5

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OoooO0O()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    const-string v1, ":"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    array-length v1, v0

    new-array v1, v1, [I

    const/4 v3, 0x0

    .line 5
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 6
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    .line 7
    :catch_0
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0OO:Ljava/lang/String;

    const-string v1, "get default favorite modes fails."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public OoooOo0()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OoooOO0()I

    move-result v0

    return v0
.end method

.method public OoooOoO()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000oOoO()I

    move-result v0

    return v0
.end method

.method public OoooOoo()I
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-ne v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OoooOOO()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOO0o()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OoooOOO()I

    move-result v0

    return v0
.end method

.method public Ooooo00()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OoooOOo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Ooooo0o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OoooOo0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OooooO0()I
    .locals 1

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OoooO00:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OoooOoO()I

    move-result v0

    return v0
.end method

.method public OooooOO()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooOOO:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooOOO:Ljava/util/ArrayList;

    .line 3
    invoke-direct {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoO0()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    array-length v1, v0

    if-lez v1, :cond_0

    .line 5
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooOOO:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 6
    :cond_0
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooOOO:Ljava/util/ArrayList;

    return-object v0
.end method

.method public OooooOo()[I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooooOo()[I

    move-result-object v0

    return-object v0
.end method

.method public Oooooo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->Oooooo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Oooooo0()[I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->Oooooo0()[I

    move-result-object v0

    return-object v0
.end method

.method public OoooooO()S
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OoooooO()S

    move-result v0

    return v0
.end method

.method public Ooooooo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->Ooooooo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oo0()Z

    move-result v0

    return v0
.end method

.method public o00()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OO0()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "BACK_BOKEH"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o000()[F
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000O0()[F

    move-result-object v0

    return-object v0
.end method

.method public o0000()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000oo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o00000()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00000O0()I

    move-result v0

    return v0
.end method

.method public o000000()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000000O()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o000000O()F
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000000o()F

    move-result v0

    return v0
.end method

.method public o000000o()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00000()I

    move-result v0

    return v0
.end method

.method public o00000O()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00000OO()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    .line 4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x2

    .line 5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    return-object v1

    .line 7
    :cond_0
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v7, ";"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 8
    array-length v7, v0

    move v8, v2

    :goto_0
    if-ge v8, v7, :cond_2

    aget-object v9, v0, v8

    .line 9
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 10
    sget-wide v10, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    aget-object v12, v9, v2

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    .line 11
    aget-object v0, v9, v4

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "!"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 12
    aget-object v7, v0, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    aget-object v0, v0, v4

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 14
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public o00000O0()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00000O()I

    move-result v0

    return v0
.end method

.method public o00000OO()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00000Oo()I

    move-result v0

    return v0
.end method

.method public o00000Oo()F
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00000o0()F

    move-result v0

    return v0
.end method

.method public o00000o0()I
    .locals 5

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00O00()Z

    move-result v0

    const-wide/16 v1, 0x6

    if-eqz v0, :cond_1

    .line 2
    sget-wide v3, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 3
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooo()I

    move-result v0

    return v0

    .line 4
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0O()I

    move-result v0

    return v0

    .line 5
    :cond_1
    sget-wide v3, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    .line 6
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00000oO()I

    move-result v0

    return v0

    .line 7
    :cond_2
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000Ooo()I

    move-result v0

    return v0
.end method

.method public o00000oO()S
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000()S

    move-result v0

    return v0
.end method

.method public o00000oo()Landroid/util/Size;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000O00()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0Oo(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public o0000O()[F
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000OOO()[F

    move-result-object v0

    return-object v0
.end method

.method public o0000O0()I
    .locals 4

    .line 1
    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000OO0()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000OO()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000O0O()I

    move-result v0

    return v0
.end method

.method public o0000O00()I
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0OO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0oO()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0000()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0OO(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public o0000O0O()I
    .locals 4

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOOoo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O0oO0O()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSRAndMfnrPixelOn()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isHighQualityPreferred()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o000OO()I

    move-result v0

    return v0

    .line 6
    :cond_3
    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 7
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000OO0()I

    move-result v0

    return v0

    .line 8
    :cond_4
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000O()I

    move-result v0

    return v0
.end method

.method public o0000OO()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000Oo0()I

    move-result v0

    return v0
.end method

.method public o0000OO0()[F
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000OOo()[F

    move-result-object v0

    return-object v0
.end method

.method public o0000OOO()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000Oo()I

    move-result v0

    return v0
.end method

.method public o0000OOo()J
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000OoO()J

    move-result-wide v0

    return-wide v0
.end method

.method public o0000Oo()[[I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000o()[[I

    move-result-object v0

    return-object v0
.end method

.method public o0000Oo0()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000o0O()I

    move-result v0

    return v0
.end method

.method public o0000OoO()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000oO0()I

    move-result v0

    return v0
.end method

.method public o0000Ooo()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00000oo()I

    move-result v0

    return v0
.end method

.method public o0000o()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000OoO()I

    move-result v0

    return v0
.end method

.method public o0000o0()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000oOO()I

    move-result v0

    return v0
.end method

.method public o0000o0O()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000oOo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o0000o0o()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000oo0()I

    move-result v0

    return v0
.end method

.method public o0000oO()Landroid/util/Size;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000O0()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0Oo(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public o0000oO0()Landroid/util/Size;
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0oO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x1f40

    const/16 v2, 0x1770

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0000()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0Oo(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public o0000oOO()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000Ooo()I

    move-result v0

    return v0
.end method

.method public o0000oOo()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000O0O()I

    move-result v0

    return v0
.end method

.method public o0000oo()Landroid/util/Size;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000oO()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0Oo(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public o0000oo0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000Oo0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o0000ooO()[F
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000O00O()[F

    move-result-object v0

    return-object v0
.end method

.method public o000O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000Oo00()Z

    move-result v0

    return v0
.end method

.method public o000O0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000O()Z

    move-result v0

    return v0
.end method

.method public o000O00()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000O0oO()Z

    move-result v0

    return v0
.end method

.method public o000O000()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000O0Oo()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public o000O00O()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0000O00()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    .line 2
    invoke-virtual {v0}, Lcom/mi/device/Common;->o000O0oo()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public o000O0O()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000O0O0()I

    move-result v0

    return v0
.end method

.method public o000O0O0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000OO0o()Z

    move-result v0

    return v0
.end method

.method public o000O0Oo()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    .line 2
    invoke-virtual {v0}, Lcom/mi/device/Common;->o000OO00()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o000O0o()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooO0OO()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public o000O0o0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000OOO()Z

    move-result v0

    return v0
.end method

.method public o000O0oO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000OOo0()Z

    move-result v0

    return v0
.end method

.method public o000O0oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000OOoO()Z

    move-result v0

    return v0
.end method

.method public o000OO()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000OO()I

    move-result v0

    return v0
.end method

.method public o000OO00()Z
    .locals 2

    .line 1
    invoke-direct {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOo0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00OooOO()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooooOO()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooooOO()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public o000OO0O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OoO0o()Z

    move-result v0

    return v0
.end method

.method public o000OO0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0OOO()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOoOO:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public o000OOO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000Oo0o()Z

    move-result v0

    return v0
.end method

.method public o000OOo()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000000()I

    move-result v0

    return v0
.end method

.method public o000OOo0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000Oo()Z

    move-result v0

    return v0
.end method

.method public o000OOoO()Z
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO00o:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.boot.hwc"

    .line 2
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO00o:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO00o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO00o:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "china_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v1, "cn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public o000Oo()Z
    .locals 2

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOooO:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000OoOo()Z

    move-result v0

    return v0
.end method

.method public o000Oo0()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000O0o0()I

    move-result v0

    return v0
.end method

.method public o000Oo00()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0OO:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OoooO()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0o0(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public o000Oo0O()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O0oo00()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "CAPTURE_INTENT"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o000Oo0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000OoOO()Z

    move-result v0

    return v0
.end method

.method public o000OoO()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooO0OO()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public o000OoOO()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000Ooo0()Z

    move-result v0

    return v0
.end method

.method public o000OoOo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000OooO()Z

    move-result v0

    return v0
.end method

.method public o000Ooo()I
    .locals 1

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O0oO0o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOOO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_0
    invoke-direct {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOo()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    .line 4
    :cond_1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000OO0O()I

    move-result v0

    return v0
.end method

.method public o000Ooo0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000Oooo()Z

    move-result v0

    return v0
.end method

.method public o000OooO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000o000()Z

    move-result v0

    return v0
.end method

.method public o000Oooo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000o00()Z

    move-result v0

    return v0
.end method

.method public o000o00()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000o00o()Z

    move-result v0

    return v0
.end method

.method public o000o000()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000o00O()Z

    move-result v0

    return v0
.end method

.method public o000o00O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->oooo00o()Z

    move-result v0

    return v0
.end method

.method public o000o00o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000o0O0()Z

    move-result v0

    return v0
.end method

.method public o000o0O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000o0OO()Z

    move-result v0

    return v0
.end method

.method public o000o0O0()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0o:Z

    return v0
.end method

.method public o000o0OO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000o0Oo()Z

    move-result v0

    return v0
.end method

.method public o000o0Oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000o0o0()Z

    move-result v0

    return v0
.end method

.method public o000o0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000o0o()Z

    move-result v0

    return v0
.end method

.method public o000o0o0()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isFrameByFrameSuperNightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o000o0oO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000o0oO()Z

    move-result v0

    return v0
.end method

.method public o000o0oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000o0oo()Z

    move-result v0

    return v0
.end method

.method public o000oOoO()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OoooO00()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o000oOoo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000oOoo()Z

    move-result v0

    return v0
.end method

.method public o000oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000oo()Z

    move-result v0

    return v0
.end method

.method public o000oo0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000oo0O()Z

    move-result v0

    return v0
.end method

.method public o000oo00()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000oo00()Z

    move-result v0

    return v0
.end method

.method public o000oo0O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000oo0o()Z

    move-result v0

    return v0
.end method

.method public o000oo0o()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOO0O()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOooO:Z

    if-nez v0, :cond_1

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOoO0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0OOO()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public o000ooO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000ooO()Z

    move-result v0

    return v0
.end method

.method public o000ooO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000ooO0()Z

    move-result v0

    return v0
.end method

.method public o000ooOO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000ooOO()Z

    move-result v0

    return v0
.end method

.method public o000ooo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000ooo()Z

    move-result v0

    return v0
.end method

.method public o000ooo0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000ooo0()Z

    move-result v0

    return v0
.end method

.method public o000oooO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000oooO()Z

    move-result v0

    return v0
.end method

.method public o000oooo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000oooo()Z

    move-result v0

    return v0
.end method

.method public o00O()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0oO:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->oo0o0O0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o00O0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O00()Z

    move-result v0

    return v0
.end method

.method public o00O00()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OO0()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "WIDE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o00O000()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OO0()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "TELE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o00O0000()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OO0()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "FRONT"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o00O000o()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OO0()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "ULTRA_WIDE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o00O00O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00()Z

    move-result v0

    return v0
.end method

.method public o00O00OO()Z
    .locals 3

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO00o:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.boot.hwc"

    .line 2
    invoke-static {v0}, Lcom/xiaomi/camera/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO00o:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v1, "india"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO00o:Ljava/lang/String;

    const-string v2, "in"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 5
    :cond_2
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO00o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO00o:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "india_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 6
    :cond_3
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00ooo:Z

    if-nez v0, :cond_4

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000000O:Z

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00O00Oo()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public o00O00Oo()Z
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO00o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public o00O00o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oOoo()Z

    move-result v0

    return v0
.end method

.method public o00O00o0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0ooO()Z

    move-result v0

    return v0
.end method

.method public o00O00oO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O000()Z

    move-result v0

    return v0
.end method

.method public o00O0O()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->ooOO()I

    move-result v0

    return v0
.end method

.method public o00O0O0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->oOO00O()Z

    move-result v0

    return v0
.end method

.method public o00O0O00()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O00O()Z

    move-result v0

    return v0
.end method

.method public o00O0O0O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O00OO()Z

    move-result v0

    return v0
.end method

.method public o00O0O0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O00Oo()Z

    move-result v0

    return v0
.end method

.method public o00O0OO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O00oO()Z

    move-result v0

    return v0
.end method

.method public o00O0OO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O00o0()Z

    move-result v0

    return v0
.end method

.method public o00O0OOO()Z
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->oo00o()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "24FPS"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o00O0OOo()Z
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->oo00o()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "30FPS"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o00O0Oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0O00()Z

    move-result v0

    return v0
.end method

.method public o00O0Oo0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0()Z

    move-result v0

    return v0
.end method

.method public o00O0OoO()Z
    .locals 2

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0:Z

    if-eqz v0, :cond_0

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0oO:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O0oo00()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "PRO"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o00O0Ooo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0O0()Z

    move-result v0

    return v0
.end method

.method public o00O0o()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OO0oO0()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "TELE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o00O0o0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OO0oO0()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "FRONT"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o00O0o00()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0O0O()Z

    move-result v0

    return v0
.end method

.method public o00O0o0O()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OO0oO0()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "FRONT_BOKEH"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o00O0o0o()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OO0oO0()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "MACRO"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o00O0oO()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OO0oO0()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "ULTRA_WIDE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o00O0oOO()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OO0oO0()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "WIDE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    .line 2
    invoke-virtual {v0}, Lcom/mi/device/Common;->oOO00O()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public o00O0oOo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0O0o()Z

    move-result v0

    return v0
.end method

.method public o00O0oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO0()Z

    move-result v0

    return v0
.end method

.method public o00O0oo0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0OO0()Z

    move-result v0

    return v0
.end method

.method public o00O0ooo()Z
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/xiaomi/camera/videocast/VideoCastTileService;

    invoke-direct {v3, v1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x80

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 3
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_0

    return v0

    .line 4
    :cond_0
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.android.device.restriction"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    const-string v2, ";"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    .line 8
    :catch_0
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0OO:Ljava/lang/String;

    const-string v2, "isRemoteOnlineSupported(): service does not exist"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public o00OO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0o0O()Z

    move-result v0

    return v0
.end method

.method public o00OO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0Oo0()Z

    move-result v0

    return v0
.end method

.method public o00OO000()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0OO()Z

    move-result v0

    return v0
.end method

.method public o00OO00O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0OOO()Z

    move-result v0

    return v0
.end method

.method public o00OO00o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0OOo()Z

    move-result v0

    return v0
.end method

.method public o00OO0O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0Oo()Z

    move-result v0

    return v0
.end method

.method public o00OO0O0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->oo0oOO0()Z

    move-result v0

    return v0
.end method

.method public o00OO0OO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0OoO()Z

    move-result v0

    return v0
.end method

.method public o00OO0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0o00()Z

    move-result v0

    return v0
.end method

.method public o00OO0o0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0Ooo()Z

    move-result v0

    return v0
.end method

.method public o00OO0oO()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O0oo00()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "MACRO"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o00OO0oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oOOo()Z

    move-result v0

    return v0
.end method

.method public o00OOO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0oOo()Z

    move-result v0

    return v0
.end method

.method public o00OOO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0o()Z

    move-result v0

    return v0
.end method

.method public o00OOO00()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0o0o()Z

    move-result v0

    return v0
.end method

.method public o00OOO0O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0oO()Z

    move-result v0

    return v0
.end method

.method public o00OOOO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0oo()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0o0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public o00OOOO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0oo0()Z

    move-result v0

    return v0
.end method

.method public o00OOOOo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0ooo()Z

    move-result v0

    return v0
.end method

.method public o00OOOo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OO00O()Z

    move-result v0

    return v0
.end method

.method public o00OOOo0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OO000()Z

    move-result v0

    return v0
.end method

.method public o00OOOoO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OO00o()Z

    move-result v0

    return v0
.end method

.method public o00OOoo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OO0()Z

    move-result v0

    return v0
.end method

.method public o00OOooO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OO0O0()Z

    move-result v0

    return v0
.end method

.method public o00OOooo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OO0O()Z

    move-result v0

    return v0
.end method

.method public o00Oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OOOO0()Z

    move-result v0

    return v0
.end method

.method public o00Oo0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0O()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o00Oo00()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OO0o()Z

    move-result v0

    return v0
.end method

.method public o00Oo000()Z
    .locals 4

    .line 1
    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OO0o()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OO0o0()Z

    move-result v0

    return v0
.end method

.method public o00Oo00o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OO0oO()Z

    move-result v0

    return v0
.end method

.method public o00Oo0O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->oo0O()Z

    move-result v0

    return v0
.end method

.method public o00Oo0O0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OO0oo()Z

    move-result v0

    return v0
.end method

.method public o00Oo0Oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OO()Z

    move-result v0

    return v0
.end method

.method public o00Oo0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OOO0()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0Oo:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public o00Oo0o0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OOO00()Z

    move-result v0

    return v0
.end method

.method public o00Oo0oO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OOO0O()Z

    move-result v0

    return v0
.end method

.method public o00Oo0oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0o0Oo()Z

    move-result v0

    return v0
.end method

.method public o00OoO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OOOo0()Z

    move-result v0

    return v0
.end method

.method public o00OoO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OOOOo()Z

    move-result v0

    return v0
.end method

.method public o00OoO00()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OOOO()Z

    move-result v0

    return v0
.end method

.method public o00OoO0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->oOooo0o()Z

    move-result v0

    return v0
.end method

.method public o00OoOO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OOOoO()Z

    move-result v0

    return v0
.end method

.method public o00OoOO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OOOo()Z

    move-result v0

    return v0
.end method

.method public o00OoOOO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OOoo()Z

    move-result v0

    return v0
.end method

.method public o00OoOOo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OoooOOo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o00OoOo()Z
    .locals 4

    .line 1
    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OoOoO()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OOooo()Z

    move-result v0

    return v0
.end method

.method public o00OoOo0()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_0

    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OOooO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o00OoOoO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OO0OO()Z

    move-result v0

    return v0
.end method

.method public o00OoOoo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OoOoO()Z

    move-result v0

    return v0
.end method

.method public o00Ooo()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Oo0()I

    move-result v0

    return v0
.end method

.method public o00Ooo0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Oo00()Z

    move-result v0

    return v0
.end method

.method public o00Ooo00()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Oo000()Z

    move-result v0

    return v0
.end method

.method public o00Ooo0O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Oo00o()Z

    move-result v0

    return v0
.end method

.method public o00Ooo0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Oo0O0()Z

    move-result v0

    return v0
.end method

.method public o00OooO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OooO()Z

    move-result v0

    return v0
.end method

.method public o00OooO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Oo0O()Z

    move-result v0

    return v0
.end method

.method public o00OooOO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Oo0Oo()Z

    move-result v0

    return v0
.end method

.method public o00OooOo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Oo0o0()Z

    move-result v0

    return v0
.end method

.method public o00OoooO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Oo0oO()Z

    move-result v0

    return v0
.end method

.method public o00Ooooo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Oo0oo()Z

    move-result v0

    return v0
.end method

.method public o00o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o00Oo()Z

    move-result v0

    return v0
.end method

.method public o00o0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OoOoo()Z

    move-result v0

    return v0
.end method

.method public o00o00()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OoO()Z

    move-result v0

    return v0
.end method

.method public o00o000()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Oo()Z

    move-result v0

    return v0
.end method

.method public o00o0000()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0oOO()Z

    move-result v0

    return v0
.end method

.method public o00o000O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OoO00()Z

    move-result v0

    return v0
.end method

.method public o00o000o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OoO0()Z

    move-result v0

    return v0
.end method

.method public o00o00O0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OoOO0()Z

    move-result v0

    return v0
.end method

.method public o00o00Oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OoOO()Z

    move-result v0

    return v0
.end method

.method public o00o00o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OoOOo()Z

    move-result v0

    return v0
.end method

.method public o00o00o0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OoOOO()Z

    move-result v0

    return v0
.end method

.method public o00o00oO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OoOo0()Z

    move-result v0

    return v0
.end method

.method public o00o00oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OoOo()Z

    move-result v0

    return v0
.end method

.method public o00o0O()F
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Ooo()F

    move-result v0

    return v0
.end method

.method public o00o0O0()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00o0O00()Z

    move-result v0

    return v0
.end method

.method public o00o0O00()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Ooo00()Z

    move-result v0

    return v0
.end method

.method public o00o0O0O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Ooo0()Z

    move-result v0

    return v0
.end method

.method public o00o0OO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Ooo0o()Z

    move-result v0

    return v0
.end method

.method public o00o0OO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Ooo0O()Z

    move-result v0

    return v0
.end method

.method public o00o0OOO()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OooO0()Z

    move-result v0

    return v0
.end method

.method public o00o0OOo()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00OooO()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoO()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public o00o0Oo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o00o0Oo0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00OooO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoO()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o00o0OoO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OooOO()Z

    move-result v0

    return v0
.end method

.method public o00o0Ooo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OooOo()Z

    move-result v0

    return v0
.end method

.method public o00o0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0000()Z

    move-result v0

    return v0
.end method

.method public o00o0o00()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O00o0()Z

    move-result v0

    return v0
.end method

.method public o00o0o0O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OoooO()Z

    move-result v0

    return v0
.end method

.method public o00o0o0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Ooooo()Z

    move-result v0

    return v0
.end method

.method public o00o0oO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o000O()Z

    move-result v0

    return v0
.end method

.method public o00o0oO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo0O()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o00o0oOO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o000o()Z

    move-result v0

    return v0
.end method

.method public o00o0oOo()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoooO()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o00o0oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o00()Z

    move-result v0

    return v0
.end method

.method public o00o0oo0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->oo00oO()Z

    move-result v0

    return v0
.end method

.method public o00o0ooo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o00O0()Z

    move-result v0

    return v0
.end method

.method public o00oO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0()Z

    move-result v0

    return v0
.end method

.method public o00oO000()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00OOO0O()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00o0oO()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public o00oO00O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o00o()Z

    move-result v0

    return v0
.end method

.method public o00oO00o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o00oO()Z

    move-result v0

    return v0
.end method

.method public o00oO0O()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0ooOO0()I

    move-result v0

    return v0
.end method

.method public o00oO0O0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0O00()Z

    move-result v0

    return v0
.end method

.method public o00oO0o()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oO0O()I

    move-result v0

    return v0
.end method

.method public o00oOO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0OO0()Z

    move-result v0

    return v0
.end method

.method public o00oOOO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0OO()Z

    move-result v0

    return v0
.end method

.method public o00oOOOO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0OOO()Z

    move-result v0

    return v0
.end method

.method public o00oOOOo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0OOo()Z

    move-result v0

    return v0
.end method

.method public o00oOOo()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OO0oO0()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "BACK_BOKEH"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o00oOOo0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0Oo0()Z

    move-result v0

    return v0
.end method

.method public o00oOOoO()Z
    .locals 2

    const-string/jumbo v0, "presentation_debug"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0Oo()Z

    move-result v0

    return v0
.end method

.method public o00oOo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o00oo()Z

    move-result v0

    return v0
.end method

.method public o00oOo00()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0OoO()Z

    move-result v0

    return v0
.end method

.method public o00oOo0O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0o00()Z

    move-result v0

    return v0
.end method

.method public o00oOo0o()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "camera.render.engine.v2"

    .line 1
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v1}, Lcom/mi/device/Common;->o00o0o0O()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public o00oOoO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0o()Z

    move-result v0

    return v0
.end method

.method public o00oOoO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0o0o()Z

    move-result v0

    return v0
.end method

.method public o00oOoOO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0oO0()Z

    move-result v0

    return v0
.end method

.method public o00oOoOo()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00OOOo()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public o00oOoo()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OO0()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "MACRO"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o00oOoo0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0oO()Z

    move-result v0

    return v0
.end method

.method public o00oOooO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0Ooo()Z

    move-result v0

    return v0
.end method

.method public o00oOooo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0oOO()Z

    move-result v0

    return v0
.end method

.method public o00oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oO0()Z

    move-result v0

    return v0
.end method

.method public o00oo0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0oo0()Z

    move-result v0

    return v0
.end method

.method public o00oo000()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o00o0()Z

    move-result v0

    return v0
.end method

.method public o00oo00O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0oOo()Z

    move-result v0

    return v0
.end method

.method public o00oo0O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o()Z

    move-result v0

    return v0
.end method

.method public o00oo0O0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0ooo()Z

    move-result v0

    return v0
.end method

.method public o00oo0OO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0oo()Z

    move-result v0

    return v0
.end method

.method public o00oo0Oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oo000()Z

    move-result v0

    return v0
.end method

.method public o00oo0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oO00O()Z

    move-result v0

    return v0
.end method

.method public o00oo0o0()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->isLocaleChinese()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oO000()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public o00oo0oO()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOooO:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ne v0, v2, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oO00o()Z

    move-result v0

    return v0
.end method

.method public o00ooO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oOOO0()Z

    move-result v0

    return v0
.end method

.method public o00ooO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0oOOo()Z

    move-result v0

    return v0
.end method

.method public o00ooO00()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oO0O0()Z

    move-result v0

    return v0
.end method

.method public o00ooO0O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0ooOO()Z

    move-result v0

    return v0
.end method

.method public o00ooO0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oOO()Z

    move-result v0

    return v0
.end method

.method public o00ooOO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oOOOo()Z

    move-result v0

    return v0
.end method

.method public o00ooOO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oOOOO()Z

    move-result v0

    return v0
.end method

.method public o00ooOOo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oOOo0()Z

    move-result v0

    return v0
.end method

.method public o00ooOo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oOo00()Z

    move-result v0

    return v0
.end method

.method public o00ooOo0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oOOoO()Z

    move-result v0

    return v0
.end method

.method public o00ooOoO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oOooO()Z

    move-result v0

    return v0
.end method

.method public o00ooOoo()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "miuicamera.video.sky.on"

    .line 1
    invoke-static {v1, v0}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2
    iget-object v2, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v2}, Lcom/mi/device/Common;->o00oOo0O()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public o00ooo()[I
    .locals 4

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->oo000o()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-array v0, v2, [I

    return-object v0

    :cond_0
    const-string v1, ","

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    array-length v1, v0

    new-array v1, v1, [I

    .line 5
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 6
    aget-object v3, v0, v2

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public o00ooo0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oOoO0()Z

    move-result v0

    return v0
.end method

.method public o00ooo00()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oOo0o()Z

    move-result v0

    return v0
.end method

.method public o00ooo0O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oOoO()Z

    move-result v0

    return v0
.end method

.method public o00ooo0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oOoOO()Z

    move-result v0

    return v0
.end method

.method public o00oooO()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o000OoO()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o000O0o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o00oooOO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oOoOo()Z

    move-result v0

    return v0
.end method

.method public o00oooOo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oOoo0()Z

    move-result v0

    return v0
.end method

.method public o00oooo()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->oo0oOOo()I

    move-result v0

    and-int/lit8 v0, v0, 0xd

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o00oooo0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oOooo()Z

    move-result v0

    return v0
.end method

.method public o00ooooO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oo00O()Z

    move-result v0

    return v0
.end method

.method public o00ooooo()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->oo0oOOo()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public o0O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0Ooo0()Z

    move-result v0

    return v0
.end method

.method public o0O00()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0O0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooO0O()Z

    move-result v0

    return v0
.end method

.method public o0O000()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oo0Oo()Z

    move-result v0

    return v0
.end method

.method public o0O00000()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oo0OO()Z

    move-result v0

    return v0
.end method

.method public o0O0000O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oo0O0()Z

    move-result v0

    return v0
.end method

.method public o0O0000o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oo0O()Z

    move-result v0

    return v0
.end method

.method public o0O000O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oo0o0()Z

    move-result v0

    return v0
.end method

.method public o0O000Oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oo0oO()Z

    move-result v0

    return v0
.end method

.method public o0O000o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oo()Z

    move-result v0

    return v0
.end method

.method public o0O000o0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o000Oo00()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public o0O000oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooO0()Z

    move-result v0

    return v0
.end method

.method public o0O00O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooOO()Z

    move-result v0

    return v0
.end method

.method public o0O00O0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooO0o()Z

    move-result v0

    return v0
.end method

.method public o0O00O0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooOO0()Z

    move-result v0

    return v0
.end method

.method public o0O00OO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooOOo()Z

    move-result v0

    return v0
.end method

.method public o0O00OOO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooOo0()Z

    move-result v0

    return v0
.end method

.method public o0O00Oo()Z
    .locals 3

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooooO0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-eq v0, v2, :cond_1

    :cond_0
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooooOO:Z

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 2
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_3

    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    .line 3
    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooOo()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public o0O00OoO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooOoo()Z

    move-result v0

    return v0
.end method

.method public o0O00Ooo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooo00()Z

    move-result v0

    return v0
.end method

.method public o0O00o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oooO()Z

    move-result v0

    return v0
.end method

.method public o0O00o0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Oo0o()Z

    move-result v0

    return v0
.end method

.method public o0O00o00()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooo0()Z

    move-result v0

    return v0
.end method

.method public o0O00o0O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooo0O()Z

    move-result v0

    return v0
.end method

.method public o0O00o0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooo0o()Z

    move-result v0

    return v0
.end method

.method public o0O00oO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oooOO()Z

    move-result v0

    return v0
.end method

.method public o0O0O00()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000OOo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o0O0O0O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oooOo()Z

    move-result v0

    return v0
.end method

.method public o0O0O0Oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooooO()Z

    move-result v0

    return v0
.end method

.method public o0O0O0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0()Z

    move-result v0

    return v0
.end method

.method public o0O0O0o0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooooo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera2/HardwareCapabilities;->hasTrueColourVideoEncoder()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o0O0O0oO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O00000()Z

    move-result v0

    return v0
.end method

.method public o0O0O0oo()Z
    .locals 2

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Oooo0:Z

    if-eqz v0, :cond_0

    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0oO:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O0oo00()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "ULTRA_WIDE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o0O0OO()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O000O()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public o0O0OO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0000o()Z

    move-result v0

    return v0
.end method

.method public o0O0OO0O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O000()Z

    move-result v0

    return v0
.end method

.method public o0O0OOO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O000Oo()Z

    move-result v0

    return v0
.end method

.method public o0O0OOO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OoOoOo()Z

    move-result v0

    return v0
.end method

.method public o0O0OOOo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OoOoOO()Z

    move-result v0

    return v0
.end method

.method public o0O0OOo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O000o0()Z

    move-result v0

    return v0
.end method

.method public o0O0OOoO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O000o()Z

    move-result v0

    return v0
.end method

.method public o0O0OOoo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0ooOoOO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o0O0Oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O00O0o()Z

    move-result v0

    return v0
.end method

.method public o0O0Oo0()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O00()I

    move-result v0

    return v0
.end method

.method public o0O0Oo0O()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O00O0()I

    move-result v0

    return v0
.end method

.method public o0O0Oo0o()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OoO00O()I

    move-result v0

    return v0
.end method

.method public o0O0OoO()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOo0OO()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOo0oO()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public o0O0OoO0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00O00OO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00o0O0O()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00Oo0oO()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o0O0OoOo()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O00OOO()I

    move-result v0

    return v0
.end method

.method public o0O0Ooo()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0oO0Ooo()I

    move-result v0

    return v0
.end method

.method public o0O0Ooo0()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O00Oo()I

    move-result v0

    return v0
.end method

.method public o0O0OooO()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O00OoO()I

    move-result v0

    return v0
.end method

.method public o0O0Oooo()Z
    .locals 4

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O00O()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o0O0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oOo()Z

    move-result v0

    return v0
.end method

.method public o0O0o0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O00o()Z

    move-result v0

    return v0
.end method

.method public o0O0o00()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O00o00()I

    move-result v0

    return v0
.end method

.method public o0O0o000()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O00Ooo()Z

    move-result v0

    return v0
.end method

.method public o0O0o00O()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O00o0O()I

    move-result v0

    return v0
.end method

.method public o0O0o00o()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O00o0o()I

    move-result v0

    return v0
.end method

.method public o0O0o0O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O00oO0()Z

    move-result v0

    return v0
.end method

.method public o0O0o0OO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0O0O()Z

    move-result v0

    return v0
.end method

.method public o0O0o0Oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0oO0O0o()Z

    move-result v0

    return v0
.end method

.method public o0O0o0o()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3fcccccd    # 1.6f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    .line 2
    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0O0Oo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o0O0o0o0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0oo0o()Z

    move-result v0

    return v0
.end method

.method public o0O0o0oO()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x400aaaab

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    .line 2
    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0O0o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o0O0o0oo()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x40071c72

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    .line 2
    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0O0oO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o0O0oO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0OO()Z

    move-result v0

    return v0
.end method

.method public o0O0oO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0OO0()Z

    move-result v0

    return v0
.end method

.method public o0O0oO0O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->Oooo00O()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o0O0oO0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0OO0O()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOo()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOOO()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O0oOOO()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o0O0oOO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0OOO()Z

    move-result v0

    return v0
.end method

.method public o0O0oOO0()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O0oOO()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O0oOOO()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0OOO0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O0oOO()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa3

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->getCameraId()I

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 9
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0OO:Ljava/lang/String;

    const-string v1, "Algo up enabled for mm-camera"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    .line 10
    :cond_1
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0OO:Ljava/lang/String;

    const-string v1, "Algo up disabled for mm-camera"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public o0O0oOOO()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoo0()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0OOO0()Z

    move-result v0

    return v0
.end method

.method public o0O0oOo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OooO0()Z

    move-result v0

    return v0
.end method

.method public o0O0oOo0()Z
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0OOoO()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "close.append.yuv"

    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public o0O0oOoO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0Oo0()Z

    move-result v0

    return v0
.end method

.method public o0O0oOoo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0Oo0O()Z

    move-result v0

    return v0
.end method

.method public o0O0oo()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0Oo()Z

    move-result v0

    return v0
.end method

.method public o0O0oo0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0Oo0o()Z

    move-result v0

    return v0
.end method

.method public o0O0oo00()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0OOOo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o0O0oo0O()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o000o0oO()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    const v2, 0x400e38e4

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    .line 3
    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0O0oo()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public o0O0oo0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oooo()Z

    move-result v0

    return v0
.end method

.method public o0O0ooO()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OO0()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "FRONT_BOKEH"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public o0O0ooO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0Oooo()Z

    move-result v0

    return v0
.end method

.method public o0O0ooOO()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOo()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportedColorEnhance(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o0O0ooo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->oo0OOoo()Z

    move-result v0

    return v0
.end method

.method public o0O0ooo0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0OoO0()Z

    move-result v0

    return v0
.end method

.method public o0O0oooO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0OoO()Z

    move-result v0

    return v0
.end method

.method public o0O0oooo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0OoOo()Z

    move-result v0

    return v0
.end method

.method public o0OO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0oOoO()Z

    move-result v0

    return v0
.end method

.method public o0OO0()Ljava/lang/String;
    .locals 4

    .line 1
    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0o0o()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0o0o0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o0OO000()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOOO0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0Ooo()Z

    move-result v0

    return v0
.end method

.method public o0OO000o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0OooO()Z

    move-result v0

    return v0
.end method

.method public o0OO00O()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->oo0o0Oo()I

    move-result v0

    return v0
.end method

.method public o0OO00OO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0o00O()Z

    move-result v0

    return v0
.end method

.method public o0OO00Oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0o0()Z

    move-result v0

    return v0
.end method

.method public o0OO00o()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0o0Oo()I

    move-result v0

    return v0
.end method

.method public o0OO00o0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0o0O()Z

    move-result v0

    return v0
.end method

.method public o0OO00oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0o00o()Z

    move-result v0

    return v0
.end method

.method public o0OO0O0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0oOo0O0()Z

    move-result v0

    return v0
.end method

.method public o0OO0O0O()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00ooo()[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o0OO0OoO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0o0oo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00O00OO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o0OO0Ooo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0o0oO()Z

    move-result v0

    return v0
.end method

.method public o0OO0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0oO()Z

    move-result v0

    return v0
.end method

.method public o0OO0o0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0oO0()Z

    move-result v0

    return v0
.end method

.method public o0OO0o00()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->oooOO0()Z

    move-result v0

    return v0
.end method

.method public o0OO0o0O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0oO0O()Z

    move-result v0

    return v0
.end method

.method public o0OO0o0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0oO0o()Z

    move-result v0

    return v0
.end method

.method public o0OO0oO()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooOOOo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mfnr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 3
    :cond_1
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    array-length v2, v0

    if-lez v2, :cond_3

    .line 5
    array-length v2, v0

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    .line 6
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 7
    aget-object v6, v5, v1

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    .line 8
    aget-object v0, v5, v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public o0OO0oO0()Ljava/lang/String;
    .locals 4

    .line 1
    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0oOO()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0oOO0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o0OO0oOO()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooOOOo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "notelemfnr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 3
    :cond_1
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    array-length v2, v0

    if-lez v2, :cond_3

    .line 5
    array-length v2, v0

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    .line 6
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 7
    aget-object v6, v5, v1

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    .line 8
    aget-object v0, v5, v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public o0OO0oOo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0oOOO()Z

    move-result v0

    return v0
.end method

.method public o0OO0oo0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0oOo0()Z

    move-result v0

    return v0
.end method

.method public o0OO0ooO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->oo0oOOo()Z

    move-result v0

    return v0
.end method

.method public o0OO0ooo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0oOo()Z

    move-result v0

    return v0
.end method

.method public o0OOO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0oo()Z

    move-result v0

    return v0
.end method

.method public o0OOO00()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0oOoo()Z

    move-result v0

    return v0
.end method

.method public o0OOO00o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0oo0()Z

    move-result v0

    return v0
.end method

.method public o0OOO0O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0ooo0()Z

    move-result v0

    return v0
.end method

.method public o0OOO0O0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0ooOO()Z

    move-result v0

    return v0
.end method

.method public o0OOO0OO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0ooo()Z

    move-result v0

    return v0
.end method

.method public o0OOO0Oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0oooO()Z

    move-result v0

    return v0
.end method

.method public o0OOO0o()[I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0Oo0oo()[I

    move-result-object v0

    return-object v0
.end method

.method public o0OOO0o0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00O00OO()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00O00Oo()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0oooo()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o0OOO0oO()Z
    .locals 4

    .line 1
    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOOO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O()Z

    move-result v0

    return v0
.end method

.method public o0OOO0oo()Z
    .locals 4

    .line 1
    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOOO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO000()Z

    move-result v0

    return v0
.end method

.method public o0OOOO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO00oo()Z

    move-result v0

    return v0
.end method

.method public o0OOOO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->oo0ooO()Z

    move-result v0

    return v0
.end method

.method public o0OOOO00()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->oo0oO0()Z

    move-result v0

    return v0
.end method

.method public o0OOOO0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO00OO()Z

    move-result v0

    return v0
.end method

.method public o0OOOOO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO00o0()Z

    move-result v0

    return v0
.end method

.method public o0OOOOO0()Z
    .locals 4

    .line 1
    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO00Oo()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o0OOOOOO()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OoOoO()Z

    move-result v0

    return v0
.end method

.method public o0OOOOOo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO00o()Z

    move-result v0

    return v0
.end method

.method public o0OOOOo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO0O0()Z

    move-result v0

    return v0
.end method

.method public o0OOOOoO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO000o()Z

    move-result v0

    return v0
.end method

.method public o0OOOOoo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO0O0O()Z

    move-result v0

    return v0
.end method

.method public o0OOOo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO0o00()Z

    move-result v0

    return v0
.end method

.method public o0OOOo0()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooOOOo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "telesr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 3
    :cond_1
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    array-length v2, v0

    if-lez v2, :cond_3

    .line 5
    array-length v2, v0

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    .line 6
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 7
    aget-object v6, v5, v1

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    .line 8
    aget-object v0, v5, v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public o0OOOo00()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO0OoO()Z

    move-result v0

    return v0
.end method

.method public o0OOOo0O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OOooO0()Z

    move-result v0

    return v0
.end method

.method public o0OOOo0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO0Ooo()Z

    move-result v0

    return v0
.end method

.method public o0OOOoO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO0o0O()Z

    move-result v0

    return v0
.end method

.method public o0OOOoO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO0o0()Z

    move-result v0

    return v0
.end method

.method public o0OOOoOo()Z
    .locals 4

    .line 1
    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO0o()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO0o0o()Z

    move-result v0

    return v0
.end method

.method public o0OOOoo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO0oO()Z

    move-result v0

    return v0
.end method

.method public o0OOOoo0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO0oO0()Z

    move-result v0

    return v0
.end method

.method public o0OOOooO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO0oOO()Z

    move-result v0

    return v0
.end method

.method public o0OOOooo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OOoooO()Z

    move-result v0

    return v0
.end method

.method public o0OOo00()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO0oo0()Z

    move-result v0

    return v0
.end method

.method public o0OOo000()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO0oOo()Z

    move-result v0

    return v0
.end method

.method public o0OOo00O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO0ooO()Z

    move-result v0

    return v0
.end method

.method public o0OOo00o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO0ooo()Z

    move-result v0

    return v0
.end method

.method public o0OOo0O()Z
    .locals 4

    const-string v0, "miuicamera.sat.video"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0OO:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sat video debug prop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OOO00o()Z

    move-result v0

    return v0
.end method

.method public o0OOo0O0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO()Z

    move-result v0

    return v0
.end method

.method public o0OOo0OO()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OOO0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o0OOo0Oo()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooOOoo()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5
    array-length v1, v0

    if-lez v1, :cond_1

    .line 6
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    move v2, v0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_1
    :goto_0
    return v2
.end method

.method public o0OOo0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OOO0O()Z

    move-result v0

    return v0
.end method

.method public o0OOo0o0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OOO0O0()Z

    move-result v0

    return v0
.end method

.method public o0OOo0oO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OOO0OO()Z

    move-result v0

    return v0
.end method

.method public o0OOo0oo()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00000oO()S

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OoooooO()S

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public o0OOooO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0oo0O()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00O00OO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o0OOoooO()I
    .locals 5

    .line 1
    sget v0, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->SUPPORT_MIMOJI_VERSION_TEST:I

    .line 2
    sget-boolean v1, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0OO:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00oO0()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v1}, Lcom/mi/device/Common;->o0O0oo00()I

    move-result v1

    :goto_0
    const/4 v3, 0x3

    const/4 v4, -0x1

    if-le v0, v4, :cond_4

    const/4 v4, 0x2

    if-le v0, v4, :cond_2

    .line 3
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    return v2

    :cond_4
    return v1
.end method

.method public o0Oo0oo()F
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OO00O()F

    move-result v0

    return v0
.end method

.method public o0OoO00O()Z
    .locals 1

    .line 1
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0OO:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o0OoO0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000Oo0O()Z

    move-result v0

    return v0
.end method

.method public o0OoOo0()I
    .locals 1

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->Ooooooo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0OO(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public o0OoOoO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0o0OO()Z

    move-result v0

    return v0
.end method

.method public o0OoOoOO()Z
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0O0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0o()Z

    move-result v0

    return v0
.end method

.method public o0OoOoOo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oo0o()Z

    move-result v0

    return v0
.end method

.method public o0OooO0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O000oo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o0OooOo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OOO00()Z

    move-result v0

    return v0
.end method

.method public o0o0Oo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0oOO()Z

    move-result v0

    return v0
.end method

.method public o0oO0O0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oooo0()Z

    move-result v0

    return v0
.end method

.method public o0oO0Ooo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooOoO()Z

    move-result v0

    return v0
.end method

.method public o0oOO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OOO()Z

    move-result v0

    return v0
.end method

.method public o0oOOo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0O0()Z

    move-result v0

    return v0
.end method

.method public o0oOo0O0()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x40055555

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    .line 2
    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0O0o0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o0ooO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0000O()Z

    move-result v0

    return v0
.end method

.method public o0ooOO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0O0O()Z

    move-result v0

    return v0
.end method

.method public o0ooOO0()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0ooOOo()I

    move-result v0

    return v0
.end method

.method public o0ooOOo()I
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOO0O()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0ooOoO()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/16 v0, 0xf

    return v0
.end method

.method public o0ooOoO()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OOO0o()I

    move-result v0

    return v0
.end method

.method public o0ooOoOO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooO00()Z

    move-result v0

    return v0
.end method

.method public oOO00O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0000()Z

    move-result v0

    return v0
.end method

.method public oOooo0o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O()Z

    move-result v0

    return v0
.end method

.method public oo000o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oO0o()Z

    move-result v0

    return v0
.end method

.method public oo00o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O000o()Z

    move-result v0

    return v0
.end method

.method public oo00oO()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OoO0o()Z

    move-result v0

    return v0
.end method

.method public oo0O()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0o0()Z

    move-result v0

    return v0
.end method

.method public oo0OOoo()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O00OO()Z

    move-result v0

    return v0
.end method

.method public oo0o0O0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O00o()Z

    move-result v0

    return v0
.end method

.method public oo0o0Oo()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0O00()I

    move-result v0

    return v0
.end method

.method public oo0oO0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0o000()Z

    move-result v0

    return v0
.end method

.method public oo0oOO0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O0oo00()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "NO_PIXEL"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public oo0oOOo()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0OOoo()I

    move-result v0

    return v0
.end method

.method public oo0ooO()Z
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0o00()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoooO()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public ooOO()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0OoOo0()I

    move-result v0

    return v0
.end method

.method public oooOO0()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x40155555

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    .line 2
    invoke-virtual {v0}, Lcom/mi/device/Common;->o0ooO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public oooo00o()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OooO0O0:Lcom/mi/device/Common;

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000o0O()Z

    move-result v0

    return v0
.end method
