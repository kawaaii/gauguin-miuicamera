.class public Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator;->animateChangeImpl(Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator;

.field public final synthetic val$changeInfo:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$ChangeInfo;

.field public final synthetic val$newView:Landroid/view/View;

.field public final synthetic val$newViewAnimation:Landroid/view/ViewPropertyAnimator;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator;Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$8;->this$0:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator;

    iput-object p2, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$8;->val$changeInfo:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$8;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$8;->val$newViewAnimation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$8;->val$newView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$8;->val$newView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$8;->this$0:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$8;->val$changeInfo:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$8;->this$0:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator;

    iget-object p1, p1, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$8;->val$changeInfo:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$8;->this$0:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$8;->this$0:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$8;->val$changeInfo:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
