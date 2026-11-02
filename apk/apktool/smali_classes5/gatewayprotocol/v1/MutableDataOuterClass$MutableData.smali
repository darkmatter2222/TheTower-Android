.class public final Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MutableDataOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/MutableDataOuterClass$MutableDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MutableDataOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MutableData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;",
        "Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;",
        ">;",
        "Lgatewayprotocol/v1/MutableDataOuterClass$MutableDataOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALLOWED_PII_FIELD_NUMBER:I = 0xd

.field public static final CACHE_FIELD_NUMBER:I = 0xe

.field public static final CURRENT_STATE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVACY_FIELD_NUMBER:I = 0xb

.field public static final PRIVACY_FSM_FIELD_NUMBER:I = 0xf

.field public static final SESSION_COUNTERS_FIELD_NUMBER:I = 0xc

.field public static final SESSION_TOKEN_FIELD_NUMBER:I = 0xa


# instance fields
.field private allowedPii_:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

.field private bitField0_:I

.field private cache_:Lcom/google/protobuf/ByteString;

.field private currentState_:Lcom/google/protobuf/ByteString;

.field private privacyFsm_:Lcom/google/protobuf/ByteString;

.field private privacy_:Lcom/google/protobuf/ByteString;

.field private sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

.field private sessionToken_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1211
    new-instance v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-direct {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;-><init>()V

    .line 1214
    sput-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    .line 1215
    const-class v1, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 175
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 176
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->currentState_:Lcom/google/protobuf/ByteString;

    .line 177
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->sessionToken_:Lcom/google/protobuf/ByteString;

    .line 178
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->privacy_:Lcom/google/protobuf/ByteString;

    .line 179
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->cache_:Lcom/google/protobuf/ByteString;

    .line 180
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->privacyFsm_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .locals 1

    .line 170
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object v0
.end method

.method static synthetic access$100(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->setCurrentState(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1000(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->setAllowedPii(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)V

    return-void
.end method

.method static synthetic access$1100(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->mergeAllowedPii(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)V

    return-void
.end method

.method static synthetic access$1200(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->clearAllowedPii()V

    return-void
.end method

.method static synthetic access$1300(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->setCache(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->clearCache()V

    return-void
.end method

.method static synthetic access$1500(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->setPrivacyFsm(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->clearPrivacyFsm()V

    return-void
.end method

.method static synthetic access$200(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->clearCurrentState()V

    return-void
.end method

.method static synthetic access$300(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->setSessionToken(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->clearSessionToken()V

    return-void
.end method

.method static synthetic access$500(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->setPrivacy(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->clearPrivacy()V

    return-void
.end method

.method static synthetic access$700(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-void
.end method

.method static synthetic access$800(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->mergeSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-void
.end method

.method static synthetic access$900(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->clearSessionCounters()V

    return-void
.end method

.method private clearAllowedPii()V
    .locals 1

    const/4 v0, 0x0

    .line 490
    iput-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->allowedPii_:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    .line 491
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    return-void
.end method

.method private clearCache()V
    .locals 1

    .line 545
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    .line 546
    invoke-static {}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getDefaultInstance()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getCache()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->cache_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearCurrentState()V
    .locals 1

    .line 234
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    .line 235
    invoke-static {}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getDefaultInstance()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getCurrentState()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->currentState_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearPrivacy()V
    .locals 1

    .line 348
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    .line 349
    invoke-static {}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getDefaultInstance()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getPrivacy()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->privacy_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearPrivacyFsm()V
    .locals 1

    .line 604
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    .line 605
    invoke-static {}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getDefaultInstance()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getPrivacyFsm()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->privacyFsm_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSessionCounters()V
    .locals 1

    const/4 v0, 0x0

    .line 419
    iput-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 420
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    return-void
.end method

.method private clearSessionToken()V
    .locals 1

    .line 293
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    .line 294
    invoke-static {}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getDefaultInstance()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getSessionToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->sessionToken_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .locals 1

    .line 1220
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object v0
.end method

.method private mergeAllowedPii(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)V
    .locals 2

    .line 472
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 473
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->allowedPii_:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    if-eqz v0, :cond_0

    .line 474
    invoke-static {}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;->getDefaultInstance()Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 475
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->allowedPii_:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    .line 476
    invoke-static {v0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;->newBuilder(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    iput-object p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->allowedPii_:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    goto :goto_0

    .line 478
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->allowedPii_:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    .line 480
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    return-void
.end method

.method private mergeSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 2

    .line 401
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    if-eqz v0, :cond_0

    .line 403
    invoke-static {}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getDefaultInstance()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 404
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 405
    invoke-static {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->newBuilder(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    iput-object p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    goto :goto_0

    .line 407
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 409
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;
    .locals 1

    .line 685
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;
    .locals 1

    .line 688
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 661
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 668
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 624
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 631
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 673
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 680
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 655
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 611
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 618
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 636
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 643
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;",
            ">;"
        }
    .end annotation

    .line 1226
    sget-object v0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAllowedPii(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)V
    .locals 0

    .line 458
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 459
    iput-object p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->allowedPii_:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    .line 460
    iget p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    return-void
.end method

.method private setCache(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 532
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 533
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    .line 534
    iput-object p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->cache_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setCurrentState(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 221
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 222
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    .line 223
    iput-object p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->currentState_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setPrivacy(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 335
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 336
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    .line 337
    iput-object p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->privacy_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setPrivacyFsm(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 590
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    .line 592
    iput-object p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->privacyFsm_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V
    .locals 0

    .line 387
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    iput-object p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 389
    iget p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    return-void
.end method

.method private setSessionToken(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 279
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 280
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    .line 281
    iput-object p1, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->sessionToken_:Lcom/google/protobuf/ByteString;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1154
    sget-object p2, Lgatewayprotocol/v1/MutableDataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1204
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1198
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1183
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1185
    const-class p2, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    monitor-enter p2

    .line 1186
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1188
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1191
    sput-object p1, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->PARSER:Lcom/google/protobuf/Parser;

    .line 1193
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

    .line 1180
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    return-object p1

    .line 1162
    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "currentState_"

    const-string v2, "sessionToken_"

    const-string v3, "privacy_"

    const-string v4, "sessionCounters_"

    const-string v5, "allowedPii_"

    const-string v6, "cache_"

    const-string v7, "privacyFsm_"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    .line 1172
    const-string p2, "\u0000\u0007\u0000\u0001\u0001\u000f\u0007\u0000\u0000\u0000\u0001\u100a\u0000\n\u100a\u0001\u000b\u100a\u0002\u000c\u1009\u0003\r\u1009\u0004\u000e\u100a\u0005\u000f\u100a\u0006"

    .line 1176
    sget-object p3, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1159
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;-><init>(Lgatewayprotocol/v1/MutableDataOuterClass$1;)V

    return-object p1

    .line 1156
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-direct {p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;-><init>()V

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

.method public getAllowedPii()Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;
    .locals 1

    .line 447
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->allowedPii_:Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;->getDefaultInstance()Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCache()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 520
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->cache_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCurrentState()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 209
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->currentState_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPrivacy()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 323
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->privacy_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPrivacyFsm()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 577
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->privacyFsm_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .locals 1

    .line 376
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->sessionCounters_:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getDefaultInstance()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSessionToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 266
    iget-object v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->sessionToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasAllowedPii()Z
    .locals 1

    .line 435
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasCache()Z
    .locals 1

    .line 507
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasCurrentState()Z
    .locals 2

    .line 196
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrivacy()Z
    .locals 1

    .line 310
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrivacyFsm()Z
    .locals 1

    .line 563
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasSessionCounters()Z
    .locals 1

    .line 364
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasSessionToken()Z
    .locals 1

    .line 252
    iget v0, p0, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
