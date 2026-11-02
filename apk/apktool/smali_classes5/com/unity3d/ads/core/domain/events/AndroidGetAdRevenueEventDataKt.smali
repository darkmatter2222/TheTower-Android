.class public final Lcom/unity3d/ads/core/domain/events/AndroidGetAdRevenueEventDataKt;
.super Ljava/lang/Object;
.source "AndroidGetAdRevenueEventData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/events/AndroidGetAdRevenueEventDataKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "toProto",
        "Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;",
        "Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;",
        "unity-ads_defaultRelease"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$toProto(Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/unity3d/ads/core/domain/events/AndroidGetAdRevenueEventDataKt;->toProto(Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    move-result-object p0

    return-object p0
.end method

.method private static final toProto(Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;)Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
    .locals 1

    .line 25
    sget-object v0, Lcom/unity3d/ads/core/domain/events/AndroidGetAdRevenueEventDataKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/core/data/model/AdRevenueAdFormat;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 30
    sget-object p0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_NATIVE:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    return-object p0

    .line 25
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 29
    :cond_1
    sget-object p0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_REWARDED:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    return-object p0

    .line 28
    :cond_2
    sget-object p0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_INTERSTITIAL:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    return-object p0

    .line 27
    :cond_3
    sget-object p0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_MREC:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    return-object p0

    .line 26
    :cond_4
    sget-object p0, Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;->AD_FORMAT_BANNER:Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    return-object p0
.end method
