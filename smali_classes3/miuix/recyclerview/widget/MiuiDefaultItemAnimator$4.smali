.class public Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$4;
.super Ljava/lang/Object;
.source "MiuiDefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

.field public final synthetic val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$4;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    iput-object p2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$4;->this$0:Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;

    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$4;->val$holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lmiuix/recyclerview/widget/MiuiBaseDefaultItemAnimator;->notifyAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
