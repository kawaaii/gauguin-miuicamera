.class public final Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "InputMethodServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputCompleteEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;",
        "Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEventOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACTIONDATA_FIELD_NUMBER:I = 0x1

.field public static final DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

.field public static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public actionData_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    invoke-direct {v0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;-><init>()V

    .line 2
    sput-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    .line 3
    const-class v1, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$3300()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    return-object v0
.end method

.method public static synthetic access$3400(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->setActionData(I)V

    return-void
.end method

.method public static synthetic access$3500(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->clearActionData()V

    return-void
.end method

.method private clearActionData()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->actionData_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    return-object v0
.end method

.method public static newBuilder()Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent$Builder;
    .locals 1

    .line 2
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    invoke-virtual {v0, p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    invoke-static {v0, p0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    invoke-static {v0, p0, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    invoke-virtual {v0}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setActionData(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->actionData_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p2, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->PARSER:Lcom/google/protobuf/Parser;

    .line 9
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 10
    :pswitch_3
    sget-object p1, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "actionData_"

    aput-object p3, p1, p2

    .line 11
    sget-object p2, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->DEFAULT_INSTANCE:Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    const-string p3, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0004"

    invoke-static {p2, p3, p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent$Builder;

    invoke-direct {p1, p3}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent$Builder;-><init>(Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$1;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;

    invoke-direct {p1}, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getActionData()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/idm/service/iot/proto/InputMethodServiceProto$InputCompleteEvent;->actionData_:I

    return v0
.end method
