.class public final synthetic LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0O0/OooO0OO/OooO0O0/OooO00o/OooO0oO;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;

.field private final synthetic OooO0O0:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

.field private final synthetic OooO0OO:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0O0/OooO0OO/OooO0O0/OooO00o/OooO0oO;->OooO00o:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;

    iput-object p2, p0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0O0/OooO0OO/OooO0O0/OooO00o/OooO0oO;->OooO0O0:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iput-boolean p3, p0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0O0/OooO0OO/OooO0O0/OooO00o/OooO0oO;->OooO0OO:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0O0/OooO0OO/OooO0O0/OooO00o/OooO0oO;->OooO00o:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;

    iget-object v1, p0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0O0/OooO0OO/OooO0O0/OooO00o/OooO0oO;->OooO0O0:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    iget-boolean v2, p0, LOooO00o/OooO0O0/OooO00o/OoooOoO/OooO0O0/OooO0OO/OooO0O0/OooO00o/OooO0oO;->OooO0OO:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->OooO00o(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;Z)V

    return-void
.end method
