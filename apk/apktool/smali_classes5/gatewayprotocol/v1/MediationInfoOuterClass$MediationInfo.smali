.class public final Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MediationInfoOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MediationInfoOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediationInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;",
        "Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;",
        ">;",
        "Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADAPTER_VERSION_FIELD_NUMBER:I = 0x4

.field public static final CUSTOM_NAME_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROVIDER_FIELD_NUMBER:I = 0x1

.field public static final VERSION_FIELD_NUMBER:I = 0x3


# instance fields
.field private adapterVersion_:Ljava/lang/String;

.field private bitField0_:I

.field private customName_:Ljava/lang/String;

.field private provider_:I

.field private version_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 901
    new-instance v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-direct {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;-><init>()V

    .line 904
    sput-object v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    .line 905
    const-class v1, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->customName_:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->version_:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->adapterVersion_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;
    .locals 1

    .line 125
    sget-object v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    return-object v0
.end method

.method static synthetic access$100(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;I)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->setProviderValue(I)V

    return-void
.end method

.method static synthetic access$1000(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;Ljava/lang/String;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->setAdapterVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->clearAdapterVersion()V

    return-void
.end method

.method static synthetic access$1200(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->setAdapterVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->setProvider(Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)V

    return-void
.end method

.method static synthetic access$300(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->clearProvider()V

    return-void
.end method

.method static synthetic access$400(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;Ljava/lang/String;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->setCustomName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->clearCustomName()V

    return-void
.end method

.method static synthetic access$600(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->setCustomNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;Ljava/lang/String;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->setVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->clearVersion()V

    return-void
.end method

.method static synthetic access$900(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->setVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAdapterVersion()V
    .locals 1

    .line 417
    iget v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->bitField0_:I

    .line 418
    invoke-static {}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->getDefaultInstance()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->getAdapterVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->adapterVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearCustomName()V
    .locals 1

    .line 259
    iget v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->bitField0_:I

    .line 260
    invoke-static {}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->getDefaultInstance()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->getCustomName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->customName_:Ljava/lang/String;

    return-void
.end method

.method private clearProvider()V
    .locals 1

    const/4 v0, 0x0

    .line 195
    iput v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->provider_:I

    return-void
.end method

.method private clearVersion()V
    .locals 1

    .line 338
    iget v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->bitField0_:I

    .line 339
    invoke-static {}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->getDefaultInstance()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->version_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;
    .locals 1

    .line 910
    sget-object v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;
    .locals 1

    .line 512
    sget-object v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;
    .locals 1

    .line 515
    sget-object v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    sget-object v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 495
    sget-object v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 451
    sget-object v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 458
    sget-object v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    sget-object v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 507
    sget-object v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 475
    sget-object v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    sget-object v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 438
    sget-object v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 445
    sget-object v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 463
    sget-object v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 470
    sget-object v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;",
            ">;"
        }
    .end annotation

    .line 916
    sget-object v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAdapterVersion(Ljava/lang/String;)V
    .locals 1

    .line 405
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 406
    iget v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->bitField0_:I

    .line 407
    iput-object p1, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->adapterVersion_:Ljava/lang/String;

    return-void
.end method

.method private setAdapterVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 430
    invoke-static {p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 431
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->adapterVersion_:Ljava/lang/String;

    .line 432
    iget p1, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->bitField0_:I

    return-void
.end method

.method private setCustomName(Ljava/lang/String;)V
    .locals 1

    .line 247
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 248
    iget v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->bitField0_:I

    .line 249
    iput-object p1, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->customName_:Ljava/lang/String;

    return-void
.end method

.method private setCustomNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 272
    invoke-static {p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 273
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->customName_:Ljava/lang/String;

    .line 274
    iget p1, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->bitField0_:I

    return-void
.end method

.method private setProvider(Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)V
    .locals 0

    .line 183
    invoke-virtual {p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->provider_:I

    return-void
.end method

.method private setProviderValue(I)V
    .locals 0

    .line 172
    iput p1, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->provider_:I

    return-void
.end method

.method private setVersion(Ljava/lang/String;)V
    .locals 1

    .line 326
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    iget v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->bitField0_:I

    .line 328
    iput-object p1, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->version_:Ljava/lang/String;

    return-void
.end method

.method private setVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 351
    invoke-static {p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 352
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->version_:Ljava/lang/String;

    .line 353
    iget p1, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 848
    sget-object p2, Lgatewayprotocol/v1/MediationInfoOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 894
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 888
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 873
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 875
    const-class p2, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    monitor-enter p2

    .line 876
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 878
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 881
    sput-object p1, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 883
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

    .line 870
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    return-object p1

    .line 856
    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "provider_"

    const-string p3, "customName_"

    const-string v0, "version_"

    const-string v1, "adapterVersion_"

    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 863
    const-string p2, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000c\u0002\u1208\u0000\u0003\u1208\u0001\u0004\u1208\u0002"

    .line 866
    sget-object p3, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 853
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;-><init>(Lgatewayprotocol/v1/MediationInfoOuterClass$1;)V

    return-object p1

    .line 850
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-direct {p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;-><init>()V

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

.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    .line 380
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->adapterVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getAdapterVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 393
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->adapterVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCustomName()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->customName_:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 235
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->customName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;
    .locals 1

    .line 160
    iget v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->provider_:I

    invoke-static {v0}, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->forNumber(I)Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 161
    sget-object v0, Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;->UNRECOGNIZED:Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    :cond_0
    return-object v0
.end method

.method public getProviderValue()I
    .locals 1

    .line 148
    iget v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->provider_:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->version_:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 314
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->version_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAdapterVersion()Z
    .locals 1

    .line 368
    iget v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasCustomName()Z
    .locals 2

    .line 210
    iget v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .line 289
    iget v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
