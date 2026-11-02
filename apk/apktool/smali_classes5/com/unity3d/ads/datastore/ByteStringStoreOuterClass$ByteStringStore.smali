.class public final Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ByteStringStoreOuterClass.java"

# interfaces
.implements Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStoreOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ByteStringStore"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;",
        "Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore$Builder;",
        ">;",
        "Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStoreOrBuilder;"
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 240
    new-instance v0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    invoke-direct {v0}, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;-><init>()V

    .line 243
    sput-object v0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    .line 244
    const-class v1, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 31
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;
    .locals 1

    .line 25
    sget-object v0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    return-object v0
.end method

.method static synthetic access$100(Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->setData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->clearData()V

    return-void
.end method

.method private clearData()V
    .locals 1

    .line 57
    invoke-static {}, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->getDefaultInstance()Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;
    .locals 1

    .line 249
    sget-object v0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    return-object v0
.end method

.method public static newBuilder()Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore$Builder;
    .locals 1

    .line 137
    sget-object v0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    invoke-virtual {v0}, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;)Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore$Builder;
    .locals 1

    .line 140
    sget-object v0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    invoke-virtual {v0, p0}, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    sget-object v0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    invoke-static {v0, p0}, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    sget-object v0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    invoke-static {v0, p0, p1}, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    sget-object v0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    sget-object v0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    sget-object v0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    sget-object v0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 63
    sget-object v0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 70
    sget-object v0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 88
    sget-object v0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 95
    sget-object v0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    .line 255
    sget-object v0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    invoke-virtual {v0}, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setData(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    iput-object p1, p0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 192
    sget-object p2, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 233
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 227
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 212
    :pswitch_2
    sget-object p1, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 214
    const-class p2, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    monitor-enter p2

    .line 215
    :try_start_0
    sget-object p1, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 217
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 220
    sput-object p1, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->PARSER:Lcom/google/protobuf/Parser;

    .line 222
    :cond_0
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object p1

    .line 209
    :pswitch_3
    sget-object p1, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    return-object p1

    .line 200
    :pswitch_4
    const-string p1, "data_"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 203
    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n"

    .line 205
    sget-object p3, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->DEFAULT_INSTANCE:Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    invoke-static {p3, p2, p1}, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 197
    :pswitch_5
    new-instance p1, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore$Builder;

    invoke-direct {p1, p2}, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore$Builder;-><init>(Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$1;)V

    return-object p1

    .line 194
    :pswitch_6
    new-instance p1, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    invoke-direct {p1}, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;-><init>()V

    return-object p1

    nop

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

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
