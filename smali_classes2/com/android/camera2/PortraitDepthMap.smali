.class public Lcom/android/camera2/PortraitDepthMap;
.super Ljava/lang/Object;
.source "PortraitDepthMap.java"


# static fields
.field public static final ALGORITHM_VENDOR:I = 0x20

.field public static final BLUR_LEVEL_START_ADDR:I = 0x10

.field public static final BOKEH_MAPPING_VERSION:I = 0x24

.field public static final DAPTH_MAP_START_ADDR:I = 0x98

.field public static final DATA_LENGTH_4:I = 0x4

.field public static final DATA_LENGTH_START_ADDR:I = 0x94

.field public static final DEPTH_HEIGHT_START_ADDR:I = 0x18

.field public static final DEPTH_VERSION:I = 0x1c

.field public static final DEPTH_VERSION_3:I = 0x3

.field public static final DEPTH_WIDTH_START_ADDR:I = 0x14

.field public static final HEADER_LENGTH_START_ADDR:I = 0x4

.field public static final HEADER_START_ADDR:I = 0x0

.field public static final POINT_X_START_ADDR:I = 0x8

.field public static final POINT_Y_START_ADDR:I = 0xc

.field public static final SHINE_LEVEL:I = 0x2c

.field public static final SHINE_THRES:I = 0x28

.field public static final TAG:Ljava/lang/String; = "PortraitDepthMap"

