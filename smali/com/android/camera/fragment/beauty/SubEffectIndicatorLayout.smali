.class public Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;
.super Landroid/widget/LinearLayout;
.source "SubEffectIndicatorLayout.java"

# interfaces
.implements Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mOnIndicatorChangeListener:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout$IndicatorChangeListener;

.field public mSubEffectUIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/beauty/SubEffectUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Lcom/android/camera/fragment/beauty/SubEffectUI;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ColorImageView;-><init>(Landroid/content/Context;)V

    .line 2
    iget v1, p1, Lcom/android/camera/fragment/beauty/SubEffectUI;->iconRes:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/camera/fragment/beauty/SubEffectUI;->iconShadowRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-boolean v1, p1, Lcom/android/camera/fragment/beauty/SubEffectUI;->isDefault:Z

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;->mOnIndicatorChangeListener:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout$IndicatorChangeListener;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1, p1}, Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout$IndicatorChangeListener;->onIndicatorChange(Lcom/android/camera/fragment/beauty/SubEffectUI;)V

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 9
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    .line 10
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addIndicatorViews(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/beauty/SubEffectUI;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;->mSubEffectUIS:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;->mSubEffectUIS:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooOoo/OoooOOO/OooO0o;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooOoo/OoooOOO/OooO0o;-><init>(Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/beauty/SubEffectUI;

    .line 2
    iget-object v1, v0, Lcom/android/camera/fragment/beauty/SubEffectUI;->subEffectType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    instance-of v1, p1, Lcom/android/camera/ui/ColorImageView;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ColorImageView;

    if-ne v2, p1, :cond_1

    .line 5
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    .line 6
    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;->mOnIndicatorChangeListener:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout$IndicatorChangeListener;

    if-eqz p1, :cond_3

    .line 8
    invoke-interface {p1, v0}, Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout$IndicatorChangeListener;->onIndicatorChange(Lcom/android/camera/fragment/beauty/SubEffectUI;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAllIndicatorViews()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void
.end method

.method public setCheck(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ColorImageView;

    .line 4
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/beauty/SubEffectUI;

    .line 6
    iget-object v3, v2, Lcom/android/camera/fragment/beauty/SubEffectUI;->subEffectType:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;->mOnIndicatorChangeListener:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout$IndicatorChangeListener;

    if-eqz v1, :cond_3

    .line 9
    invoke-interface {v1, v2}, Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout$IndicatorChangeListener;->onIndicatorChange(Lcom/android/camera/fragment/beauty/SubEffectUI;)V

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    .line 10
    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ColorImageView;->setColorAndRefresh(I)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setOnIndicatorChangeListener(Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout$IndicatorChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/SubEffectIndicatorLayout;->mOnIndicatorChangeListener:Lcom/android/camera/fragment/beauty/ISubEffectIndicatorLayout$IndicatorChangeListener;

    return-void
.end method
