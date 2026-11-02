.class public final Lads_mobile_sdk/p51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/interstitial/InterstitialAdEventCallback;


# instance fields
.field public final synthetic a:Lads_mobile_sdk/q51;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/q51;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/p51;->a:Lads_mobile_sdk/q51;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 6

    .line 68
    iget-object v0, p0, Lads_mobile_sdk/p51;->a:Lads_mobile_sdk/q51;

    .line 69
    iget-object v1, v0, Lads_mobile_sdk/q51;->c:Lads_mobile_sdk/h51;

    .line 70
    iget-wide v2, v0, Lads_mobile_sdk/q51;->b:J

    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 73
    const-string v4, "eventCategory"

    const-string v5, "interstitial"

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v4, "event"

    const-string v5, "onAdClicked"

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "objectId"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 77
    invoke-virtual {v1, v0}, Lads_mobile_sdk/h51;->a(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method public final onAdDismissedFullScreenContent()V
    .locals 6

    .line 72
    iget-object v0, p0, Lads_mobile_sdk/p51;->a:Lads_mobile_sdk/q51;

    .line 73
    iget-object v1, v0, Lads_mobile_sdk/q51;->c:Lads_mobile_sdk/h51;

    .line 74
    iget-wide v2, v0, Lads_mobile_sdk/q51;->b:J

    .line 75
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 77
    const-string v4, "eventCategory"

    const-string v5, "interstitial"

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v4, "event"

    const-string v5, "onAdClosed"

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

.method public final onAdFailedToShowFullScreenContent(Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;)V
    .locals 2

    .line 1
    const-string v0, "fullScreenContentError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to show h5 interstitial ad: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final onAdImpression()V
    .locals 0

    return-void
.end method

.method public final onAdShowedFullScreenContent()V
    .locals 6

    .line 80
    iget-object v0, p0, Lads_mobile_sdk/p51;->a:Lads_mobile_sdk/q51;

    .line 81
    iget-object v1, v0, Lads_mobile_sdk/q51;->c:Lads_mobile_sdk/h51;

    .line 82
    iget-wide v2, v0, Lads_mobile_sdk/q51;->b:J

    .line 83
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 85
    const-string v4, "eventCategory"

    const-string v5, "interstitial"

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v4, "event"

    const-string v5, "onAdOpened"

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
