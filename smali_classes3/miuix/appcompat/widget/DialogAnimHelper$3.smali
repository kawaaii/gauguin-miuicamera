.class public final Lmiuix/appcompat/widget/DialogAnimHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/widget/DialogAnimHelper;->executeAnim(Landroid/view/View;IIZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$listener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/widget/DialogAnimHelper$3;->val$view:Landroid/view/View;

    iput-object p2, p0, Lmiuix/appcompat/widget/DialogAnimHelper$3;->val$listener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private done()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/widget/DialogAnimHelper$3;->val$listener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;->onShowAnimComplete()V

    .line 3
    :cond_0
    invoke-static {}, Lmiuix/appcompat/widget/DialogAnimHelper;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lmiuix/appcompat/widget/DialogAnimHelper;->access$200()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lmiuix/appcompat/widget/DialogAnimHelper;->access$202(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    invoke-direct {p0}, Lmiuix/appcompat/widget/DialogAnimHelper$3;->done()V

    .line 3
    iget-object p1, p0, Lmiuix/appcompat/widget/DialogAnimHelper$3;->val$view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmiuix/appcompat/widget/DialogAnimHelper;->access$000(Landroid/view/View;I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    invoke-direct {p0}, Lmiuix/appcompat/widget/DialogAnimHelper$3;->done()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lmiuix/appcompat/widget/DialogAnimHelper$3;->val$view:Landroid/view/View;

    const-string p2, "show"

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/widget/DialogAnimHelper$3;->val$listener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;->onShowAnimStart()V

    :cond_0
    return-void
.end method
