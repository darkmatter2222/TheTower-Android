.class Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;
.super Lorg/chromium/net/ICronetEngineBuilder;
.source "AndroidHttpEngineBuilderWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpEngBuilderWrap"

.field private static sLibraryLoaderUnsupportedLogged:Z

.field private static sNQEUnsupportedLogged:Z


# instance fields
.field private final mBackend:Landroid/net/http/HttpEngine$Builder;


# direct methods
.method public constructor <init>(Landroid/net/http/HttpEngine$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backend"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lorg/chromium/net/ICronetEngineBuilder;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    return-void
.end method

.method private static optionalBooleanToMigrationOptionState(Lorg/chromium/net/telemetry/OptionalBoolean;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 260
    sget-object v0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper$1;->$SwitchMap$org$chromium$net$telemetry$OptionalBoolean:[I

    invoke-virtual {p0}, Lorg/chromium/net/telemetry/OptionalBoolean;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid OptionalBoolean value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    return v1
.end method

.method public static parseConnectionMigrationOptions(Lorg/chromium/net/telemetry/ExperimentalOptions;)Landroid/net/http/ConnectionMigrationOptions;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .line 160
    new-instance v0, Landroid/net/http/ConnectionMigrationOptions$Builder;

    invoke-direct {v0}, Landroid/net/http/ConnectionMigrationOptions$Builder;-><init>()V

    .line 165
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getMigrateSessionsOnNetworkChangeV2Option()Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v1

    .line 164
    invoke-static {v1}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->optionalBooleanToMigrationOptionState(Lorg/chromium/net/telemetry/OptionalBoolean;)I

    move-result v1

    .line 163
    invoke-virtual {v0, v1}, Landroid/net/http/ConnectionMigrationOptions$Builder;->setDefaultNetworkMigration(I)Landroid/net/http/ConnectionMigrationOptions$Builder;

    .line 167
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getAllowPortMigration()Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->optionalBooleanToMigrationOptionState(Lorg/chromium/net/telemetry/OptionalBoolean;)I

    move-result v1

    .line 166
    invoke-virtual {v0, v1}, Landroid/net/http/ConnectionMigrationOptions$Builder;->setPathDegradationMigration(I)Landroid/net/http/ConnectionMigrationOptions$Builder;

    .line 169
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getMigrateSessionsEarlyV2()Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object p0

    .line 171
    invoke-static {p0}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->optionalBooleanToMigrationOptionState(Lorg/chromium/net/telemetry/OptionalBoolean;)I

    move-result v1

    .line 170
    invoke-virtual {v0, v1}, Landroid/net/http/ConnectionMigrationOptions$Builder;->setAllowNonDefaultNetworkUsage(I)Landroid/net/http/ConnectionMigrationOptions$Builder;

    .line 172
    sget-object v1, Lorg/chromium/net/telemetry/OptionalBoolean;->TRUE:Lorg/chromium/net/telemetry/OptionalBoolean;

    if-ne p0, v1, :cond_0

    .line 173
    sget-object p0, Lorg/chromium/net/telemetry/OptionalBoolean;->TRUE:Lorg/chromium/net/telemetry/OptionalBoolean;

    .line 174
    invoke-static {p0}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->optionalBooleanToMigrationOptionState(Lorg/chromium/net/telemetry/OptionalBoolean;)I

    move-result p0

    .line 173
    invoke-virtual {v0, p0}, Landroid/net/http/ConnectionMigrationOptions$Builder;->setPathDegradationMigration(I)Landroid/net/http/ConnectionMigrationOptions$Builder;

    .line 177
    :cond_0
    invoke-virtual {v0}, Landroid/net/http/ConnectionMigrationOptions$Builder;->build()Landroid/net/http/ConnectionMigrationOptions;

    move-result-object p0

    return-object p0
.end method

.method public static parseDnsOptions(Lorg/chromium/net/telemetry/ExperimentalOptions;)Landroid/net/http/DnsOptions;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .line 182
    new-instance v0, Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;

    invoke-direct {v0}, Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;-><init>()V

    .line 184
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getStaleDnsDelayMillisOption()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    int-to-long v3, v1

    .line 186
    invoke-static {v3, v4}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;->setFreshLookupTimeout(Ljava/time/Duration;)Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;

    .line 189
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getStaleDnsMaxExpiredTimeMillisOption()I

    move-result v1

    if-eq v1, v2, :cond_1

    int-to-long v3, v1

    .line 191
    invoke-static {v3, v4}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;->setMaxExpiredDelay(Ljava/time/Duration;)Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;

    .line 197
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getStaleDnsAllowOtherNetworkOption()Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v1

    .line 196
    invoke-static {v1}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->optionalBooleanToMigrationOptionState(Lorg/chromium/net/telemetry/OptionalBoolean;)I

    move-result v1

    .line 195
    invoke-virtual {v0, v1}, Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;->setAllowCrossNetworkUsage(I)Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;

    move-result-object v1

    .line 200
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getStaleDnsUseStaleOnNameNotResolvedOption()Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v3

    .line 199
    invoke-static {v3}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->optionalBooleanToMigrationOptionState(Lorg/chromium/net/telemetry/OptionalBoolean;)I

    move-result v3

    .line 198
    invoke-virtual {v1, v3}, Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;->setUseStaleOnNameNotResolved(I)Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;

    .line 202
    new-instance v1, Landroid/net/http/DnsOptions$Builder;

    invoke-direct {v1}, Landroid/net/http/DnsOptions$Builder;-><init>()V

    .line 206
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getAsyncDnsEnableOption()Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->optionalBooleanToMigrationOptionState(Lorg/chromium/net/telemetry/OptionalBoolean;)I

    move-result v3

    .line 205
    invoke-virtual {v1, v3}, Landroid/net/http/DnsOptions$Builder;->setUseHttpStackDnsResolver(I)Landroid/net/http/DnsOptions$Builder;

    move-result-object v3

    .line 208
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getStaleDnsEnableOption()Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->optionalBooleanToMigrationOptionState(Lorg/chromium/net/telemetry/OptionalBoolean;)I

    move-result v4

    .line 207
    invoke-virtual {v3, v4}, Landroid/net/http/DnsOptions$Builder;->setStaleDns(I)Landroid/net/http/DnsOptions$Builder;

    move-result-object v3

    .line 209
    invoke-virtual {v0}, Landroid/net/http/DnsOptions$StaleDnsOptions$Builder;->build()Landroid/net/http/DnsOptions$StaleDnsOptions;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/net/http/DnsOptions$Builder;->setStaleDnsOptions(Landroid/net/http/DnsOptions$StaleDnsOptions;)Landroid/net/http/DnsOptions$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getRaceStaleDnsOnConnection()Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v3

    .line 211
    invoke-static {v3}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->optionalBooleanToMigrationOptionState(Lorg/chromium/net/telemetry/OptionalBoolean;)I

    move-result v3

    .line 210
    invoke-virtual {v0, v3}, Landroid/net/http/DnsOptions$Builder;->setPreestablishConnectionsToStaleDnsResults(I)Landroid/net/http/DnsOptions$Builder;

    move-result-object v0

    .line 215
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getStaleDnsPersistToDiskOption()Lorg/chromium/net/telemetry/OptionalBoolean;

    move-result-object v3

    .line 214
    invoke-static {v3}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->optionalBooleanToMigrationOptionState(Lorg/chromium/net/telemetry/OptionalBoolean;)I

    move-result v3

    .line 213
    invoke-virtual {v0, v3}, Landroid/net/http/DnsOptions$Builder;->setPersistHostCache(I)Landroid/net/http/DnsOptions$Builder;

    .line 216
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getStaleDnsPersistDelayMillisOption()I

    move-result p0

    if-eq p0, v2, :cond_2

    int-to-long v2, p0

    .line 218
    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/net/http/DnsOptions$Builder;->setPersistHostCachePeriod(Ljava/time/Duration;)Landroid/net/http/DnsOptions$Builder;

    .line 221
    :cond_2
    invoke-virtual {v1}, Landroid/net/http/DnsOptions$Builder;->build()Landroid/net/http/DnsOptions;

    move-result-object p0

    return-object p0
.end method

.method public static parseQuicOptions(Lorg/chromium/net/telemetry/ExperimentalOptions;)Landroid/net/http/QuicOptions;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    .line 226
    new-instance v0, Landroid/net/http/QuicOptions$Builder;

    invoke-direct {v0}, Landroid/net/http/QuicOptions$Builder;-><init>()V

    .line 229
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getHostWhitelist()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getHostWhitelist()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 231
    invoke-virtual {v0, v4}, Landroid/net/http/QuicOptions$Builder;->addAllowedQuicHost(Ljava/lang/String;)Landroid/net/http/QuicOptions$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getMaxServerConfigsStoredInPropertiesOption()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 237
    invoke-virtual {v0, v1}, Landroid/net/http/QuicOptions$Builder;->setInMemoryServerConfigsCacheSize(I)Landroid/net/http/QuicOptions$Builder;

    .line 240
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getUserAgentId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 242
    invoke-virtual {v0, v1}, Landroid/net/http/QuicOptions$Builder;->setHandshakeUserAgent(Ljava/lang/String;)Landroid/net/http/QuicOptions$Builder;

    .line 245
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/net/telemetry/ExperimentalOptions;->getIdleConnectionTimeoutSecondsOption()I

    move-result p0

    if-eq p0, v2, :cond_3

    int-to-long v1, p0

    .line 248
    invoke-static {v1, v2}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object p0

    .line 247
    invoke-virtual {v0, p0}, Landroid/net/http/QuicOptions$Builder;->setIdleConnectionTimeout(Ljava/time/Duration;)Landroid/net/http/QuicOptions$Builder;

    .line 251
    :cond_3
    invoke-virtual {v0}, Landroid/net/http/QuicOptions$Builder;->build()Landroid/net/http/QuicOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addPublicKeyPins(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Date;)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 1
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
            "Lorg/chromium/net/ICronetEngineBuilder;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    .line 110
    invoke-virtual {p4}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object p4

    .line 109
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/net/http/HttpEngine$Builder;->addPublicKeyPins(Ljava/lang/String;Ljava/util/Set;ZLjava/time/Instant;)Landroid/net/http/HttpEngine$Builder;

    return-object p0
.end method

.method public addQuicHint(Ljava/lang/String;II)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 1
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

    .line 99
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/http/HttpEngine$Builder;->addQuicHint(Ljava/lang/String;II)Landroid/net/http/HttpEngine$Builder;

    return-object p0
.end method

.method public build()Lorg/chromium/net/ExperimentalCronetEngine;
    .locals 2

    .line 154
    new-instance v0, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;

    iget-object v1, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-virtual {v1}, Landroid/net/http/HttpEngine$Builder;->build()Landroid/net/http/HttpEngine;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/net/impl/AndroidHttpEngineWrapper;-><init>(Landroid/net/http/HttpEngine;)V

    return-object v0
.end method

.method public enableBrotli(Z)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-virtual {v0, p1}, Landroid/net/http/HttpEngine$Builder;->setEnableBrotli(Z)Landroid/net/http/HttpEngine$Builder;

    return-object p0
.end method

.method public enableHttp2(Z)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-virtual {v0, p1}, Landroid/net/http/HttpEngine$Builder;->setEnableHttp2(Z)Landroid/net/http/HttpEngine$Builder;

    return-object p0
.end method

.method public enableHttpCache(IJ)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 1
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

    .line 93
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/http/HttpEngine$Builder;->setEnableHttpCache(IJ)Landroid/net/http/HttpEngine$Builder;

    return-object p0
.end method

.method public enableNetworkQualityEstimator(Z)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 138
    sget-boolean p1, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->sNQEUnsupportedLogged:Z

    if-nez p1, :cond_0

    .line 139
    const-string p1, "HttpEngBuilderWrap"

    const-string v0, "NetworkQualityEstimator is unsupported when HttpEngineNativeProvider is used"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 142
    sput-boolean p1, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->sNQEUnsupportedLogged:Z

    :cond_0
    return-object p0
.end method

.method public enablePublicKeyPinningBypassForLocalTrustAnchors(Z)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-virtual {v0, p1}, Landroid/net/http/HttpEngine$Builder;->setEnablePublicKeyPinningBypassForLocalTrustAnchors(Z)Landroid/net/http/HttpEngine$Builder;

    return-object p0
.end method

.method public enableQuic(Z)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-virtual {v0, p1}, Landroid/net/http/HttpEngine$Builder;->setEnableQuic(Z)Landroid/net/http/HttpEngine$Builder;

    return-object p0
.end method

.method public enableSdch(Z)Lorg/chromium/net/ICronetEngineBuilder;
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

.method public getDefaultUserAgent()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-virtual {v0}, Landroid/net/http/HttpEngine$Builder;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setExperimentalOptions(Ljava/lang/String;)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stringOptions"
        }
    .end annotation

    .line 129
    new-instance v0, Lorg/chromium/net/telemetry/ExperimentalOptions;

    invoke-direct {v0, p1}, Lorg/chromium/net/telemetry/ExperimentalOptions;-><init>(Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->parseConnectionMigrationOptions(Lorg/chromium/net/telemetry/ExperimentalOptions;)Landroid/net/http/ConnectionMigrationOptions;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/http/HttpEngine$Builder;->setConnectionMigrationOptions(Landroid/net/http/ConnectionMigrationOptions;)Landroid/net/http/HttpEngine$Builder;

    .line 131
    iget-object p1, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->parseDnsOptions(Lorg/chromium/net/telemetry/ExperimentalOptions;)Landroid/net/http/DnsOptions;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/http/HttpEngine$Builder;->setDnsOptions(Landroid/net/http/DnsOptions;)Landroid/net/http/HttpEngine$Builder;

    .line 132
    iget-object p1, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-static {v0}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->parseQuicOptions(Lorg/chromium/net/telemetry/ExperimentalOptions;)Landroid/net/http/QuicOptions;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/http/HttpEngine$Builder;->setQuicOptions(Landroid/net/http/QuicOptions;)Landroid/net/http/HttpEngine$Builder;

    return-object p0
.end method

.method public setLibraryLoader(Lorg/chromium/net/CronetEngine$Builder$LibraryLoader;)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loader"
        }
    .end annotation

    .line 58
    sget-boolean p1, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->sLibraryLoaderUnsupportedLogged:Z

    if-nez p1, :cond_0

    .line 59
    const-string p1, "HttpEngBuilderWrap"

    const-string v0, "Custom library loader is unsupported when HttpEngineNativeProvider is used."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 62
    sput-boolean p1, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->sLibraryLoaderUnsupportedLogged:Z

    :cond_0
    return-object p0
.end method

.method public setStoragePath(Ljava/lang/String;)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-virtual {v0, p1}, Landroid/net/http/HttpEngine$Builder;->setStoragePath(Ljava/lang/String;)Landroid/net/http/HttpEngine$Builder;

    return-object p0
.end method

.method public setThreadPriority(I)Lorg/chromium/net/ICronetEngineBuilder;
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

.method public setUserAgent(Ljava/lang/String;)Lorg/chromium/net/ICronetEngineBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userAgent"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;->mBackend:Landroid/net/http/HttpEngine$Builder;

    invoke-virtual {v0, p1}, Landroid/net/http/HttpEngine$Builder;->setUserAgent(Ljava/lang/String;)Landroid/net/http/HttpEngine$Builder;

    return-object p0
.end method
