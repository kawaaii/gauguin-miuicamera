.class public Lcom/arcsoft/avatar2/PreHumanConfigInfo;
.super Ljava/lang/Object;
.source "PreHumanConfigInfo.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/arcsoft/avatar2/PreHumanConfigInfo;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/arcsoft/avatar2/PreHumanConfigInfo;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/arcsoft/avatar2/PreHumanConfigInfo;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPreHumanConfigPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/PreHumanConfigInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPreHumanName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/PreHumanConfigInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPreHumanThumbnailPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/arcsoft/avatar2/PreHumanConfigInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setPreHumanConfigPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/avatar2/PreHumanConfigInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setPreHumanName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/avatar2/PreHumanConfigInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public setPreHumanThumbnailPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/arcsoft/avatar2/PreHumanConfigInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/arcsoft/avatar2/PreHumanConfigInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n, thumbNail path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/arcsoft/avatar2/PreHumanConfigInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n, config path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/arcsoft/avatar2/PreHumanConfigInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
