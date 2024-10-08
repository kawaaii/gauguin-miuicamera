.class public Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;
.super Lcom/android/camera/ui/drawable/CameraPaintBase;
.source "CameraZoomAdjustPaint.java"


# static fields
.field public static final ANIM_NONE:I = 0x0

.field public static final ANIM_SLIDER_BACK:I = 0x5

.field public static final ANIM_ZOOM:I = 0x1

.field public static final RECT_WIDTH:I = 0x1e

.field public static final SLIDER_IMAGE_GAP:I = 0x14


# instance fields
.field public mAnimState:I

.field public mAvaliableWidth:F

.field public mBigCircleRadius:F

.field public mBreakpointWidth:F

.field public mClearPaint:Landroid/graphics/Paint;

.field public mCurrentCircleRadius:F

.field public mDegree:I

.field public mDrawableLeft:Landroid/graphics/drawable/Drawable;

.field public mDrawableRight:Landroid/graphics/drawable/Drawable;

.field public mIsRTL:Z

.field public mLineEndPosition:Landroid/graphics/Point;

.field public mLinePaint:Landroid/graphics/Paint;

.field public mLineStartPosition:Landroid/graphics/Point;

.field public mMaxZoomRatio:F

.field public mMinZoomRatio:F

.field public mNormalCircleRadius:F

.field public mOrientation:I

.field public mSliderOriginalPosition:Landroid/graphics/Point;

.field public mSliderPaint:Landroid/graphics/Paint;

.field public mSliderPosition:Landroid/graphics/Point;

.field public mSliderTouchRect:Landroid/graphics/Rect;

.field public mSliderTouchUpPosition:Landroid/graphics/Point;

.field public mTextBaseLineY:I

.field public mTextPaint:Landroid/graphics/Paint;

.field public mViewHeight:I

.field public mViewSliderWidth:I

.field public mViewWidth:I

.field public mZoomLastColor:I

.field public mZoomLinePaint:Landroid/graphics/Paint;

.field public mZoomMidColor:I

.field public mZoomRatio:Ljava/lang/String;

