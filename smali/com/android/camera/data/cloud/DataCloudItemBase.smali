.class public abstract Lcom/android/camera/data/cloud/DataCloudItemBase;
.super Ljava/lang/Object;
.source "DataCloudItemBase.java"

# interfaces
.implements Lcom/android/camera/data/cloud/DataCloud$CloudItem;


# instance fields
.field public mEditor:Landroid/content/SharedPreferences$Editor;

.field public mPreferences:Landroid/content/SharedPreferences;

.field public mReady:Z

.field public mValues:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/cloud/DataCloudItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    return-void
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/cloud/DataCloudItemBase;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/data/cloud/DataCloudItemBase;->initPreferences()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/cloud/DataCloudItemBase;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private initPreferences()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/android/camera/data/cloud/DataCloud$CloudItem;->provideKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/cloud/DataCloudItemBase;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public editor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/data/cloud/DataCloudItemBase;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/cloud/DataCloudItemBase;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public getCloudBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/cloud/DataCloudItemBase;->mReady:Z

    if-nez v0, :cond_0

    return p2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/cloud/DataCloudItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :goto_0
    return p2
.end method

.method public getCloudFloat(Ljava/lang/String;F)F
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/cloud/DataCloudItemBase;->mReady:Z

    if-nez v0, :cond_0

    return p2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/cloud/DataCloudItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    :goto_0
    return p2
.end method

.method public getCloudInt(Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/cloud/DataCloudItemBase;->mReady:Z

    if-nez v0, :cond_0

    return p2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/cloud/DataCloudItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    return p2
.end method

.method public getCloudLong(Ljava/lang/String;J)J
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/cloud/DataCloudItemBase;->mReady:Z

    if-nez v0, :cond_0

    return-wide p2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/cloud/DataCloudItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :goto_0
    return-wide p2
.end method

.method public getCloudString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/data/cloud/DataCloudItemBase;->mReady:Z

    if-nez v0, :cond_0

    return-object p2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/cloud/DataCloudItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    return-object p2
.end method

.method public getValues()Landroidx/collection/SimpleArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/cloud/DataCloudItemBase;->mValues:Landroidx/collection/SimpleArrayMap;

    return-object v0
.end method

.method public setReady(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/data/cloud/DataCloudItemBase;->mReady:Z

    return-void
.end method
