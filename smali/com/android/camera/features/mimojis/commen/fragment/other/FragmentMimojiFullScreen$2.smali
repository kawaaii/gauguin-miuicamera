.class public Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen$2;
.super Ljava/lang/Object;
.source "FragmentMimojiFullScreen.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;->showShareSheet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/camera/fragment/fullscreen/ShareInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen$2;->this$0:Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/camera/fragment/fullscreen/ShareInfo;Lcom/android/camera/fragment/fullscreen/ShareInfo;)I
    .locals 0

    .line 2
    iget p1, p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;->index:I

    iget p2, p2, Lcom/android/camera/fragment/fullscreen/ShareInfo;->index:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    check-cast p2, Lcom/android/camera/fragment/fullscreen/ShareInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimojis/commen/fragment/other/FragmentMimojiFullScreen$2;->compare(Lcom/android/camera/fragment/fullscreen/ShareInfo;Lcom/android/camera/fragment/fullscreen/ShareInfo;)I

    move-result p1

    return p1
.end method