.field public static final TAG_DEPTH_MAP_BLUR_LEVEL:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_DEPTH_MAP_FOCUS_POINT:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public mDepthMapHeader:[B

.field public mDepthMapOriginalData:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, -0x7770

    .line 1
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/android/camera2/PortraitDepthMap;->TAG_DEPTH_MAP_FOCUS_POINT:I

    const/16 v1, -0x776f

    .line 2
    invoke-static {v0, v1}, Lcom/android/gallery3d/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/android/camera2/PortraitDepthMap;->TAG_DEPTH_MAP_BLUR_LEVEL:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Lcom/android/camera2/PortraitDepthMap;->getHeaderTag([B)I

    move-result v0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapOriginalData:[B

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/PortraitDepthMap;->getDepthMapHeader()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapHeader:[B

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal depth format! 0x80 != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null depth data!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getBytes([BII)[B
    .locals 2

    if-lez p2, :cond_0

    if-ltz p1, :cond_0

    .line 1
    array-length v0, p0

    sub-int/2addr v0, p1

    if-gt p2, v0, :cond_0

    .line 2
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WRONG ARGUMENT: from ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", length = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getHeaderTag([B)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 1
    invoke-static {p0, v0, v1}, Lcom/android/camera2/PortraitDepthMap;->getBytes([BII)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera2/PortraitDepthMap;->getInteger([B)I

    move-result p0

    return p0
.end method

.method public static getInteger([B)I
    .locals 5

    .line 1
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 2
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v0, 0x8

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bytes can not covert to a integer value!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isDepthMapData([B)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    array-length v0, p0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    invoke-static {p0}, Lcom/android/camera2/PortraitDepthMap;->getHeaderTag([B)I

    move-result p0

    const/16 v0, 0x80

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 2
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    const-string v1, "Illegal depthmap format"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method


# virtual methods
.method public getBlurLevel()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapHeader:[B

    const/16 v1, 0x10

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/camera2/PortraitDepthMap;->getBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/PortraitDepthMap;->getInteger([B)I

    move-result v0

    return v0
.end method

.method public getBokehMappingVersion()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapHeader:[B

    const/16 v1, 0x24

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/camera2/PortraitDepthMap;->getBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/PortraitDepthMap;->getInteger([B)I

    move-result v0

    return v0
.end method

.method public getDepthDataSize()Landroid/graphics/Point;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapHeader:[B

    const/4 v1, 0x4

    const/16 v2, 0x14

    invoke-static {v0, v2, v1}, Lcom/android/camera2/PortraitDepthMap;->getBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/PortraitDepthMap;->getInteger([B)I

    move-result v0

    .line 2
    iget-object v2, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapHeader:[B

    const/16 v3, 0x18

    invoke-static {v2, v3, v1}, Lcom/android/camera2/PortraitDepthMap;->getBytes([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/PortraitDepthMap;->getInteger([B)I

    move-result v1

    .line 3
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public getDepthMapData()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapOriginalData:[B

    invoke-virtual {p0}, Lcom/android/camera2/PortraitDepthMap;->getDepthMapLength()I

    move-result v1

    const/16 v2, 0x98

    invoke-static {v0, v2, v1}, Lcom/android/camera2/PortraitDepthMap;->getBytes([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public getDepthMapHeader()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapOriginalData:[B

    const/4 v1, 0x4

    invoke-static {v0, v1, v1}, Lcom/android/camera2/PortraitDepthMap;->getBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/PortraitDepthMap;->getInteger([B)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapOriginalData:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/camera2/PortraitDepthMap;->getBytes([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public getDepthMapLength()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapHeader:[B

    const/16 v1, 0x94

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/camera2/PortraitDepthMap;->getBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/PortraitDepthMap;->getInteger([B)I

    move-result v0

    return v0
.end method

.method public getDepthVersion()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapHeader:[B

    const/16 v1, 0x1c

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/camera2/PortraitDepthMap;->getBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/PortraitDepthMap;->getInteger([B)I

    move-result v0

    return v0
.end method

.method public getFocusPoint()Landroid/graphics/Point;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapHeader:[B

    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lcom/android/camera2/PortraitDepthMap;->getBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/PortraitDepthMap;->getInteger([B)I

    move-result v0

    .line 2
    iget-object v2, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapHeader:[B

    const/16 v3, 0xc

    invoke-static {v2, v3, v1}, Lcom/android/camera2/PortraitDepthMap;->getBytes([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera2/PortraitDepthMap;->getInteger([B)I

    move-result v1

    .line 3
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public getShineLevel()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapHeader:[B

    const/16 v1, 0x2c

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/camera2/PortraitDepthMap;->getBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/PortraitDepthMap;->getInteger([B)I

    move-result v0

    return v0
.end method

.method public getShineThres()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera2/PortraitDepthMap;->mDepthMapHeader:[B

    const/16 v1, 0x28

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/camera2/PortraitDepthMap;->getBytes([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera2/PortraitDepthMap;->getInteger([B)I

    move-result v0

    return v0
.end method

.method public getVendor()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public writePortraitExif(Lcom/android/camera2/PortraitDepthMapExif;)[B
    .locals 39

    const-string v1, "timewatermark"

    const-string v2, "lenswatermark"

    const-string v3, "evminusyuv"

    const-string v4, "mainyuv"

    const-string v5, ","

    const-string v6, "depthmap"

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/PortraitDepthMap;->getDepthVersion()I

    move-result v7

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/PortraitDepthMap;->getFocusPoint()Landroid/graphics/Point;

    move-result-object v8

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/PortraitDepthMap;->getBlurLevel()I

    move-result v9

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/PortraitDepthMap;->getDepthDataSize()Landroid/graphics/Point;

    move-result-object v10

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/PortraitDepthMap;->getShineThres()I

    move-result v11

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/PortraitDepthMap;->getShineLevel()I

    move-result v12

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/PortraitDepthMap;->getVendor()I

    move-result v13

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getPortraitLightingVersioin()I

    move-result v14

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCameraPreferredMode()I

    move-result v15

    move-object/from16 v16, v1

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/PortraitDepthMap;->getBokehMappingVersion()I

    move-result v1

    .line 11
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    move-object/from16 v17, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v3

    const-string v3, "writePortraitExif: version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writePortraitExif: focusPoint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writePortraitExif: blurLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writePortraitExif: depthDataSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writePortraitExif: shineThreshold: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writePortraitExif: shineLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writePortraitExif: lightingPattern: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getLightingPattern()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writePortraitExif: isCinematicAspectRatio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->isCinematicAspectRatio()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writePortraitExif: rotation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRotation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writePortraitExif: vendor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writePortraitExif: portraitLightingVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writePortraitExif: cameraPreferredMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writePortraitExif: bokehMappingVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :try_start_1
    new-instance v0, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V

    .line 27
    invoke-virtual {v0, v7}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiDepthmapVersion(I)Z

    .line 28
    invoke-virtual {v0, v9}, Lcom/android/gallery3d/exif/ExifInterface;->addDepthMapBlurLevel(I)Z

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getLightingPattern()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/exif/ExifInterface;->addPortraitLighting(I)Z

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->isBokehFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->isFrontMirror()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/gallery3d/exif/ExifInterface;->addFrontMirror(I)Z

    .line 32
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    .line 33
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 35
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object/from16 v20, v0

    .line 36
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v20
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 37
    :catch_1
    sget-object v2, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    const-string v3, "writePortraitExif(): Failed to write depthmap associated exif metadata"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v2, v0

    if-eqz v2, :cond_16

    .line 38
    array-length v0, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v3

    array-length v3, v3

    if-gt v0, v3, :cond_2

    .line 39
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OO0ooo()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_15

    .line 40
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sdcard/DCIM/Camera/evZeroMainImage"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".yuv"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v4

    const-string v4, "sdcard/DCIM/Camera/evZeroSubImage"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v14

    move/from16 v22, v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeStamp()J

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 42
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sdcard/DCIM/Camera/evMinusMainImage"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v15, v12

    move/from16 v23, v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeStamp()J

    move-result-wide v12

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v13, 0x4

    const-wide/16 v26, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 46
    invoke-static {v12, v3}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v14

    .line 47
    invoke-static {v12, v13}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v3

    .line 48
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v28

    const-wide/16 v24, 0x8

    sub-long v28, v28, v24

    move/from16 v31, v1

    move-object/from16 v30, v12

    const/4 v12, 0x0

    .line 49
    invoke-static {v0, v12}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v1

    .line 50
    invoke-static {v0, v13}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v12

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v32

    sub-long v32, v32, v24

    .line 52
    sget-object v13, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v35, v4

    const-string v4, "main width = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", main height = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", sub width ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", sub height = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    move-object/from16 v34, v0

    move/from16 v31, v1

    move/from16 v35, v4

    move-object/from16 v30, v12

    move-wide/from16 v28, v26

    move-wide/from16 v32, v28

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 53
    :goto_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 55
    invoke-static {v0, v2}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v4

    const/4 v2, 0x4

    .line 56
    invoke-static {v0, v2}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v13

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v36

    const-wide/16 v24, 0x8

    sub-long v36, v36, v24

    goto :goto_4

    :cond_4
    move-wide/from16 v36, v26

    const/4 v4, 0x0

    const/4 v13, 0x0

    .line 58
    :goto_4
    :try_start_6
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    move-object/from16 v24, v0

    .line 59
    :try_start_7
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 60
    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    move-object/from16 v25, v0

    const-string v0, "UTF-8"

    move/from16 v38, v13

    const/16 v19, 0x1

    .line 61
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v2, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    const/4 v13, 0x0

    .line 62
    :try_start_8
    invoke-interface {v2, v13, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "version"

    .line 63
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v13, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    :try_start_9
    const-string v0, "focuspoint"

    .line 64
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v8, Landroid/graphics/Point;->x:I

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    const/4 v8, 0x0

    :try_start_a
    invoke-interface {v2, v8, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "blurlevel"

    .line 65
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v8, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :try_start_b
    const-string v0, "depthsize"

    .line 66
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v10, Landroid/graphics/Point;->x:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    const/4 v7, 0x0

    :try_start_c
    invoke-interface {v2, v7, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "shinethreshold"

    .line 67
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v7, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "shinelevel"

    .line 68
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v7, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "rawlength"

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRawLength()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v7, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "depthlength"

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDepthLength()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v7, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "mimovie"

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->isCinematicAspectRatio()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v7, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "depthOrientation"

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRotation()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v7, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "vendor"

    .line 73
    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v7, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "portraitLightingVersion"

    .line 74
    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v7, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "cameraPreferredMode"

    .line 75
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v7, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "bokehMappingVersion"

    .line 76
    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v7, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    invoke-interface {v2, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    add-long v5, v28, v32

    add-long v5, v5, v36

    cmp-long v0, v5, v26

    const-string v8, "height"

    const-string v9, "width"

    const-string v10, "length"

    const-string v11, "offset"

    if-eqz v0, :cond_5

    move-object/from16 v13, v21

    .line 78
    :try_start_d
    invoke-interface {v2, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 79
    :try_start_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRawLength()I

    move-result v0

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDepthLength()I

    move-result v7

    add-int/2addr v0, v7

    move v7, v1

    int-to-long v0, v0

    add-long/2addr v0, v5

    .line 81
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    const/4 v1, 0x0

    .line 82
    :try_start_f
    invoke-interface {v2, v1, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    invoke-interface {v2, v1, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "subyuv"

    .line 87
    invoke-interface {v2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    .line 88
    :try_start_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRawLength()I

    move-result v0

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDepthLength()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    add-long v0, v0, v32

    add-long v0, v0, v36

    .line 90
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    const/4 v1, 0x0

    .line 91
    :try_start_11
    invoke-interface {v2, v1, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    invoke-static/range {v32 .. v33}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "subyuv"

    .line 95
    invoke-interface {v2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2

    goto :goto_5

    :catch_2
    move-object v13, v1

    goto/16 :goto_d

    :cond_5
    :goto_5
    cmp-long v0, v36, v26

    if-eqz v0, :cond_6

    move-object/from16 v1, v18

    const/4 v3, 0x0

    .line 96
    :try_start_12
    invoke-interface {v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3

    .line 97
    :try_start_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRawLength()I

    move-result v0

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDepthLength()I

    move-result v3

    add-int/2addr v0, v3

    int-to-long v12, v0

    add-long v12, v12, v36

    .line 99
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    const/4 v3, 0x0

    .line 100
    :try_start_14
    invoke-interface {v2, v3, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    invoke-static/range {v36 .. v37}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    invoke-interface {v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3

    goto :goto_6

    :catch_3
    move-object v13, v3

    goto/16 :goto_d

    .line 105
    :cond_6
    :goto_6
    :try_start_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    const/4 v1, 0x3

    const-string v3, "paddingy"

    const/4 v4, 0x2

    const-string v7, "paddingx"

    if-eqz v0, :cond_9

    .line 106
    :try_start_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_9

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    if-eqz v0, :cond_9

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    array-length v0, v0

    const/4 v12, 0x4

    if-lt v0, v12, :cond_9

    const-string v0, "subimage"
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a

    const/4 v12, 0x0

    .line 109
    :try_start_17
    invoke-interface {v2, v12, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_4

    .line 110
    :try_start_18
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    array-length v0, v0

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v12

    array-length v12, v12

    goto :goto_7

    :cond_7
    const/4 v12, 0x0

    :goto_7
    add-int/2addr v0, v12

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v12

    array-length v12, v12

    goto :goto_8

    :cond_8
    const/4 v12, 0x0

    :goto_8
    add-int/2addr v0, v12

    int-to-long v12, v0

    add-long/2addr v12, v5

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRawLength()I

    move-result v0

    int-to-long v14, v0

    add-long/2addr v12, v14

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDepthLength()I

    move-result v0

    int-to-long v14, v0

    add-long/2addr v12, v14

    .line 115
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_a

    const/4 v12, 0x0

    .line 116
    :try_start_19
    invoke-interface {v2, v12, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v12, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    const/4 v13, 0x0

    aget v0, v0, v13

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v12, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    const/4 v13, 0x1

    aget v0, v0, v13

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v12, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v12, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v12, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "rotation"

    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRotation()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v12, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "subimage"

    .line 123
    invoke-interface {v2, v12, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_4

    goto :goto_9

    :catch_4
    move-object v13, v12

    goto/16 :goto_d

    .line 124
    :cond_9
    :goto_9
    :try_start_1a
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v0

    array-length v0, v0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_a

    if-lez v0, :cond_b

    move-object/from16 v12, v17

    const/4 v13, 0x0

    .line 125
    :try_start_1b
    invoke-interface {v2, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_b

    .line 126
    :try_start_1c
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v0

    array-length v0, v0

    .line 127
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v13

    array-length v13, v13

    goto :goto_a

    :cond_a
    const/4 v13, 0x0

    :goto_a
    add-int/2addr v0, v13

    int-to-long v13, v0

    add-long/2addr v13, v5

    .line 128
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRawLength()I

    move-result v0

    move-wide/from16 v17, v5

    int-to-long v4, v0

    add-long/2addr v13, v4

    .line 129
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDepthLength()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v13, v4

    .line 130
    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_a

    const/4 v4, 0x0

    .line 131
    :try_start_1d
    invoke-interface {v2, v4, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulCameraWaterMarkLocation()[I

    move-result-object v0

    const/4 v5, 0x0

    aget v0, v0, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulCameraWaterMarkLocation()[I

    move-result-object v0

    const/4 v5, 0x1

    aget v0, v0, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulCameraWaterMarkLocation()[I

    move-result-object v0

    const/4 v5, 0x2

    aget v0, v0, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulCameraWaterMarkLocation()[I

    move-result-object v0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    invoke-interface {v2, v4, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_5

    goto :goto_b

    :catch_5
    move-object v13, v4

    goto/16 :goto_d

    :cond_b
    move-wide/from16 v17, v5

    .line 138
    :goto_b
    :try_start_1e
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    array-length v0, v0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_a

    if-lez v0, :cond_c

    move-object/from16 v4, v16

    const/4 v5, 0x0

    .line 139
    :try_start_1f
    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_6

    .line 140
    :try_start_20
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v12, v0

    add-long v12, v12, v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRawLength()I

    move-result v0

    int-to-long v14, v0

    add-long/2addr v12, v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDepthLength()I

    move-result v0

    int-to-long v14, v0

    add-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_a

    const/4 v13, 0x0

    .line 141
    :try_start_21
    invoke-interface {v2, v13, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v13, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMarkLocation()[I

    move-result-object v0

    const/4 v5, 0x0

    aget v0, v0, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v13, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMarkLocation()[I

    move-result-object v0

    const/4 v5, 0x1

    aget v0, v0, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v13, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMarkLocation()[I

    move-result-object v0

    const/4 v5, 0x2

    aget v0, v0, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v13, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMarkLocation()[I

    move-result-object v0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v13, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 147
    invoke-interface {v2, v13, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_c

    :catch_6
    move-object v13, v5

    goto :goto_d

    :cond_c
    const/4 v13, 0x0

    .line 148
    :goto_c
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 149
    invoke-virtual/range {v25 .. v25}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_b

    goto :goto_e

    :catch_7
    move-object v13, v7

    goto :goto_d

    :catch_8
    move-object v13, v8

    goto :goto_d

    :catch_9
    move-object/from16 v24, v0

    :catch_a
    const/4 v13, 0x0

    .line 150
    :catch_b
    :goto_d
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    const-string v1, "writePortraitExif(): Failed to generate depthmap associated xmp metadata"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v13

    :goto_e
    if-nez v0, :cond_d

    .line 151
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    const-string v1, "writePortraitExif(): #2: return original jpeg"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v0

    return-object v0

    .line 153
    :cond_d
    :try_start_22
    new-instance v1, Ljava/io/ByteArrayInputStream;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_d
    .catch Lcom/adobe/xmp/XMPException; {:try_start_22 .. :try_end_22} :catch_d

    move-object/from16 v2, v20

    :try_start_23
    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_e
    .catch Lcom/adobe/xmp/XMPException; {:try_start_23 .. :try_end_23} :catch_e

    .line 154
    :try_start_24
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    .line 155
    :try_start_25
    invoke-static {}, Lcom/android/camera/XmpHelper;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v4

    const-string v5, "http://ns.xiaomi.com/photos/1.0/camera/"

    const-string v6, "XMPMeta"

    .line 156
    invoke-interface {v4, v5, v6, v0}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    invoke-static {v1, v3, v4}, Lcom/android/camera/XmpHelper;->writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;)Z

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    if-eqz v0, :cond_e

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_e

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    if-eqz v0, :cond_e

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    array-length v0, v0

    const/4 v4, 0x4

    if-lt v0, v4, :cond_e

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 163
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v0

    if-eqz v0, :cond_f

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 165
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    if-eqz v0, :cond_10

    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_10
    cmp-long v0, v28, v26

    const/16 v4, 0x8

    if-eqz v0, :cond_11

    move-object/from16 v0, v30

    .line 167
    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->writeFile2Stream(Ljava/io/File;Ljava/io/ByteArrayOutputStream;I)V

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_11
    cmp-long v0, v32, v26

    if-eqz v0, :cond_12

    move-object/from16 v0, v34

    .line 169
    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->writeFile2Stream(Ljava/io/File;Ljava/io/ByteArrayOutputStream;I)V

    .line 170
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_12
    cmp-long v0, v36, v26

    if-eqz v0, :cond_13

    move-object/from16 v0, v24

    .line 171
    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->writeFile2Stream(Ljava/io/File;Ljava/io/ByteArrayOutputStream;I)V

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 173
    :cond_13
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 174
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_4

    .line 175
    :try_start_26
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_3

    :try_start_27
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_c
    .catch Lcom/adobe/xmp/XMPException; {:try_start_27 .. :try_end_27} :catch_c

    goto :goto_13

    :catch_c
    move-object v13, v4

    goto :goto_12

    :catchall_3
    move-exception v0

    move-object v3, v0

    move-object v13, v4

    goto :goto_10

    :catchall_4
    move-exception v0

    move-object v4, v0

    .line 176
    :try_start_28
    throw v4
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_5

    :catchall_5
    move-exception v0

    move-object v5, v0

    .line 177
    :try_start_29
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_6

    goto :goto_f

    :catchall_6
    move-exception v0

    move-object v3, v0

    :try_start_2a
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    throw v5
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_7

    :catchall_7
    move-exception v0

    move-object v3, v0

    .line 178
    :goto_10
    :try_start_2b
    throw v3
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_8

    :catchall_8
    move-exception v0

    move-object v4, v0

    .line 179
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_9

    goto :goto_11

    :catchall_9
    move-exception v0

    move-object v1, v0

    :try_start_2d
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_11
    throw v4
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_e
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2d .. :try_end_2d} :catch_e

    :catch_d
    move-object/from16 v2, v20

    .line 180
    :catch_e
    :goto_12
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    const-string v1, "writePortraitExif(): Failed to insert depthmap associated xmp metadata"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v13

    :goto_13
    if-eqz v4, :cond_15

    .line 181
    array-length v0, v4

    array-length v1, v2

    if-gt v0, v1, :cond_14

    goto :goto_14

    :cond_14
    return-object v4

    .line 182
    :cond_15
    :goto_14
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    const-string v1, "writePortraitExif(): #3: return original jpeg"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v0

    return-object v0

    .line 184
    :cond_16
    :goto_15
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    const-string v1, "writePortraitExif(): #1: return original jpeg"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v0

    return-object v0
.end method

.method public writePortraitExifCompat(Lcom/android/camera2/PortraitDepthMapExif;)[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/PortraitDepthMap;->getDepthVersion()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/camera2/PortraitDepthMap;->writePortraitExif(Lcom/android/camera2/PortraitDepthMapExif;)[B

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera2/PortraitDepthMap;->writePortraitExifOldVersion(Lcom/android/camera2/PortraitDepthMapExif;)[B

    move-result-object p1

    return-object p1
.end method

.method public writePortraitExifOldVersion(Lcom/android/camera2/PortraitDepthMapExif;)[B
    .locals 36
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v1, "mainyuv"

    const-string v2, ","

    const-string v3, "depthmap"

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/PortraitDepthMap;->getFocusPoint()Landroid/graphics/Point;

    move-result-object v4

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/PortraitDepthMap;->getBlurLevel()I

    move-result v5

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/PortraitDepthMap;->getDepthDataSize()Landroid/graphics/Point;

    move-result-object v6

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getPortraitLightingVersioin()I

    move-result v7

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCameraPreferredMode()I

    move-result v8

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PictureInfo;->isFrontCamera()Z

    move-result v0

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->isSupportZeroDegreeOrientationImage()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x2

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v9

    invoke-virtual {v9}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->OoooOoO()I

    move-result v9

    :goto_0
    const/4 v11, -0x1

    const/16 v12, 0xa

    const/4 v13, 0x5

    if-lez v9, :cond_4

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PictureInfo;->isAiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PictureInfo;->getAiType()I

    move-result v0

    if-ne v0, v12, :cond_1

    const/16 v11, 0x46

    goto :goto_1

    :cond_1
    const/16 v11, 0x28

    :goto_1
    move v12, v11

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PictureInfo;->isAiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getPictureInfo()Lcom/xiaomi/camera/core/PictureInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PictureInfo;->getAiType()I

    move-result v0

    if-ne v0, v12, :cond_3

    const/16 v11, 0x1e

    goto :goto_1

    :cond_3
    :goto_2
    move v11, v13

    goto :goto_3

    :cond_4
    move v12, v11

    :goto_3
    const/4 v13, 0x1

    if-le v9, v13, :cond_5

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera2/PortraitDepthMap;->getVendor()I

    move-result v0

    move v14, v0

    goto :goto_4

    :cond_5
    move v14, v13

    .line 12
    :goto_4
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "writePortraitExif: focusPoint: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "writePortraitExif: blurLevel: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "writePortraitExif: depthDataSize: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "writePortraitExif: shineThreshold: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "writePortraitExif: shineLevel: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "writePortraitExif: lightingPattern: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getLightingPattern()I

    move-result v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "writePortraitExif: isCinematicAspectRatio: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->isCinematicAspectRatio()Z

    move-result v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "writePortraitExif: rotation: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRotation()I

    move-result v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "writePortraitExif: vendor: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "writePortraitExif: portraitLightingVersion: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "writePortraitExif: cameraPreferredMode: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :try_start_0
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :try_start_1
    new-instance v0, Lcom/android/gallery3d/exif/ExifInterface;

    invoke-direct {v0}, Lcom/android/gallery3d/exif/ExifInterface;-><init>()V

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/android/gallery3d/exif/ExifInterface;->readExif([B)V

    .line 26
    invoke-virtual {v0, v9}, Lcom/android/gallery3d/exif/ExifInterface;->addXiaomiDepthmapVersion(I)Z

    .line 27
    invoke-virtual {v0, v5}, Lcom/android/gallery3d/exif/ExifInterface;->addDepthMapBlurLevel(I)Z

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getLightingPattern()I

    move-result v13

    invoke-virtual {v0, v13}, Lcom/android/gallery3d/exif/ExifInterface;->addPortraitLighting(I)Z

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->isBokehFrontCamera()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->isFrontMirror()Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v13, 0x1

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    :goto_5
    invoke-virtual {v0, v13}, Lcom/android/gallery3d/exif/ExifInterface;->addFrontMirror(I)Z

    .line 31
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v13

    invoke-virtual {v0, v13, v15}, Lcom/android/gallery3d/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    .line 32
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :try_start_2
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v13, v0

    .line 34
    :try_start_3
    throw v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object/from16 v17, v0

    .line 35
    :try_start_4
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v15, v0

    :try_start_5
    invoke-virtual {v13, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v17
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 36
    :catch_1
    sget-object v13, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    const-string v15, "writePortraitExif(): Failed to write depthmap associated exif metadata"

    invoke-static {v13, v15}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    move-object v13, v0

    if-eqz v13, :cond_1c

    .line 37
    array-length v0, v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v15

    array-length v15, v15

    if-gt v0, v15, :cond_8

    .line 38
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OooOo00()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OOoOO()LOooO00o/OooO0Oo/OooO00o/OooO00o;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO00o;->o0OO0ooo()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_17

    .line 39
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "sdcard/DCIM/Camera/evZeroMainImage"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v15, v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeStamp()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ".yuv"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v13

    const-string v13, "sdcard/DCIM/Camera/evZeroSubImage"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v13, v7

    move/from16 v19, v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeStamp()J

    move-result-wide v7

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 41
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sdcard/DCIM/Camera/evMinusMainImage"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v20, v13

    move v11, v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeStamp()J

    move-result-wide v13

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 42
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v7

    const/4 v13, 0x4

    const-wide/16 v23, 0x0

    if-eqz v7, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x0

    .line 45
    invoke-static {v10, v7}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v14

    .line 46
    invoke-static {v10, v13}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v7

    .line 47
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v25

    const-wide/16 v21, 0x8

    sub-long v25, v25, v21

    move-object/from16 v28, v1

    move-object/from16 v27, v10

    const/4 v10, 0x0

    .line 48
    invoke-static {v0, v10}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v1

    .line 49
    invoke-static {v0, v13}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v10

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v29

    sub-long v29, v29, v21

    .line 51
    sget-object v13, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    move-object/from16 v31, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v32, v11

    const-string v11, "main width = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", main height = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", sub width ="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", sub height = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_9
    move-object/from16 v31, v0

    move-object/from16 v28, v1

    move-object/from16 v27, v10

    move/from16 v32, v11

    move-wide/from16 v25, v23

    move-wide/from16 v29, v25

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    .line 52
    :goto_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x0

    .line 54
    invoke-static {v0, v8}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v11

    const/4 v8, 0x4

    .line 55
    invoke-static {v0, v8}, Lcom/android/camera/Util;->getHeader2Int(Ljava/io/File;I)I

    move-result v13

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v33

    const-wide/16 v21, 0x8

    sub-long v33, v33, v21

    goto :goto_9

    :cond_a
    move-wide/from16 v33, v23

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 57
    :goto_9
    :try_start_6
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    move-object/from16 v21, v0

    .line 58
    :try_start_7
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 59
    invoke-interface {v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    move-object/from16 v22, v0

    const-string v0, "UTF-8"

    move/from16 v35, v13

    const/16 v16, 0x1

    .line 60
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v8, v0, v13}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    const/4 v13, 0x0

    .line 61
    :try_start_8
    invoke-interface {v8, v13, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "version"

    .line 62
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v13, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    :try_start_9
    const-string v0, "focuspoint"

    .line 63
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    const/4 v9, 0x0

    :try_start_a
    invoke-interface {v8, v9, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "blurlevel"

    .line 64
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v9, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :try_start_b
    const-string v0, "depthsize"

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    const/4 v4, 0x0

    :try_start_c
    invoke-interface {v8, v4, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "shinethreshold"

    .line 66
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v4, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "shinelevel"

    .line 67
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v4, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "rawlength"

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRawLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v4, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "depthlength"

    .line 69
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDepthLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v4, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "mimovie"

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->isCinematicAspectRatio()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v4, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "depthOrientation"

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRotation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v4, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "vendor"

    .line 72
    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v4, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "portraitLightingVersion"

    .line 73
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v4, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "cameraPreferredMode"

    .line 74
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v4, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    invoke-interface {v8, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    add-long v2, v25, v29

    add-long v2, v2, v33

    cmp-long v0, v2, v23

    const-string v5, "height"

    const-string v6, "width"

    const-string v9, "length"

    const-string v12, "offset"

    if-eqz v0, :cond_b

    move-object/from16 v13, v28

    .line 76
    :try_start_d
    invoke-interface {v8, v4, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 77
    :try_start_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRawLength()I

    move-result v0

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDepthLength()I

    move-result v4

    add-int/2addr v0, v4

    move v4, v10

    move v15, v11

    int-to-long v10, v0

    add-long/2addr v10, v2

    .line 79
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    const/4 v10, 0x0

    .line 80
    :try_start_f
    invoke-interface {v8, v10, v12, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    invoke-static/range {v25 .. v26}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    invoke-interface {v8, v10, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "subyuv"

    .line 85
    invoke-interface {v8, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    .line 86
    :try_start_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRawLength()I

    move-result v0

    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDepthLength()I

    move-result v7

    add-int/2addr v0, v7

    int-to-long v10, v0

    add-long v10, v10, v29

    add-long v10, v10, v33

    .line 88
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    const/4 v7, 0x0

    .line 89
    :try_start_11
    invoke-interface {v8, v7, v12, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    invoke-static/range {v29 .. v30}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v7, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v7, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v7, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "subyuv"

    .line 93
    invoke-interface {v8, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2

    goto :goto_a

    :catch_2
    move-object v13, v7

    goto/16 :goto_10

    :catch_3
    move-object v13, v10

    goto/16 :goto_10

    :cond_b
    move v15, v11

    :goto_a
    cmp-long v0, v33, v23

    if-eqz v0, :cond_c

    :try_start_12
    const-string v0, "evminusyuv"
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    const/4 v1, 0x0

    .line 94
    :try_start_13
    invoke-interface {v8, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4

    .line 95
    :try_start_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRawLength()I

    move-result v0

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDepthLength()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    add-long v0, v0, v33

    .line 97
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_8

    const/4 v1, 0x0

    .line 98
    :try_start_15
    invoke-interface {v8, v1, v12, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    invoke-static/range {v33 .. v34}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v1, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v1, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v1, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "evminusyuv"

    .line 102
    invoke-interface {v8, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_4

    goto :goto_b

    :catch_4
    move-object v13, v1

    goto/16 :goto_10

    .line 103
    :cond_c
    :goto_b
    :try_start_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8

    const/4 v1, 0x3

    const-string v4, "paddingy"

    const-string v7, "paddingx"

    if-eqz v0, :cond_f

    .line 104
    :try_start_17
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_f

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    if-eqz v0, :cond_f

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    array-length v0, v0

    const/4 v10, 0x4

    if-lt v0, v10, :cond_f

    const-string v0, "subimage"
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8

    const/4 v10, 0x0

    .line 107
    :try_start_18
    invoke-interface {v8, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_3

    .line 108
    :try_start_19
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    array-length v0, v0

    .line 109
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v10

    array-length v10, v10

    goto :goto_c

    :cond_d
    const/4 v10, 0x0

    :goto_c
    add-int/2addr v0, v10

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v10

    if-eqz v10, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v10

    array-length v10, v10

    goto :goto_d

    :cond_e
    const/4 v10, 0x0

    :goto_d
    add-int/2addr v0, v10

    int-to-long v10, v0

    add-long/2addr v10, v2

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRawLength()I

    move-result v0

    int-to-long v13, v0

    add-long/2addr v10, v13

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDepthLength()I

    move-result v0

    int-to-long v13, v0

    add-long/2addr v10, v13

    .line 113
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_8

    const/4 v10, 0x0

    .line 114
    :try_start_1a
    invoke-interface {v8, v10, v12, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    const/4 v11, 0x0

    aget v0, v0, v11

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    const/4 v11, 0x1

    aget v0, v0, v11

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    const/4 v11, 0x2

    aget v0, v0, v11

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "rotation"

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRotation()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v10, v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "subimage"

    .line 121
    invoke-interface {v8, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_3

    .line 122
    :cond_f
    :try_start_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_11

    const-string v0, "lenswatermark"
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_8

    const/4 v10, 0x0

    .line 123
    :try_start_1c
    invoke-interface {v8, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_3

    .line 124
    :try_start_1d
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v0

    array-length v0, v0

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v10

    if-eqz v10, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v10

    array-length v10, v10

    goto :goto_e

    :cond_10
    const/4 v10, 0x0

    :goto_e
    add-int/2addr v0, v10

    int-to-long v10, v0

    add-long/2addr v10, v2

    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRawLength()I

    move-result v0

    int-to-long v13, v0

    add-long/2addr v10, v13

    .line 127
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDepthLength()I

    move-result v0

    int-to-long v13, v0

    add-long/2addr v10, v13

    .line 128
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_8

    const/4 v10, 0x0

    .line 129
    :try_start_1e
    invoke-interface {v8, v10, v12, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 130
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulCameraWaterMarkLocation()[I

    move-result-object v0

    const/4 v11, 0x0

    aget v0, v0, v11

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulCameraWaterMarkLocation()[I

    move-result-object v0

    const/4 v11, 0x1

    aget v0, v0, v11

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulCameraWaterMarkLocation()[I

    move-result-object v0

    const/4 v11, 0x2

    aget v0, v0, v11

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulCameraWaterMarkLocation()[I

    move-result-object v0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v10, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "isLTR"

    .line 135
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->isLTR()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v10, v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "lenswatermark"

    .line 136
    invoke-interface {v8, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_3

    .line 137
    :cond_11
    :try_start_1f
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_12

    const-string v0, "timewatermark"
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_8

    const/4 v10, 0x0

    .line 138
    :try_start_20
    invoke-interface {v8, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_3

    .line 139
    :try_start_21
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v10, v0

    add-long/2addr v10, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getRawLength()I

    move-result v0

    int-to-long v2, v0

    add-long/2addr v10, v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDepthLength()I

    move-result v0

    int-to-long v2, v0

    add-long/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_8

    const/4 v13, 0x0

    .line 140
    :try_start_22
    invoke-interface {v8, v13, v12, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v13, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMarkLocation()[I

    move-result-object v0

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v13, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMarkLocation()[I

    move-result-object v0

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v13, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMarkLocation()[I

    move-result-object v0

    const/4 v2, 0x2

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v13, v7, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMarkLocation()[I

    move-result-object v0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v13, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "isLTR"

    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->isLTR()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v13, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "timewatermark"

    .line 147
    invoke-interface {v8, v13, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_f

    :cond_12
    const/4 v13, 0x0

    .line 148
    :goto_f
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 149
    invoke-virtual/range {v22 .. v22}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_9

    goto :goto_11

    :catch_5
    move-object v13, v4

    goto :goto_10

    :catch_6
    move-object v13, v9

    goto :goto_10

    :catch_7
    move-object/from16 v21, v0

    :catch_8
    const/4 v13, 0x0

    .line 150
    :catch_9
    :goto_10
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    const-string v1, "writePortraitExif(): Failed to generate depthmap associated xmp metadata"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v13

    :goto_11
    if-nez v0, :cond_13

    .line 151
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    const-string v1, "writePortraitExif(): #2: return original jpeg"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v0

    return-object v0

    .line 153
    :cond_13
    :try_start_23
    new-instance v1, Ljava/io/ByteArrayInputStream;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_a
    .catch Lcom/adobe/xmp/XMPException; {:try_start_23 .. :try_end_23} :catch_a

    move-object/from16 v2, v18

    :try_start_24
    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_b
    .catch Lcom/adobe/xmp/XMPException; {:try_start_24 .. :try_end_24} :catch_b

    .line 154
    :try_start_25
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    .line 155
    :try_start_26
    invoke-static {}, Lcom/android/camera/XmpHelper;->createXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v4

    const-string v5, "http://ns.xiaomi.com/photos/1.0/camera/"

    const-string v6, "XMPMeta"

    .line 156
    invoke-interface {v4, v5, v6, v0}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    invoke-static {v1, v3, v4}, Lcom/android/camera/XmpHelper;->writeXMPMeta(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;)Z

    .line 158
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    if-eqz v0, :cond_14

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_14

    .line 160
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    if-eqz v0, :cond_14

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getCoordinatesOfOfTheRegionUnderWatermarks()[I

    move-result-object v0

    array-length v0, v0

    const/4 v4, 0x4

    if-lt v0, v4, :cond_14

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpegDataOfTheRegionUnderWatermarks()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 163
    :cond_14
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v0

    if-eqz v0, :cond_15

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getDulWaterMark()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 165
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    if-eqz v0, :cond_16

    .line 166
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getTimeWaterMark()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_16
    cmp-long v0, v25, v23

    const/16 v4, 0x8

    if-eqz v0, :cond_17

    move-object/from16 v0, v27

    .line 167
    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->writeFile2Stream(Ljava/io/File;Ljava/io/ByteArrayOutputStream;I)V

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_17
    cmp-long v0, v29, v23

    if-eqz v0, :cond_18

    move-object/from16 v0, v31

    .line 169
    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->writeFile2Stream(Ljava/io/File;Ljava/io/ByteArrayOutputStream;I)V

    .line 170
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_18
    cmp-long v0, v33, v23

    if-eqz v0, :cond_19

    move-object/from16 v0, v21

    .line 171
    invoke-static {v0, v3, v4}, Lcom/android/camera/Util;->writeFile2Stream(Ljava/io/File;Ljava/io/ByteArrayOutputStream;I)V

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 173
    :cond_19
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 174
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_4

    .line 175
    :try_start_27
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_3

    :try_start_28
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_c
    .catch Lcom/adobe/xmp/XMPException; {:try_start_28 .. :try_end_28} :catch_c

    goto :goto_15

    :catchall_3
    move-exception v0

    move-object v3, v0

    goto :goto_13

    :catchall_4
    move-exception v0

    move-object v4, v0

    .line 176
    :try_start_29
    throw v4
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_5

    :catchall_5
    move-exception v0

    move-object v5, v0

    .line 177
    :try_start_2a
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_6

    goto :goto_12

    :catchall_6
    move-exception v0

    move-object v3, v0

    :try_start_2b
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_12
    throw v5
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7

    :catchall_7
    move-exception v0

    move-object v3, v0

    move-object v15, v13

    .line 178
    :goto_13
    :try_start_2c
    throw v3
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_8

    :catchall_8
    move-exception v0

    move-object v4, v0

    .line 179
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_9

    goto :goto_14

    :catchall_9
    move-exception v0

    move-object v1, v0

    :try_start_2e
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_14
    throw v4
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_c
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2e .. :try_end_2e} :catch_c

    :catch_a
    move-object/from16 v2, v18

    :catch_b
    move-object v15, v13

    .line 180
    :catch_c
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    const-string v1, "writePortraitExif(): Failed to insert depthmap associated xmp metadata"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    if-eqz v15, :cond_1b

    .line 181
    array-length v0, v15

    array-length v1, v2

    if-gt v0, v1, :cond_1a

    goto :goto_16

    :cond_1a
    return-object v15

    .line 182
    :cond_1b
    :goto_16
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    const-string v1, "writePortraitExif(): #3: return original jpeg"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v0

    return-object v0

    .line 184
    :cond_1c
    :goto_17
    sget-object v0, Lcom/android/camera2/PortraitDepthMap;->TAG:Ljava/lang/String;

    const-string v1, "writePortraitExif(): #1: return original jpeg"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera2/PortraitDepthMapExif;->getJpeg()[B

    move-result-object v0

    return-object v0
.end method
