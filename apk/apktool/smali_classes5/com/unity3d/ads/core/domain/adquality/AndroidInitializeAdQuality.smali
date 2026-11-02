.class public final Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;
.super Ljava/lang/Object;
.source "AndroidInitializeAdQuality.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/adquality/InitializeAdQuality;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidInitializeAdQuality.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidInitializeAdQuality.kt\ncom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality\n*L\n1#1,135:1\n98#1,17:136\n98#1,17:153\n*S KotlinDebug\n*F\n+ 1 AndroidInitializeAdQuality.kt\ncom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality\n*L\n29#1:136,17\n38#1:153,17\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0096\u0002J\u0010\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001f\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0010\u001a\u00020\u0011H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\r2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u001cH\u0082\u0008J\u0018\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u000fH\u0002J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;",
        "Lcom/unity3d/ads/core/domain/adquality/InitializeAdQuality;",
        "context",
        "Landroid/content/Context;",
        "sendDiagnosticEvent",
        "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;",
        "logger",
        "Lcom/unity3d/ads/core/log/Logger;",
        "getGameId",
        "Lcom/unity3d/ads/core/domain/GetGameId;",
        "<init>",
        "(Landroid/content/Context;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/log/Logger;Lcom/unity3d/ads/core/domain/GetGameId;)V",
        "invoke",
        "",
        "appKey",
        "",
        "sessionToken",
        "Lcom/google/protobuf/ByteString;",
        "invokeWithGameId",
        "startInitialization",
        "Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;",
        "buildConfig",
        "startTime",
        "Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;",
        "buildConfig-LaDbsBc",
        "(JLcom/google/protobuf/ByteString;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;",
        "safeRun",
        "block",
        "Lkotlin/Function0;",
        "reportLoadFailure",
        "e",
        "",
        "fallbackReason",
        "mapLogLevel",
        "Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;",
        "logLevelInternal",
        "Lcom/unity3d/ads/core/log/LogLevelInternal;",
        "unity-ads_defaultRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final getGameId:Lcom/unity3d/ads/core/domain/GetGameId;

.field private final logger:Lcom/unity3d/ads/core/log/Logger;

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;


