.class public Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder$1;
.super Ljava/lang/Object;
.source "EffectItemAdapter.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;->bindEffectIndex(ILcom/android/camera/data/data/ComponentDataItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder$1;->this$1:Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder$1;->this$1:Lcom/android/camera/fragment/EffectItemAdapter$EffectRealtimeItemHolder;

    iget-object p1, p1, Lcom/android/camera/fragment/EffectItemAdapter$EffectItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
