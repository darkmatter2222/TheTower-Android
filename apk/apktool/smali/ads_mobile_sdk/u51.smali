.class public final Lads_mobile_sdk/u51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAdEventCallback;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/v51;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/v51;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/u51;->a:Lads_mobile_sdk/v51;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 6

    .line 72
    iget-object v0, p0, Lads_mobile_sdk/u51;->a:Lads_mobile_sdk/v51;

    .line 73
    iget-object v1, v0, Lads_mobile_sdk/v51;->c:Lads_mobile_sdk/h51;

    .line 74
    iget-wide v2, v0, Lads_mobile_sdk/v51;->b:J

    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 77
    const-string v4, "eventCategory"

    const-string v5, "rewarded"

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v4, "event"

    const-string v5, "onAdClicked"

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "objectId"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 81
    invoke-virtual {v1, v0}, Lads_mobile_sdk/h51;->a(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public final onAdDismissedFullScreenContent()V
    .locals 6

    .line 76
    iget-object v0, p0, Lads_mobile_sdk/u51;->a:Lads_mobile_sdk/v51;

    .line 77
    iget-object v1, v0, Lads_mobile_sdk/v51;->c:Lads_mobile_sdk/h51;

    .line 78
    iget-wide v2, v0, Lads_mobile_sdk/v51;->b:J

    .line 79
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 81
    const-string v4, "eventCategory"

    const-string v5, "rewarded"

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v4, "event"

    const-string v5, "onRewardedAdClosed"

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "objectId"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 85
    invoke-virtual {v1, v0}, Lads_mobile_sdk/h51;->a(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public final onAdFailedToShowFullScreenContent(Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;)V
    .locals 6

    .line 1
    const-string v0, "fullScreenContentError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lads_mobile_sdk/u51;->a:Lads_mobile_sdk/v51;

    .line 91
    iget-object v1, v0, Lads_mobile_sdk/v51;->c:Lads_mobile_sdk/h51;

    .line 92
    iget-wide v2, v0, Lads_mobile_sdk/v51;->b:J

    .line 93
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;->getCode()Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError$ErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError$ErrorCode;->getValue()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 95
    const-string v4, "eventCategory"

    const-string v5, "rewarded"

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v4, "event"

    const-string v5, "onRewardedAdFailedToShow"

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "objectId"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "errorCode"

    invoke-virtual {v0, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 100
    invoke-virtual {v1, v0}, Lads_mobile_sdk/h51;->a(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public final onAdImpression()V
    .locals 6

    .line 80
    iget-object v0, p0, Lads_mobile_sdk/u51;->a:Lads_mobile_sdk/v51;

    .line 81
    iget-object v1, v0, Lads_mobile_sdk/v51;->c:Lads_mobile_sdk/h51;

    .line 82
    iget-wide v2, v0, Lads_mobile_sdk/v51;->b:J

    .line 83
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 85
    const-string v4, "eventCategory"

    const-string v5, "rewarded"

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v4, "event"

    const-string v5, "onAdImpression"

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "objectId"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 89
    invoke-virtual {v1, v0}, Lads_mobile_sdk/h51;->a(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public final onAdShowedFullScreenContent()V
    .locals 6

    .line 84
    iget-object v0, p0, Lads_mobile_sdk/u51;->a:Lads_mobile_sdk/v51;

    .line 85
    iget-object v1, v0, Lads_mobile_sdk/v51;->c:Lads_mobile_sdk/h51;

    .line 86
    iget-wide v2, v0, Lads_mobile_sdk/v51;->b:J

    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 89
    const-string v4, "eventCategory"

    const-string v5, "rewarded"

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v4, "event"

    const-string v5, "onRewardedAdOpened"

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "objectId"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 93
    invoke-virtual {v1, v0}, Lads_mobile_sdk/h51;->a(Lcom/google/gson/JsonObject;)V

    return-void
.end method
