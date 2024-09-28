.class public Lcom/android/camera/display/DisplayAdapter;
.super Ljava/lang/Object;
.source "DisplayAdapter.java"

# interfaces
.implements Lcom/android/camera/display/IDisplayRect;


# static fields
.field public static final TAG:Ljava/lang/String; = "DisplayAdapter"


# instance fields
.field public mDisplayRect:Lcom/android/camera/display/IDisplayRect;

.field public final mParameter:Lcom/android/camera/display/DisplayParameter;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/display/DisplayParameter;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/android/camera/display/DisplayAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisplayParameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput-object p1, p0, Lcom/android/camera/display/DisplayAdapter;->mParameter:Lcom/android/camera/display/DisplayParameter;

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o00O0Oo()Z

    move-result v0

    const-string v1, "init DisplayPreviewRect"

    if-eqz v0, :cond_5

    .line 5
    iget-boolean p1, p1, Lcom/android/camera/display/DisplayParameter;->isInMultiWindow:Z

    if-eqz p1, :cond_0

    .line 6
    sget-object p1, Lcom/android/camera/display/DisplayAdapter;->TAG:Ljava/lang/String;

    const-string v0, "init DisplayOtherPreviewRect"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance p1, Lcom/android/camera/display/multiwindow/DisplayMultiWindowRect;

    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mParameter:Lcom/android/camera/display/DisplayParameter;

    invoke-direct {p1, v0}, Lcom/android/camera/display/multiwindow/DisplayMultiWindowRect;-><init>(Lcom/android/camera/display/DisplayParameter;)V

    iput-object p1, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    goto/16 :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/camera/display/DisplayAdapter;->mParameter:Lcom/android/camera/display/DisplayParameter;

    iget v0, p1, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    iget p1, p1, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    invoke-static {v0, p1}, Lcom/android/camera/CameraSettings;->isAspectRatio123(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    sget-object p1, Lcom/android/camera/display/DisplayAdapter;->TAG:Ljava/lang/String;

    const-string v0, "init Display123PreviewRect"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance p1, Lcom/android/camera/display/flod/in/DisplayFoldInPreviewRect;

    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mParameter:Lcom/android/camera/display/DisplayParameter;

    invoke-direct {p1, v0}, Lcom/android/camera/display/flod/in/DisplayFoldInPreviewRect;-><init>(Lcom/android/camera/display/DisplayParameter;)V

    iput-object p1, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    goto/16 :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/android/camera/display/DisplayAdapter;->mParameter:Lcom/android/camera/display/DisplayParameter;

    iget v0, p1, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    iget p1, p1, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    invoke-static {v0, p1}, Lcom/android/camera/CameraSettings;->isAspectRatio123t(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    sget-object p1, Lcom/android/camera/display/DisplayAdapter;->TAG:Ljava/lang/String;

    const-string v0, "init Display123tPreviewRect"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance p1, Lcom/android/camera/display/nuknown/DisplayFoldInPreviewRect;

    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mParameter:Lcom/android/camera/display/DisplayParameter;

    invoke-direct {p1, v0}, Lcom/android/camera/display/nuknown/DisplayFoldInPreviewRect;-><init>(Lcom/android/camera/display/DisplayParameter;)V

    iput-object p1, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/android/camera/display/DisplayAdapter;->mParameter:Lcom/android/camera/display/DisplayParameter;

    iget v0, p1, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    iget p1, p1, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    invoke-static {v0, p1}, Lcom/android/camera/CameraSettings;->isAspectRatio456(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    sget-object p1, Lcom/android/camera/display/DisplayAdapter;->TAG:Ljava/lang/String;

    const-string v0, "init Display456PreviewRect"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-instance p1, Lcom/android/camera/display/flod/out/DisplayFoldOutPreviewRect;

    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mParameter:Lcom/android/camera/display/DisplayParameter;

    invoke-direct {p1, v0}, Lcom/android/camera/display/flod/out/DisplayFoldOutPreviewRect;-><init>(Lcom/android/camera/display/DisplayParameter;)V

    iput-object p1, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    goto :goto_0

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/android/camera/display/DisplayAdapter;->mParameter:Lcom/android/camera/display/DisplayParameter;

    iget v0, p1, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    iget p1, p1, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    invoke-static {v0, p1}, Lcom/android/camera/CameraSettings;->isAspectRatio789(II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 18
    sget-object p1, Lcom/android/camera/display/DisplayAdapter;->TAG:Ljava/lang/String;

    const-string v0, "init Display789PreviewRect"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance p1, Lcom/android/camera/display/pad/DisplayPadPreviewRect;

    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mParameter:Lcom/android/camera/display/DisplayParameter;

    invoke-direct {p1, v0}, Lcom/android/camera/display/pad/DisplayPadPreviewRect;-><init>(Lcom/android/camera/display/DisplayParameter;)V

    iput-object p1, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    goto :goto_0

    .line 20
    :cond_4
    sget-object p1, Lcom/android/camera/display/DisplayAdapter;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance p1, Lcom/android/camera/display/phone/DisplayCommonPreviewRect;

    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mParameter:Lcom/android/camera/display/DisplayParameter;

    invoke-direct {p1, v0}, Lcom/android/camera/display/phone/DisplayCommonPreviewRect;-><init>(Lcom/android/camera/display/DisplayParameter;)V

    iput-object p1, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    goto :goto_0

    .line 22
    :cond_5
    sget-object p1, Lcom/android/camera/display/DisplayAdapter;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance p1, Lcom/android/camera/display/phone/DisplayCommonPreviewRect;

    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mParameter:Lcom/android/camera/display/DisplayParameter;

    invoke-direct {p1, v0}, Lcom/android/camera/display/phone/DisplayCommonPreviewRect;-><init>(Lcom/android/camera/display/DisplayParameter;)V

    iput-object p1, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    :goto_0
    return-void
.end method


# virtual methods
.method public checkScreenSize(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mParameter:Lcom/android/camera/display/DisplayParameter;

    iget v1, v0, Lcom/android/camera/display/DisplayParameter;->appBoundWidth:I

    if-ne v1, p1, :cond_0

    iget p1, v0, Lcom/android/camera/display/DisplayParameter;->appBoundHeight:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBackgroundLeftMargin()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getBackgroundLeftMargin()I

    move-result v0

    return v0
.end method

.method public getBottomBarHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getBottomBarHeight()I

    move-result v0

    return v0
.end method

.method public getBottomHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getBottomHeight()I

    move-result v0

    return v0
.end method

.method public getBottomMargin()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getBottomMargin()I

    move-result v0

    return v0
.end method

.method public getCenterDisplayHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getCenterDisplayHeight()I

    move-result v0

    return v0
.end method

.method public getCenterDisplayWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getCenterDisplayWidth()I

    move-result v0

    return v0
.end method

.method public getDisplayRatio()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getDisplayRatio()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayRect(I)Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {v0, p1}, Lcom/android/camera/display/IDisplayRect;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public getDragDistanceFix()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getDragDistanceFix()I

    move-result v0

    return v0
.end method

.method public getDragLayoutTopMargin()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getDragLayoutTopMargin()I

    move-result v0

    return v0
.end method

.method public getMarginEnd()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getMarginEnd()I

    move-result v0

    return v0
.end method

.method public getMarginStart()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getMarginStart()I

    move-result v0

    return v0
.end method

.method public getMaxViewFinderRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getMaxViewFinderRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getMoreModePrefVideo(Z)[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {v0, p1}, Lcom/android/camera/display/IDisplayRect;->getMoreModePrefVideo(Z)[I

    move-result-object p1

    return-object p1
.end method

.method public getMoreModeTabCol(ZZ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/display/IDisplayRect;->getMoreModeTabCol(ZZ)I

    move-result p1

    return p1
.end method

.method public getMoreModeTabMarginVer(Landroid/content/Context;IZ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/display/IDisplayRect;->getMoreModeTabMarginVer(Landroid/content/Context;IZ)I

    move-result p1

    return p1
.end method

.method public getMoreModeTabRow(IZ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/display/IDisplayRect;->getMoreModeTabRow(IZ)I

    move-result p1

    return p1
.end method

.method public getSquareBottomCoverHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getSquareBottomCoverHeight()I

    move-result v0

    return v0
.end method

.method public getTipsMarginTop(Landroid/content/Context;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {v0, p1}, Lcom/android/camera/display/IDisplayRect;->getTipsMarginTop(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public getTopBarHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getTopBarHeight()I

    move-result v0

    return v0
.end method

.method public getTopBarWidth(Landroid/content/Context;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {v0, p1}, Lcom/android/camera/display/IDisplayRect;->getTopBarWidth(Landroid/content/Context;)I

    move-result p1

    return p1
.end method

.method public getTopCoverHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getTopCoverHeight()I

    move-result v0

    return v0
.end method

.method public getTopMargin()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->getTopMargin()I

    move-result v0

    return v0
.end method

.method public needAlphaAnimation4PopMore()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/display/DisplayAdapter;->mDisplayRect:Lcom/android/camera/display/IDisplayRect;

    invoke-interface {v0}, Lcom/android/camera/display/IDisplayRect;->needAlphaAnimation4PopMore()Z

    move-result v0

    return v0
.end method
