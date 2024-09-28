.class public Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment$1;
.super Landroid/text/style/ClickableSpan;
.source "TsBeautyParamsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;->clickToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;

.field public final synthetic val$clickableToast:Lcom/android/camera/widget/ClickableToast;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;Lcom/android/camera/widget/ClickableToast;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment$1;->this$0:Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment;

    iput-object p2, p0, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment$1;->val$clickableToast:Lcom/android/camera/widget/ClickableToast;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/TsBeautyParamsFragment$1;->val$clickableToast:Lcom/android/camera/widget/ClickableToast;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xc2

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    const-string v1, "13"

    .line 4
    invoke-interface {p1, v1, v0}, Lcom/android/camera/protocol/ModeProtocol$MiBeautyProtocol;->handleMutexSpecifyBeautyType(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
