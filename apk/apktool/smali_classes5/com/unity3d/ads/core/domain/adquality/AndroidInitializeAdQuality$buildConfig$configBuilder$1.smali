.class public final Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$buildConfig$configBuilder$1;
.super Ljava/lang/Object;
.source "AndroidInitializeAdQuality.kt"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->buildConfig-LaDbsBc(JLcom/google/protobuf/ByteString;)Lcom/ironsource/adqualitysdk/sdk/ISAdQualityConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$buildConfig$configBuilder$1",
        "Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitListener;",
        "adQualitySdkInitSuccess",
        "",
        "adQualitySdkInitFailed",
        "isAdQualityInitError",
        "Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;",
        "message",
        "",
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
.field final synthetic $startTime:J

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;


# direct methods
.method constructor <init>(JLcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;)V
    .locals 0

    iput-wide p1, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$buildConfig$configBuilder$1;->$startTime:J

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$buildConfig$configBuilder$1;->this$0:Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adQualitySdkInitFailed(Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "isAdQualityInitError"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "message"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-wide v4, v0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$buildConfig$configBuilder$1;->$startTime:J

    invoke-static {v4, v5}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v4

    long-to-double v4, v4

    .line 77
    iget-object v2, v0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$buildConfig$configBuilder$1;->this$0:Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;

    invoke-static {v2}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    move-result-object v6

    .line 78
    sget-object v7, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_AD_QUALITY_INIT_FAILURE_TIME:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    .line 79
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v2, 0x2

    .line 81
    new-array v4, v2, [Lkotlin/Pair;

    const-string v5, "reason"

    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/ISAdQualityInitError;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 82
    const-string v3, "reason_debug"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    .line 80
    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v9

    const/16 v15, 0xf8

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 77
    invoke-static/range {v6 .. v16}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/MediationInfo;ILjava/lang/Object;)V

    .line 85
    iget-object v3, v0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$buildConfig$configBuilder$1;->this$0:Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;

    invoke-static {v3}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->access$getLogger$p(Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;)Lcom/unity3d/ads/core/log/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Ad Quality failed to initialize: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v2, v4}, Lcom/unity3d/ads/core/log/Logger$DefaultImpls;->error$default(Lcom/unity3d/ads/core/log/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public adQualitySdkInitSuccess()V
    .locals 14

    .line 65
    iget-wide v0, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$buildConfig$configBuilder$1;->$startTime:J

    invoke-static {v0, v1}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v0

    long-to-double v0, v0

    .line 66
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality$buildConfig$configBuilder$1;->this$0:Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;

    invoke-static {v2}, Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;->access$getSendDiagnosticEvent$p(Lcom/unity3d/ads/core/domain/adquality/AndroidInitializeAdQuality;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    move-result-object v3

    .line 67
    sget-object v4, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;->DIAGNOSTIC_EVENT_TYPE_NATIVE_AD_QUALITY_INIT_SUCCESS_TIME:Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 66
    invoke-static/range {v3 .. v13}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;Lcom/google/protobuf/ByteString;Lcom/unity3d/ads/MediationInfo;ILjava/lang/Object;)V

    return-void
.end method
