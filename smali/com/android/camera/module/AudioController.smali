.class public Lcom/android/camera/module/AudioController;
.super Ljava/lang/Object;
.source "AudioController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AudioController"


# instance fields
.field public mOldControlStream:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/module/AudioController;->mOldControlStream:I

    return-void
.end method

.method public static getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 1

    const-string v0, "audio"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    return-object p0
.end method

.method public static restoreAudio(Landroid/content/Context;)V
    .locals 2

    const-string v0, "AudioController"

    const-string/jumbo v1, "restoreAudio: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0}, Lcom/android/camera/module/AudioController;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public static silenceAudio(Landroid/content/Context;)V
    .locals 3

    const-string v0, "AudioController"

    const-string/jumbo v1, "silenceAudio: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0}, Lcom/android/camera/module/AudioController;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method

.method public static stopAudio(Landroid/content/Context;)V
    .locals 3

    const-string v0, "AudioController"

    const-string/jumbo v1, "stopAudio: "

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0}, Lcom/android/camera/module/AudioController;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method


# virtual methods
.method public requestMusicSteam(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/camera/module/AudioController;->silenceAudio(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/AudioController;->mOldControlStream:I

    const/4 v0, 0x3

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    return-void
.end method

.method public restoreMusicSteam(Landroid/app/Activity;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/camera/module/AudioController;->restoreAudio(Landroid/content/Context;)V

    .line 2
    iget v0, p0, Lcom/android/camera/module/AudioController;->mOldControlStream:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    :cond_0
    return-void
.end method
