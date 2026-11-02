.class public final Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CampaignMetadataOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAssetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/CampaignMetadataOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CampaignAsset"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;",
        ">;",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAssetOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIORITY_FIELD_NUMBER:I = 0x2

.field public static final REQUIRED_FIELD_NUMBER:I = 0x3

.field public static final URL_FIELD_NUMBER:I = 0x1


# instance fields
.field private priority_:I

.field private required_:Z

.field private url_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 410
    new-instance v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-direct {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;-><init>()V

    .line 413
    sput-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    .line 414
    const-class v1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->url_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .locals 1

    .line 43
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object v0
.end method

.method static synthetic access$100(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->clearUrl()V

    return-void
.end method

.method static synthetic access$300(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->setUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->setPriority(I)V

    return-void
.end method

.method static synthetic access$500(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->clearPriority()V

    return-void
.end method

.method static synthetic access$600(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->setRequired(Z)V

    return-void
.end method

.method static synthetic access$700(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->clearRequired()V

    return-void
.end method

.method private clearPriority()V
    .locals 1

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->priority_:I

    return-void
.end method

.method private clearRequired()V
    .locals 1

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->required_:Z

    return-void
.end method

.method private clearUrl()V
    .locals 1

    .line 85
    invoke-static {}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->getDefaultInstance()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->url_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .locals 1

    .line 419
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;
    .locals 1

    .line 227
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;
    .locals 1

    .line 230
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 166
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 173
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 153
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 160
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 178
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 185
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;",
            ">;"
        }
    .end annotation

    .line 425
    sget-object v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPriority(I)V
    .locals 0

    .line 114
    iput p1, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->priority_:I

    return-void
.end method

.method private setRequired(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->required_:Z

    return-void
.end method

.method private setUrl(Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    iput-object p1, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->url_:Ljava/lang/String;

    return-void
.end method

.method private setUrlBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 93
    invoke-static {p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 94
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->url_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 359
    sget-object p2, Lgatewayprotocol/v1/CampaignMetadataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 403
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 397
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 382
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 384
    const-class p2, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    monitor-enter p2

    .line 385
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 387
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 390
    sput-object p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->PARSER:Lcom/google/protobuf/Parser;

    .line 392
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

    .line 379
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    return-object p1

    .line 367
    :pswitch_4
    const-string p1, "url_"

    const-string p2, "priority_"

    const-string p3, "required_"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 372
    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u000b\u0003\u0007"

    .line 375
    sget-object p3, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 364
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;-><init>(Lgatewayprotocol/v1/CampaignMetadataOuterClass$1;)V

    return-object p1

    .line 361
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-direct {p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;-><init>()V

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

.method public getPriority()I
    .locals 1

    .line 106
    iget v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->priority_:I

    return v0
.end method

.method public getRequired()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->required_:Z

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 68
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->url_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
