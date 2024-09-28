.class public Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentFilmDreamProcess.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/protocol/ModeProtocol$FilmDreamProcess;
.implements Lcom/android/camera/ui/CameraSnapView$SnapListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mBottomActionView:Landroid/view/ViewGroup;

.field public mBottomLayout:Landroid/view/ViewGroup;

.field public mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

.field public mCombineProgress:Landroid/widget/ImageView;

.field public mConcatProgress:Landroid/widget/ProgressBar;

.field public mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

.field public mHandler:Landroid/os/Handler;

.field public mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

.field public mPagerGridSnapHelper:Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

.field public mPaused:Z

.field public mPendingShare:Z

.field public mPreviewBack:Landroid/widget/ImageView;

.field public mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

.field public mPreviewCover:Landroid/widget/FrameLayout;

.field public mPreviewLayout:Landroid/widget/FrameLayout;

.field public mPreviewNext:Landroid/widget/ImageView;

.field public mPreviewPrevious:Landroid/widget/ImageView;

.field public mPreviewShare:Landroid/widget/ImageView;

.field public mPreviewStart:Landroid/widget/ImageView;

.field public mPreviewThumb:Landroid/widget/ImageView;

.field public mPreviewTime:Landroid/widget/TextView;

.field public mPreviewTimeLayout:Landroid/widget/FrameLayout;

.field public mProcessingStarted:Z

.field public mSaveContentValues:Landroid/content/ContentValues;

.field public mSavedPath:Ljava/lang/String;

.field public mSavedUri:Landroid/net/Uri;

.field public mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

.field public mShareProgress:Landroid/widget/ProgressBar;

.field public mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

.field public mThumbnailOrientation:I

.field public mVVDialog:Landroid/view/View;

.field public mVVDialogCancel:Landroid/widget/TextView;

.field public mVVDialogConfirm:Landroid/widget/TextView;

.field public mVVDialogMessage:Landroid/widget/TextView;

.field public mVVShare:Landroid/view/View;

.field public mVVShareMessage:Landroid/widget/TextView;

.field public mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

.field public mWaitingResultSurfaceTexture:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mProcessingStarted:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->hideVVDialog()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPendingShare:Z

    return p0
.end method

.method public static synthetic access$1000(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewStart:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewThumb:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)Lcom/android/camera/fragment/vv/page/PageIndicatorView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->hideShareSheet()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)Lcom/android/camera/storage/mediastore/VideoFile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    return-object p0
.end method

