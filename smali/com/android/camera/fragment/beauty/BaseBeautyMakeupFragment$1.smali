.class public Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;
.super Ljava/lang/Object;
.source "BaseBeautyMakeupFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    iget v1, v0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedPosition:I

    invoke-static {v0, v1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$002(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;I)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    iget v1, v0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mPositionFirstItem:I

    sub-int v2, p3, v1

    iput v2, v0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedParam:I

    .line 3
    iput p3, v0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedPosition:I

    if-lt p3, v1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$100(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)I

    move-result v0

    if-gt p3, v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$200(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;Z)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    iget-object v1, v0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iget v4, v0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedParam:I

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-static {p1, p3}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$300(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;I)V

    .line 8
    :goto_0
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    iget p2, p1, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedPosition:I

    iget-object p4, p1, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mLayoutManager:Lcom/android/camera/fragment/beauty/CenterLayoutManager;

    invoke-static {p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$400(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p5

    invoke-static {p1, p2, p4, p5}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$500(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;ILcom/android/camera/fragment/beauty/CenterLayoutManager;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$000(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)I

    move-result p2

    iget-object p4, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    iget p4, p4, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->mSelectedPosition:I

    invoke-static {p1, p2, p4}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$600(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;II)V

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-static {p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$700(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/TypeItem;

    iget-boolean p1, p1, Lcom/android/camera/data/data/TypeItem;->mExpandable:Z

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    iget-object p4, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$1;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-static {p4}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->access$700(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera/data/data/TypeItem;

    iget-object p3, p3, Lcom/android/camera/data/data/TypeItem;->mKeyOrType:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->openExtraView(Landroid/view/View;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
