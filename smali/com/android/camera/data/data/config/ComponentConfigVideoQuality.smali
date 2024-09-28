.class public Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigVideoQuality.java"


# static fields
.field public static ITEMS_FROM_WIDE_FAST_MOTION:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field

.field public static ITEMS_FROM_WIDE_RECORD_VIDEO:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUALITY_1080P:Ljava/lang/String; = "6"

.field public static final QUALITY_1080P_60FPS:Ljava/lang/String; = "6,60"

.field public static final QUALITY_4K:Ljava/lang/String; = "8"

.field public static final QUALITY_4K_120FPS:Ljava/lang/String; = "8,120"

.field public static final QUALITY_4K_60FPS:Ljava/lang/String; = "8,60"

.field public static final QUALITY_720P:Ljava/lang/String; = "5"

.field public static final QUALITY_8K:Ljava/lang/String; = "3001"

.field public static final QUALITY_8K_24FPS:Ljava/lang/String; = "3001,24"

.field public static final QUALITY_ALL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "ComponentConfigVideoQuality"


# instance fields
.field public mComponentConfigVideoSubFps:Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

.field public mComponentConfigVideoSubQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

.field public mConfigType:I

.field public mDefaultValue:Ljava/lang/String;

.field public mForceValue:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->QUALITY_ALL:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->QUALITY_ALL:Ljava/util/List;

    const-string v1, "8,60"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->QUALITY_ALL:Ljava/util/List;

    const-string v1, "8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->QUALITY_ALL:Ljava/util/List;

    const-string v1, "6,60"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->QUALITY_ALL:Ljava/util/List;

    const-string v1, "6"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->QUALITY_ALL:Ljava/util/List;

    const-string v1, "5"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->ITEMS_FROM_WIDE_RECORD_VIDEO:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->ITEMS_FROM_WIDE_FAST_MOTION:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    const/16 v0, 0xd0

    .line 2
    iput v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mConfigType:I

    const-string v0, "6"

    .line 3
    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    invoke-direct {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    .line 5
    new-instance v0, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    invoke-direct {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;-><init>(Lcom/android/camera/data/data/config/DataItemConfig;)V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubFps:Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    return-void
.end method

.method public static synthetic OooO00o(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private filterAllQualities(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;ILjava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;I",
            "Lcom/android/camera2/CameraCapabilities;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result p3

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v0

    if-eq p3, v0, :cond_2

    .line 3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVideoSATCameraId()I

    move-result v0

    if-ne p3, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez p4, :cond_4

    if-eqz p6, :cond_3

    .line 4
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p4

    if-nez p4, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p0, p1, p6}, Lcom/android/camera/data/data/ComponentData;->copyList(Ljava/util/List;Ljava/util/List;)V

    .line 6
    :cond_4
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_5

    if-nez p2, :cond_5

    if-eqz p6, :cond_5

    .line 7
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_5

    .line 8
    sget-object p2, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->QUALITY_ALL:Ljava/util/List;

    invoke-virtual {p0, p6, p2}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 9
    invoke-virtual {p0, p6, p1}, Lcom/android/camera/data/data/ComponentData;->copyList(Ljava/util/List;Ljava/util/List;)V

    if-nez v0, :cond_5

    .line 10
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result p2

    if-eq p3, p2, :cond_5

    .line 11
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result p2

    if-eq p3, p2, :cond_5

    .line 12
    invoke-virtual {p0, p1, p5}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    :cond_5
    return-void
.end method

.method public static getMappedVideoQualityFlag(Ljava/lang/String;Z)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "8,60"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "6,60"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "3001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v0, "6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_1

    :sswitch_5
    const-string v0, "5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v4

    goto :goto_1

    :sswitch_6
    const-string v0, "3001,24"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v4

    :pswitch_0
    if-eqz p1, :cond_1

    const/16 p0, 0x4000

    goto :goto_2

    :cond_1
    const/16 p0, 0x40

    :goto_2
    return p0

    :pswitch_1
    if-eqz p1, :cond_2

    const/16 p0, 0x2000

    goto :goto_3

    :cond_2
    const/16 p0, 0x20

    :goto_3
    return p0

    :pswitch_2
    if-eqz p1, :cond_3

    const/16 p0, 0x1000

    goto :goto_4

    :cond_3
    const/16 p0, 0x10

    :goto_4
    return p0

    :pswitch_3
    if-eqz p1, :cond_4

    const/16 p0, 0x800

    goto :goto_5

    :cond_4
    const/16 p0, 0x8

    :goto_5
    return p0

    :pswitch_4
    if-eqz p1, :cond_5

    const/16 v1, 0x400

    :cond_5
    return v1

    :pswitch_5
    if-eqz p1, :cond_6

    const/16 v2, 0x200

    :cond_6
    return v2

    :pswitch_6
    if-eqz p1, :cond_7

    const/16 v3, 0x100

    :cond_7
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x217e3a70 -> :sswitch_6
        0x35 -> :sswitch_5
        0x36 -> :sswitch_4
        0x38 -> :sswitch_3
        0x17e91e -> :sswitch_2
        0x1937f0 -> :sswitch_1
        0x1a20ae -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSupportMaxValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 3
    iget-object v1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-boolean v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mIsDisabled:Z

    if-nez v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p1
.end method

.method private initItem(Ljava/util/List;IILcom/android/camera2/CameraCapabilities;I)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;II",
            "Lcom/android/camera2/CameraCapabilities;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object v7, p1

    move/from16 v8, p2

    .line 1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0xa1

    const v1, 0x7f12089b

    const/16 v10, 0xa9

    const/16 v11, 0xa2

    const-string v2, "6"

    const v3, 0x7f08023f

    if-eq v8, v0, :cond_3

    if-eq v8, v11, :cond_2

    if-eq v8, v10, :cond_2

    const/16 v0, 0xb4

    if-eq v8, v0, :cond_2

    const/16 v0, 0xcc

    if-eq v8, v0, :cond_1

    const/16 v0, 0xd4

    if-eq v8, v0, :cond_0

    packed-switch v8, :pswitch_data_0

    :goto_0
    move-object/from16 v4, p4

    goto/16 :goto_1

    .line 2
    :cond_0
    :pswitch_0
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    const v1, 0x7f12089e

    const-string v2, "8"

    const v3, 0x7f080248

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    :pswitch_1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v9

    .line 6
    invoke-direct/range {v0 .. v6}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->initVideoMode(Ljava/util/List;IILcom/android/camera2/CameraCapabilities;ILjava/util/List;)V

    goto :goto_1

    .line 7
    :cond_3
    :pswitch_2
    const-class v0, Landroid/graphics/SurfaceTexture;

    move-object/from16 v4, p4

    invoke-static {v4, v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithAssignedMode(Lcom/android/camera2/CameraCapabilities;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 8
    new-instance v5, Lcom/android/camera/CameraSize;

    const/16 v6, 0x500

    const/16 v12, 0x2d0

    invoke-direct {v5, v6, v12}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 9
    new-instance v5, Lcom/android/camera/data/data/ComponentDataItem;

    const v6, 0x7f1208a0

    const-string v12, "5"

    const v13, 0x7f08024c

    invoke-direct {v5, v13, v13, v6, v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_4
    sget-boolean v5, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OoooOoo:Z

    if-nez v5, :cond_5

    sget-boolean v5, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->Ooooo00:Z

    if-nez v5, :cond_5

    new-instance v5, Lcom/android/camera/CameraSize;

    const/16 v6, 0x780

    const/16 v12, 0x438

    invoke-direct {v5, v6, v12}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    if-ne v8, v11, :cond_6

    .line 14
    sget-object v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->ITEMS_FROM_WIDE_RECORD_VIDEO:Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->filterAllQualities(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;ILjava/util/List;Ljava/util/List;)V

    goto :goto_2

    :cond_6
    if-ne v8, v10, :cond_7

    .line 15
    sget-object v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->ITEMS_FROM_WIDE_FAST_MOTION:Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->filterAllQualities(Ljava/util/List;ILcom/android/camera2/CameraCapabilities;ILjava/util/List;Ljava/util/List;)V

    :cond_7
    :goto_2
    return-object v9

    :pswitch_data_0
    .packed-switch 0xcf
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private initTwoComponent(IILcom/android/camera2/CameraCapabilities;I)Z
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa2

    if-ne p1, v1, :cond_1

    :cond_0
    if-nez p2, :cond_1

    if-nez p4, :cond_1

    .line 1
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is8KCamcorderSupported(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xad

    .line 2
    iput v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mConfigType:I

    .line 3
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->reInit(IILcom/android/camera2/CameraCapabilities;I)V

    .line 4
    iget-object v1, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubFps:Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    iget-object v6, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->reInit(IILcom/android/camera2/CameraCapabilities;ILcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private initVideoMode(Ljava/util/List;IILcom/android/camera2/CameraCapabilities;ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;II",
            "Lcom/android/camera2/CameraCapabilities;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p4, :cond_0

    return-void

    .line 1
    :cond_0
    const-class v0, Landroid/media/MediaRecorder;

    const v1, 0x8004

    invoke-static {p4, v0, v1}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportedOutputSizeWithTargetMode(Lcom/android/camera2/CameraCapabilities;Ljava/lang/Class;I)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/camera/CameraSize;

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    invoke-direct {v1, v2, v3}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    .line 3
    invoke-static {p3, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f1208a0

    const-string v3, "5"

    const v4, 0x7f08024c

    invoke-direct {v1, v4, v4, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {p6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    new-instance v1, Lcom/android/camera/CameraSize;

    const/16 v2, 0x438

    const/16 v3, 0x780

    invoke-direct {v1, v3, v2}, Lcom/android/camera/CameraSize;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/16 v4, 0xa9

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    .line 7
    invoke-static {p3, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f12089b

    const-string v6, "6"

    const v7, 0x7f08023f

    invoke-direct {v1, v7, v7, v5, v6}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-interface {p6, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq p2, v4, :cond_2

    .line 10
    invoke-static {v3, v2, p5, p4}, Lcom/android/camera/CameraSettings;->isSupportFpsRange(IIILcom/android/camera2/CameraCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f12089c

    const-string v3, "6,60"

    const v5, 0x7f080240

    invoke-direct {v1, v5, v5, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {p6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->get4kProfile()I

    move-result v1

    .line 14
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O0O0O()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/android/camera/CameraSize;

    const/16 v3, 0x870

    const/16 v5, 0xf00

    invoke-direct {v2, v5, v3}, Lcom/android/camera/CameraSize;-><init>(II)V

    .line 15
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-static {p3, v1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 17
    new-instance p3, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f12089e

    const-string v1, "8"

    const v2, 0x7f080248

    invoke-direct {p3, v2, v2, v0, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq p2, v4, :cond_3

    .line 19
    invoke-static {v5, v3, p5, p4}, Lcom/android/camera/CameraSettings;->isSupportFpsRange(IIILcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 20
    new-instance p2, Lcom/android/camera/data/data/ComponentDataItem;

    const p3, 0x7f12089f

    const-string p4, "8,60"

    const p5, 0x7f080249

    invoke-direct {p2, p5, p5, p3, p4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-interface {p6, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private isContain(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 3
    iget-object v2, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mIsDisabled:Z

    if-nez v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public checkValueValid(ILjava/lang/String;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p2, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isContain(Ljava/lang/String;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    sget-object p1, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkValueValid: invalid value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method public disableUpdate()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/ComponentData;->supprotedItemsSize(Ljava/util/List;)I

    move-result v0

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public getComponentConfigVideoSubFps()Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubFps:Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    return-object v0
.end method

.method public getComponentConfigVideoSubQuality()Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    return-object v0
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getComponentValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getComponentValue(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getBogusCameraId()I

    move-result v0

    .line 4
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->reInit(IILcom/android/camera2/CameraCapabilities;I)V

    .line 6
    :cond_1
    iget v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mConfigType:I

    const/16 v1, 0xad

    if-eq v0, v1, :cond_6

    const/16 v1, 0xd0

    if-eq v0, v1, :cond_2

    return-object p2

    .line 7
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->checkValueValid(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p2

    .line 8
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getDefaultValue(I)Ljava/lang/String;

    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->checkValueValid(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 11
    const-class v1, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reset invalid value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-direct {p0, p2}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getSupportMaxValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_5

    iget-object p2, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:[Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 14
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object p2

    invoke-virtual {p2}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O0OO0()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 15
    :cond_4
    invoke-super {p0, p1, v0}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    :cond_5
    return-object v0

    .line 16
    :cond_6
    iget-object p2, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    invoke-virtual {p2, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->getComponentValue(I)Ljava/lang/String;

    move-result-object p2

    .line 17
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubFps:Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "5"

    .line 18
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "30"

    if-eqz v1, :cond_7

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_0
    move-object v0, v2

    goto :goto_1

    :cond_7
    const-string v1, "3001"

    .line 20
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 21
    iget-object v1, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubFps:Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->getAllFpsIn8K()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_9

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string v1, "24"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    .line 25
    :cond_9
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_a
    move-object v1, p2

    .line 27
    :goto_2
    iget-object v2, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->isForceQuality()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubFps:Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    .line 28
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->isForceQuality()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 29
    :cond_b
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O0OO0()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 30
    :cond_c
    iget-object v2, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    invoke-virtual {v2, p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->setComponentValue(ILjava/lang/String;)V

    .line 31
    iget-object p2, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubFps:Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->setComponentValue(ILjava/lang/String;)V

    :cond_d
    return-object v1
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "6"

    :cond_0
    return-object p1
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f1208b2

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
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
    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->TAG:Ljava/lang/String;

    const-string v1, "List is empty!"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const-string/jumbo p1, "pref_video_quality_key"

    return-object p1

    :cond_0
    const-string/jumbo p1, "pref_camera_pro_video_quality"

    return-object p1

    :cond_1
    const-string/jumbo p1, "pref_camera_fastmotion_quality"

    return-object p1

    :cond_2
    const-string/jumbo p1, "pref_camera_fun_video_quality"

    return-object p1
.end method

.method public isSupportVideoQuality(II)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->isSupportVideoQuality(IILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isSupportVideoQuality(IILjava/lang/String;)Z
    .locals 11

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->getComponentValue(I)Ljava/lang/String;

    move-result-object p3

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mConfigType:I

    const/16 v1, 0xad

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd0

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_1
    const/16 v0, 0xa2

    if-eq p1, v0, :cond_2

    return v2

    .line 4
    :cond_2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCapabilities(I)Lcom/android/camera2/CameraCapabilities;

    move-result-object v8

    if-nez v8, :cond_3

    return v3

    :cond_3
    const-string v0, "3001"

    .line 5
    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "3001,24"

    .line 6
    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move v6, p1

    move-object v10, p2

    .line 9
    invoke-direct/range {v4 .. v10}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->initVideoMode(Ljava/util/List;IILcom/android/camera2/CameraCapabilities;ILjava/util/List;)V

    .line 10
    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v2

    :cond_5
    :goto_0
    return v3

    .line 11
    :cond_6
    :goto_1
    invoke-static {p2}, Lcom/android/camera/CameraSettings;->is8KCamcorderSupported(I)Z

    move-result p1

    return p1
.end method

.method public isTwoComponent()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mConfigType:I

    const/16 v1, 0xad

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;I)V
    .locals 16

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    .line 1
    invoke-direct/range {p0 .. p4}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->initTwoComponent(IILcom/android/camera2/CameraCapabilities;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xad

    .line 2
    iput v0, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mConfigType:I

    goto :goto_0

    :cond_0
    const/16 v0, 0xd0

    .line 3
    iput v0, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mConfigType:I

    .line 4
    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->initItem(Ljava/util/List;IILcom/android/camera2/CameraCapabilities;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    iput-object v1, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    .line 8
    iput-object v1, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:[Ljava/lang/String;

    const/16 v2, 0xa1

    const-string v3, "6"

    if-eq v7, v2, :cond_10

    .line 9
    invoke-static/range {p1 .. p1}, Lcom/android/camera/CameraSettings;->isAutoZoomEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v9, v4}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    .line 11
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:[Ljava/lang/String;

    .line 12
    iput-object v3, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    .line 13
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/camera/CameraSettings;->isAiEnhancedVideoEnabled(I)Z

    move-result v4

    const/4 v5, 0x0

    const-string v10, "5"

    if-eqz v4, :cond_4

    .line 14
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->Oooo00O()[Ljava/lang/String;

    move-result-object v4

    .line 15
    new-instance v11, Ljava/util/ArrayList;

    array-length v12, v4

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 17
    invoke-static {v4}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v14

    new-instance v15, LOooO00o/OooO0O0/OooO00o/OoooOOO/OooO00o/OooO00o/OooO00o;

    invoke-direct {v15, v13, v11}, LOooO00o/OooO0O0/OooO00o/OoooOOO/OooO00o/OooO00o/OooO00o;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v14, v15}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {v6, v9, v11}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    new-array v4, v5, [Ljava/lang/String;

    .line 19
    iput-object v4, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:[Ljava/lang/String;

    .line 20
    invoke-interface {v11, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 21
    invoke-interface {v11, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v3

    goto :goto_2

    :cond_3
    move-object v4, v10

    :goto_2
    iput-object v4, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    :cond_4
    move-object/from16 v4, p3

    .line 22
    invoke-static {v4, v7}, Lcom/android/camera/CameraSettings;->isVhdrOn(Lcom/android/camera2/CameraCapabilities;I)Z

    move-result v11

    const-string v12, "8"

    if-eqz v11, :cond_5

    .line 23
    filled-new-array {v10, v3, v12}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v9, v11}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    .line 24
    filled-new-array {v10, v3, v12}, [Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:[Ljava/lang/String;

    .line 25
    iput-object v3, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    .line 26
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/android/camera/CameraSettings;->isSuperEISEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 27
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v9, v11}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    .line 28
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:[Ljava/lang/String;

    .line 29
    iput-object v3, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    .line 30
    :cond_6
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/customization/FlashHalo;->getHaloEnable()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 31
    filled-new-array {v10, v3}, [Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v9, v11}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    .line 32
    filled-new-array {v10, v3}, [Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:[Ljava/lang/String;

    .line 33
    iput-object v3, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    .line 34
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/android/camera/CameraSettings;->isMasterFilterOn(I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 35
    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoMasterFilter()I

    move-result v11

    const/16 v13, 0xc8

    if-ne v11, v13, :cond_8

    .line 36
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v9, v5}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    .line 37
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:[Ljava/lang/String;

    .line 38
    iput-object v10, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    goto :goto_4

    .line 39
    :cond_8
    invoke-static/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->supportMasterFilterQuality(Lcom/android/camera2/CameraCapabilities;)[Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_9

    .line 40
    filled-new-array {v3, v10}, [Ljava/lang/String;

    move-result-object v11

    .line 41
    :cond_9
    invoke-virtual {v6, v9, v11}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    .line 42
    iput-object v11, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:[Ljava/lang/String;

    .line 43
    aget-object v13, v11, v5

    iput-object v13, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    .line 44
    array-length v13, v11

    :goto_3
    if-ge v5, v13, :cond_b

    aget-object v14, v11, v5

    .line 45
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 46
    iput-object v3, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 47
    :cond_b
    :goto_4
    invoke-static {v7, v1}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 48
    invoke-static/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->getSupportVideoBokehQualities(Lcom/android/camera2/CameraCapabilities;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    .line 49
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00ooOoO()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static/range {p1 .. p1}, Lcom/android/camera/CameraSettings;->isMasterFilterOn(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 50
    filled-new-array {v10, v3}, [Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 51
    :cond_c
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v1

    .line 52
    :cond_d
    :goto_5
    invoke-virtual {v6, v9, v1}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    .line 53
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:[Ljava/lang/String;

    .line 54
    iput-object v10, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    .line 55
    :cond_e
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokehOn()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 56
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v9, v1}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    .line 57
    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:[Ljava/lang/String;

    .line 58
    iput-object v10, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    .line 59
    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 60
    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v9, v1}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    .line 61
    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mForceValue:[Ljava/lang/String;

    .line 62
    iput-object v12, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    .line 63
    :cond_10
    iget-object v1, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v1, :cond_13

    if-ne v2, v7, :cond_11

    .line 64
    iput-object v3, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    goto :goto_6

    :cond_11
    if-ne v8, v4, :cond_12

    .line 65
    iput-object v3, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    goto :goto_6

    :cond_12
    if-nez v8, :cond_13

    const-string/jumbo v1, "pref_video_quality_key"

    .line 66
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getDefaultValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    :cond_13
    :goto_6
    if-eqz v0, :cond_14

    .line 67
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_14

    iget-object v1, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    if-eqz v1, :cond_14

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_14

    sub-int/2addr v1, v4

    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v6, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mDefaultValue:Ljava/lang/String;

    .line 70
    :cond_14
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v6, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->ITEMS_FROM_WIDE_RECORD_VIDEO:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->ITEMS_FROM_WIDE_FAST_MOTION:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->setForceValueOverlay(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubFps:Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->reset()V

    .line 7
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->reset()V

    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mConfigType:I

    const/16 v1, 0xad

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, ","

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubQuality:Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubQuality;->setComponentValue(ILjava/lang/String;)V

    .line 5
    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubFps:Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    aget-object p2, p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->setComponentValue(ILjava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->mComponentConfigVideoSubFps:Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;

    const-string v0, "30"

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigVideoSubFPS;->setComponentValue(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setForceValueOverlay(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    sget-object v0, Lcom/android/camera/data/data/config/ComponentConfigVideoQuality;->QUALITY_ALL:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/ComponentData;->filterSupprotedItems(Ljava/util/List;[Ljava/lang/String;)Ljava/util/List;

    return-void
.end method
