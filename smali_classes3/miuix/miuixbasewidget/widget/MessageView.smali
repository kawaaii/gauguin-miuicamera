.class public Lmiuix/miuixbasewidget/widget/MessageView;
.super Landroid/widget/LinearLayout;
.source "MessageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/miuixbasewidget/widget/MessageView$OnMessageViewCloseListener;
    }
.end annotation


# instance fields
.field public mClosable:Z

.field public mCloseBackground:Landroid/graphics/drawable/Drawable;

.field public mCloseIndex:I

.field public mOnMessageViewCloseListener:Lmiuix/miuixbasewidget/widget/MessageView$OnMessageViewCloseListener;

.field public mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lmiuix/miuixbasewidget/widget/MessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lmiuix/miuixbasewidget/widget/MessageView;->initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic access$000(Lmiuix/miuixbasewidget/widget/MessageView;)Lmiuix/miuixbasewidget/widget/MessageView$OnMessageViewCloseListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mOnMessageViewCloseListener:Lmiuix/miuixbasewidget/widget/MessageView$OnMessageViewCloseListener;

    return-object p0
.end method

.method private addCloseIcon()V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_message_view_text_margin_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 4
    sget v2, Lmiuix/miuixbasewidget/R$id;->close:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 5
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mCloseBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lmiuix/miuixbasewidget/R$string;->close:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7
    new-instance v2, Lmiuix/miuixbasewidget/widget/MessageView$1;

    invoke-direct {v2, p0}, Lmiuix/miuixbasewidget/widget/MessageView$1;-><init>(Lmiuix/miuixbasewidget/widget/MessageView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 9
    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, v0, v2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 1
    sget-object v0, Lmiuix/miuixbasewidget/R$styleable;->MessageView:[I

    sget v1, Lmiuix/miuixbasewidget/R$style;->Widget_MessageView:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 2
    sget p3, Lmiuix/miuixbasewidget/R$styleable;->MessageView_android_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 3
    sget v0, Lmiuix/miuixbasewidget/R$styleable;->MessageView_android_textColor:I

    sget v1, Lmiuix/miuixbasewidget/R$color;->miuix_appcompat_message_view_text_color_light:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 4
    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 5
    sget v1, Lmiuix/miuixbasewidget/R$styleable;->MessageView_closeBackground:I

    sget v2, Lmiuix/miuixbasewidget/R$drawable;->miuix_appcompat_ic_message_view_close_guide_light:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 6
    invoke-static {p1, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mCloseBackground:Landroid/graphics/drawable/Drawable;

    .line 7
    sget p1, Lmiuix/miuixbasewidget/R$styleable;->MessageView_closable:I

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 8
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 9
    new-instance p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mTextView:Landroid/widget/TextView;

    .line 10
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {p2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 11
    iput v2, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 12
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mTextView:Landroid/widget/TextView;

    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    .line 13
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual {v3, v5, v4, v4, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 14
    iget-object v3, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p3, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 16
    iget-object p3, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mTextView:Landroid/widget/TextView;

    .line 17
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lmiuix/miuixbasewidget/R$dimen;->miuix_appcompat_message_view_text_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 18
    invoke-virtual {p3, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 19
    iget-object p3, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 20
    iget-object p3, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    invoke-virtual {p0, p1}, Lmiuix/miuixbasewidget/widget/MessageView;->setClosable(Z)V

    const/16 p1, 0x10

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-array p1, v1, [Landroid/view/View;

    aput-object p0, p1, v4

    .line 23
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p2, v4, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p1, v2, p2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p2, v4, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p0, p2}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    return-void
.end method


# virtual methods
.method public setClosable(Z)V
    .locals 1

    .line 1
    sget v0, Lmiuix/miuixbasewidget/R$id;->close:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lmiuix/miuixbasewidget/widget/MessageView;->addCloseIcon()V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnMessageViewCloseListener(Lmiuix/miuixbasewidget/widget/MessageView$OnMessageViewCloseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/MessageView;->mOnMessageViewCloseListener:Lmiuix/miuixbasewidget/widget/MessageView$OnMessageViewCloseListener;

    return-void
.end method
