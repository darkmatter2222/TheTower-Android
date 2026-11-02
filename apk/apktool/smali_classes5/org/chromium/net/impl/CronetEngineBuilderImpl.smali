.class public abstract Lorg/chromium/net/impl/CronetEngineBuilderImpl;
.super Lorg/chromium/net/ICronetEngineBuilder;
.source "CronetEngineBuilderImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;,
        Lorg/chromium/net/impl/CronetEngineBuilderImpl$QuicHint;,
        Lorg/chromium/net/impl/CronetEngineBuilderImpl$Pkp;,
        Lorg/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheSetting;
    }
.end annotation


# static fields
.field private static final INVALID_PKP_HOST_NAME:Ljava/util/regex/Pattern;

.field public static final NETWORK_THREAD_PRIORITY:I

.field static sApiLevel:I


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private mBrotiEnabled:Z

.field private mExperimentalOptions:Ljava/lang/String;

.field private mHttp2Enabled:Z

.field private mHttpCacheMaxSize:J

.field private mHttpCacheMode:Lorg/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

.field protected final mLogger:Lorg/chromium/net/impl/CronetLogger;

.field protected mMockCertVerifier:J

.field private mNetworkQualityEstimatorEnabled:Z

.field private final mPkps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/net/impl/CronetEngineBuilderImpl$Pkp;",
            ">;"
        }
    .end annotation
.end field

.field private mProxyOptions:Lorg/chromium/net/impl/VersionSafeProxyOptions;

.field private mPublicKeyPinningBypassForLocalTrustAnchorsEnabled:Z

.field private mQuicEnabled:Z

.field private final mQuicHints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/net/impl/CronetEngineBuilderImpl$QuicHint;",
            ">;"
        }
    .end annotation
.end field