.method public static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$400(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->stopSegmentPreview(Z)V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mWaitingResultSurfaceTexture:Z

    return p0
.end method

.method public static synthetic access$502(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mWaitingResultSurfaceTexture:Z

    return p1
.end method

.method public static synthetic access$600(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->startPlay(Landroid/view/Surface;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVShare:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVDialog:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->pausePlay(ZZ)V

    return-void
.end method

.method private animateIn(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    invoke-direct {v0, p1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private animateOut(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    invoke-direct {v0, p1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private checkAndShare()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mSavedUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->showShareSheet()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hideShareSheet()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVShare:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVShare:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private hideVVDialog()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVDialog:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initHandler()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$11;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$11;-><init>(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)V

    iput-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initTextureView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/TextureVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    .line 2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v2

    .line 4
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5
    iget v3, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 6
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 7
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 8
    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 9
    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewCover:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TextureVideoView;->setLoop(Z)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TextureVideoView;->setClearSurface(Z)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TextureVideoView;->setScaleType(I)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    new-instance v1, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$5;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$5;-><init>(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TextureVideoView;->setMediaPlayerCallback(Lcom/android/camera/ui/TextureVideoView$MediaPlayerCallback;)V

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    new-instance v1, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$6;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$6;-><init>(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private intoResultPreview()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mWaitingResultSurfaceTexture:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->isFullSegmentsPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startConcat"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->updateThumbnail()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->updateState(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {v0}, Lcom/android/camera/ui/TextureVideoView;->getPreviewSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->startPlay(Landroid/view/Surface;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mWaitingResultSurfaceTexture:Z

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showFoldTips(Landroid/app/Activity;I)Lio/reactivex/disposables/Disposable;

    :cond_2
    :goto_1
    return-void
.end method

.method private isFullSegmentsPlaying()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->getCurrentState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onProcessingSateChanged(I)V
    .locals 12

    .line 1
    sget-object v0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "newState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f110054

    const v1, 0x3ec28f5c    # 0.38f

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 2
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->updateThumbnail()V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewThumb:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewTimeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewNext:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewBack:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->animateIn(Landroid/view/View;)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewShare:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->animateIn(Landroid/view/View;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    goto/16 :goto_1

    .line 15
    :pswitch_1
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewThumb:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 18
    iget-boolean p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPendingShare:Z

    if-eqz p1, :cond_2

    .line 19
    iput-boolean v4, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPendingShare:Z

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_1

    .line 22
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->onResultCombineFinished(Z)V

    goto/16 :goto_1

    .line 23
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->onResultCombineFinished(Z)V

    goto/16 :goto_1

    .line 24
    :pswitch_4
    iget-boolean p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPendingShare:Z

    if-eqz p1, :cond_0

    .line 25
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_1

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    move-object v5, p1

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 31
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 32
    invoke-virtual {p1, v2}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    const/4 v0, -0x1

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 34
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 35
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 36
    :pswitch_5
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewThumb:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 39
    :pswitch_6
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 41
    :pswitch_7
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewTimeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 42
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewNext:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 43
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewBack:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->animateIn(Landroid/view/View;)V

    .line 44
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewShare:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->animateIn(Landroid/view/View;)V

    .line 45
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 46
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 48
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    .line 49
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 50
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    goto :goto_0

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->animateIn(Landroid/view/View;)V

    .line 53
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p1, v4}, Landroid/view/TextureView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private pausePlay(ZZ)V
    .locals 0

    if-eqz p1, :cond_2

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->getCurrentState()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->updateState(I)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->getCurrentState()I

    move-result p1

    const/4 p2, 0x3

    if-lt p1, p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->updateState(I)V

    goto :goto_0

    :cond_1
    return-void

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->getCurrentState()I

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->updateState(I)V

    .line 7
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0x3a2

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$FilmDreamConfig;

    if-eqz p1, :cond_4

    .line 8
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$LiveVVExternal;->pausePlay()V

    :cond_4
    return-void
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Lcom/android/camera/module/loader/NullHolder;
    .locals 7

    if-nez p0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/android/camera/module/loader/StrongNullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 2
    invoke-static {p0}, Lcom/android/camera/module/loader/StrongNullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 5
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    int-to-float v0, v3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float v2, v4

    div-float/2addr v2, v1

    .line 6
    invoke-virtual {v5, p1, v0, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 p1, 0x0

    move-object v0, p0

    .line 7
    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq p0, v0, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object p0, v0

    :cond_2
    move-object p1, p0

    goto :goto_0

    .line 9
    :catch_0
    sget-object p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "rotate out of memory"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :catch_1
    :goto_0
    invoke-static {p1}, Lcom/android/camera/module/loader/StrongNullHolder;->ofNullable(Ljava/lang/Object;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method

.method private showShareSheet()V
    .locals 12

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPendingShare:Z

    .line 2
    iget-boolean v1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPaused:Z

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, v0, v0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->pausePlay(ZZ)V

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mSavedPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mSavedUri:Landroid/net/Uri;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/Util;->getShareMediaIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/high16 v2, 0x10000

    .line 6
    invoke-virtual {v7, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    .line 8
    :cond_1
    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v3, 0x4

    div-int/lit8 v10, v2, 0x4

    .line 9
    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    const/16 v11, 0x8

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/camera/fragment/vv/VVShareAdapter;->getItemCount()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v2, v5, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/vv/VVShareAdapter;->setShareInfoList(Ljava/util/List;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 12
    :cond_3
    :goto_0
    new-instance v2, Lcom/android/camera/fragment/vv/VVShareAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v5, v2

    move-object v8, v1

    move-object v9, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/camera/fragment/vv/VVShareAdapter;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;Landroid/view/View$OnClickListener;I)V

    iput-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    .line 13
    new-instance v2, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;

    const/4 v5, 0x2

    invoke-direct {v2, v5, v3, v4}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;-><init>(III)V

    .line 14
    new-instance v3, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$9;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$9;-><init>(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager;->setPageListener(Lcom/android/camera/fragment/vv/page/PagerGridLayoutManager$PageListener;)V

    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x41000000    # 8.0f

    div-float/2addr v1, v3

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    .line 16
    iget-object v3, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    invoke-virtual {v3, v1}, Lcom/android/camera/fragment/vv/page/PageIndicatorView;->initIndicator(I)V

    if-gt v1, v4, :cond_4

    .line 17
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 18
    :cond_4
    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 19
    :goto_1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPagerGridSnapHelper:Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

    if-nez v0, :cond_5

    .line 20
    new-instance v0, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPagerGridSnapHelper:Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

    .line 21
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 22
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPagerGridSnapHelper:Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;

    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/vv/page/PagerGridSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 23
    :cond_5
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mShareAdapter:Lcom/android/camera/fragment/vv/VVShareAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 24
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVShareMessage:Landroid/widget/TextView;

    const v1, 0x7f120924

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 25
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVShareMessage:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$10;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$10;-><init>(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    :goto_2
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVShare:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void

    .line 28
    :cond_6
    :goto_3
    sget-object v0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "no IntentActivities"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startPlay(Landroid/view/Surface;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->isFullSegmentsPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPaused:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$FilmDreamConfig;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$LiveVVExternal;->startPlay(Landroid/view/Surface;)V

    :cond_2
    return-void
.end method

.method private startSave()V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startSave"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mWaitingResultSurfaceTexture:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->getCurrentState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->updateState(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mSaveContentValues:Landroid/content/ContentValues;

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$4;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$4;-><init>(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;Ljava/lang/String;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    .line 7
    invoke-virtual {v0, v1}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_2
    :goto_0
    return-void
.end method

.method private stopSegmentPreview(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    invoke-virtual {p1}, Lcom/android/camera/ui/TextureVideoView;->stop()V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mBottomActionView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateThumbnail()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->getTempVideoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/android/camera/FileCompat;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOoo/OooooO0/OooO0O0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooOoo/OooooO0/OooO0O0;-><init>(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    .line 5
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 6
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooOoo/OooooO0/OooO00o;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooOoo/OooooO0/OooO00o;-><init>(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)V

    .line 7
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_2
    :goto_1
    return-void
.end method

.method private updateUIRotate(IZ)V
    .locals 6

    if-eqz p2, :cond_3

    .line 1
    iget-object p2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p2}, Landroid/view/View;->getRotation()F

    move-result p2

    float-to-int p2, p2

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewStart:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewBack:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewShare:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewNext:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVDialog:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVShare:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v4, 0x1

    aput p1, v2, v4

    .line 11
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 12
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 13
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 14
    new-instance v5, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$1;

    invoke-direct {v5, p0, v0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$1;-><init>(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;Ljava/util/List;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eq p2, v0, :cond_1

    new-array p1, v1, [I

    aput p2, p1, v3

    aput v0, p1, v4

    .line 15
    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 16
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    const/16 v0, 0xb4

    const/16 v5, 0x10e

    if-eq p1, v0, :cond_2

    if-ne p1, v5, :cond_5

    :cond_2
    if-eq p2, v5, :cond_5

    new-array p1, v1, [I

    aput p2, p1, v3

    aput v5, p1, v4

    .line 17
    invoke-virtual {v2, p1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 18
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftBothLandScape()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewStart:Landroid/widget/ImageView;

    const/high16 p2, 0x42b40000    # 90.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/CameraSnapView;->setRotation(F)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewNext:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVDialog:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 27
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVShare:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 28
    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewStart:Landroid/widget/ImageView;

    const/high16 p2, 0x43870000    # 270.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 29
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/CameraSnapView;->setRotation(F)V

    .line 30
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 32
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 33
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewNext:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 34
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVDialog:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 35
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVShare:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Ljava/lang/String;)Lcom/android/camera/module/loader/NullHolder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mThumbnailOrientation:I

    invoke-static {p1, v0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->rotateBitmap(Landroid/graphics/Bitmap;I)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p1

    return-object p1
.end method

.method public synthetic OooO00o(Lcom/android/camera/data/observeable/RxData$DataWrap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/data/observeable/RxData$DataWrap;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->onProcessingSateChanged(I)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/module/loader/NullHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    invoke-interface {p1}, Lcom/android/camera/module/loader/NullHolder;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {p1}, Lcom/android/camera/module/loader/NullHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public canMultiCaptureByRunningCondition()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canMultiCaptureByStableCondition()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canSnap()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getFragmentInto()I
    .locals 1

    const v0, 0xfffff5

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0082

    return v0
.end method

.method public getSaveContentValues()Landroid/content/ContentValues;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mSaveContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getSaveVideoFile()Lcom/android/camera/storage/mediastore/VideoFile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    return-object v0
.end method

.method public getTimeValue()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->getTotalTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x2710

    invoke-static/range {v1 .. v6}, Lcom/android/camera/Util;->clamp(JJJ)J

    move-result-wide v0

    const/4 v2, 0x0

    .line 3
    invoke-static {v0, v1, v2, v2}, Lcom/android/camera/Util;->millisecondToTimeString(JZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 8

    const v0, 0x7f0a0197

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewTimeLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0196

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewTime:Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewTimeLayout:Landroid/widget/FrameLayout;

    .line 5
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6
    invoke-static {}, Lcom/android/camera/display/Display;->getTopMargin()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 7
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 8
    invoke-static {}, Lcom/android/camera/display/Display;->getTopBarHeight()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0

    .line 9
    :cond_0
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewTimeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f0a018e

    .line 11
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0a0198

    .line 12
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewCover:Landroid/widget/FrameLayout;

    const v2, 0x7f0a018c

    .line 13
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    const v2, 0x7f0a0199

    .line 14
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mShareProgress:Landroid/widget/ProgressBar;

    const v2, 0x7f0a0193

    .line 15
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/CameraSnapView;

    iput-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    .line 16
    invoke-virtual {v2, p0}, Lcom/android/camera/ui/CameraSnapView;->setSnapListener(Lcom/android/camera/ui/CameraSnapView$SnapListener;)V

    const v2, 0x7f0a0190

    .line 17
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCombineProgress:Landroid/widget/ImageView;

    const v2, 0x7f0a0192

    .line 18
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    const v2, 0x7f0a018d

    .line 19
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewBack:Landroid/widget/ImageView;

    const v2, 0x7f0a0194

    .line 20
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewShare:Landroid/widget/ImageView;

    const v2, 0x7f0a0191

    .line 21
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewStart:Landroid/widget/ImageView;

    const v2, 0x7f0a0195

    .line 22
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewThumb:Landroid/widget/ImageView;

    const v2, 0x7f0a018f

    .line 23
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewNext:Landroid/widget/ImageView;

    const v2, 0x7f0a04a9

    .line 24
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVDialog:Landroid/view/View;

    const v3, 0x7f0a04ad

    .line 25
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVDialogMessage:Landroid/widget/TextView;

    .line 26
    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVDialog:Landroid/view/View;

    const v3, 0x7f0a04af

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVDialogConfirm:Landroid/widget/TextView;

    .line 27
    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVDialog:Landroid/view/View;

    const v3, 0x7f0a04ae

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVDialogCancel:Landroid/widget/TextView;

    const v2, 0x7f0a04d7

    .line 28
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVShare:Landroid/view/View;

    const v3, 0x7f0a04d8

    .line 29
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVShareMessage:Landroid/widget/TextView;

    .line 30
    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVShare:Landroid/view/View;

    const v3, 0x7f0a04da

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mShareRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 32
    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVShare:Landroid/view/View;

    const v3, 0x7f0a04db

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    iput-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPageIndicatorView:Lcom/android/camera/fragment/vv/page/PageIndicatorView;

    .line 33
    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewNext:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewTimeLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x4

    new-array v3, v2, [Landroid/view/View;

    .line 40
    iget-object v5, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewBack:Landroid/widget/ImageView;

    aput-object v5, v3, v4

    iget-object v5, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewShare:Landroid/widget/ImageView;

    aput-object v5, v3, v0

    iget-object v5, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewStart:Landroid/widget/ImageView;

    const/4 v6, 0x2

    aput-object v5, v3, v6

    iget-object v5, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewNext:Landroid/widget/ImageView;

    const/4 v7, 0x3

    aput-object v5, v3, v7

    invoke-static {v3}, Lcom/android/camera/animation/FolmeUtils;->touchScaleTint([Landroid/view/View;)V

    new-array v3, v0, [Landroid/view/View;

    .line 41
    iget-object v5, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/android/camera/animation/FolmeUtils;->touchScale([Landroid/view/View;)V

    new-array v3, v7, [Landroid/view/View;

    .line 42
    iget-object v5, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVDialogCancel:Landroid/widget/TextView;

    aput-object v5, v3, v4

    iget-object v5, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVDialogConfirm:Landroid/widget/TextView;

    aput-object v5, v3, v0

    iget-object v5, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVShareMessage:Landroid/widget/TextView;

    aput-object v5, v3, v6

    invoke-static {v3}, Lcom/android/camera/animation/FolmeUtils;->touchDialogButtonTint([Landroid/view/View;)V

    const v3, 0x7f0a04c1

    .line 43
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mBottomActionView:Landroid/view/ViewGroup;

    const v3, 0x7f0a04c2

    .line 44
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mBottomLayout:Landroid/view/ViewGroup;

    .line 45
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mBottomActionView:Landroid/view/ViewGroup;

    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 47
    iget-object v3, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mBottomLayout:Landroid/view/ViewGroup;

    .line 48
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 49
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 50
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 51
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFatAlignBottom()I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 52
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getFatAlignHorizontal()I

    move-result p1

    new-array v2, v0, [Landroid/view/View;

    .line 53
    iget-object v3, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewBack:Landroid/widget/ImageView;

    aput-object v3, v2, v4

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/fragment/BaseFragment;->alignSnapLeft(I[Landroid/view/View;)V

    new-array v2, v6, [Landroid/view/View;

    .line 54
    iget-object v3, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewShare:Landroid/widget/ImageView;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object v3, v2, v0

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/fragment/BaseFragment;->alignSnapRight(I[Landroid/view/View;)V

    goto :goto_1

    .line 55
    :cond_1
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomHeight()I

    move-result v5

    iput v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 56
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomBarHeight()I

    move-result p1

    int-to-float p1, p1

    const v5, 0x3f333333    # 0.7f

    mul-float/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 57
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomMargin()I

    move-result p1

    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 58
    invoke-static {}, Lcom/android/camera/display/Display;->getBottomBarHeight()I

    move-result p1

    int-to-float p1, p1

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 59
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->getThinAlignHorizontal()I

    move-result p1

    new-array v3, v0, [Landroid/view/View;

    .line 61
    iget-object v5, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewBack:Landroid/widget/ImageView;

    aput-object v5, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/android/camera/fragment/BaseFragment;->alignSnapLeft(I[Landroid/view/View;)V

    new-array v3, v6, [Landroid/view/View;

    .line 62
    iget-object v5, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewShare:Landroid/widget/ImageView;

    aput-object v5, v3, v4

    iget-object v5, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object v5, v3, v0

    invoke-virtual {p0, p1, v3}, Lcom/android/camera/fragment/BaseFragment;->alignSnapRight(I[Landroid/view/View;)V

    new-array p1, v2, [Landroid/view/View;

    .line 63
    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewBack:Landroid/widget/ImageView;

    aput-object v2, p1, v4

    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewShare:Landroid/widget/ImageView;

    aput-object v2, p1, v0

    iget-object v2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mShareProgress:Landroid/widget/ProgressBar;

    aput-object v2, p1, v6

    aput-object v2, p1, v7

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/fragment/BaseFragment;->initViewBackground(Z[Landroid/view/View;)V

    .line 64
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v0, Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/observeable/FilmDreamProcessing;

    iput-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    .line 65
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooOoo/OooooO0/OooO0OO;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooOoo/OooooO0/OooO0OO;-><init>(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)V

    invoke-virtual {p1, p0, v0}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->startObservable(Landroidx/lifecycle/LifecycleOwner;Lio/reactivex/functions/Consumer;)V

    .line 66
    iget p1, v1, Landroid/graphics/Rect;->top:I

    .line 67
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 68
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v1

    sub-int/2addr v1, p1

    sub-int/2addr v1, v0

    sub-int/2addr p1, v1

    .line 69
    div-int/2addr p1, v6

    .line 70
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 71
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 72
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVShare:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 73
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 74
    invoke-virtual {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->prepare()V

    .line 75
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v6}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->provideAnimateElement(ILjava/util/List;I)V

    return-void
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    return-void
.end method

.method public onBackEvent(I)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mTextureVideoView:Lcom/android/camera/ui/TextureVideoView;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/ui/TextureVideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->stopSegmentPreview(Z)V

    return v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->hideVVDialog()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->hideShareSheet()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCombineProgress:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mShareProgress:Landroid/widget/ProgressBar;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a022e

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVShare:Landroid/view/View;

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 6
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 7
    :sswitch_0
    sget-object v0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick: live_share_item"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->hideShareSheet()Z

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 10
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mSavedUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mSavedPath:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->startShareMedia(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 11
    :sswitch_1
    sget-object p1, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: film_dream_preview_share"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "value_film_dream_click_play_share"

    .line 12
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmDreamClick(Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->checkAndShare()Z

    move-result p1

    if-nez p1, :cond_4

    .line 14
    iput-boolean v1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPendingShare:Z

    .line 15
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->startSave()V

    goto :goto_0

    .line 16
    :sswitch_2
    sget-object p1, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: film_dream_preview_save"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "value_film_dream_click_play_save"

    .line 17
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmDreamClick(Ljava/lang/String;)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mSavedUri:Landroid/net/Uri;

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->quitLiveRecordPreview(Z)V

    goto :goto_0

    .line 20
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->startSave()V

    goto :goto_0

    .line 21
    :sswitch_3
    sget-object p1, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: film_dream_preview_play"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->resumePlay()V

    goto :goto_0

    .line 23
    :sswitch_4
    sget-object p1, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: film_dream_preview_back"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->showExitConfirm()V

    :cond_4
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a018d -> :sswitch_4
        0x7f0a0191 -> :sswitch_3
        0x7f0a0192 -> :sswitch_2
        0x7f0a0194 -> :sswitch_1
        0x7f0a022e -> :sswitch_0
    .end sparse-switch
.end method

.method public onCombinePrepare(Landroid/content/ContentValues;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mSavedUri:Landroid/net/Uri;

    .line 2
    iput-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mSaveContentValues:Landroid/content/ContentValues;

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->initHandler()V

    .line 4
    new-instance p1, Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/camera/storage/mediastore/VideoFile;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/android/camera/storage/mediastore/VideoFile;->initialize(ZLandroid/content/Intent;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mSaveContentValues:Landroid/content/ContentValues;

    invoke-virtual {p1, v0}, Lcom/android/camera/storage/mediastore/VideoFile;->setContentValues(Landroid/content/ContentValues;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method

.method public onKeyCodeCamera()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->onSnapClick()V

    return-void
.end method

.method public onLiveSaveToLocalFinished(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mSavedUri:Landroid/net/Uri;

    .line 2
    iput-object p2, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mSavedPath:Ljava/lang/String;

    .line 3
    iget-boolean p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPendingShare:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewShare:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mShareProgress:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->showShareSheet()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPaused:Z

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->pausePlay(ZZ)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->hideVVDialog()Z

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->hideShareSheet()Z

    return-void
.end method

.method public onResultCombineFinished(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "combineFinished "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPendingShare:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 3
    sget-object p1, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->TAG:Ljava/lang/String;

    const-string v0, "combineFinished and share"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v1, 0xd4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    check-cast p1, Lcom/android/camera/module/FilmDreamModule;

    .line 8
    invoke-virtual {p1}, Lcom/android/camera/module/FilmDreamModule;->startSaveToLocal()V

    return-void

    .line 9
    :cond_1
    :goto_0
    sget-object p1, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->TAG:Ljava/lang/String;

    const-string v0, "combineSuccess and share is not allowed!!!"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_2
    sget-object p1, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->TAG:Ljava/lang/String;

    const-string v0, "combineFinished and finish"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$8;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$8;-><init>(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResultPreviewFinished(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$7;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$7;-><init>(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPaused:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->getCurrentState()I

    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->onProcessingSateChanged(I)V

    :cond_0
    return-void
.end method

.method public onSnapClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCombineProgress:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mShareProgress:Landroid/widget/ProgressBar;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewNext:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewNext:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    return-void

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    if-nez v0, :cond_3

    return-void

    .line 9
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 10
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/IUserEventMgr;->isIgnoreTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrameAvailable()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 12
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/16 v1, 0xa

    .line 13
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)Z

    :cond_6
    :goto_0
    return-void
.end method

.method public onSnapDragging()V
    .locals 0

    return-void
.end method

.method public onSnapLongPress()V
    .locals 0

    return-void
.end method

.method public onSnapLongPressCancelIn()V
    .locals 0

    return-void
.end method

.method public onSnapLongPressCancelOut()V
    .locals 0

    return-void
.end method

.method public onSnapPrepare()V
    .locals 0

    return-void
.end method

.method public onTrackSnapMissTaken(J)V
    .locals 0

    return-void
.end method

.method public onTrackSnapTaken(J)V
    .locals 0

    return-void
.end method

.method public prepare()V
    .locals 2

    const/16 v0, 0xd4

    .line 1
    iput v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v1}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->create(I)Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraSnapView;->setParameters(Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->onTimeOut()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewCombine:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewBack:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewShare:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewStart:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewThumb:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPreviewNext:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->initTextureView()V

    return-void
.end method

.method public processingFinish()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const v1, 0x7f1200b1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public processingPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->pauseRecording()V

    return-void
.end method

.method public processingPrepare()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-static {v1, v0, v2, v1, v1}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->prepareRecording(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    return-void
.end method

.method public processingStart()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mProcessingStarted:Z

    .line 2
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v2, 0x0

    .line 3
    invoke-static {v2, v1, v0, v2, v2}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->generate(ZIZZZ)Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/fragment/bottom/BottomAnimationConfig;->configVariables()Lcom/android/camera/fragment/bottom/BottomAnimationConfig;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(Lcom/android/camera/fragment/bottom/BottomAnimationConfig;)V

    .line 6
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    const v1, 0x7f1200b7

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->updateUIRotate(IZ)V

    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->updateUIRotate(IZ)V

    return-void
.end method

.method public quitLiveRecordPreview(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mConcatProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCombineProgress:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mShareProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_2
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0, v0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->pausePlay(ZZ)V

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-nez v0, :cond_3

    .line 10
    sget-object p1, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->TAG:Ljava/lang/String;

    const-string v0, "concat error, action null"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 11
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewDoneClicked()V

    goto :goto_0

    .line 12
    :cond_4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    :goto_0
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0x3a3

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public resumePlay()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mPaused:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->isFullSegmentsPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->getCurrentState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->intoResultPreview()V

    return-void

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a2

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$FilmDreamConfig;

    if-nez v0, :cond_3

    .line 6
    sget-object v0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resumePlay failed, filmDreamConfig is null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_3
    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->updateState(I)V

    .line 8
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveVVExternal;->resumePlay()V

    return-void
.end method

.method public setThumbnailOrientation(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    neg-int p1, p1

    .line 2
    iput p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mThumbnailOrientation:I

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mThumbnailOrientation:I

    :goto_0
    return-void
.end method

.method public showExitConfirm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mFilmDreamProcessing:Lcom/android/camera/data/observeable/FilmDreamProcessing;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/FilmDreamProcessing;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "value_film_dream_exit_preview"

    .line 2
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmDreamClick(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->quitLiveRecordPreview(Z)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVDialogMessage:Landroid/widget/TextView;

    const v1, 0x7f120488

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVDialogConfirm:Landroid/widget/TextView;

    const v1, 0x7f120487

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVDialogCancel:Landroid/widget/TextView;

    const v1, 0x7f120924

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVDialogConfirm:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$2;-><init>(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVDialogCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$3;-><init>(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    new-instance v0, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mVVDialog:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    const/16 v0, 0x3a3

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 3
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    return-void
.end method

.method public updateRecordingTime(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->mCameraSnapView:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraSnapView;->setDurationText(Ljava/lang/String;)V

    return-void
.end method
