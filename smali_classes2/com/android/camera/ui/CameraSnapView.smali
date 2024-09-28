.class public Lcom/android/camera/ui/CameraSnapView;
.super Landroid/view/View;
.source "CameraSnapView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/CameraSnapView$SnapListener;,
        Lcom/android/camera/ui/CameraSnapView$SnapEvent;
    }
.end annotation


# static fields
.field public static final LONG_PRESS_TIME:I = 0x320

.field public static final MSG_START_CANCEL_OUT:I = 0x6

.field public static final MSG_START_CLICK:I = 0x1

.field public static final MSG_START_DRAGGING:I = 0x3

.field public static final MSG_START_FORCE_CLICK:I = 0x7

.field public static final MSG_START_LONG_PRESS:I = 0x2

.field public static final MSG_START_LONG_PRESS_CANCEL_IN:I = 0x5

.field public static final MSG_START_LONG_PRESS_CANCEL_OUT:I = 0x4

.field public static final RECT_WIDTH:F = 0.75f

.field public static final TAG:Ljava/lang/String;

.field public static mSupportDownCapture:Z

.field public static mSupportThunderShutterAnim:Z


# instance fields
.field public cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

.field public mCancelRespond:Z

.field public mClickRegionRect:Landroid/graphics/Rect;

.field public mCurrentCondition:Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

.field public mCurrentMode:I

.field public mDownX:F

.field public mDownY:F

.field public mDraggingHorizontal:Z

.field public mDraggingMinDistance:F

.field public mDraggingMinus:Z

.field public mDraggingTriggerDistance:F

.field public mDraggingXOffset:F

.field public mDraggingYOffset:F

.field public mEnableSnapClick:Z

.field public mExtraBitmap:Landroid/graphics/Bitmap;

.field public mExtraBitmapMatrix:Landroid/graphics/Matrix;

.field public mExtraBitmapPaint:Landroid/graphics/Paint;

.field public mHandler:Landroid/os/Handler;

.field public mHasCancelByOutside:Z

.field public mHeight:I

.field public mLongPressTime:I

.field public mMissTaken:Z

.field public mMovingHorizontal:Z

.field public mOperationWidth:F

.field public mPressDownTime:J

.field public mPressUpTime:J

.field public mRotation:F

.field public mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

.field public mSupportDraggingByStableCondition:Z

.field public mTriggerDragging:Z

.field public mViewRegionRect:Landroid/graphics/Rect;

.field public mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraSnapView;->mEnableSnapClick:Z

    const/16 v0, 0x320

    .line 3
    iput v0, p0, Lcom/android/camera/ui/CameraSnapView;->mLongPressTime:I

    const/high16 v0, 0x43c80000    # 400.0f

    .line 4
    iput v0, p0, Lcom/android/camera/ui/CameraSnapView;->mOperationWidth:F

    const/high16 v0, 0x42480000    # 50.0f

    .line 5
    iput v0, p0, Lcom/android/camera/ui/CameraSnapView;->mDraggingMinDistance:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 6
    iput v0, p0, Lcom/android/camera/ui/CameraSnapView;->mDraggingTriggerDistance:F

    .line 7
    new-instance v0, Lcom/android/camera/ui/CameraSnapView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/CameraSnapView$1;-><init>(Lcom/android/camera/ui/CameraSnapView;)V

    iput-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraSnapView;->mHasCancelByOutside:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraSnapView;->mCancelRespond:Z

    .line 10
    invoke-direct {p0, p1}, Lcom/android/camera/ui/CameraSnapView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lcom/android/camera/ui/CameraSnapView;->mEnableSnapClick:Z

    const/16 p2, 0x320

    .line 13
    iput p2, p0, Lcom/android/camera/ui/CameraSnapView;->mLongPressTime:I

    const/high16 p2, 0x43c80000    # 400.0f

    .line 14
    iput p2, p0, Lcom/android/camera/ui/CameraSnapView;->mOperationWidth:F

    const/high16 p2, 0x42480000    # 50.0f

    .line 15
    iput p2, p0, Lcom/android/camera/ui/CameraSnapView;->mDraggingMinDistance:F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 16
    iput p2, p0, Lcom/android/camera/ui/CameraSnapView;->mDraggingTriggerDistance:F

    .line 17
    new-instance p2, Lcom/android/camera/ui/CameraSnapView$1;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/CameraSnapView$1;-><init>(Lcom/android/camera/ui/CameraSnapView;)V

    iput-object p2, p0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 18
    iput-boolean p2, p0, Lcom/android/camera/ui/CameraSnapView;->mHasCancelByOutside:Z

    .line 19
    iput-boolean p2, p0, Lcom/android/camera/ui/CameraSnapView;->mCancelRespond:Z

    .line 20
    invoke-direct {p0, p1}, Lcom/android/camera/ui/CameraSnapView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 22
    iput-boolean p2, p0, Lcom/android/camera/ui/CameraSnapView;->mEnableSnapClick:Z

    const/16 p2, 0x320

    .line 23
    iput p2, p0, Lcom/android/camera/ui/CameraSnapView;->mLongPressTime:I

    const/high16 p2, 0x43c80000    # 400.0f

    .line 24
    iput p2, p0, Lcom/android/camera/ui/CameraSnapView;->mOperationWidth:F

    const/high16 p2, 0x42480000    # 50.0f

    .line 25
    iput p2, p0, Lcom/android/camera/ui/CameraSnapView;->mDraggingMinDistance:F

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 26
    iput p2, p0, Lcom/android/camera/ui/CameraSnapView;->mDraggingTriggerDistance:F

    .line 27
    new-instance p2, Lcom/android/camera/ui/CameraSnapView$1;

    invoke-direct {p2, p0}, Lcom/android/camera/ui/CameraSnapView$1;-><init>(Lcom/android/camera/ui/CameraSnapView;)V

    iput-object p2, p0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 28
    iput-boolean p2, p0, Lcom/android/camera/ui/CameraSnapView;->mHasCancelByOutside:Z

    .line 29
    iput-boolean p2, p0, Lcom/android/camera/ui/CameraSnapView;->mCancelRespond:Z

    .line 30
    invoke-direct {p0, p1}, Lcom/android/camera/ui/CameraSnapView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/ui/CameraSnapView;)Lcom/android/camera/ui/CameraSnapView$SnapListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/camera/ui/CameraSnapView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/CameraSnapView;->mDraggingTriggerDistance:F

    return p1
