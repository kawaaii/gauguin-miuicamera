.class public Lcom/android/camera/data/data/config/ComponentManuallyDualLens;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentManuallyDualLens.java"


# static fields
.field public static final LENS_MACRO:Ljava/lang/String; = "macro"

.field public static final LENS_TELE:Ljava/lang/String; = "tele"

.field public static final LENS_ULTRA:Ljava/lang/String; = "ultra"

.field public static final LENS_ULTRA_TELE:Ljava/lang/String; = "Standalone"

.field public static final LENS_WIDE:Ljava/lang/String; = "wide"

.field public static final TAG:Ljava/lang/String; = "DualLens"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method

.method private indexOf(Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->getItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentDataItem;

    .line 5
    iget-object v3, v3, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private initItems(I)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xaf

    if-eq p1, v1, :cond_6

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOOoO0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOOoO()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f08022a

    const v4, 0x7f08022b

    const/4 v5, -0x1

    const v6, 0x7f120800

    const-string v7, "macro"

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00ooOO()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f080230

    const v4, 0x7f080231

    const/4 v5, -0x1

    const v6, 0x7f120809

    const-string/jumbo v7, "ultra"

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v9, 0x7f080232

    const v10, 0x7f080233

    const/4 v11, -0x1

    const v12, 0x7f12080b

    const-string/jumbo v13, "wide"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v1

    const/16 v2, 0xb4

    if-eqz v1, :cond_4

    .line 8
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00ooOO0()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00ooo0O()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eq p1, v2, :cond_4

    :cond_2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v1

    if-ltz v1, :cond_4

    .line 10
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08022c

    const v5, 0x7f08022d

    const/4 v6, -0x1

    const v7, 0x7f120804

    const-string/jumbo v8, "tele"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result v1

    if-ltz v1, :cond_4

    .line 12
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v4, 0x7f08022c

    const v5, 0x7f08022d

    const/4 v6, -0x1

    const v7, 0x7f120806

    const-string/jumbo v8, "tele"

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_4
    :goto_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00ooOO0()Z

    move-result v1

    if-eqz v1, :cond_7

    if-ne p1, v2, :cond_5

    .line 14
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00ooo0O()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 15
    :cond_5
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f08022e

    const v3, 0x7f08022f

    const/4 v4, -0x1

    const v5, 0x7f120805

    const-string v6, "Standalone"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_6
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v8, 0x7f080232

    const v9, 0x7f080233

    const/4 v10, -0x1

    const v11, 0x7f12080b

    const-string/jumbo v12, "wide"

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00ooOO0()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 18
    new-instance p1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f08022e

    const v3, 0x7f08022f

    const/4 v4, -0x1

    const v5, 0x7f120805

    const-string v6, "Standalone"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_1
    return-object v0
.end method


# virtual methods
.method public checkValueValid(ILjava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 2
    iget-object v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkValueValid: invalid value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DualLens"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public getContentDescriptionString()I
    .locals 1

    const v0, 0x7f1205ff

    return v0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string/jumbo p1, "wide"

    return-object p1
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f12080d

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->initItems(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_2

    const/16 v0, 0xaf

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const-string/jumbo p1, "pref_camera_zoom_mode_key"

    return-object p1

    :cond_0
    const-string/jumbo p1, "pref_camera_pro_video_lens"

    return-object p1

    :cond_1
    const-string/jumbo p1, "pref_camera_pixel_lens"

    return-object p1

    :cond_2
    const-string/jumbo p1, "pref_camera_manually_lens"

    return-object p1
.end method

.method public next(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->getItems()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    const-string/jumbo p1, "wide"

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 4
    :goto_0
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-object p1
.end method

.method public reInit(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->initItems(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 2
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p1
.end method

.method public resetComponentValue(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->initItems(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public resetLensType(Lcom/android/camera/data/data/config/ComponentConfigUltraWide;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)Z
    .locals 4

    const/16 v0, 0xa7

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "wide"

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentManuallyDualLens;->getKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3, v2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    const-string/jumbo v2, "ultra"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigUltraWide;->getKey(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "OFF"

    invoke-interface {p2, p1, v0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
