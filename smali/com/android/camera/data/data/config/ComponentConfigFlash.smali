.class public Lcom/android/camera/data/data/config/ComponentConfigFlash;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigFlash.java"


# static fields
.field public static final FLASH_VALUE_AUTO:Ljava/lang/String; = "3"

.field public static final FLASH_VALUE_BACK_SOFT_LIGHT:Ljava/lang/String; = "5"

.field public static final FLASH_VALUE_MANUAL_OFF:Ljava/lang/String; = "200"

.field public static final FLASH_VALUE_OFF:Ljava/lang/String; = "0"

.field public static final FLASH_VALUE_ON:Ljava/lang/String; = "1"

.field public static final FLASH_VALUE_SCREEN_HALO:Ljava/lang/String; = "104"

.field public static final FLASH_VALUE_SCREEN_HALO_AND_FLASH_ON:Ljava/lang/String; = "106"

.field public static final FLASH_VALUE_SCREEN_HALO_AUTO:Ljava/lang/String; = "105"

.field public static final FLASH_VALUE_SCREEN_LIGHT_AUTO:Ljava/lang/String; = "103"

.field public static final FLASH_VALUE_SCREEN_LIGHT_ON:Ljava/lang/String; = "101"

.field public static final FLASH_VALUE_TORCH:Ljava/lang/String; = "2"


# instance fields
.field public mFlashValuesForSceneMode:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mIsBackSoftLightSupported:Z

.field public mIsClosed:Z

.field public mIsHardwareSupported:Z

.field public mIsOnlyTorch:Z