.field private mStoragePath:Ljava/lang/String;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 129
    const-string v0, "^[0-9\\.]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->INVALID_PKP_HOST_NAME:Ljava/util/regex/Pattern;

    .line 132
    invoke-static {}, Lorg/chromium/net/impl/VersionSafeCallbacks$ApiVersion;->getMaximumAvailableApiLevel()I

    move-result v0

    sput v0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->sApiLevel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 180
    sget-object v0, Lorg/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_UNSPECIFIED:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    invoke-direct {p0, p1, v0}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;-><init>(Landroid/content/Context;Lorg/chromium/net/impl/CronetLogger$CronetSource;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/net/impl/CronetLogger$CronetSource;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "cronetSource"
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Lorg/chromium/net/ICronetEngineBuilder;-><init>()V

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mQuicHints:Ljava/util/List;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mPkps:Ljava/util/List;

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mApplicationContext:Landroid/content/Context;

    .line 163
    invoke-static {p1, p2}, Lorg/chromium/net/impl/CronetLoggerFactory;->createLogger(Landroid/content/Context;Lorg/chromium/net/impl/CronetLogger$CronetSource;)Lorg/chromium/net/impl/CronetLogger;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mLogger:Lorg/chromium/net/impl/CronetLogger;

    const/4 p1, 0x1

    const/4 v2, 0x0

    .line 165
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->enableQuic(Z)Lorg/chromium/net/impl/CronetEngineBuilderImpl;

    .line 166
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->enableHttp2(Z)Lorg/chromium/net/impl/CronetEngineBuilderImpl;

    .line 167
    invoke-virtual {p0, v2}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->enableBrotli(Z)Lorg/chromium/net/impl/CronetEngineBuilderImpl;

    const-wide/16 v3, 0x0

    .line 168
    invoke-virtual {p0, v2, v3, v4}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->enableHttpCache(IJ)Lorg/chromium/net/impl/CronetEngineBuilderImpl;

    .line 169
    invoke-virtual {p0, v2}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->enableNetworkQualityEstimator(Z)Lorg/chromium/net/impl/CronetEngineBuilderImpl;

    .line 170
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->enablePublicKeyPinningBypassForLocalTrustAnchors(Z)Lorg/chromium/net/impl/CronetEngineBuilderImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->maybeLogCronetEngineBuilderInitializedInfo(JZLorg/chromium/net/impl/CronetLogger$CronetSource;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->maybeLogCronetEngineBuilderInitializedInfo(JZLorg/chromium/net/impl/CronetLogger$CronetSource;)V

    .line 175
    throw p1
.end method

.method private maybeLogCronetEngineBuilderInitializedInfo(JZLorg/chromium/net/impl/CronetLogger$CronetSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startUptimeMillis",
            "successful",
            "cronetSource"
        }
    .end annotation

    .line 191
    sget v0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->sApiLevel:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    return-void

    .line 193
    :cond_0
    new-instance v0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;

    invoke-direct {v0}, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;-><init>()V

    const/4 v1, 0x0

    .line 194
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->creationSuccessful:Ljava/lang/Boolean;

    .line 196
    :try_start_0
    sget-object v1, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;->IMPL:Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    iput-object v1, v0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->author:Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    .line 197
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iput v1, v0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->uid:I

    .line 198
    new-instance v1, Lorg/chromium/net/impl/CronetLogger$CronetVersion;

    invoke-static {}, Lorg/chromium/net/impl/ImplVersion;->getCronetVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/chromium/net/impl/CronetLogger$CronetVersion;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->implVersion:Lorg/chromium/net/impl/CronetLogger$CronetVersion;

    .line 199
    iput-object p4, v0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->source:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    .line 200
    new-instance p4, Lorg/chromium/net/impl/CronetLogger$CronetVersion;

    .line 202
    invoke-static {}, Lorg/chromium/net/impl/VersionSafeCallbacks$ApiVersion;->getCronetVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p4, v1}, Lorg/chromium/net/impl/CronetLogger$CronetVersion;-><init>(Ljava/lang/String;)V

    iput-object p4, v0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->apiVersion:Lorg/chromium/net/impl/CronetLogger$CronetVersion;

    .line 203
    invoke-virtual {p0}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->getLogCronetInitializationRef()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->cronetInitializationRef:J

    .line 204
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, v0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->creationSuccessful:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    sub-long/2addr p3, p1

    long-to-int p1, p3

    iput p1, v0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->engineBuilderCreatedLatencyMillis:I

    .line 208
    iget-object p1, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mLogger:Lorg/chromium/net/impl/CronetLogger;

    invoke-virtual {p1, v0}, Lorg/chromium/net/impl/CronetLogger;->logCronetEngineBuilderInitializedInfo(Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;)V

    return-void

    :catchall_0
    move-exception p3

    .line 207
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    long-to-int p1, v1

    iput p1, v0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->engineBuilderCreatedLatencyMillis:I

    .line 208
    iget-object p1, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mLogger:Lorg/chromium/net/impl/CronetLogger;

    invoke-virtual {p1, v0}, Lorg/chromium/net/impl/CronetLogger;->logCronetEngineBuilderInitializedInfo(Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;)V

    .line 209
    throw p3
.end method

.method private static validateHostNameForPinningAndConvert(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hostName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 427
    sget-object v0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->INVALID_PKP_HOST_NAME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "Hostname "

    if-nez v0, :cond_1

    .line 435
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xff

    if-gt v0, v2, :cond_0

    const/4 v0, 0x2

    .line 443
    :try_start_0
    invoke-static {p0, v0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 445
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " is illegal. The name of the host does not comply with RFC 1122 and RFC 1123."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " is too long. The name of the host does not comply with RFC 1122 and RFC 1123."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " is illegal. A hostname should not consist of digits and/or dots only."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic addPublicKeyPins(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Date;)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "hostName",
            "pinsSha256",
            "includeSubdomains",
            "expirationDate"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->addPublicKeyPins(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Date;)Lorg/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public addPublicKeyPins(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Date;)Lorg/chromium/net/impl/CronetEngineBuilderImpl;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hostName",
            "pinsSha256",
            "includeSubdomains",
            "expirationDate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "[B>;Z",
            "Ljava/util/Date;",
            ")",
            "Lorg/chromium/net/impl/CronetEngineBuilderImpl;"
        }
    .end annotation

    .line 368
    const-string v0, "The hostname cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 369
    const-string v0, "The set of SHA256 pins cannot be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 370
    const-string v0, "The pin expiration date cannot be null."

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 372
    invoke-static {p1}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->validateHostNameForPinningAndConvert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 374
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 375
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_0

    .line 376
    array-length v2, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    .line 379
    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 377
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Public key pin is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 382
    :cond_1
    iget-object p2, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mPkps:Ljava/util/List;

    new-instance v1, Lorg/chromium/net/impl/CronetEngineBuilderImpl$Pkp;

    .line 385
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [[B

    invoke-interface {v2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    invoke-direct {v1, p1, v0, p3, p4}, Lorg/chromium/net/impl/CronetEngineBuilderImpl$Pkp;-><init>(Ljava/lang/String;[[BZLjava/util/Date;)V

    .line 382
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "host",
            "port",
            "alternatePort"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/impl/CronetEngineBuilderImpl;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "host",
            "port",
            "alternatePort"
        }
    .end annotation

    .line 351
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mQuicHints:Ljava/util/List;

    new-instance v1, Lorg/chromium/net/impl/CronetEngineBuilderImpl$QuicHint;

    invoke-direct {v1, p1, p2, p3}, Lorg/chromium/net/impl/CronetEngineBuilderImpl$QuicHint;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 352
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Illegal QUIC Hint Host: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method brotliEnabled()Z
    .locals 1

    .line 305
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mBrotiEnabled:Z

    return v0
.end method

.method cacheDisabled()Z
    .locals 1

    .line 332
    iget-object v0, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mHttpCacheMode:Lorg/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    invoke-virtual {v0}, Lorg/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->isContentCacheEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic enableBrotli(Z)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->enableBrotli(Z)Lorg/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public enableBrotli(Z)Lorg/chromium/net/impl/CronetEngineBuilderImpl;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 299
    iput-boolean p1, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mBrotiEnabled:Z

    return-object p0
.end method

.method public bridge synthetic enableHttp2(Z)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->enableHttp2(Z)Lorg/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public enableHttp2(Z)Lorg/chromium/net/impl/CronetEngineBuilderImpl;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 283
    iput-boolean p1, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mHttp2Enabled:Z

    return-object p0
.end method

.method public bridge synthetic enableHttpCache(IJ)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "cacheMode",
            "maxSize"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->enableHttpCache(IJ)Lorg/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public enableHttpCache(IJ)Lorg/chromium/net/impl/CronetEngineBuilderImpl;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cacheMode",
            "maxSize"
        }
    .end annotation

    .line 319
    invoke-static {p1}, Lorg/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->fromPublicBuilderCacheMode(I)Lorg/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    move-result-object p1

    .line 321
    invoke-virtual {p1}, Lorg/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->storagePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Storage path must be set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 325
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mHttpCacheMode:Lorg/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    .line 326
    iput-wide p2, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mHttpCacheMaxSize:J

    return-object p0
.end method

.method public bridge synthetic enableNetworkQualityEstimator(Z)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->enableNetworkQualityEstimator(Z)Lorg/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public enableNetworkQualityEstimator(Z)Lorg/chromium/net/impl/CronetEngineBuilderImpl;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 490
    iput-boolean p1, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mNetworkQualityEstimatorEnabled:Z

    return-object p0
.end method

.method public bridge synthetic enablePublicKeyPinningBypassForLocalTrustAnchors(Z)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->enablePublicKeyPinningBypassForLocalTrustAnchors(Z)Lorg/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public enablePublicKeyPinningBypassForLocalTrustAnchors(Z)Lorg/chromium/net/impl/CronetEngineBuilderImpl;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 401
    iput-boolean p1, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mPublicKeyPinningBypassForLocalTrustAnchorsEnabled:Z

    return-object p0
.end method

.method public bridge synthetic enableQuic(Z)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->enableQuic(Z)Lorg/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public enableQuic(Z)Lorg/chromium/net/impl/CronetEngineBuilderImpl;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 262
    iput-boolean p1, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mQuicEnabled:Z

    return-object p0
.end method

.method public bridge synthetic enableSdch(Z)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->enableSdch(Z)Lorg/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public enableSdch(Z)Lorg/chromium/net/impl/CronetEngineBuilderImpl;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    return-object p0
.end method

.method public experimentalOptions()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mExperimentalOptions:Ljava/lang/String;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 537
    iget-object v0, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method getDefaultQuicUserAgentId()Ljava/lang/String;
    .locals 1

    .line 278
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mQuicEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/net/impl/UserAgent;->getQuicUserAgentIdFrom(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getDefaultUserAgent()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/net/impl/UserAgent;->from(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLogCronetInitializationRef()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getProxyOptions()Lorg/chromium/net/impl/VersionSafeProxyOptions;
    .locals 1

    .line 510
    iget-object v0, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mProxyOptions:Lorg/chromium/net/impl/VersionSafeProxyOptions;

    return-object v0
.end method

.method public getSupportedConfigOptions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 515
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x4

    .line 516
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 517
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getUserAgent()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method http2Enabled()Z
    .locals 1

    .line 289
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mHttp2Enabled:Z

    return v0
.end method

.method httpCacheMaxSize()J
    .locals 2

    .line 336
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mHttpCacheMaxSize:J

    return-wide v0
.end method

.method httpCacheMode()I
    .locals 1

    .line 341
    iget-object v0, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mHttpCacheMode:Lorg/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    invoke-virtual {v0}, Lorg/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->getType()I

    move-result v0

    return v0
.end method

.method libraryLoader()Lorg/chromium/net/impl/VersionSafeCallbacks$LibraryLoader;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method mockCertVerifier()J
    .locals 2

    .line 476
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mMockCertVerifier:J

    return-wide v0
.end method

.method networkQualityEstimatorEnabled()Z
    .locals 1

    .line 485
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mNetworkQualityEstimatorEnabled:Z

    return v0
.end method

.method publicBuilderHttpCacheMode()I
    .locals 1

    .line 346
    iget-object v0, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mHttpCacheMode:Lorg/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    invoke-virtual {v0}, Lorg/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->toPublicBuilderCacheMode()I

    move-result v0

    return v0
.end method

.method publicKeyPinningBypassForLocalTrustAnchorsEnabled()Z
    .locals 1

    .line 407
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mPublicKeyPinningBypassForLocalTrustAnchorsEnabled:Z

    return v0
.end method

.method publicKeyPins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/net/impl/CronetEngineBuilderImpl$Pkp;",
            ">;"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mPkps:Ljava/util/List;

    return-object v0
.end method

.method quicEnabled()Z
    .locals 1

    .line 268
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mQuicEnabled:Z

    return v0
.end method

.method quicHints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/net/impl/CronetEngineBuilderImpl$QuicHint;",
            ">;"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mQuicHints:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic setExperimentalOptions(Ljava/lang/String;)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "options"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->setExperimentalOptions(Ljava/lang/String;)Lorg/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public setExperimentalOptions(Ljava/lang/String;)Lorg/chromium/net/impl/CronetEngineBuilderImpl;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .line 455
    iput-object p1, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mExperimentalOptions:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setLibraryLoader(Lorg/chromium/net/CronetEngine$Builder$LibraryLoader;)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "loader"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->setLibraryLoader(Lorg/chromium/net/CronetEngine$Builder$LibraryLoader;)Lorg/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public setLibraryLoader(Lorg/chromium/net/CronetEngine$Builder$LibraryLoader;)Lorg/chromium/net/impl/CronetEngineBuilderImpl;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loader"
        }
    .end annotation

    return-object p0
.end method

.method public setMockCertVerifierForTesting(J)Lorg/chromium/net/impl/CronetEngineBuilderImpl;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mockCertVerifier"
        }
    .end annotation

    .line 471
    iput-wide p1, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mMockCertVerifier:J

    return-object p0
.end method

.method public bridge synthetic setProxyOptions(Lorg/chromium/net/ProxyOptions;)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "proxyOptions"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->setProxyOptions(Lorg/chromium/net/ProxyOptions;)Lorg/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public setProxyOptions(Lorg/chromium/net/ProxyOptions;)Lorg/chromium/net/impl/CronetEngineBuilderImpl;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proxyOptions"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 503
    new-instance v0, Lorg/chromium/net/impl/VersionSafeProxyOptions;

    invoke-direct {v0, p1}, Lorg/chromium/net/impl/VersionSafeProxyOptions;-><init>(Lorg/chromium/net/ProxyOptions;)V

    iput-object v0, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mProxyOptions:Lorg/chromium/net/impl/VersionSafeProxyOptions;

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setStoragePath(Ljava/lang/String;)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->setStoragePath(Ljava/lang/String;)Lorg/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public setStoragePath(Ljava/lang/String;)Lorg/chromium/net/impl/CronetEngineBuilderImpl;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iput-object p1, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mStoragePath:Ljava/lang/String;

    return-object p0

    .line 231
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Storage path must be set to existing directory"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setThreadPriority(I)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "priority"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->setThreadPriority(I)Lorg/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public setThreadPriority(I)Lorg/chromium/net/impl/CronetEngineBuilderImpl;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "priority"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic setUserAgent(Ljava/lang/String;)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "userAgent"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->setUserAgent(Ljava/lang/String;)Lorg/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public setUserAgent(Ljava/lang/String;)Lorg/chromium/net/impl/CronetEngineBuilderImpl;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userAgent"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mUserAgent:Ljava/lang/String;

    return-object p0
.end method

.method storagePath()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->mStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method toLoggerInfo()Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;
    .locals 13

    .line 541
    new-instance v0, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;

    .line 542
    invoke-virtual {p0}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->publicKeyPinningBypassForLocalTrustAnchorsEnabled()Z

    move-result v1

    .line 543
    invoke-virtual {p0}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    .line 544
    invoke-virtual {p0}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->storagePath()Ljava/lang/String;

    move-result-object v3

    .line 545
    invoke-virtual {p0}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->quicEnabled()Z

    move-result v4

    .line 546
    invoke-virtual {p0}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->http2Enabled()Z

    move-result v5

    .line 547
    invoke-virtual {p0}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->brotliEnabled()Z

    move-result v6

    .line 548
    invoke-virtual {p0}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->publicBuilderHttpCacheMode()I

    move-result v7

    .line 549
    invoke-virtual {p0}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->experimentalOptions()Ljava/lang/String;

    move-result-object v8

    .line 550
    invoke-virtual {p0}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->networkQualityEstimatorEnabled()Z

    move-result v9

    const/4 v10, 0x0

    .line 552
    invoke-virtual {p0}, Lorg/chromium/net/impl/CronetEngineBuilderImpl;->getLogCronetInitializationRef()J

    move-result-wide v11

    invoke-direct/range {v0 .. v12}, Lorg/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ZIJ)V

    return-object v0
.end method
