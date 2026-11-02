.class public final Lcom/unity3d/ads/core/domain/events/AndroidGetAdRevenueEventData;
.super Ljava/lang/Object;
.source "AndroidGetAdRevenueEventData.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/events/GetAdRevenueEventData;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidGetAdRevenueEventData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidGetAdRevenueEventData.kt\ncom/unity3d/ads/core/domain/events/AndroidGetAdRevenueEventData\n+ 2 AdRevenueDataKt.kt\ngatewayprotocol/v1/AdRevenueDataKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,33:1\n10#2:34\n1#3:35\n1#3:36\n*S KotlinDebug\n*F\n+ 1 AndroidGetAdRevenueEventData.kt\ncom/unity3d/ads/core/domain/events/AndroidGetAdRevenueEventData\n*L\n12#1:34\n12#1:35\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0011\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0096\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/unity3d/ads/core/domain/events/AndroidGetAdRevenueEventData;",
        "Lcom/unity3d/ads/core/domain/events/GetAdRevenueEventData;",
        "<init>",
        "()V",
        "invoke",
        "Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;",
        "data",
        "Lcom/unity3d/ads/core/data/model/AdRevenueData;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/unity3d/ads/core/data/model/AdRevenueData;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;
    .locals 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->Companion:Lgatewayprotocol/v1/AdRevenueDataKt$Dsl$Companion;

    invoke-static {}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->newBuilder()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;

    move-result-object v1

    const-string v2, "newBuilder(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;)Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;

    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/AdRevenueData;->getEventId()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toByteString(Ljava/util/UUID;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->setEventId(Lcom/google/protobuf/ByteString;)V

    .line 14
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/AdRevenueData;->getRevenue()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->setRevenue(D)V

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/AdRevenueData;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->setCountryCode(Ljava/lang/String;)V

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/AdRevenueData;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->setNetworkName(Ljava/lang/String;)V

    .line 17
    :cond_2
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/AdRevenueData;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->setAdUnitId(Ljava/lang/String;)V

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/AdRevenueData;->getThirdPartyAdPlacementId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->setThirdPartyAdPlacementId(Ljava/lang/String;)V

    .line 19
    :cond_4
    invoke-virtual {p1}, Lcom/unity3d/ads/core/data/model/AdRevenueData;->getAdFormat()Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/unity3d/ads/core/domain/events/AndroidGetAdRevenueEventDataKt;->access$toProto(Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    move-result-object p1

    if-nez p1, :cond_6

    :cond_5
    sget-object p1, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_UNSPECIFIED:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    :cond_6
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->setAdFormat(Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V

    .line 34
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueDataKt$Dsl;->_build()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    move-result-object p1

    return-object p1
.end method