# direct methods
.method public static synthetic $r8$lambda$lTlFfNrDT9ZxdTBSKf_sskRQShM(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->reportLoadFailure$lambda$3(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/log/Logger;Lcom/unity3d/ads/core/domain/GetGameId;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendDiagnosticEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getGameId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 24
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->logger:Lcom/unity3d/ads/core/log/Logger;

    .line 25
    iput-object p4, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->getGameId:Lcom/unity3d/ads/core/domain/GetGameId;

    return-void
.end method

.method public static final synthetic access$getLogger$p(Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;)Lcom/unity3d/ads/core/log/Logger;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->logger:Lcom/unity3d/ads/core/log/Logger;

    return-object p0
.end method

.method public static final synthetic access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    return-object p0
.end method

.method private final buildConfig-LaDbsBc(JLcom/google/protobuf/ByteString;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->logger:Lcom/unity3d/ads/core/log/Logger;

    invoke-interface {v0}, Lcom/unity3d/ads/core/log/Logger;->getLogLevel()Lcom/unity3d/ads/core/log/LogLevelInternal;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->mapLogLevel(Lcom/unity3d/ads/core/log/LogLevelInternal;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    move-result-object v0

    .line 58
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    invoke-direct {v1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;-><init>()V

    .line 59
    const-string v2, "UnityAds"

    invoke-virtual {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->setInitializationSource(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->setLogLevel(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 61
    invoke-static {p3, v3, v1, v2}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toBase64$default(Lcom/google/protobuf/ByteString;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "uads_session_token"

    invoke-virtual {v0, v1, p3}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->setMetaData(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    move-result-object p3

    .line 63
    new-instance v0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$buildConfig$configBuilder$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$buildConfig$configBuilder$1;-><init>(JLcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;)V

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;

    .line 62
    invoke-virtual {p3, v0}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->addAdQualityInitListener(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    move-result-object p1

    .line 90
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getUserIdentifier()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p1, p2}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->setUserId(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig$Builder;->build()Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final mapLogLevel(Lcom/unity3d/ads/core/log/LogLevelInternal;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;
    .locals 1

    .line 126
    sget-object v0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/unity3d/ads/core/log/LogLevelInternal;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 131
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->VERBOSE:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    return-object p1

    .line 126
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 130
    :cond_1
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->DEBUG:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    return-object p1

    .line 129
    :cond_2
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->INFO:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    return-object p1

    .line 128
    :cond_3
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->ERROR:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    return-object p1

    .line 127
    :cond_4
    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;->NONE:Lcom/ironsource/adqualitysdk/sdk/ISAdQualityLogLevel;

    return-object p1
.end method

.method private final reportLoadFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 13

    .line 117
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->logger:Lcom/unity3d/ads/core/log/Logger;

    new-instance v1, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/unity3d/ads/core/log/Logger;->debug(Lkotlin/jvm/functions/Function0;)V

    .line 118
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 119
    sget-object v3, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_AD_QUALITY_INIT_FAILURE_TIME:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    const-wide/16 v0, 0x0

    .line 120
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 121
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    const-string p1, "reason_debug"

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    const/16 v11, 0xf8

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 118
    invoke-static/range {v2 .. v12}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/MediationInfo;ILjava/lang/Object;)V

    return-void
.end method

.method private static final reportLoadFailure$lambda$3(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad Quality SDK not available: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final safeRun(Lkotlin/jvm/functions/Function0;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 99
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 107
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v1, "Ad Quality SDK initialization failed"

    invoke-interface {v0, v1, p1}, Lcom/unity3d/ads/core/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 109
    sget-object v3, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_AD_QUALITY_INIT_FAILURE_TIME:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    const-wide/16 v0, 0x0

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 111
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Unknown error"

    :cond_0
    const-string v0, "reason_debug"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    const/16 v11, 0xf8

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 108
    invoke-static/range {v2 .. v12}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/MediationInfo;ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 105
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    const-string p1, "NoSuchMethodError"

    invoke-direct {p0, v0, p1}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->reportLoadFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 103
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    const-string p1, "ClassNotFoundException"

    invoke-direct {p0, v0, p1}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->reportLoadFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    move-object p1, v0

    .line 101
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    const-string p1, "NoClassDefFoundError"

    invoke-direct {p0, v0, p1}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->reportLoadFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final startInitialization(Lcom/google/protobuf/ByteString;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;
    .locals 13

    .line 46
    sget-object v0, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v0}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v0

    .line 47
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    sget-object v3, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_AD_QUALITY_INIT_STARTED:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    const/16 v11, 0xfe

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v12}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/MediationInfo;ILjava/lang/Object;)V

    .line 48
    invoke-direct {p0, v0, v1, p1}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->buildConfig-LaDbsBc(JLcom/google/protobuf/ByteString;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public invoke(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V
    .locals 12

    const-string v0, "appKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    :try_start_0
    invoke-direct {p0, p2}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->startInitialization(Lcom/google/protobuf/ByteString;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;

    move-result-object p2

    .line 31
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->getInstance()Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 145
    iget-object p2, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v0, "Ad Quality SDK initialization failed"

    invoke-interface {p2, v0, p1}, Lcom/unity3d/ads/core/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 147
    sget-object v2, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_AD_QUALITY_INIT_FAILURE_TIME:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    const-wide/16 v3, 0x0

    .line 148
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 149
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Unknown error"

    :cond_0
    const-string p2, "reason_debug"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    const/16 v10, 0xf8

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 146
    invoke-static/range {v1 .. v11}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/MediationInfo;ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 143
    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "NoSuchMethodError"

    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->reportLoadFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 141
    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "ClassNotFoundException"

    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->reportLoadFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    move-object p1, v0

    .line 139
    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "NoClassDefFoundError"

    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->reportLoadFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public invokeWithGameId(Lcom/google/protobuf/ByteString;)V
    .locals 13

    const-string v0, "sessionToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->getGameId:Lcom/unity3d/ads/core/domain/GetGameId;

    invoke-interface {v0}, Lcom/unity3d/ads/core/domain/GetGameId;->invoke()Ljava/lang/String;

    move-result-object v0

    .line 37
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->startInitialization(Lcom/google/protobuf/ByteString;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;

    move-result-object p1

    .line 40
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->getInstance()Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p1}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->initializeWithGameId(Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 162
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->logger:Lcom/unity3d/ads/core/log/Logger;

    const-string v1, "Ad Quality SDK initialization failed"

    invoke-interface {v0, v1, p1}, Lcom/unity3d/ads/core/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 164
    sget-object v3, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_AD_QUALITY_INIT_FAILURE_TIME:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    const-wide/16 v0, 0x0

    .line 165
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 166
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Unknown error"

    :cond_1
    const-string v0, "reason_debug"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    const/16 v11, 0xf8

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 163
    invoke-static/range {v2 .. v12}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/MediationInfo;ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 160
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "NoSuchMethodError"

    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->reportLoadFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 158
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "ClassNotFoundException"

    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->reportLoadFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    move-object p1, v0

    .line 156
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "NoClassDefFoundError"

    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->reportLoadFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
