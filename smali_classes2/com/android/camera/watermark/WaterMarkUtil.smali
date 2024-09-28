.class public Lcom/android/camera/watermark/WaterMarkUtil;
.super Ljava/lang/Object;
.source "WaterMarkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/watermark/WaterMarkUtil$ICON_TYPE;
    }
.end annotation


# static fields
.field public static final DIR_WATER_MARK:Ljava/lang/String; = "watermarks"

.field public static final FILE_NAME_PREFIX:Ljava/lang/String; = "ic_water_mark_"

.field public static final GEN2_FILE_NAME_PREFIX:Ljava/lang/String; = "gen2_"

.field public static final ICON_CC:I = 0x1

.field public static final ICON_DUAL:I = 0x2

.field public static final ICON_NONE:I = 0x0

.field public static final ICON_PENTA:I = 0x5

.field public static final ICON_QUAD:I = 0x4

.field public static final ICON_SINGLE:I = 0x3e8

.field public static final ICON_TRIPLE:I = 0x3

.field public static final TAG:Ljava/lang/String; = "WaterMarkUtil"

.field public static final WATER_MARK_BACK_NAME_COMMON:Ljava/lang/String; = "back_common"

.field public static final WATER_MARK_BACK_NAME_PREFIX:Ljava/lang/String; = "back_"

.field public static final WATER_MARK_FRONT_NAME_COMMON:Ljava/lang/String; = "front_common"

.field public static final WATER_MARK_FRONT_NAME_PREFIX:Ljava/lang/String; = "front_"

.field public static sFrontWaterMarkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sWaterMarkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBackIconName()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getBackIconType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "penta_back"

    goto :goto_0

    :cond_1
    const-string v0, "quad"

    goto :goto_0

    :cond_2
    const-string v0, "triple"

    goto :goto_0

    :cond_3
    const-string v0, "dual"

    goto :goto_0

    :cond_4
    const-string v0, "cc_back"

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ic_water_mark_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".webp"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBackIconNameGen2()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getBackIconType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, "single"

    goto :goto_0

    :cond_0
    const-string v0, "penta"

    goto :goto_0

    :cond_1
    const-string v0, "quad"

    goto :goto_0

    :cond_2
    const-string v0, "triple"

    goto :goto_0

    :cond_3
    const-string v0, "dual"

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gen2_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".webp"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBackIconType()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterCameraBack()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getDescription()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00Oo()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00oooO()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterCameraBack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterCameraBack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getExtraSuffix()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOOo0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reloaded"

    return-object v0

    .line 2
    :cond_0
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o000oOoO:Z

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0oO()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "48m"

    return-object v0

    .line 4
    :cond_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0oo()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "speed"

    return-object v0

    .line 5
    :cond_2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0O0()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "lite"

    return-object v0

    .line 6
    :cond_3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0Oo()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "s"

    return-object v0

    .line 7
    :cond_4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOOO()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo0()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "pro"

    return-object v0

    .line 8
    :cond_5
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOOo()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "tier"

    return-object v0

    .line 9
    :cond_6
    sget-object v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOOO:Ljava/lang/String;

    const-string v1, " "

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFrontIconName()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getFrontIconType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "penta_front"

    goto :goto_0

    :cond_1
    const-string v0, "cc_front"

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ic_water_mark_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".webp"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFrontIconType()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterCameraFront()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getFrontTitle()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterCameraFront()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterCameraFront()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static getStringId(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 2

    const-string v0, "string"

    const-string v1, "com.android.camera"

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getTitle()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterCameraBack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterCameraBack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static getWaterCameraBack()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/watermark/WaterMarkUtil;->sWaterMarkList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "back_"

    const-string v2, "back_common"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterMarkId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/watermark/WaterMarkUtil;->sWaterMarkList:Ljava/util/List;

    .line 6
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00Oo()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/camera/watermark/WaterMarkUtil;->sWaterMarkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Back camera water mark need four parameters!"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera/watermark/WaterMarkUtil;->sWaterMarkList:Ljava/util/List;

    return-object v0
.end method

.method public static getWaterCameraFront()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/watermark/WaterMarkUtil;->sFrontWaterMarkList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "front_"

    const-string v2, "front_common"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/android/camera/watermark/WaterMarkUtil;->getWaterMarkId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/watermark/WaterMarkUtil;->sFrontWaterMarkList:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Front camera water mark need two parameters!"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera/watermark/WaterMarkUtil;->sFrontWaterMarkList:Ljava/util/List;

    return-object v0
.end method

.method public static getWaterMarkId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OoooO00()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00O00OO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_india"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->isGlobalVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_global"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 6
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/watermark/WaterMarkUtil;->getExtraSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWaterMarkId: all = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WaterMarkUtil"

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {p0, v1}, Lcom/android/camera/watermark/WaterMarkUtil;->getStringId(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getWaterMarkId: find first = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 10
    :cond_2
    invoke-static {p0, v0}, Lcom/android/camera/watermark/WaterMarkUtil;->getStringId(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getWaterMarkId: find second = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 12
    :cond_3
    invoke-static {p0, p1}, Lcom/android/camera/watermark/WaterMarkUtil;->getStringId(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getWaterMarkId: find third = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 14
    :cond_4
    invoke-static {p0, p2}, Lcom/android/camera/watermark/WaterMarkUtil;->getStringId(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
