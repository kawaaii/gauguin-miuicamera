.class public Lcom/android/camera/dualvideo/render/RegionHelper;
.super Ljava/lang/Object;
.source "RegionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;
    }
.end annotation


# static fields
.field public static final FOLME_TARGET_X_TAG:Ljava/lang/String; = "xSpeed_tag"

.field public static final FOLME_TARGET_X_VALUE:Ljava/lang/String; = "xSpeed"

.field public static final FOLME_TARGET_Y_TAG:Ljava/lang/String; = "ySpeed_tag"

.field public static final FOLME_TARGET_Y_VALUE:Ljava/lang/String; = "ySpeed"

.field public static final MARGIN_BOTTOM:I

.field public static final MINI_MARGIN:I

.field public static final MINI_SCALE_X:F = 0.3333f

.field public static final MINI_SCALE_Y:F = 0.3333f

.field public static final PATCH_SEPARATOR:I

.field public static final TAG:Ljava/lang/String; = "RegionHelper"


# instance fields
.field public mDrawRect:Landroid/graphics/Rect;

.field public mIsHovering:Z

.field public mListener:Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;

.field public mMiniMarginLeft:I

.field public mMiniMarginTop:I

.field public mStartX:F

.field public mStartY:F

.field public mValidMiniRect:Landroid/graphics/Rect;

.field public mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/high16 v0, 0x41680000    # 14.5f

    .line 1
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    sput v1, Lcom/android/camera/dualvideo/render/RegionHelper;->MINI_MARGIN:I

    .line 2
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/dualvideo/render/RegionHelper;->MARGIN_BOTTOM:I

    const v0, 0x408ba5e3    # 4.364f

    .line 3
    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/dualvideo/render/RegionHelper;->PATCH_SEPARATOR:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mIsHovering:Z

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mStartX:F

    .line 4
    iput v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mStartY:F

    .line 5
    iput v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    .line 6
    sget v0, Lcom/android/camera/dualvideo/render/RegionHelper;->MINI_MARGIN:I

    iput v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    .line 7
    new-instance v0, Lmiuix/animation/utils/VelocityMonitor;

    invoke-direct {v0}, Lmiuix/animation/utils/VelocityMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/camera/dualvideo/render/RegionHelper;->setDrawRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera/dualvideo/render/RegionHelper;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    return p1
.end method

.method public static synthetic access$100(Lcom/android/camera/dualvideo/render/RegionHelper;)Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mListener:Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/camera/dualvideo/render/RegionHelper;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    return p1
.end method

.method private checkLocation()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_0

    .line 2
    iput v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_1

    .line 4
    iput v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    .line 5
    :cond_1
    iget v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_2

    .line 6
    iput v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    .line 7
    :cond_2
    iget v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_3

    .line 8
    iput v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    :cond_3
    return-void
.end method