.field public mSupportFlashHdr:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mFlashValuesForSceneMode:Landroid/util/SparseArray;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 4
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 5
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    const v3, 0x7f1206fa

    const-string v4, "0"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createItems(IILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/config/ComponentConfigUltraWide;)Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/android/camera2/CameraCapabilities;",
            "Lcom/android/camera/data/data/config/ComponentConfigUltraWide;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isFlashSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsHardwareSupported:Z

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00OooOo()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    .line 4
    invoke-static/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isBackSoftLightSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    iput-boolean v4, v0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsBackSoftLightSupported:Z

    .line 5
    invoke-direct/range {p0 .. p2}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isScreenHaloSupported(II)Z

    move-result v4

    .line 6
    invoke-static/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isOnlySupportTorchFlash(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v7

    iput-boolean v7, v0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsOnlyTorch:Z

    .line 7
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isOnlyFlashWithoutHaloSupported(I)Z

    move-result v7

    const-string v8, "105"

    if-eqz v4, :cond_1

    move-object/from16 v18, v8

    goto :goto_1

    :cond_1
    const-string v9, "103"

    move-object/from16 v18, v9

    .line 8
    :goto_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v9

    const-class v10, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v9, v10}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v9

    check-cast v9, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const/16 v10, 0xa6

    const/16 v11, 0xcc

    const/16 v12, 0xa9

    const/16 v13, 0xb8

    if-eq v1, v10, :cond_6

    if-eq v1, v12, :cond_4

    const/16 v10, 0xb0

    if-eq v1, v10, :cond_4

    const/16 v10, 0xbb

    if-eq v1, v10, :cond_6

    const/16 v10, 0xbd

    if-eq v1, v10, :cond_6

    if-eq v1, v11, :cond_3

    if-eq v1, v13, :cond_2

    const/16 v10, 0xb9

    if-eq v1, v10, :cond_6

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_2

    .line 9
    :pswitch_0
    iget-boolean v7, v0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsHardwareSupported:Z

    if-eqz v7, :cond_6

    iget-boolean v7, v0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsBackSoftLightSupported:Z

    if-eqz v7, :cond_6

    .line 10
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashBackSoftLightRes()[I

    move-result-object v2

    aget v20, v2, v6

    const v21, 0x7f080368

    .line 11
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashBackSoftLightRes()[I

    move-result-object v2

    aget v22, v2, v5

    const v23, 0x7f1206fa

    const-string v24, "0"

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v24}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 12
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashBackSoftLightSelectedRes()I

    move-result v5

    const v6, 0x7f080368

    .line 14
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashBackSoftLightSelectedRes()I

    move-result v7

    const v8, 0x7f1206f9

    const-string v9, "5"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 15
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3

    .line 16
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 17
    invoke-virtual {v9}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getPreviewState()I

    move-result v7

    if-eqz v7, :cond_7

    if-nez v4, :cond_7

    return-object v3

    .line 18
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualVideoRecording()Z

    move-result v7

    if-nez v7, :cond_7

    return-object v3

    .line 19
    :cond_4
    :pswitch_1
    iget-boolean v10, v0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsHardwareSupported:Z

    if-eqz v10, :cond_7

    if-nez v7, :cond_5

    if-ne v2, v5, :cond_5

    return-object v3

    .line 20
    :cond_5
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object v2

    aget v20, v2, v6

    const v21, 0x7f08036a

    .line 21
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object v2

    aget v22, v2, v5

    const v23, 0x7f1206fa

    const-string v24, "0"

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v24}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 22
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashTorchRes()[I

    move-result-object v2

    aget v8, v2, v6

    const v9, 0x7f080370

    .line 24
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashTorchRes()[I

    move-result-object v2

    aget v10, v2, v5

    const v11, 0x7f1206fd

    const-string v12, "2"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 25
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3

    :cond_6
    :pswitch_2
    if-nez v2, :cond_7

    return-object v3

    .line 26
    :cond_7
    :goto_2
    iget-boolean v7, v0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsHardwareSupported:Z

    const/16 v10, 0xb7

    const/16 v14, 0xa2

    const/4 v15, 0x2

    if-nez v7, :cond_12

    if-ne v2, v5, :cond_11

    .line 27
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00oOoo0()Z

    move-result v2

    if-eqz v2, :cond_11

    const/16 v2, 0xad

    if-ne v1, v2, :cond_8

    .line 28
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOOoo0()Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    goto :goto_3

    :cond_8
    move v2, v6

    :goto_3
    const/16 v7, 0xa3

    if-eq v1, v7, :cond_f

    const/16 v7, 0xab

    if-eq v1, v7, :cond_f

    const/16 v7, 0xcd

    if-eq v1, v7, :cond_f

    if-eqz v2, :cond_9

    goto/16 :goto_4

    :cond_9
    if-ne v1, v13, :cond_d

    .line 29
    invoke-virtual {v9}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getPreviewState()I

    move-result v1

    if-nez v1, :cond_b

    .line 30
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object v2

    aget v20, v2, v6

    const v21, 0x7f08036a

    .line 31
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object v2

    aget v22, v2, v5

    const v23, 0x7f1206fa

    const-string v24, "0"

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v24}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 32
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_a

    .line 33
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v11, v2, v6

    const v12, 0x7f080366

    .line 34
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v13, v2, v5

    .line 35
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v14, v2, v6

    .line 36
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v15, v2, v15

    const v16, 0x7f080363

    const v17, 0x7f1206f8

    move-object v10, v1

    invoke-direct/range {v10 .. v18}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIIIILjava/lang/String;)V

    .line 37
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashScreenHaloRes()[I

    move-result-object v2

    aget v20, v2, v6

    const v21, 0x7f08036e

    .line 39
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashScreenHaloRes()[I

    move-result-object v2

    aget v22, v2, v5

    const v23, 0x7f1206fc

    const-string v24, "104"

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v24}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 40
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 41
    :cond_a
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object v2

    aget v2, v2, v6

    const v6, 0x7f08036c

    .line 42
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object v4

    aget v7, v4, v5

    const v8, 0x7f1206fb

    const-string v9, "101"

    move-object v4, v1

    move v5, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 43
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 44
    :cond_b
    invoke-virtual {v9}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getPreviewState()I

    move-result v1

    if-eq v1, v5, :cond_c

    .line 45
    invoke-virtual {v9}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getPreviewState()I

    move-result v1

    if-ne v1, v15, :cond_11

    :cond_c
    if-eqz v4, :cond_11

    .line 46
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object v2

    aget v8, v2, v6

    const v9, 0x7f08036a

    .line 47
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object v2

    aget v10, v2, v5

    const v11, 0x7f1206fa

    const-string v12, "0"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 48
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashScreenHaloRes()[I

    move-result-object v2

    aget v14, v2, v6

    const v15, 0x7f08036e

    .line 50
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashScreenHaloRes()[I

    move-result-object v2

    aget v16, v2, v5

    const v17, 0x7f1206fc

    const-string v18, "104"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 51
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_d
    if-eq v1, v14, :cond_e

    if-ne v1, v10, :cond_11

    :cond_e
    if-eqz v4, :cond_11

    .line 52
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object v2

    aget v8, v2, v6

    const v9, 0x7f08036a

    .line 53
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object v2

    aget v10, v2, v5

    const v11, 0x7f1206fa

    const-string v12, "0"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 54
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashScreenHaloRes()[I

    move-result-object v2

    aget v14, v2, v6

    const v15, 0x7f08036e

    .line 56
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashScreenHaloRes()[I

    move-result-object v2

    aget v16, v2, v5

    const v17, 0x7f1206fc

    const-string v18, "104"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 57
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 58
    :cond_f
    :goto_4
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object v2

    aget v8, v2, v6

    const v9, 0x7f08036a

    .line 59
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object v2

    aget v10, v2, v5

    const v11, 0x7f1206fa

    const-string v12, "0"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 60
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v11, v2, v6

    const v12, 0x7f080366

    .line 62
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v13, v2, v5

    .line 63
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v14, v2, v6

    .line 64
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v15, v2, v15

    const v16, 0x7f080363

    const v17, 0x7f1206f8

    move-object v10, v1

    invoke-direct/range {v10 .. v18}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIIIILjava/lang/String;)V

    .line 65
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_10

    .line 66
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashScreenHaloRes()[I

    move-result-object v2

    aget v20, v2, v6

    const v21, 0x7f08036e

    .line 67
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashScreenHaloRes()[I

    move-result-object v2

    aget v22, v2, v5

    const v23, 0x7f1206fc

    const-string v24, "104"

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v24}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 68
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 69
    :cond_10
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object v2

    aget v2, v2, v6

    const v6, 0x7f08036c

    .line 70
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object v4

    aget v7, v4, v5

    const v8, 0x7f1206fb

    const-string v9, "101"

    move-object v4, v1

    move v5, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 71
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_5
    return-object v3

    .line 72
    :cond_12
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelSelfEnable()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00oOoo0()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 73
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object v2

    aget v20, v2, v6

    const v21, 0x7f08036a

    .line 74
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object v2

    aget v22, v2, v5

    const v23, 0x7f1206fa

    const-string v24, "0"

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v24}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 75
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v11, v2, v6

    const v12, 0x7f080366

    .line 77
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v13, v2, v5

    .line 78
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v14, v2, v6

    .line 79
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v15, v2, v15

    const v16, 0x7f080363

    const v17, 0x7f1206f8

    move-object v10, v1

    invoke-direct/range {v10 .. v18}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIIIILjava/lang/String;)V

    .line 80
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object v2

    aget v20, v2, v6

    const v21, 0x7f08036c

    .line 82
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object v2

    aget v22, v2, v5

    const v23, 0x7f1206fb

    const-string v24, "101"

    move-object/from16 v19, v1

    invoke-direct/range {v19 .. v24}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 83
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v3

    .line 84
    :cond_13
    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object v7

    aget v26, v7, v6

    const v27, 0x7f08036a

    .line 85
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object v7

    aget v28, v7, v5

    const v29, 0x7f1206fa

    const-string v30, "0"

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v30}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 86
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_14

    goto :goto_6

    :cond_14
    const-string v8, "3"

    :goto_6
    move-object/from16 v24, v8

    const/16 v2, 0xa1

    if-eq v1, v2, :cond_1f

    if-eq v1, v14, :cond_1f

    if-eq v1, v12, :cond_1f

    const/16 v2, 0xac

    if-eq v1, v2, :cond_1f

    if-eq v1, v11, :cond_1f

    const/16 v2, 0xd7

    if-eq v1, v2, :cond_1f

    const/16 v2, 0xb3

    if-eq v1, v2, :cond_1f

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_1f

    if-eq v1, v10, :cond_1f

    if-eq v1, v13, :cond_1a

    .line 87
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsOnlyTorch:Z

    if-nez v1, :cond_15

    .line 88
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v17, v2, v6

    const v18, 0x7f080366

    .line 89
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v19, v2, v5

    .line 90
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v20, v2, v6

    .line 91
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v21, v2, v15

    const v22, 0x7f080363

    const v23, 0x7f1206f8

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v24}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIIIILjava/lang/String;)V

    .line 92
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_15
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsOnlyTorch:Z

    if-nez v1, :cond_16

    .line 94
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object v2

    aget v8, v2, v6

    const v9, 0x7f08036c

    .line 95
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object v2

    aget v10, v2, v5

    const v11, 0x7f1206fb

    const-string v12, "1"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 96
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_16
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00o000o()Z

    move-result v1

    if-eqz v1, :cond_18

    if-eqz v4, :cond_17

    .line 98
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashScreenHaloRes()[I

    move-result-object v2

    aget v8, v2, v6

    const v9, 0x7f08036e

    .line 99
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashScreenHaloRes()[I

    move-result-object v2

    aget v10, v2, v5

    const v11, 0x7f1206fc

    const-string v12, "104"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 100
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_17
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashTorchRes()[I

    move-result-object v2

    aget v14, v2, v6

    const v15, 0x7f080370

    .line 102
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashTorchRes()[I

    move-result-object v2

    aget v16, v2, v5

    const v17, 0x7f1206fd

    const-string v18, "2"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 103
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 104
    :cond_18
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O00o0o()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 105
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashTorchRes()[I

    move-result-object v2

    aget v8, v2, v6

    const v9, 0x7f080370

    .line 106
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashTorchRes()[I

    move-result-object v2

    aget v10, v2, v5

    const v11, 0x7f1206fd

    const-string v12, "2"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 107
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_19
    :goto_7
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsBackSoftLightSupported:Z

    if-eqz v1, :cond_21

    .line 109
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashBackSoftLightSelectedRes()I

    move-result v5

    const v6, 0x7f080368

    .line 110
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashBackSoftLightSelectedRes()I

    move-result v7

    const v8, 0x7f1206f9

    const-string v9, "5"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 111
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 112
    :cond_1a
    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 113
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 114
    invoke-virtual {v9}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getPreviewState()I

    move-result v1

    if-nez v1, :cond_1b

    .line 115
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object v2

    aget v17, v2, v6

    const v18, 0x7f08036c

    .line 116
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object v2

    aget v19, v2, v5

    const v20, 0x7f1206fb

    const-string v21, "1"

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v21}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 117
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_1b
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 119
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00o000o()Z

    move-result v1

    if-eqz v1, :cond_1e

    if-eqz v4, :cond_1d

    .line 120
    invoke-virtual {v9}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getPreviewState()I

    move-result v1

    if-nez v1, :cond_1c

    .line 121
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v17, v2, v6

    const v18, 0x7f080366

    .line 122
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v19, v2, v5

    .line 123
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v20, v2, v6

    .line 124
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object v2

    aget v21, v2, v15

    const v22, 0x7f080363

    const v23, 0x7f1206f8

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v24}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIIIIILjava/lang/String;)V

    .line 125
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_1c
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashScreenHaloRes()[I

    move-result-object v2

    aget v8, v2, v6

    const v9, 0x7f08036e

    .line 127
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashScreenHaloRes()[I

    move-result-object v2

    aget v10, v2, v5

    const v11, 0x7f1206fc

    const-string v12, "104"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 128
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_1d
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashTorchRes()[I

    move-result-object v2

    aget v14, v2, v6

    const v15, 0x7f080370

    .line 130
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashTorchRes()[I

    move-result-object v2

    aget v16, v2, v5

    const v17, 0x7f1206fd

    const-string v18, "2"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 131
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 132
    :cond_1e
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O00o0o()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 133
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashTorchRes()[I

    move-result-object v2

    aget v8, v2, v6

    const v9, 0x7f080370

    .line 134
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashTorchRes()[I

    move-result-object v2

    aget v10, v2, v5

    const v11, 0x7f1206fd

    const-string v12, "2"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 135
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 136
    :cond_1f
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_20

    if-eqz v4, :cond_20

    .line 137
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashScreenHaloRes()[I

    move-result-object v2

    aget v8, v2, v6

    const v9, 0x7f08036e

    .line 138
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashScreenHaloRes()[I

    move-result-object v2

    aget v10, v2, v5

    const v11, 0x7f1206fc

    const-string v12, "104"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 139
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_20
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashTorchRes()[I

    move-result-object v2

    aget v14, v2, v6

    const v15, 0x7f080370

    .line 141
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashTorchRes()[I

    move-result-object v2

    aget v16, v2, v5

    const v17, 0x7f1206fd

    const-string v18, "2"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 142
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-boolean v1, v0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsBackSoftLightSupported:Z

    if-eqz v1, :cond_21

    .line 144
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashBackSoftLightSelectedRes()I

    move-result v5

    const v6, 0x7f080368

    .line 145
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashBackSoftLightSelectedRes()I

    move-result v7

    const v8, 0x7f1206f9

    const-string v9, "5"

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;)V

    .line 146
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    :goto_8
    return-object v3

    :pswitch_data_0
    .packed-switch 0xab
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xcf
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getComponentValueInternal(I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_scenemode_setting_key"

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSceneValue()Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getFlashModeByScene(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getFlashAutoRes()[I
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f080364
        0x7f080364
        0x7f080362
    .end array-data
.end method

.method private getFlashBackSoftLightRes()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f080367
        0x7f080367
    .end array-data
.end method

.method private getFlashBackSoftLightSelectedRes()I
    .locals 1

    const v0, 0x7f080367

    return v0
.end method

.method private getFlashOffRes()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f080369
        0x7f080369
    .end array-data
.end method

.method private getFlashOnRes()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f08036b
        0x7f08036b
    .end array-data
.end method

.method private getFlashScreenHaloRes()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f08036d
        0x7f08036d
    .end array-data
.end method

.method private getFlashTorchRes()[I
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7f08036f
        0x7f08036f
    .end array-data
.end method

.method private isOnlyFlashWithoutHaloSupported(I)Z
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00oOo()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xa9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xac

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb0

    if-eq p1, v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isScreenHaloSupported(II)Z
    .locals 2

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O00o0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0xa2

    if-eq p1, p2, :cond_1

    const/16 p2, 0xa3

    if-eq p1, p2, :cond_1

    const/16 p2, 0xab

    if-eq p1, p2, :cond_1

    const/16 p2, 0xad

    if-eq p1, p2, :cond_1

    const/16 p2, 0xcd

    if-eq p1, p2, :cond_1

    const/16 p2, 0xb7

    if-eq p1, p2, :cond_1

    const/16 p2, 0xb8

    if-eq p1, p2, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public checkValueValid(ILjava/lang/String;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsOnlyTorch:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->checkValueValid(ILjava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "3"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public clearClosed()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsClosed:Z

    return-void
.end method

.method public disableUpdate()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/ThermalDetector;->getInstance()Lcom/android/camera/ThermalDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ThermalDetector;->thermalCloseFlash()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isHardwareSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAutoValueString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v0, v0, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "3"

    return-object v0
.end method

.method public getComponentRealValue(I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isClosed()Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValueInternal(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getComponentValue(I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isClosed()Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/data/data/ComponentData;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_2

    return-object v1

    .line 4
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValueInternal(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p1, "0"

    return-object p1
.end method

.method public getDisableReasonString()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1202db

    return v0

    .line 2
    :cond_0
    sget-boolean v0, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooO0Oo:Z

    if-eqz v0, :cond_1

    const v0, 0x7f1205da

    goto :goto_0

    :cond_1
    const v0, 0x7f1202da

    :goto_0
    return v0
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f1206fe

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

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O00o0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getScreenHaloKey(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getScreenHaloKey(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0xa9

    if-eq p1, v0, :cond_5

    const/16 v0, 0xb0

    if-eq p1, v0, :cond_4

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_5

    const/16 v0, 0xd7

    if-eq p1, v0, :cond_5

    const/16 v0, 0xab

    if-eq p1, v0, :cond_3

    const/16 v0, 0xac

    if-eq p1, v0, :cond_5

    const/16 v0, 0xb3

    if-eq p1, v0, :cond_5

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_5

    const/16 v0, 0xb7

    if-eq p1, v0, :cond_5

    const/16 v0, 0xb8

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    const-string/jumbo p1, "pref_camera_flashmode_key"

    return-object p1

    .line 4
    :pswitch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo v0, "unspecified flash"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getPreviewState()I

    move-result p1

    if-nez p1, :cond_2

    const-string/jumbo p1, "pref_camera_fun_ar_photo_flashmode_key"

    goto :goto_0

    :cond_2
    const-string/jumbo p1, "pref_camera_fun_ar_video_flashmode_key"

    :goto_0
    return-object p1

    :cond_3
    const-string/jumbo p1, "pref_camera_portrait_flashmode_key"

    return-object p1

    :cond_4
    const-string/jumbo p1, "pref_camera_flashmode_wide_selfie_key"

    return-object p1

    :cond_5
    :pswitch_1
    const-string/jumbo p1, "pref_camera_video_flashmode_key"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getScreenHaloKey(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_3

    const/16 v0, 0xad

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb7

    if-eq p1, v0, :cond_1

    const/16 v0, 0xcd

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string/jumbo p1, "pref_camera_flashmode_ai_watermark_key"

    return-object p1

    :cond_1
    const-string/jumbo p1, "pref_camera_flashmode_mi_live_key"

    return-object p1

    :cond_2
    const-string/jumbo p1, "pref_camera_flashmode_supernight_key"

    return-object p1

    :cond_3
    const-string/jumbo p1, "pref_camera_flashmode_record_vdieo_key"

    return-object p1
.end method

.method public getValueSelectedDrawableIgnoreClose(I)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object p1

    aget p1, p1, v2

    return p1

    :cond_0
    const-string v1, "3"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object p1

    aget p1, p1, v2

    return p1

    :cond_1
    const-string v1, "0"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0xab

    if-ne p1, v0, :cond_2

    .line 7
    iget-boolean p1, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsBackSoftLightSupported:Z

    if-eqz p1, :cond_2

    .line 8
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashBackSoftLightRes()[I

    move-result-object p1

    aget p1, p1, v2

    return p1

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOffRes()[I

    move-result-object p1

    aget p1, p1, v2

    return p1

    :cond_3
    const-string p1, "2"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashTorchRes()[I

    move-result-object p1

    aget p1, p1, v2

    return p1

    :cond_4
    const-string p1, "103"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object p1

    aget p1, p1, v2

    return p1

    :cond_5
    const-string p1, "105"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashAutoRes()[I

    move-result-object p1

    aget p1, p1, v2

    return p1

    :cond_6
    const-string p1, "101"

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 17
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashOnRes()[I

    move-result-object p1

    aget p1, p1, v2

    return p1

    :cond_7
    const-string p1, "5"

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 19
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashBackSoftLightSelectedRes()I

    move-result p1

    return p1

    :cond_8
    const-string p1, "104"

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 21
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getFlashScreenHaloRes()[I

    move-result-object p1

    aget p1, p1, v2

    return p1

    :cond_9
    const/4 p1, -0x1

    return p1
.end method

.method public getValueSelectedShadowDrawable(I)I
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x7f08036c

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "3"

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v3, 0x7f080366

    if-eqz v1, :cond_1

    return v3

    :cond_1
    const-string v1, "0"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v4, 0x7f080368

    if-eqz v1, :cond_3

    const/16 v0, 0xab

    if-ne p1, v0, :cond_2

    .line 5
    iget-boolean p1, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsBackSoftLightSupported:Z

    if-eqz p1, :cond_2

    return v4

    :cond_2
    const p1, 0x7f08036a

    return p1

    :cond_3
    const-string p1, "2"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 7
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const v2, 0x7f080370

    :goto_0
    return v2

    :cond_5
    const-string p1, "103"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v3

    :cond_6
    const-string p1, "105"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return v3

    :cond_7
    const-string p1, "101"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    return v2

    :cond_8
    const-string p1, "5"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return v4

    :cond_9
    const-string p1, "104"

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const p1, 0x7f08036e

    return p1

    :cond_a
    const/4 p1, -0x1

    return p1
.end method

.method public getValueSelectedStringIdIgnoreClose(I)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f120060

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "3"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v2, 0x7f12005d

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string v0, "0"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p1, 0x7f12005f

    return p1

    :cond_2
    const-string v0, "2"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const v1, 0x7f120062

    :goto_0
    return v1

    :cond_4
    const-string v0, "103"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    const-string v0, "105"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_6
    const-string v0, "101"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const-string v0, "5"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const p1, 0x7f12005e

    return p1

    :cond_8
    const-string v0, "104"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const p1, 0x7f120061

    return p1

    :cond_9
    const/4 p1, -0x1

    return p1
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsClosed:Z

    return v0
.end method

.method public isDisabled(I)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0xa7

    if-ne p1, v1, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFlashSupportedInManualMode()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0xb8

    if-ne p1, v1, :cond_1

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    const-class v2, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1, v2}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiCreate()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/16 v1, 0xbc

    if-eq p1, v1, :cond_3

    const/16 v1, 0xbd

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public isHardwareSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsHardwareSupported:Z

    return v0
.end method

.method public isValidFlashValue(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "^[0-9]+$"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/config/ComponentConfigUltraWide;I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getPersistValue(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-eq p5, v1, :cond_1

    const/4 v1, -0x1

    if-eq p5, v1, :cond_1

    const-string p5, "2"

    .line 2
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    const-string p5, "5"

    .line 3
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    :cond_0
    const-string p5, "0"

    .line 4
    invoke-virtual {p0, p1, p5}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setComponentValue(ILjava/lang/String;)V

    .line 5
    :cond_1
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportFlashHdr(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p5

    iput-boolean p5, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mSupportFlashHdr:Z

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->createItems(IILcom/android/camera2/CameraCapabilities;Lcom/android/camera/data/data/config/ComponentConfigUltraWide;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    .line 7
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-virtual {p2, p1, p4, p4, p3}, Lcom/android/camera/customization/FlashHalo;->reConfigScreenHaloRequest(IZZZ)V

    return-void
.end method

.method public resetComponentValue(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsOnlyTorch:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->resetComponentValue(I)V

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setComponentValue(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public resetIfNeed(Ljava/lang/String;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mParentDataItem:Lcom/android/camera/data/data/DataItemBase;

    const-string v1, "0"

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "103"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "105"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-interface {p2, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->remove(Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    :cond_1
    return-void
.end method

.method public resetToDefault(Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(Z)V

    const/16 v0, 0xa3

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->resetIfNeed(Ljava/lang/String;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    const/16 v0, 0xa2

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->resetIfNeed(Ljava/lang/String;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    const/16 v1, 0xab

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->resetIfNeed(Ljava/lang/String;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    const-string/jumbo v1, "pref_camera_fun_ar_photo_flashmode_key"

    .line 5
    invoke-virtual {p0, v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->resetIfNeed(Ljava/lang/String;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    const-string/jumbo v1, "pref_camera_fun_ar_video_flashmode_key"

    .line 6
    invoke-virtual {p0, v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->resetIfNeed(Ljava/lang/String;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    .line 7
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O00o0()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xad

    .line 8
    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getScreenHaloKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->resetIfNeed(Ljava/lang/String;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    const/16 v1, 0xcd

    .line 9
    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getScreenHaloKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->resetIfNeed(Ljava/lang/String;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    const/16 v1, 0xb7

    .line 10
    invoke-virtual {p0, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getScreenHaloKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->resetIfNeed(Ljava/lang/String;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getScreenHaloKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->resetIfNeed(Ljava/lang/String;Lcom/android/camera/data/provider/DataProvider$ProviderEditor;)V

    :cond_0
    return-void
.end method

.method public setClosed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mIsClosed:Z

    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(Z)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method

.method public setSceneModeFlashValue(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mFlashValuesForSceneMode:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public supportFlashHdr()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/data/config/ComponentConfigFlash;->mSupportFlashHdr:Z

    return v0
.end method
