.class public Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;
.super Ljava/lang/Object;
.source "SearchActionModeView.java"

# interfaces
.implements Lmiuix/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/SearchActionModeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContentViewAnimationProcessor"
.end annotation


# instance fields
.field public mDimViewVisible:Z

.field public mTmpAccessibilityMode:I

.field public final synthetic this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mTmpAccessibilityMode:I

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$900(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-static {v1, v2}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1002(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;I)I

    .line 3
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-static {v1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1102(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;I)I

    .line 4
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    const/4 v2, 0x1

    if-eqz p1, :cond_5

    .line 6
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v3}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v3

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_3

    .line 7
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {v3}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    move-result-object v3

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v4}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1400(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 8
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v3}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1400(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)[I

    move-result-object v4

    aget v4, v4, v2

    invoke-static {v3, v4}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1302(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;I)I

    .line 9
    :cond_3
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {v3}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->getActionBarContainer()Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1502(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;I)I

    .line 10
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v3}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v4

    neg-int v4, v4

    invoke-static {v3, v4}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1602(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;I)I

    if-eqz v0, :cond_4

    .line 11
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v3}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1400(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)[I

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 12
    :cond_4
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1400(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)[I

    move-result-object v3

    aget v3, v3, v2

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v4}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v4}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v0, v3}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1702(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;I)I

    .line 13
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v3

    invoke-static {v0, v3}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1802(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;I)I

    goto :goto_3

    .line 14
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1900(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1900(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mDimViewVisible:Z

    .line 15
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$800(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$800(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isBlurEnable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 16
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    iget-boolean v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mDimViewVisible:Z

    if-eqz v3, :cond_7

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v3

    goto :goto_2

    :cond_7
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v3

    neg-int v3, v3

    :goto_2
    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(I)V

    goto :goto_3

    .line 17
    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v4

    invoke-virtual {v0, v4}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(I)V

    .line 18
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-virtual {v0, v3, v3}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewPadding(II)V

    .line 19
    :goto_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$2000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$2000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_4

    :cond_9
    move-object v0, v1

    .line 20
    :goto_4
    iget-object v3, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v3}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$2100(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$2100(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_a
    const/4 v3, 0x2

    if-eqz p1, :cond_c

    if-eqz v0, :cond_b

    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mTmpAccessibilityMode:I

    .line 22
    invoke-virtual {v0, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_b
    if-eqz v1, :cond_e

    .line 23
    invoke-virtual {v1, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_5

    :cond_c
    if-eqz v0, :cond_d

    .line 24
    iget p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->mTmpAccessibilityMode:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_d
    if-eqz v1, :cond_e

    .line 25
    invoke-virtual {v1, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_e
    :goto_5
    return-void
.end method

.method public onStop(Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$2000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$2000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 3
    :cond_1
    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1200(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_2
    if-eqz v0, :cond_3

    xor-int/lit8 v1, p1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 5
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v0

    if-lez v0, :cond_5

    .line 6
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(I)V

    .line 7
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    if-eqz p1, :cond_4

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v2

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewPadding(II)V

    :cond_5
    if-eqz p1, :cond_6

    .line 8
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$800(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$800(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Lmiuix/appcompat/internal/app/widget/ActionBarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/internal/app/widget/ActionBarContainer;->isBlurEnable()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 9
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(I)V

    :cond_6
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 2

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p2, p1, p2

    .line 1
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$2000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$2000(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$300(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->setContentViewTranslation(I)V

    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1700(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1800(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 4
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {p1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1500(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lmiuix/appcompat/internal/app/widget/SearchActionModeView$ContentViewAnimationProcessor;->this$0:Lmiuix/appcompat/internal/app/widget/SearchActionModeView;

    invoke-static {v1}, Lmiuix/appcompat/internal/app/widget/SearchActionModeView;->access$1600(Lmiuix/appcompat/internal/app/widget/SearchActionModeView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p2, v1

    add-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method
