.class public final enum Lmiuix/animation/controller/FolmeFont$FontType;
.super Ljava/lang/Enum;
.source "FolmeFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/controller/FolmeFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FontType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiuix/animation/controller/FolmeFont$FontType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lmiuix/animation/controller/FolmeFont$FontType;

.field public static final enum INIT:Lmiuix/animation/controller/FolmeFont$FontType;

.field public static final enum TARGET:Lmiuix/animation/controller/FolmeFont$FontType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lmiuix/animation/controller/FolmeFont$FontType;

    const/4 v1, 0x0

    const-string v2, "INIT"

    invoke-direct {v0, v2, v1}, Lmiuix/animation/controller/FolmeFont$FontType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiuix/animation/controller/FolmeFont$FontType;->INIT:Lmiuix/animation/controller/FolmeFont$FontType;

    new-instance v0, Lmiuix/animation/controller/FolmeFont$FontType;

    const/4 v2, 0x1

    const-string v3, "TARGET"

    invoke-direct {v0, v3, v2}, Lmiuix/animation/controller/FolmeFont$FontType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiuix/animation/controller/FolmeFont$FontType;->TARGET:Lmiuix/animation/controller/FolmeFont$FontType;

    const/4 v3, 0x2

    new-array v3, v3, [Lmiuix/animation/controller/FolmeFont$FontType;

    .line 2
    sget-object v4, Lmiuix/animation/controller/FolmeFont$FontType;->INIT:Lmiuix/animation/controller/FolmeFont$FontType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lmiuix/animation/controller/FolmeFont$FontType;->$VALUES:[Lmiuix/animation/controller/FolmeFont$FontType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiuix/animation/controller/FolmeFont$FontType;
    .locals 1

    .line 1
    const-class v0, Lmiuix/animation/controller/FolmeFont$FontType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiuix/animation/controller/FolmeFont$FontType;

    return-object p0
.end method

.method public static values()[Lmiuix/animation/controller/FolmeFont$FontType;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/controller/FolmeFont$FontType;->$VALUES:[Lmiuix/animation/controller/FolmeFont$FontType;

    invoke-virtual {v0}, [Lmiuix/animation/controller/FolmeFont$FontType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiuix/animation/controller/FolmeFont$FontType;

    return-object v0
.end method
