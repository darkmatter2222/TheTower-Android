.class public final Lads_mobile_sdk/o51;
.super Lads_mobile_sdk/ei1;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lads_mobile_sdk/q51;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/q51;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/o51;->a:Lads_mobile_sdk/q51;

    .line 43
    invoke-direct {p0}, Lads_mobile_sdk/ei1;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/zh1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 103
    check-cast p1, Lads_mobile_sdk/pk1;

    .line 104
    iget-object p2, p0, Lads_mobile_sdk/o51;->a:Lads_mobile_sdk/q51;

    .line 105
    iput-object p1, p2, Lads_mobile_sdk/q51;->g:Lads_mobile_sdk/pk1;

    .line 106
    iget-object p1, p2, Lads_mobile_sdk/q51;->c:Lads_mobile_sdk/h51;

    .line 107
    iget-wide v0, p2, Lads_mobile_sdk/q51;->b:J

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 110
    const-string v2, "eventCategory"

    const-string v3, "interstitial"

    invoke-virtual {p2, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v2, "event"

    const-string v3, "onAdLoaded"

    invoke-virtual {p2, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "objectId"

    invoke-virtual {p2, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 114
    invoke-virtual {p1, p2}, Lads_mobile_sdk/h51;->a(Lcom/google/gson/JsonObject;)V

    .line 115
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V
    .locals 6

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lads_mobile_sdk/o51;->a:Lads_mobile_sdk/q51;

    .line 51
    iget-object v1, v0, Lads_mobile_sdk/q51;->c:Lads_mobile_sdk/h51;

    .line 52
    iget-wide v2, v0, Lads_mobile_sdk/q51;->b:J

    .line 53
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;->getCode()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->getValue()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 55
    const-string v4, "eventCategory"

    const-string v5, "interstitial"

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v4, "event"

    const-string v5, "onAdFailedToLoad"

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "objectId"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "errorCode"

    invoke-virtual {v0, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 60
    invoke-virtual {v1, v0}, Lads_mobile_sdk/h51;->a(Lcom/google/gson/JsonObject;)V

    return-void
.end method
