.class public final Lcom/android/camera/module/common/MiRange;
.super Ljava/lang/Object;
.source "MiRange.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable<",
        "-TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mLower:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public mUpper:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "lower must not be null"

    .line 2
    invoke-static {p1, v0}, Lcom/android/camera/module/common/MiRange;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    iput-object v0, p0, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    const-string/jumbo v0, "upper must not be null"

    .line 3
    invoke-static {p2, v0}, Lcom/android/camera/module/common/MiRange;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    iput-object v0, p0, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    .line 4
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "lower must be less than or equal to upper"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/android/camera/module/common/MiRange;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(TT;TT;)",
            "Lcom/android/camera/module/common/MiRange<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/camera/module/common/MiRange;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/common/MiRange;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method


# virtual methods
.method public clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const-string/jumbo v0, "value must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/android/camera/module/common/MiRange;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    :cond_1
    return-object p1
.end method

.method public contains(Lcom/android/camera/module/common/MiRange;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/common/MiRange<",
            "TT;>;)Z"
        }
    .end annotation

    const-string/jumbo v0, "value must not be null"

    .line 4
    invoke-static {p1, v0}, Lcom/android/camera/module/common/MiRange;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p1, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    iget-object v1, p0, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 6
    :goto_0
    iget-object p1, p1, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    iget-object v3, p0, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const-string/jumbo v0, "value must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/android/camera/module/common/MiRange;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public copy()Lcom/android/camera/module/common/MiRange;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    iget-object v1, p0, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    invoke-static {v0, v1}, Lcom/android/camera/module/common/MiRange;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/android/camera/module/common/MiRange;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Lcom/android/camera/module/common/MiRange;

    if-eqz v2, :cond_2

    .line 2
    check-cast p1, Lcom/android/camera/module/common/MiRange;

    .line 3
    iget-object v2, p0, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    iget-object v3, p1, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    iget-object p1, p1, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public extend(Lcom/android/camera/module/common/MiRange;)Lcom/android/camera/module/common/MiRange;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/common/MiRange<",
            "TT;>;)",
            "Lcom/android/camera/module/common/MiRange<",
            "TT;>;"
        }
    .end annotation

    const-string/jumbo v0, "range must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/android/camera/module/common/MiRange;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    iget-object v1, p0, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 3
    iget-object v1, p1, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    iget-object v2, p0, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v0, :cond_0

    if-ltz v1, :cond_0

    return-object p1

    :cond_0
    if-ltz v0, :cond_1

    if-gtz v1, :cond_1

    return-object p0

    :cond_1
    if-ltz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    :goto_0
    if-gtz v1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    :goto_1
    invoke-static {v0, p1}, Lcom/android/camera/module/common/MiRange;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/android/camera/module/common/MiRange;

    move-result-object p1

    return-object p1
.end method

.method public extend(Ljava/lang/Comparable;)Lcom/android/camera/module/common/MiRange;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/android/camera/module/common/MiRange<",
            "TT;>;"
        }
    .end annotation

    const-string/jumbo v0, "value must not be null"

    .line 10
    invoke-static {p1, v0}, Lcom/android/camera/module/common/MiRange;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0, p1, p1}, Lcom/android/camera/module/common/MiRange;->extend(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/android/camera/module/common/MiRange;

    move-result-object p1

    return-object p1
.end method

.method public extend(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/android/camera/module/common/MiRange;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Lcom/android/camera/module/common/MiRange<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "lower must not be null"

    .line 5
    invoke-static {p1, v0}, Lcom/android/camera/module/common/MiRange;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "upper must not be null"

    .line 6
    invoke-static {p2, v0}, Lcom/android/camera/module/common/MiRange;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-ltz v0, :cond_0

    if-gtz v1, :cond_0

    return-object p0

    :cond_0
    if-ltz v0, :cond_1

    .line 9
    iget-object p1, p0, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    :cond_1
    if-gtz v1, :cond_2

    iget-object p2, p0, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    :cond_2
    invoke-static {p1, p2}, Lcom/android/camera/module/common/MiRange;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/android/camera/module/common/MiRange;

    move-result-object p1

    return-object p1
.end method

.method public getLower()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    return-object v0
.end method

.method public getUpper()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Comparable;

    .line 1
    iget-object v1, p0, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCodeGeneric([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public intersect(Lcom/android/camera/module/common/MiRange;)Lcom/android/camera/module/common/MiRange;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/module/common/MiRange<",
            "TT;>;)",
            "Lcom/android/camera/module/common/MiRange<",
            "TT;>;"
        }
    .end annotation

    const-string/jumbo v0, "range must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/android/camera/module/common/MiRange;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    iget-object v1, p0, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 3
    iget-object v1, p1, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    iget-object v2, p0, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v0, :cond_0

    if-ltz v1, :cond_0

    return-object p0

    :cond_0
    if-ltz v0, :cond_1

    if-gtz v1, :cond_1

    return-object p1

    :cond_1
    if-gtz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    :goto_0
    if-ltz v1, :cond_3

    iget-object p1, p0, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    goto :goto_1

    :cond_3
    iget-object p1, p1, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    :goto_1
    invoke-static {v0, p1}, Lcom/android/camera/module/common/MiRange;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/android/camera/module/common/MiRange;

    move-result-object p1

    return-object p1
.end method

.method public intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/android/camera/module/common/MiRange;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Lcom/android/camera/module/common/MiRange<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "lower must not be null"

    .line 5
    invoke-static {p1, v0}, Lcom/android/camera/module/common/MiRange;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "upper must not be null"

    .line 6
    invoke-static {p2, v0}, Lcom/android/camera/module/common/MiRange;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    invoke-interface {p2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v0, :cond_0

    if-ltz v1, :cond_0

    return-object p0

    :cond_0
    if-gtz v0, :cond_1

    .line 9
    iget-object p1, p0, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    :cond_1
    if-ltz v1, :cond_2

    iget-object p2, p0, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    :cond_2
    invoke-static {p1, p2}, Lcom/android/camera/module/common/MiRange;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/android/camera/module/common/MiRange;

    move-result-object p1

    return-object p1
.end method

.method public reset(Landroid/util/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "TT;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "value must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/android/camera/module/common/MiRange;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    .line 3
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    return-void
.end method

.method public setLower(Ljava/lang/Comparable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string/jumbo v0, "value must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/android/camera/module/common/MiRange;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    iput-object p1, p0, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    return-void
.end method

.method public setUpper(Ljava/lang/Comparable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string/jumbo v0, "value must not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/android/camera/module/common/MiRange;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    iput-object p1, p0, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    return-void
.end method

.method public toRange()Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    iget-object v1, p0, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/android/camera/module/common/MiRange;->mLower:Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/camera/module/common/MiRange;->mUpper:Ljava/lang/Comparable;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[%s, %s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