.method private getLayoutRect(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getConfigs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/LayoutType;->getIndex()I

    move-result p1

    sget-object v2, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_0:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v2}, Lcom/android/camera/dualvideo/render/LayoutType;->getIndex()I

    move-result v2

    sub-int/2addr p1, v2

    .line 3
    div-int v2, p1, v1

    .line 4
    rem-int v3, p1, v1

    const/4 v4, 0x1

    add-int/2addr p1, v4

    if-ne v0, p1, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 5
    :goto_1
    iget-object v5, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sget v6, Lcom/android/camera/dualvideo/render/RegionHelper;->PATCH_SEPARATOR:I

    add-int/lit8 v7, v1, -0x1

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    div-int/2addr v5, v1

    sub-int/2addr v0, v4

    .line 6
    div-int/2addr v0, v1

    add-int/2addr v0, v4

    .line 7
    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget v4, Lcom/android/camera/dualvideo/render/RegionHelper;->PATCH_SEPARATOR:I

    add-int/lit8 v6, v0, -0x1

    mul-int/2addr v6, v4

    sub-int/2addr v1, v6

    div-int/2addr v1, v0

    .line 8
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->left:I

    mul-int v7, v3, v4

    add-int/2addr v6, v7

    mul-int/2addr v3, v5

    add-int/2addr v6, v3

    .line 9
    iget v0, v0, Landroid/graphics/Rect;->top:I

    mul-int/2addr v4, v2

    add-int/2addr v0, v4

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    if-eqz p1, :cond_2

    .line 10
    new-instance p1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    invoke-direct {p1, v6, v0, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 11
    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    add-int/2addr v5, v6

    add-int/2addr v1, v0

    invoke-direct {p1, v6, v0, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method


# virtual methods
.method public declared-synchronized getMargin()[I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1
    iget v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRenderAreaFor(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/android/camera/dualvideo/render/RegionHelper$3;->$SwitchMap$com$android$camera$dualvideo$render$LayoutType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/dualvideo/render/RegionHelper;->getLayoutRect(Lcom/android/camera/dualvideo/render/LayoutType;)Landroid/graphics/Rect;

    move-result-object p1

    goto/16 :goto_0

    .line 3
    :pswitch_0
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-object p1

    .line 6
    :pswitch_1
    :try_start_1
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3eaaa64c    # 0.3333f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    .line 8
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    add-int/2addr v3, v4

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-object p1

    .line 10
    :pswitch_2
    :try_start_2
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 11
    :pswitch_3
    :try_start_3
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    .line 12
    :pswitch_4
    :try_start_4
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    .line 13
    :pswitch_5
    :try_start_5
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p1

    .line 14
    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public moveToEdge()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(I)F

    move-result v0

    .line 2
    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lmiuix/animation/utils/VelocityMonitor;->getVelocity(I)F

    move-result v2

    .line 3
    sget-object v4, Lcom/android/camera/dualvideo/render/RegionHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveToEdge xSpeed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ySpeed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v4, 0x44fa0000    # 2000.0f

    cmpl-float v5, v0, v4

    const/high16 v6, -0x3b060000    # -2000.0f

    if-lez v5, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    cmpl-float v0, v0, v6

    if-lez v0, :cond_2

    .line 5
    iget v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    iget-object v5, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    cmpl-float v4, v2, v4

    if-lez v4, :cond_3

    .line 9
    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_3
    cmpl-float v2, v2, v6

    if-lez v2, :cond_5

    .line 10
    iget v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 11
    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 12
    :cond_4
    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 13
    :cond_5
    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    :goto_1
    new-array v4, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "xSpeed"

    aput-object v5, v4, v1

    .line 14
    invoke-static {v4}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v4

    const-wide/16 v5, 0x1

    .line 15
    invoke-interface {v4, v5, v6}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v4

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const-string/jumbo v9, "xSpeed_tag"

    aput-object v9, v8, v1

    iget v10, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    .line 16
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v3

    invoke-interface {v4, v8}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v4

    const/4 v8, 0x3

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v9, v10, v1

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v3

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v9, v7, [F

    fill-array-data v9, :array_0

    const/4 v11, -0x2

    invoke-virtual {v0, v11, v9}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    new-array v9, v3, [Lmiuix/animation/listener/TransitionListener;

    new-instance v12, Lcom/android/camera/dualvideo/render/RegionHelper$1;

    invoke-direct {v12, p0}, Lcom/android/camera/dualvideo/render/RegionHelper$1;-><init>(Lcom/android/camera/dualvideo/render/RegionHelper;)V

    aput-object v12, v9, v1

    .line 18
    invoke-virtual {v0, v9}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    aput-object v0, v10, v7

    .line 19
    invoke-interface {v4, v10}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "ySpeed"

    aput-object v4, v0, v1

    .line 20
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    .line 21
    invoke-interface {v0, v5, v6}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "ySpeed_tag"

    aput-object v5, v4, v1

    iget v6, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    .line 22
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-interface {v0, v4}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v5, v4, v1

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v5, v7, [F

    fill-array-data v5, :array_1

    invoke-virtual {v2, v11, v5}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    new-array v3, v3, [Lmiuix/animation/listener/TransitionListener;

    new-instance v5, Lcom/android/camera/dualvideo/render/RegionHelper$2;

    invoke-direct {v5, p0}, Lcom/android/camera/dualvideo/render/RegionHelper$2;-><init>(Lcom/android/camera/dualvideo/render/RegionHelper;)V

    aput-object v5, v3, v1

    .line 24
    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    aput-object v1, v4, v7

    .line 25
    invoke-interface {v0, v4}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public setDrawRect(Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    sget v0, Lcom/android/camera/dualvideo/render/RegionHelper;->MINI_MARGIN:I

    iget-object v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3eaaa64c    # 0.3333f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    sget v2, Lcom/android/camera/dualvideo/render/RegionHelper;->MINI_MARGIN:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v4, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    sub-int/2addr v2, v3

    sget v3, Lcom/android/camera/dualvideo/render/RegionHelper;->MARGIN_BOTTOM:I

    sub-int/2addr v2, v3

    invoke-direct {p1, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mValidMiniRect:Landroid/graphics/Rect;

    .line 5
    iget v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    if-nez v0, :cond_0

    .line 6
    iget p1, p1, Landroid/graphics/Rect;->right:I

    iput p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    invoke-virtual {v0}, Lmiuix/animation/utils/VelocityMonitor;->clear()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    int-to-float v2, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Lmiuix/animation/utils/VelocityMonitor;->update([F)V

    .line 3
    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mListener:Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;

    return-void
.end method

.method public setStartPosition(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mStartX:F

    .line 2
    iput p2, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mStartY:F

    return-void
.end method

.method public declared-synchronized updateMarginOffset(II)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    .line 2
    iget p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/dualvideo/render/RegionHelper;->checkLocation()V

    .line 4
    iget-object p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mListener:Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;->onUpdated()V

    .line 5
    iget-object p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mVelocityMonitor:Lmiuix/animation/utils/VelocityMonitor;

    const/4 p2, 0x2

    new-array v0, p2, [F

    iget v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    int-to-float v1, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    invoke-virtual {p1, v0}, Lmiuix/animation/utils/VelocityMonitor;->update([F)V

    new-array p1, v3, [Ljava/lang/Object;

    const-string/jumbo v0, "xSpeed"

    aput-object v0, p1, v2

    .line 6
    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    const-wide/16 v0, 0x1

    .line 7
    invoke-interface {p1, v0, v1}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array v4, p2, [Ljava/lang/Object;

    const-string/jumbo v5, "xSpeed_tag"

    aput-object v5, v4, v2

    iget v5, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginLeft:I

    .line 8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-interface {p1, v4}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    new-array p1, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "ySpeed"

    aput-object v4, p1, v2

    .line 9
    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    .line 10
    invoke-interface {p1, v0, v1}, Lmiuix/animation/IStateStyle;->setFlags(J)Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    const-string/jumbo v0, "ySpeed_tag"

    aput-object v0, p2, v2

    iget v0, p0, Lcom/android/camera/dualvideo/render/RegionHelper;->mMiniMarginTop:I

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
