.class public final Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CampaignMetadataOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/CampaignMetadataOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CampaignMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;",
        ">;",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadataOrBuilder;"
    }
.end annotation


# static fields
.field public static final AD_DATA_REFRESH_DELAY_MS_FIELD_NUMBER:I = 0x4

.field public static final ASSETS_TO_CACHE_FIELD_NUMBER:I = 0x3

.field public static final CAMPAIGN_STATE_DATA_FIELD_NUMBER:I = 0x2

.field public static final CAMPAIGN_STATE_DATA_VERSION_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final TTL_SECONDS_FIELD_NUMBER:I = 0x5


# instance fields
.field private adDataRefreshDelayMs_:I

.field private assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;",
            ">;"
        }
    .end annotation
.end field

.field private campaignStateDataVersion_:I

.field private campaignStateData_:Lcom/google/protobuf/ByteString;

.field private ttlSeconds_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1110
    new-instance v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-direct {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;-><init>()V

    .line 1113
    sput-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    .line 1114
    const-class v1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 487
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 488
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->campaignStateData_:Lcom/google/protobuf/ByteString;

    .line 489
    invoke-static {}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$1000(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;I)V
    .locals 0

    .line 482
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->setCampaignStateDataVersion(I)V

    return-void
.end method

.method static synthetic access$1100(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V
    .locals 0

    .line 482
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->clearCampaignStateDataVersion()V

    return-void
.end method

.method static synthetic access$1200(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 482
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->setCampaignStateData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1300(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V
    .locals 0

    .line 482
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->clearCampaignStateData()V

    return-void
.end method

.method static synthetic access$1400(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V
    .locals 0

    .line 482
    invoke-direct {p0, p1, p2}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->setAssetsToCache(ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V

    return-void
.end method

.method static synthetic access$1500(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V
    .locals 0

    .line 482
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->addAssetsToCache(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V

    return-void
.end method

.method static synthetic access$1600(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V
    .locals 0

    .line 482
    invoke-direct {p0, p1, p2}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->addAssetsToCache(ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V

    return-void
.end method

.method static synthetic access$1700(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;Ljava/lang/Iterable;)V
    .locals 0

    .line 482
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->addAllAssetsToCache(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1800(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V
    .locals 0

    .line 482
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->clearAssetsToCache()V

    return-void
.end method

.method static synthetic access$1900(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;I)V
    .locals 0

    .line 482
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->removeAssetsToCache(I)V

    return-void
.end method

.method static synthetic access$2000(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;I)V
    .locals 0

    .line 482
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->setAdDataRefreshDelayMs(I)V

    return-void
.end method

.method static synthetic access$2100(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V
    .locals 0

    .line 482
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->clearAdDataRefreshDelayMs()V

    return-void
.end method

.method static synthetic access$2200(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;I)V
    .locals 0

    .line 482
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->setTtlSeconds(I)V

    return-void
.end method

.method static synthetic access$2300(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V
    .locals 0

    .line 482
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->clearTtlSeconds()V

    return-void
.end method

.method static synthetic access$900()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .locals 1

    .line 482
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object v0
.end method

.method private addAllAssetsToCache(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;",
            ">;)V"
        }
    .end annotation

    .line 620
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->ensureAssetsToCacheIsMutable()V

    .line 621
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAssetsToCache(ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V
    .locals 1

    .line 611
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 612
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->ensureAssetsToCacheIsMutable()V

    .line 613
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addAssetsToCache(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V
    .locals 1

    .line 602
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 603
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->ensureAssetsToCacheIsMutable()V

    .line 604
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAdDataRefreshDelayMs()V
    .locals 1

    const/4 v0, 0x0

    .line 673
    iput v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->adDataRefreshDelayMs_:I

    return-void
.end method

.method private clearAssetsToCache()V
    .locals 1

    .line 628
    invoke-static {}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearCampaignStateData()V
    .locals 1

    .line 541
    invoke-static {}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getDefaultInstance()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getCampaignStateData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->campaignStateData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearCampaignStateDataVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 514
    iput v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->campaignStateDataVersion_:I

    return-void
.end method

.method private clearTtlSeconds()V
    .locals 1

    const/4 v0, 0x0

    .line 711
    iput v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->ttlSeconds_:I

    return-void
.end method

.method private ensureAssetsToCacheIsMutable()V
    .locals 2

    .line 582
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 583
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 585
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .locals 1

    .line 1119
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .locals 1

    .line 791
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .locals 1

    .line 794
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 767
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 774
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 730
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 737
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 779
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 786
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 754
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 761
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 717
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 724
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 742
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 749
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;",
            ">;"
        }
    .end annotation

    .line 1125
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeAssetsToCache(I)V
    .locals 1

    .line 634
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->ensureAssetsToCacheIsMutable()V

    .line 635
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAdDataRefreshDelayMs(I)V
    .locals 0

    .line 662
    iput p1, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->adDataRefreshDelayMs_:I

    return-void
.end method

.method private setAssetsToCache(ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V
    .locals 1

    .line 594
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 595
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->ensureAssetsToCacheIsMutable()V

    .line 596
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setCampaignStateData(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 532
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 534
    iput-object p1, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->campaignStateData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setCampaignStateDataVersion(I)V
    .locals 0

    .line 507
    iput p1, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->campaignStateDataVersion_:I

    return-void
.end method

.method private setTtlSeconds(I)V
    .locals 0

    .line 700
    iput p1, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->ttlSeconds_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1056
    sget-object p2, Lgatewayprotocol/v1/CampaignMetadataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1103
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1097
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1082
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1084
    const-class p2, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    monitor-enter p2

    .line 1085
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1087
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1090
    sput-object p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->PARSER:Lcom/google/protobuf/Parser;

    .line 1092
    :cond_0
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object p1

    .line 1079
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    return-object p1

    .line 1064
    :pswitch_4
    const-string v0, "campaignStateDataVersion_"

    const-string v1, "campaignStateData_"

    const-string v2, "assetsToCache_"

    const-class v3, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    const-string v4, "adDataRefreshDelayMs_"

    const-string v5, "ttlSeconds_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 1072
    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u0004\u0002\n\u0003\u001b\u0004\u0004\u0005\u0004"

    .line 1075
    sget-object p3, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1061
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;-><init>(Lgatewayprotocol/v1/CampaignMetadataOuterClass$1;)V

    return-object p1

    .line 1058
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-direct {p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;-><init>()V

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

.method public getAdDataRefreshDelayMs()I
    .locals 1

    .line 650
    iget v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->adDataRefreshDelayMs_:I

    return v0
.end method

.method public getAssetsToCache(I)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .locals 1

    .line 572
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p1
.end method

.method public getAssetsToCacheCount()I
    .locals 1

    .line 565
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getAssetsToCacheList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;",
            ">;"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAssetsToCacheOrBuilder(I)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAssetOrBuilder;
    .locals 1

    .line 579
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAssetOrBuilder;

    return-object p1
.end method

.method public getAssetsToCacheOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAssetOrBuilder;",
            ">;"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->assetsToCache_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getCampaignStateData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 525
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->campaignStateData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCampaignStateDataVersion()I
    .locals 1

    .line 499
    iget v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->campaignStateDataVersion_:I

    return v0
.end method

.method public getTtlSeconds()I
    .locals 1

    .line 688
    iget v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->ttlSeconds_:I

    return v0
.end method