.field public mZoomStartColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/CameraPaintBase;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    .line 3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    .line 4
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    .line 7
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchUpPosition:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAnimState:I

    .line 9
    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDegree:I

    .line 10
    iput-boolean p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mIsRTL:Z

    .line 11
    iput p3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewWidth:I

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0706b5

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewSliderWidth:I

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0706b6

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    const p2, 0x400b9581    # 2.181f

    .line 14
    invoke-static {p2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBreakpointWidth:F

    const p2, 0x4202eb85    # 32.73f

    .line 15
    invoke-static {p2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    const p3, 0x3fe8b439    # 1.818f

    invoke-static {p3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mNormalCircleRadius:F

    const p2, 0x421170a4    # 36.36f

    .line 16
    invoke-static {p2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    invoke-static {p3}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    int-to-float p2, p2

    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBigCircleRadius:F

    .line 17
    iget p3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mNormalCircleRadius:F

    iput p3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mCurrentCircleRadius:F

    .line 18
    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewSliderWidth:I

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr p3, v3

    sub-float/2addr v2, p3

    iput v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAvaliableWidth:F

    .line 19
    iget-object p3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v4, v3, 0x2

    iput v4, v2, Landroid/graphics/Point;->y:I

    iput v4, p3, Landroid/graphics/Point;->y:I

    .line 20
    iget v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewWidth:I

    div-int/lit8 v5, v4, 0x2

    div-int/lit8 v6, v1, 0x2

    sub-int/2addr v5, v6

    iput v5, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v5

    .line 21
    iput v1, v2, Landroid/graphics/Point;->x:I

    .line 22
    iget-object p3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    div-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/graphics/Point;->y:I

    iput v3, p3, Landroid/graphics/Point;->y:I

    .line 23
    div-int/lit8 v4, v4, 0x2

    iput v4, v1, Landroid/graphics/Point;->x:I

    iput v4, p3, Landroid/graphics/Point;->x:I

    .line 24
    iget-object p3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBigCircleRadius:F

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    invoke-virtual {p3, p2, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 25
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    .line 26
    iget p3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 p3, p3, 0x2

    iget v0, p2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int p2, v0, p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p3, p2

    sub-int/2addr p3, v0

    iput p3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextBaseLineY:I

    .line 27
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomStartColor:I

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06037e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomMidColor:I

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06037d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLastColor:I

    .line 30
    iget-boolean p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mIsRTL:Z

    const p3, 0x7f080566

    const v0, 0x7f080567

    if-eqz p2, :cond_0

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 35
    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    add-int/lit8 p2, p2, -0x14

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 p3, p3, 0x2

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 36
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v0, v0, -0x14

    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 37
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 38
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 39
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    add-int/lit8 p2, p2, 0x14

    iget p3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 p3, p3, 0x2

    .line 40
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p3, v0

    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    add-int/lit8 v0, v0, 0x14

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 41
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 42
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 43
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private updateTextAndCircle(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 4
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBigCircleRadius:F

    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mNormalCircleRadius:F

    sub-float v1, v0, v1

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mCurrentCircleRadius:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDegree:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, -0x14

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 5
    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    .line 6
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v1

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v6, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v7, v1

    iget-object v8, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 8
    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v1

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v6, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v7, v1

    iget-object v8, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 9
    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBreakpointWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v5, v1, v2

    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    sub-float v6, v1, v2

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBreakpointWidth:F

    div-float/2addr v2, v3

    add-float v7, v1, v2

    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    add-float v8, v1, v2

    iget-object v9, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mClearPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 10
    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mCurrentCircleRadius:F

    add-float/2addr v2, v4

    iget-object v5, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    sub-float/2addr v5, v4

    invoke-static {v1, v2, v5}, Lcom/android/camera/Util;->clamp(FFF)F

    move-result v1

    .line 11
    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mCurrentCircleRadius:F

    sub-float v2, v1, v2

    iget-object v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    iget v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBreakpointWidth:F

    sub-float v6, v2, v4

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    sub-float v7, v2, v4

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mCurrentCircleRadius:F

    add-float/2addr v2, v1

    iget-object v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    .line 12
    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBreakpointWidth:F

    add-float v8, v2, v3

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    add-float v9, v2, v3

    iget-object v10, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mClearPaint:Landroid/graphics/Paint;

    move-object v5, p1

    .line 13
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 14
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mCurrentCircleRadius:F

    iget-object v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 17
    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDegree:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 18
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomRatio:Ljava/lang/String;

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextBaseLineY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 21
    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDegree:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v1, v1, 0x14

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 22
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 23
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getSliderTouchRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSpeed(IF)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 1
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mNormalCircleRadius:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAvaliableWidth:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    :goto_0
    sub-float/2addr p1, p2

    .line 2
    iget p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAvaliableWidth:F

    div-float/2addr p1, p2

    const p2, 0x3dcccccd    # 0.1f

    mul-float/2addr p1, p2

    return p1
.end method

.method public initPaint(Landroid/content/Context;)V
    .locals 7

    .line 1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mClearPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mClearPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    const v1, 0x3fe8b439    # 1.818f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x80000000

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v5, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v5, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomStartColor:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    .line 23
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    const v1, 0x413a2d0e    # 11.636f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 27
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v5, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public move(Landroid/graphics/Point;F)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAnimState:I

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {p1, v1, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    .line 4
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    add-float/2addr p1, v1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineStartPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mLineEndPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {p1, v1, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->x:I

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBigCircleRadius:F

    sub-float/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBigCircleRadius:F

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v0

    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public reset()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x80000000

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 3
    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mNormalCircleRadius:F

    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mCurrentCircleRadius:F

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBigCircleRadius:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBigCircleRadius:F

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 6
    iput v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAnimState:I

    return-void
.end method

.method public setCurrentZoomRatio(F)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/android/camera/HybridZoomingSystem;->toDecimal(F)F

    move-result p1

    float-to-int v1, p1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, p1

    mul-int/lit8 v3, v1, 0xa

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :goto_0
    const-string p1, "X"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomRatio:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p1

    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomStartColor:I

    .line 7
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mZoomLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mDegree:I

    return-void
.end method

.method public setZoomRange(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mMinZoomRatio:F

    .line 2
    iput p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mMaxZoomRatio:F

    return-void
.end method

.method public startSliderBackAnimation()V
    .locals 2

    const/4 v0, 0x5

    .line 1
    iput v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAnimState:I

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchUpPosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    return-void
.end method

.method public updateSliderPositionForBackAnim(FZ)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAnimState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->updateTextAndCircle(F)V

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchUpPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderOriginalPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Landroid/graphics/Point;->x:I

    .line 4
    iget-object p2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderTouchRect:Landroid/graphics/Rect;

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBigCircleRadius:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mSliderPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mBigCircleRadius:F

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mViewHeight:I

    const/4 v4, 0x0

    invoke-virtual {p2, v1, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2

    .line 5
    iput v4, p0, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->mAnimState:I

    :cond_2
    return-void
.end method

.method public updateSliderTouchScaleAnimation(F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/zoom/CameraZoomAdjustPaint;->updateTextAndCircle(F)V

    return-void
.end method
