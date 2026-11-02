.class public final Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RewardedOffersResponseOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/RewardedOffersResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RewardedOffersResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;",
        "Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;",
        ">;",
        "Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponseOrBuilder;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

.field public static final ERROR_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final REWARDED_OFFERS_FIELD_NUMBER:I = 0x1

.field public static final REWARDED_OFFERS_VERSION_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

.field private rewardedOffersVersion_:I

.field private rewardedOffers_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 541
    new-instance v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-direct {v0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;-><init>()V

    .line 544
    sput-object v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    .line 545
    const-class v1, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 76
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->rewardedOffers_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;
    .locals 1

    .line 70
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    return-object v0
.end method

.method static synthetic access$100(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->setRewardedOffers(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->clearRewardedOffers()V

    return-void
.end method

.method static synthetic access$300(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->setRewardedOffersVersion(I)V

    return-void
.end method

.method static synthetic access$400(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->clearRewardedOffersVersion()V

    return-void
.end method

.method static synthetic access$500(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-void
.end method

.method static synthetic access$600(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->mergeError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-void
.end method

.method static synthetic access$700(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->clearError()V

    return-void
.end method

.method private clearError()V
    .locals 1

    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 219
    iget v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->bitField0_:I

    return-void
.end method

.method private clearRewardedOffers()V
    .locals 1

    .line 115
    invoke-static {}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->getDefaultInstance()Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->getRewardedOffers()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->rewardedOffers_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearRewardedOffersVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 153
    iput v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->rewardedOffersVersion_:I

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;
    .locals 1

    .line 550
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    return-object v0
.end method

.method private mergeError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .locals 2

    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 202
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    if-eqz v0, :cond_0

    .line 203
    invoke-static {}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getDefaultInstance()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 205
    invoke-static {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->newBuilder(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    iput-object p1, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    goto :goto_0

    .line 207
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 209
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;
    .locals 1

    .line 299
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;)Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;
    .locals 1

    .line 302
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 238
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 245
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 225
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 232
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 250
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 257
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;",
            ">;"
        }
    .end annotation

    .line 556
    sget-object v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .locals 0

    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    iput-object p1, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 190
    iget p1, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->bitField0_:I

    return-void
.end method

.method private setRewardedOffers(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    iput-object p1, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->rewardedOffers_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setRewardedOffersVersion(I)V
    .locals 0

    .line 142
    iput p1, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->rewardedOffersVersion_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 489
    sget-object p2, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 534
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 528
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 513
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 515
    const-class p2, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    monitor-enter p2

    .line 516
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 518
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 521
    sput-object p1, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 523
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

    .line 510
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    return-object p1

    .line 497
    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "rewardedOffers_"

    const-string p3, "rewardedOffersVersion_"

    const-string v0, "error_"

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 503
    const-string p2, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0002\u0004\u0003\u1009\u0000"

    .line 506
    sget-object p3, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 494
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;-><init>(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$1;)V

    return-object p1

    .line 491
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-direct {p1}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;-><init>()V

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

.method public getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 1

    .line 178
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getDefaultInstance()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRewardedOffers()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 91
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->rewardedOffers_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRewardedOffersVersion()I
    .locals 1

    .line 130
    iget v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->rewardedOffersVersion_:I

    return v0
.end method

.method public hasError()Z
    .locals 2

    .line 167
    iget v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