.end method

.method public static synthetic access$202(Lcom/android/camera/ui/CameraSnapView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/CameraSnapView;->mHasCancelByOutside:Z

    return p1
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOo00()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/ui/CameraSnapView;->mSupportThunderShutterAnim:Z

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O0ooo()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/ui/CameraSnapView;->mSupportDownCapture:Z

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->getCenterDisplayWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/CameraSnapView;->mOperationWidth:F

    .line 5
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/camera/ui/CameraSnapView;->mDraggingMinDistance:F

    return-void
.end method

.method private isLongExp(I)Z
    .locals 2

    const/16 v0, 0xa7

    if-ne v0, p1, :cond_0

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/data/data/config/ComponentManuallyET;->isLongExpose(I)Z

    move-result p1

    return p1

    :cond_0
    const/16 v0, 0xa3

    const/4 v1, 0x0

    if-eq v0, p1, :cond_2

    const/16 v0, 0xab

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 2
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getMiviSuperNightData()Lcom/android/camera2/vendortag/struct/MiviSuperNightData;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/android/camera2/vendortag/struct/MiviSuperNightData;->isMiviNightCaptureInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private judgeRegionRect()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mViewRegionRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/CameraSnapView;->mWidth:I

    if-nez v0, :cond_2

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    const-string v1, "judgeRegionRect"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, v0}, Lcom/android/camera/Util;->getViewRect(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mViewRegionRect:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/ui/CameraSnapView;->mViewRegionRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mClickRegionRect:Landroid/graphics/Rect;

    .line 5
    iget v1, p0, Lcom/android/camera/ui/CameraSnapView;->mWidth:I

    iget v2, p0, Lcom/android/camera/ui/CameraSnapView;->mHeight:I

    if-le v1, v2, :cond_1

    .line 6
    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v4, v1, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 7
    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 8
    :cond_1
    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v4, v2, v1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 9
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_2
    :goto_0
    return-void
.end method

.method private onTouchDownDefaultHandler(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    invoke-interface {v0}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->canSnap()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/android/camera/ui/CameraSnapView;->mMissTaken:Z

    if-nez p1, :cond_0

    .line 3
    iput-boolean v2, p0, Lcom/android/camera/ui/CameraSnapView;->mMissTaken:Z

    .line 4
    iget-wide v2, p0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    sub-long/2addr v2, v4

    invoke-interface {p1, v2, v3}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onTrackSnapMissTaken(J)V

    .line 6
    :cond_0
    sget-object p1, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    const-string v0, "can not snap"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-nez v0, :cond_2

    return v1

    .line 8
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleDownAnimation(I)V

    return v2
.end method

.method private recycleBitmap()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private resetDraggingDistance()V
    .locals 11

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 1
    iput v0, p0, Lcom/android/camera/ui/CameraSnapView;->mDraggingTriggerDistance:F

    .line 2
    iget v0, p0, Lcom/android/camera/ui/CameraSnapView;->mDraggingXOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/CameraSnapView;->mDraggingYOffset:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    sget-object v0, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "resetDraggingDistance"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iput v1, p0, Lcom/android/camera/ui/CameraSnapView;->mDraggingXOffset:F

    .line 5
    iput v1, p0, Lcom/android/camera/ui/CameraSnapView;->mDraggingYOffset:F

    .line 6
    iget-object v3, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget-boolean v4, p0, Lcom/android/camera/ui/CameraSnapView;->mMovingHorizontal:Z

    iget v0, p0, Lcom/android/camera/ui/CameraSnapView;->mWidth:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/camera/ui/CameraSnapView;->mHeight:I

    int-to-float v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget v10, p0, Lcom/android/camera/ui/CameraSnapView;->mOperationWidth:F

    invoke-virtual/range {v3 .. v10}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startMoving(ZFFFFZF)V

    :cond_1
    return-void
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float v1, v0, v2

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float p1, v2, p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float p1, v0, p1

    .line 7
    :goto_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapMatrix:Landroid/graphics/Matrix;

    .line 8
    invoke-virtual {v1, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    div-float/2addr v3, v0

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addSegmentNow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->addSegmentNow()V

    return-void
.end method

.method public directFinishRecord()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->directFinishRecord()V

    return-void
.end method

.method public getClickRegion()Landroid/graphics/Rect;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSnapView;->judgeRegionRect()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mClickRegionRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hasSegments()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->hasSegments()Z

    move-result v0

    return v0
.end method

.method public hideBottomPaintItem()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->hideBottomPaintItem()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public hideCirclePaintItem()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->hideCirclePaintItem()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public hidePaintCenterVVItem()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->hidePaintCenterVVItem()V

    return-void
.end method

.method public hideRoundPaintItem()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->hideRoundPaintItem()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isBottomVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->isBottomVisible()Z

    move-result v0

    return v0
.end method

.method public isCircleVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->isCircleVisible()Z

    move-result v0

    return v0
.end method

.method public isFullScreen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->isFullScreen()Z

    move-result v0

    return v0
.end method

.method public isRoundBaseVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->isRoundBaseVisible()Z

    move-result v0

    return v0
.end method

.method public isRoundCurrentVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->isRoundCurrentVisible()Z

    move-result v0

    return v0
.end method

.method public isSnapEnableClick()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraSnapView;->mEnableSnapClick:Z

    return v0
.end method

.method public isTriggerDragging()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraSnapView;->mTriggerDragging:Z

    return v0
.end method

.method public longExposePrepare(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->prepareRecording(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    return-void
.end method

.method public longExposeStart(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startRecord(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelAnimation()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSnapView;->recycleBitmap()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onForceVideoStateChange(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mCurrentCondition:Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->forceVideoPattern:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-boolean v1, p1, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->forceVideoPattern:Z

    if-ne v1, v0, :cond_1

    return-void

    .line 3
    :cond_1
    iput-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mCurrentCondition:Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->intoPattern(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startModeChangeAnimation()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/CameraSnapView;->mWidth:I

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/CameraSnapView;->mHeight:I

    .line 5
    iget p2, p0, Lcom/android/camera/ui/CameraSnapView;->mWidth:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz p1, :cond_1

    .line 7
    iget p2, p0, Lcom/android/camera/ui/CameraSnapView;->mWidth:I

    int-to-float p2, p2

    iget v0, p0, Lcom/android/camera/ui/CameraSnapView;->mHeight:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->setWidthHeight(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScreenOrientationChanged(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScreenOrientationChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mViewRegionRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraSnapView;->mDraggingHorizontal:Z

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraSnapView;->mMovingHorizontal:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/android/camera/ui/CameraSnapView;->mDraggingMinus:Z

    .line 6
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/ui/CameraSnapView;->mDraggingHorizontal:Z

    .line 8
    iput-boolean v1, p0, Lcom/android/camera/ui/CameraSnapView;->mMovingHorizontal:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraSnapView;->mDraggingMinus:Z

    goto :goto_0

    .line 10
    :cond_1
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraSnapView;->mDraggingHorizontal:Z

    .line 11
    iput-boolean v1, p0, Lcom/android/camera/ui/CameraSnapView;->mMovingHorizontal:Z

    goto :goto_0

    .line 12
    :cond_2
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraSnapView;->mDraggingHorizontal:Z

    .line 13
    iput-boolean v1, p0, Lcom/android/camera/ui/CameraSnapView;->mMovingHorizontal:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraSnapView;->mDraggingMinus:Z

    goto :goto_0

    .line 15
    :cond_3
    iput-boolean v1, p0, Lcom/android/camera/ui/CameraSnapView;->mDraggingHorizontal:Z

    .line 16
    iput-boolean v1, p0, Lcom/android/camera/ui/CameraSnapView;->mMovingHorizontal:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public onTimeOut()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->showCirclePaintItem()V

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->showRoundPaintItem()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/CameraSnapView;->judgeRegionRect()V

    .line 2
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->mClickRegionRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/Util;->isInViewRegionFixXY(Landroid/view/View;Landroid/graphics/Rect;II)Z

    move-result v1

    .line 3
    iget-object v2, v0, Lcom/android/camera/ui/CameraSnapView;->mViewRegionRect:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v0, v2, v3, v4}, Lcom/android/camera/Util;->isInViewRegionFixXY(Landroid/view/View;Landroid/graphics/Rect;II)Z

    move-result v2

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/CameraSnapView;->isSnapEnableClick()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 5
    sget-object v2, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "this view is disabled. action="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    .line 6
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_0
    return v4

    .line 7
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v15, 0xb0

    const/16 v5, 0xa9

    const/16 v6, 0xa6

    const/16 v7, 0xa2

    const/16 v8, 0xa1

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v3, :cond_20

    const/4 v11, 0x4

    const/4 v12, 0x6

    const/4 v13, 0x0

    if-eq v3, v10, :cond_e

    if-eq v3, v9, :cond_2

    const/4 v2, 0x3

    if-eq v3, v2, :cond_e

    if-eq v3, v12, :cond_12

    goto/16 :goto_b

    :cond_2
    if-nez v2, :cond_5

    .line 8
    iget-boolean v2, v0, Lcom/android/camera/ui/CameraSnapView;->mTriggerDragging:Z

    if-eqz v2, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    iget-object v2, v0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, v0, Lcom/android/camera/ui/CameraSnapView;->mHasCancelByOutside:Z

    if-eqz v2, :cond_e

    :cond_4
    return v4

    .line 10
    :cond_5
    :goto_0
    iget-boolean v1, v0, Lcom/android/camera/ui/CameraSnapView;->mDraggingHorizontal:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, v0, Lcom/android/camera/ui/CameraSnapView;->mDownX:F

    sub-float/2addr v1, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 12
    iget v1, v0, Lcom/android/camera/ui/CameraSnapView;->mOperationWidth:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v5, v0, Lcom/android/camera/ui/CameraSnapView;->mDownX:F

    sub-float/2addr v3, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_1

    .line 13
    :cond_6
    iget v1, v0, Lcom/android/camera/ui/CameraSnapView;->mOperationWidth:F

    neg-float v1, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v5, v0, Lcom/android/camera/ui/CameraSnapView;->mDownX:F

    sub-float/2addr v3, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 14
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, v0, Lcom/android/camera/ui/CameraSnapView;->mDraggingTriggerDistance:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_9

    return v4

    .line 15
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v3, v0, Lcom/android/camera/ui/CameraSnapView;->mDownY:F

    sub-float/2addr v1, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    .line 16
    iget v1, v0, Lcom/android/camera/ui/CameraSnapView;->mOperationWidth:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v5, v0, Lcom/android/camera/ui/CameraSnapView;->mDownY:F

    sub-float/2addr v3, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_2

    .line 17
    :cond_8
    iget v1, v0, Lcom/android/camera/ui/CameraSnapView;->mOperationWidth:F

    neg-float v1, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v5, v0, Lcom/android/camera/ui/CameraSnapView;->mDownY:F

    sub-float/2addr v3, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 18
    :cond_9
    :goto_2
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, v0, Lcom/android/camera/ui/CameraSnapView;->mDraggingTriggerDistance:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_a

    return v4

    .line 19
    :cond_a
    iget-boolean v3, v0, Lcom/android/camera/ui/CameraSnapView;->mMovingHorizontal:Z

    if-eqz v3, :cond_b

    .line 20
    iput v1, v0, Lcom/android/camera/ui/CameraSnapView;->mDraggingXOffset:F

    .line 21
    iput v2, v0, Lcom/android/camera/ui/CameraSnapView;->mDraggingYOffset:F

    goto :goto_3

    .line 22
    :cond_b
    iput v2, v0, Lcom/android/camera/ui/CameraSnapView;->mDraggingXOffset:F

    .line 23
    iput v1, v0, Lcom/android/camera/ui/CameraSnapView;->mDraggingYOffset:F

    .line 24
    :goto_3
    iget-boolean v3, v0, Lcom/android/camera/ui/CameraSnapView;->mDraggingMinus:Z

    if-eqz v3, :cond_c

    .line 25
    iget v3, v0, Lcom/android/camera/ui/CameraSnapView;->mDraggingXOffset:F

    neg-float v3, v3

    iput v3, v0, Lcom/android/camera/ui/CameraSnapView;->mDraggingXOffset:F

    .line 26
    iget v3, v0, Lcom/android/camera/ui/CameraSnapView;->mDraggingYOffset:F

    neg-float v3, v3

    iput v3, v0, Lcom/android/camera/ui/CameraSnapView;->mDraggingYOffset:F

    .line 27
    :cond_c
    iget-object v3, v0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 28
    iget-object v13, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget-boolean v14, v0, Lcom/android/camera/ui/CameraSnapView;->mMovingHorizontal:Z

    iget v3, v0, Lcom/android/camera/ui/CameraSnapView;->mWidth:I

    int-to-float v15, v3

    iget v3, v0, Lcom/android/camera/ui/CameraSnapView;->mHeight:I

    int-to-float v3, v3

    iget v4, v0, Lcom/android/camera/ui/CameraSnapView;->mDraggingXOffset:F

    iget v5, v0, Lcom/android/camera/ui/CameraSnapView;->mDraggingYOffset:F

    const/16 v19, 0x0

    iget v6, v0, Lcom/android/camera/ui/CameraSnapView;->mOperationWidth:F

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v20, v6

    invoke-virtual/range {v13 .. v20}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startMoving(ZFFFFZF)V

    .line 29
    iget v3, v0, Lcom/android/camera/ui/CameraSnapView;->mWidth:I

    iget v4, v0, Lcom/android/camera/ui/CameraSnapView;->mHeight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    div-int/2addr v3, v12

    .line 30
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_d

    .line 31
    iput-boolean v10, v0, Lcom/android/camera/ui/CameraSnapView;->mTriggerDragging:Z

    .line 32
    iput v2, v0, Lcom/android/camera/ui/CameraSnapView;->mDraggingTriggerDistance:F

    .line 33
    sget-object v1, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onSnapDragging"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iput-boolean v10, v0, Lcom/android/camera/ui/CameraSnapView;->mCancelRespond:Z

    .line 35
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    invoke-interface {v1}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onSnapDragging()V

    :cond_d
    return v10

    .line 36
    :cond_e
    iget-object v2, v0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v13}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 37
    iget-boolean v2, v0, Lcom/android/camera/ui/CameraSnapView;->mHasCancelByOutside:Z

    if-eqz v2, :cond_f

    .line 38
    sget-object v1, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "snap canceled twice"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 39
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    .line 40
    iget-wide v13, v0, Lcom/android/camera/ui/CameraSnapView;->mPressDownTime:J

    sub-long/2addr v2, v13

    .line 41
    iget v4, v0, Lcom/android/camera/ui/CameraSnapView;->mLongPressTime:I

    int-to-long v13, v4

    cmp-long v2, v2, v13

    if-gez v2, :cond_12

    if-eqz v1, :cond_11

    .line 42
    iget-boolean v2, v0, Lcom/android/camera/ui/CameraSnapView;->mCancelRespond:Z

    if-nez v2, :cond_10

    .line 43
    sget-object v2, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "snap click action_up"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v2, v0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 45
    :cond_10
    sget-object v2, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "snap click force action_up"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v2, v0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    :cond_11
    if-nez v1, :cond_12

    .line 47
    sget-object v2, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "snap cancel out"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v2, v0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 49
    :cond_12
    :goto_4
    iget-boolean v2, v0, Lcom/android/camera/ui/CameraSnapView;->mHasCancelByOutside:Z

    if-eqz v2, :cond_13

    return v10

    .line 50
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/CameraSnapView;->resetDraggingDistance()V

    .line 51
    iget-boolean v2, v0, Lcom/android/camera/ui/CameraSnapView;->mTriggerDragging:Z

    if-eqz v2, :cond_14

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/CameraSnapView;->resetTriggerDragging()V

    .line 53
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    invoke-interface {v1}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onSnapLongPressCancelOut()V

    return v10

    .line 54
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    .line 55
    iget-wide v12, v0, Lcom/android/camera/ui/CameraSnapView;->mPressDownTime:J

    sub-long/2addr v2, v12

    .line 56
    sget-object v4, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "timeDiffer = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget v4, v0, Lcom/android/camera/ui/CameraSnapView;->mLongPressTime:I

    int-to-long v12, v4

    cmp-long v4, v2, v12

    if-ltz v4, :cond_16

    iget-boolean v4, v0, Lcom/android/camera/ui/CameraSnapView;->mCancelRespond:Z

    if-nez v4, :cond_16

    if-eqz v1, :cond_15

    .line 58
    sget-object v1, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "send long cancel in"

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 60
    :cond_15
    sget-object v1, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "send long cancel out"

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 62
    :cond_16
    :goto_5
    sget-boolean v1, Lcom/android/camera/ui/CameraSnapView;->mSupportThunderShutterAnim:Z

    if-eqz v1, :cond_17

    const-wide/16 v11, 0x32

    goto :goto_6

    :cond_17
    const-wide/16 v11, 0x78

    :goto_6
    cmp-long v1, v2, v11

    if-lez v1, :cond_18

    const-wide/16 v1, 0x0

    goto :goto_7

    :cond_18
    sub-long v1, v11, v2

    .line 63
    :goto_7
    iget v3, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    if-eq v3, v8, :cond_34

    if-eq v3, v7, :cond_34

    if-eq v3, v6, :cond_1f

    if-eq v3, v5, :cond_34

    if-eq v3, v15, :cond_1e

    const/16 v4, 0xbb

    if-eq v3, v4, :cond_1d

    const/16 v4, 0xbd

    if-eq v3, v4, :cond_34

    const/16 v4, 0xcc

    if-eq v3, v4, :cond_1c

    const/16 v4, 0xd4

    if-eq v3, v4, :cond_34

    const/16 v4, 0xac

    if-eq v3, v4, :cond_34

    const/16 v4, 0xad

    if-eq v3, v4, :cond_19

    const/16 v4, 0xb3

    if-eq v3, v4, :cond_34

    const/16 v4, 0xb4

    if-eq v3, v4, :cond_34

    const/16 v4, 0xcf

    if-eq v3, v4, :cond_34

    const/16 v4, 0xd0

    if-eq v3, v4, :cond_34

    const/16 v4, 0xd6

    if-eq v3, v4, :cond_34

    const/16 v4, 0xd7

    if-eq v3, v4, :cond_34

    packed-switch v3, :pswitch_data_0

    .line 64
    iget-object v3, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v3, :cond_34

    const/4 v4, 0x0

    .line 65
    invoke-virtual {v3, v1, v2, v4}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleUpAnimation(JLandroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_b

    :pswitch_0
    const/4 v4, 0x0

    .line 66
    iget-object v3, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentCondition:Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    if-eqz v3, :cond_34

    iget-boolean v3, v3, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->forceVideoPattern:Z

    if-nez v3, :cond_34

    .line 67
    iget-object v3, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleUpAnimation(JLandroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_b

    .line 68
    :cond_19
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpAndQuickShot()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 69
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v3

    invoke-virtual {v3}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o000O0oo()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 70
    :cond_1a
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightMismatch()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 71
    :cond_1b
    iget-object v3, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleUpAnimation(JLandroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_b

    .line 72
    :cond_1c
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 73
    iget-object v3, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentCondition:Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    if-eqz v3, :cond_34

    iget-boolean v3, v3, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->forceVideoPattern:Z

    if-nez v3, :cond_34

    .line 74
    iget-object v3, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleUpAnimation(JLandroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_b

    .line 75
    :cond_1d
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0x1a4

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;

    if-eqz v3, :cond_34

    .line 76
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;->getPressAnimationEnabled()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 77
    iget-object v3, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleUpAnimation(JLandroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_b

    :cond_1e
    const/4 v4, 0x0

    .line 78
    iget-object v3, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleUpAnimation(JLandroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_b

    :cond_1f
    const/4 v4, 0x0

    .line 79
    iget-object v3, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleUpAnimation(JLandroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_b

    .line 80
    :cond_20
    sget-object v2, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "snap click action_down"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/camera/ui/CameraSnapView;->mPressDownTime:J

    if-nez v1, :cond_21

    .line 82
    sget-object v1, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "snap click action_down not in click region"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 83
    :cond_21
    iget-object v2, v0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    if-eqz v2, :cond_22

    .line 84
    invoke-interface {v2}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->recordTouchDownTime()V

    .line 85
    :cond_22
    iput-boolean v4, v0, Lcom/android/camera/ui/CameraSnapView;->mCancelRespond:Z

    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iput v2, v0, Lcom/android/camera/ui/CameraSnapView;->mDownX:F

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, v0, Lcom/android/camera/ui/CameraSnapView;->mDownY:F

    .line 88
    iget v2, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    if-eq v2, v8, :cond_2d

    if-eq v2, v7, :cond_2d

    if-eq v2, v6, :cond_2c

    if-eq v2, v5, :cond_2d

    if-eq v2, v15, :cond_2c

    const/16 v3, 0xbb

    if-eq v2, v3, :cond_2b

    const/16 v3, 0xbd

    if-eq v2, v3, :cond_2d

    const/16 v3, 0xcc

    if-eq v2, v3, :cond_2a

    const/16 v3, 0xb3

    if-eq v2, v3, :cond_2d

    const/16 v3, 0xb4

    if-eq v2, v3, :cond_2d

    const/16 v3, 0xcf

    if-eq v2, v3, :cond_2d

    const/16 v3, 0xd0

    if-eq v2, v3, :cond_2d

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    .line 89
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v2

    .line 91
    sget-boolean v3, Lcom/android/camera/ui/CameraSnapView;->mSupportThunderShutterAnim:Z

    if-eqz v3, :cond_23

    iget-object v3, v0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    invoke-interface {v3}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->canSnap()Z

    move-result v3

    if-nez v3, :cond_23

    iget v3, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    invoke-direct {v0, v3}, Lcom/android/camera/ui/CameraSnapView;->isLongExp(I)Z

    move-result v3

    if-nez v3, :cond_23

    .line 92
    sget-object v1, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    const-string v3, "can not snap, start down anim"

    invoke-static {v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget v3, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleDownAnimation(I)V

    xor-int/lit8 v1, v2, 0x1

    .line 94
    iput-boolean v1, v0, Lcom/android/camera/ui/CameraSnapView;->mCancelRespond:Z

    goto/16 :goto_8

    :cond_23
    if-eqz v2, :cond_24

    .line 95
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget v2, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleDownAnimation(I)V

    goto/16 :goto_8

    .line 96
    :cond_24
    iget v2, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    invoke-direct {v0, v2}, Lcom/android/camera/ui/CameraSnapView;->onTouchDownDefaultHandler(I)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 97
    sget-object v2, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    const-string v3, "default return"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 98
    :pswitch_1
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentCondition:Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    if-eqz v1, :cond_2d

    iget-boolean v1, v1, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->forceVideoPattern:Z

    if-nez v1, :cond_2d

    .line 99
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleDownAnimation(I)V

    goto/16 :goto_8

    .line 100
    :pswitch_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isOnSuperNightAlgoUpAndQuickShot()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 101
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o000O0oo()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 102
    :cond_25
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSuperNightMismatch()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 103
    :cond_26
    sget-boolean v2, Lcom/android/camera/ui/CameraSnapView;->mSupportThunderShutterAnim:Z

    if-eqz v2, :cond_27

    iget-object v2, v0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    invoke-interface {v2}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->canSnap()Z

    move-result v2

    if-nez v2, :cond_27

    .line 104
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget v2, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleDownAnimation(I)V

    .line 105
    iput-boolean v10, v0, Lcom/android/camera/ui/CameraSnapView;->mCancelRespond:Z

    goto/16 :goto_8

    .line 106
    :cond_27
    iget v2, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    invoke-direct {v0, v2}, Lcom/android/camera/ui/CameraSnapView;->onTouchDownDefaultHandler(I)Z

    move-result v2

    if-nez v2, :cond_2d

    return v1

    .line 107
    :pswitch_3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0O0o0o0()Z

    move-result v2

    if-nez v2, :cond_28

    sget-boolean v2, Lcom/android/camera/ui/CameraSnapView;->mSupportThunderShutterAnim:Z

    if-eqz v2, :cond_29

    :cond_28
    iget-object v2, v0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    .line 108
    invoke-interface {v2}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->canSnap()Z

    move-result v2

    if-nez v2, :cond_29

    .line 109
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget v2, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleDownAnimation(I)V

    .line 110
    iput-boolean v10, v0, Lcom/android/camera/ui/CameraSnapView;->mCancelRespond:Z

    goto :goto_8

    .line 111
    :cond_29
    iget v2, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    invoke-direct {v0, v2}, Lcom/android/camera/ui/CameraSnapView;->onTouchDownDefaultHandler(I)Z

    move-result v2

    if-nez v2, :cond_2d

    return v1

    .line 112
    :cond_2a
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 113
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentCondition:Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    if-eqz v1, :cond_2d

    iget-boolean v1, v1, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->forceVideoPattern:Z

    if-nez v1, :cond_2d

    .line 114
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget v2, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleDownAnimation(I)V

    goto :goto_8

    .line 115
    :cond_2b
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0x1a4

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;

    if-eqz v1, :cond_2d

    .line 116
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$AmbilightProtocol;->getPressAnimationEnabled()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 117
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget v2, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleDownAnimation(I)V

    goto :goto_8

    .line 118
    :cond_2c
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget v2, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleDownAnimation(I)V

    .line 119
    :cond_2d
    :goto_8
    :pswitch_4
    iput-boolean v4, v0, Lcom/android/camera/ui/CameraSnapView;->mMissTaken:Z

    .line 120
    sget-boolean v1, Lcom/android/camera/ui/CameraSnapView;->mSupportDownCapture:Z

    if-eqz v1, :cond_2f

    const/16 v1, 0xa3

    .line 121
    iget v2, v0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    if-ne v1, v2, :cond_2e

    .line 122
    iget-boolean v1, v0, Lcom/android/camera/ui/CameraSnapView;->mCancelRespond:Z

    if-nez v1, :cond_30

    .line 123
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    invoke-interface {v1}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onSnapPrepare()V

    goto :goto_9

    .line 124
    :cond_2e
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    invoke-interface {v1}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onSnapPrepare()V

    goto :goto_9

    .line 125
    :cond_2f
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    invoke-interface {v1}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onSnapPrepare()V

    .line 126
    :cond_30
    :goto_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/camera/ui/CameraSnapView;->mPressDownTime:J

    .line 127
    iget-wide v5, v0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_31

    .line 128
    iget-object v3, v0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    sub-long/2addr v1, v5

    invoke-interface {v3, v1, v2}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onTrackSnapTaken(J)V

    .line 129
    :cond_31
    iget-boolean v1, v0, Lcom/android/camera/ui/CameraSnapView;->mCancelRespond:Z

    if-nez v1, :cond_33

    .line 130
    sget-object v1, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "send long press delay"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-boolean v1, v0, Lcom/android/camera/ui/CameraSnapView;->mSupportDraggingByStableCondition:Z

    if-eqz v1, :cond_32

    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    invoke-interface {v1}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->canMultiCaptureByRunningCondition()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 132
    sget-object v1, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDraggingTriggerDistance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/camera/ui/CameraSnapView;->mDraggingMinDistance:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget v1, v0, Lcom/android/camera/ui/CameraSnapView;->mDraggingMinDistance:F

    iput v1, v0, Lcom/android/camera/ui/CameraSnapView;->mDraggingTriggerDistance:F

    goto :goto_a

    :cond_32
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    .line 134
    iput v1, v0, Lcom/android/camera/ui/CameraSnapView;->mDraggingTriggerDistance:F

    .line 135
    :goto_a
    iget-object v1, v0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    iget v2, v0, Lcom/android/camera/ui/CameraSnapView;->mLongPressTime:I

    int-to-long v2, v2

    invoke-virtual {v1, v9, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 136
    :cond_33
    iput-boolean v4, v0, Lcom/android/camera/ui/CameraSnapView;->mHasCancelByOutside:Z

    :cond_34
    :goto_b
    :pswitch_5
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0xb7
        :pswitch_5
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xab
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb7
        :pswitch_4
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xd4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public pauseRecording()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->pauseRecording()V

    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->isVoiceAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v1
.end method

.method public prepareRecording(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->prepareRecording(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    return-void
.end method

.method public removeLastSegment()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->removeLastSegment()V

    return-void
.end method

.method public resetTriggerDragging()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSnapView;->resetDraggingDistance()V

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraSnapView;->mTriggerDragging:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetTriggerDragging"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraSnapView;->mTriggerDragging:Z

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 5
    iput v0, p0, Lcom/android/camera/ui/CameraSnapView;->mDraggingTriggerDistance:F

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/ui/CameraSnapView;->mHasCancelByOutside:Z

    :cond_0
    return-void
.end method

.method public resumeRecording()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->resumeRecording()V

    return-void
.end method

.method public setDurationText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->setDurationText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setParameters(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mCurrentCondition:Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    .line 3
    iget v0, p1, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->targetMode:I

    iput v0, p0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    .line 6
    iget v1, p0, Lcom/android/camera/ui/CameraSnapView;->mRotation:F

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->setRotation(F)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    sget-boolean v1, Lcom/android/camera/ui/CameraSnapView;->mSupportThunderShutterAnim:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->setSupportThunderShutterAnim(Z)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->intoPatternFromParameters(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->resetRecordingState()V

    .line 11
    iget-boolean v0, p1, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->needSnapButtonAnimation:Z

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->intoPattern(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startModeChangeAnimation()V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->intoPatternFromParameters(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    const/16 v0, 0x226

    .line 16
    iput v0, p0, Lcom/android/camera/ui/CameraSnapView;->mLongPressTime:I

    .line 17
    iget p1, p1, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->mScreenOrientation:I

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/CameraSnapView;->onScreenOrientationChanged(I)V

    return-void
.end method

.method public setRotation(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/camera/ui/CameraSnapView;->mRotation:F

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->setRotation(F)V

    :cond_0
    return-void
.end method

.method public setSnapClickEnable(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setClickEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/ui/CameraSnapView;->mEnableSnapClick:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/ui/CameraSnapView;->mSupportDraggingByStableCondition:Z

    .line 4
    iget-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    invoke-interface {p1}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->canMultiCaptureByStableCondition()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/ui/CameraSnapView;->mSupportDraggingByStableCondition:Z

    :goto_0
    return-void
.end method

.method public setSnapListener(Lcom/android/camera/ui/CameraSnapView$SnapListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    return-void
.end method

.method public setSnapNumValue(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->setSnapNumValue(I)V

    :cond_0
    return-void
.end method

.method public setSnapNumVisible(ZZ)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/ui/CameraSnapView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSnapNumVisible "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->setSnapNumVisible(ZZ)V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mViewRegionRect:Landroid/graphics/Rect;

    :cond_1
    return-void
.end method

.method public setSpecificProgress(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->setSpecificProgress(I)V

    return-void
.end method

.method public setStopButtonEnable(ZZ)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/CameraSnapView;->setSnapClickEnable(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->setStopButtonEnable(ZZ)V

    return-void
.end method

.method public showBottomPaintItem()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->showBottomPaintItem()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showCirclePaintItem()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->showCirclePaintItem()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public showPaintCenterVVItem()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->showPaintCenterVVItem()V

    return-void
.end method

.method public showRoundPaintItem()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->showRoundPaintItem()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public skipDrawCenter(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->skipDrawCenter(Z)V

    :cond_0
    return-void
.end method

.method public startRing()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08093d

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/ui/CameraSnapView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startRingAnimation()V

    return-void
.end method

.method public startSpeech()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0803df

    goto :goto_0

    :cond_0
    const v0, 0x7f0803e0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->showBitmap(Landroid/content/Context;I)V

    return-void
.end method

.method public stopRing()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSnapView;->recycleBitmap()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->stopRingAnimation()V

    return-void
.end method

.method public stopSpeech(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->clearBitmap(Z)V

    :cond_0
    return-void
.end method

.method public triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    const/16 v1, 0xa6

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbb

    if-eq v0, v1, :cond_0

    const/16 v1, 0xbd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb3

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    goto :goto_0

    .line 2
    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startRecordAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    goto :goto_0

    .line 4
    :cond_1
    :pswitch_1
    iget-boolean v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsVideoBokeh:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->mIsStart:Z

    if-nez v0, :cond_3

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startRecordAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xab
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xd4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateSnapStatus(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->setbitmap(I)V

    return-void
.end method
