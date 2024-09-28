.class public Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "PrivacyWatermarkEditActivity.java"

# interfaces
.implements Lcom/android/camera/privacywatermark/EditHistoryAdapter$EventListener;


# static fields
.field public static final MAX_EDIT_HISTORY:I = 0xa


# instance fields
.field public mButtonClearHistory:Landroid/widget/TextView;

.field public mButtonSave:Landroid/widget/ImageButton;

.field public mCountTip:Landroid/widget/TextView;

.field public mEditView:Landroid/widget/EditText;

.field public final mGson:Lcom/google/gson/Gson;

.field public mHistoryAdapter:Lcom/android/camera/privacywatermark/EditHistoryAdapter;

.field public mHistoryLabel:Landroid/widget/TextView;

.field public mHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mGson:Lcom/google/gson/Gson;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->updateEditState(Ljava/lang/String;)V

    return-void
.end method

.method private clearHistory()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryAdapter:Lcom/android/camera/privacywatermark/EditHistoryAdapter;

    iget-object v1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/camera/privacywatermark/EditHistoryAdapter;->submitList(Ljava/util/List;)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->toggleHistoryView()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mGson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setPrivacyWatermarkEditHistory(Ljava/lang/String;)V

    return-void
.end method

.method private isTextBlank(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private save(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0oO;->OooO00o()LOooO00o/OooO0Oo/OooO00o/OooO0oO;

    move-result-object v0

    invoke-virtual {v0, p1}, LOooO00o/OooO0Oo/OooO00o/OooO0oO;->OooO00o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->isTextBlank(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPrivacyWatermark()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setPrivacyWatermark(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setPrivacyWatermarkEnabled(Z)V

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->updateHistory(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const p1, 0x7f12033d

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 9
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private toggleHistoryView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mButtonClearHistory:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mButtonClearHistory:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateEditState(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->isTextBlank(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mButtonSave:Landroid/widget/ImageButton;

    const v3, 0x7f0805b8

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mButtonSave:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mButtonSave:Landroid/widget/ImageButton;

    const v3, 0x7f0805b7

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mButtonSave:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mCountTip:Landroid/widget/TextView;

    const v3, 0x7f120a1b

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0b002e

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    .line 9
    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateHistory(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mGson:Lcom/google/gson/Gson;

    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->setPrivacyWatermarkEditHistory(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public synthetic OooO00o(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    if-ne p1, p2, :cond_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->isTextBlank(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->save(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic OooO0O0(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->save(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic OooO0OO(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->clearHistory()V

    .line 2
    invoke-direct {p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->toggleHistoryView()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0021

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera/ui/privacylogo/PrivacyLogoUtils;->getPrivacyLogoWrappedLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->isStartActivityWhenLocked(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/camera/Util;->isFromSecureKeyguard(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mGson:Lcom/google/gson/Gson;

    .line 6
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPrivacyWatermarkEditHistory()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity$1;

    invoke-direct {v1, p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity$1;-><init>(Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;)V

    .line 7
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 8
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    const p1, 0x7f0a00ad

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    const v0, 0x7f0a00ae

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mButtonSave:Landroid/widget/ImageButton;

    const v0, 0x7f0a0149

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    const v0, 0x7f0a00fd

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mCountTip:Landroid/widget/TextView;

    const v0, 0x7f0a01c5

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryLabel:Landroid/widget/TextView;

    const v0, 0x7f0a00ac

    .line 14
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mButtonClearHistory:Landroid/widget/TextView;

    .line 15
    new-instance v0, LOooO00o/OooO0O0/OooO00o/Ooooooo/OooO0OO;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/Ooooooo/OooO0OO;-><init>(Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mButtonSave:Landroid/widget/ImageButton;

    new-instance v0, LOooO00o/OooO0O0/OooO00o/Ooooooo/OooO0O0;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/Ooooooo/OooO0O0;-><init>(Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    new-instance v0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity$2;

    invoke-direct {v0, p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity$2;-><init>(Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    new-instance v0, LOooO00o/OooO0O0/OooO00o/Ooooooo/OooO0Oo;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/Ooooooo/OooO0Oo;-><init>(Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mButtonClearHistory:Landroid/widget/TextView;

    new-instance v0, LOooO00o/OooO0O0/OooO00o/Ooooooo/OooO0o0;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/Ooooooo/OooO0o0;-><init>(Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    invoke-direct {p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->toggleHistoryView()V

    .line 21
    new-instance p1, Lcom/android/camera/privacywatermark/EditHistoryAdapter;

    invoke-direct {p1}, Lcom/android/camera/privacywatermark/EditHistoryAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryAdapter:Lcom/android/camera/privacywatermark/EditHistoryAdapter;

    .line 22
    invoke-virtual {p1, p0}, Lcom/android/camera/privacywatermark/EditHistoryAdapter;->setEventListener(Lcom/android/camera/privacywatermark/EditHistoryAdapter$EventListener;)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryAdapter:Lcom/android/camera/privacywatermark/EditHistoryAdapter;

    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/android/camera/privacywatermark/EditHistoryAdapter;->submitList(Ljava/util/List;)V

    const p1, 0x7f0a01c6

    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 26
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mHistoryAdapter:Lcom/android/camera/privacywatermark/EditHistoryAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getPrivacyWatermark()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public onItemClick(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;->mEditView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    return-void
.end method
