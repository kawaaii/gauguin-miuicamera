.class public Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;
.super Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;
.source "TemplateMakeups2Fragment.java"

# interfaces
.implements Lcom/android/camera/fragment/beauty/IBeautyTypeUI;
.implements Lcom/android/camera/fragment/beauty/IBeautyMutex;


# instance fields
.field public mCurrentBeautyType:Ljava/lang/String;

.field public mCurrentSubEffectType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mItemList:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/TypeItem;

    iget-object p1, p1, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;->mCurrentBeautyType:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xc2

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->updateBeautyMutex()V

    :cond_0
    return-void
.end method

.method public getBeautyType()Ljava/lang/String;
    .locals 1

    const-string v0, "13"

    return-object v0
.end method

.method public getMakeup2SubEffectUI()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/beauty/SubEffectUI;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/android/camera/fragment/beauty/SubEffectUI;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/SubEffectUI;-><init>()V

    const-string/jumbo v2, "sub_makeup"

    .line 3
    iput-object v2, v1, Lcom/android/camera/fragment/beauty/SubEffectUI;->subEffectType:Ljava/lang/String;

    const v3, 0x7f080223

    .line 4
    iput v3, v1, Lcom/android/camera/fragment/beauty/SubEffectUI;->iconRes:I

    const v3, 0x7f080224

    .line 5
    iput v3, v1, Lcom/android/camera/fragment/beauty/SubEffectUI;->iconShadowRes:I

    .line 6
    iget-object v3, p0, Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;->mCurrentBeautyType:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    :goto_0
    iput-boolean v2, v1, Lcom/android/camera/fragment/beauty/SubEffectUI;->isDefault:Z

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Lcom/android/camera/fragment/beauty/SubEffectUI;

    invoke-direct {v1}, Lcom/android/camera/fragment/beauty/SubEffectUI;-><init>()V

    const-string/jumbo v2, "sub_filter"

    .line 9
    iput-object v2, v1, Lcom/android/camera/fragment/beauty/SubEffectUI;->subEffectType:Ljava/lang/String;

    const v3, 0x7f080221

    .line 10
    iput v3, v1, Lcom/android/camera/fragment/beauty/SubEffectUI;->iconRes:I

    const v3, 0x7f080222

    .line 11
    iput v3, v1, Lcom/android/camera/fragment/beauty/SubEffectUI;->iconShadowRes:I

    .line 12
    iget-object v3, p0, Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;->mCurrentBeautyType:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, v1, Lcom/android/camera/fragment/beauty/SubEffectUI;->isDefault:Z

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getMutexArray()[Ljava/lang/String;
    .locals 2

    const-string v0, "5"

    const-string v1, "7"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShineType()Ljava/lang/String;
    .locals 1

    const-string v0, "13"

    return-object v0
.end method

.method public getSubEffectType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;->mCurrentSubEffectType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "sub_makeup"

    :cond_0
    return-object v0
.end method

.method public handleMutex(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mMakeupAdapter:Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "pref_beautify_makeups_none"

    .line 2
    iput-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;->mCurrentBeautyType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mSelectedPosition:I

    .line 4
    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/beauty/TemplateMakeupsAdapter;->setSelectedPosition(I)V

    .line 5
    iget p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->mSelectedPosition:I

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/fragment/beauty/TemplateMakeupsFragment;->notifyItemChanged(II)V

    .line 6
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setBeautyMakeupsType(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xc2

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz p1, :cond_1

    const-string v0, "5"

    .line 8
    invoke-interface {p1, v0, v1}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->handleMutexSpecifyBeautyType(Ljava/lang/String;Z)V

    .line 9
    :cond_1
    invoke-static {}, Lcom/android/camera/fragment/beauty/ShineHelper;->onBeautyChanged()V

    return-void
.end method

.method public initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .line 1
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooOoo/OoooOOO/OooO0oO;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooOoo/OoooOOO/OooO0oO;-><init>(Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;)V

    return-object v0
.end method

.method public isMutexOther()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;->mCurrentBeautyType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;->mCurrentBeautyType:Ljava/lang/String;

    const-string/jumbo v1, "pref_beautify_makeups_none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public selectBeautyItem()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;->mCurrentBeautyType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, "pref_beautify_makeups_none"

    :cond_0
    return-object v0
.end method

.method public setSubEffectType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/TemplateMakeups2Fragment;->mCurrentSubEffectType:Ljava/lang/String;

    return-void
.end method
