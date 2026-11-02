.class public final Lads_mobile_sdk/t51;
.super Lads_mobile_sdk/ei1;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lads_mobile_sdk/v51;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/v51;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/t51;->a:Lads_mobile_sdk/v51;

    .line 42
    invoke-direct {p0}, Lads_mobile_sdk/ei1;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/zh1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 101
    check-cast p1, Lads_mobile_sdk/un1;

    .line 102
    iget-object p2, p0, Lads_mobile_sdk/t51;->a:Lads_mobile_sdk/v51;

    .line 103
    iput-object p1, p2, Lads_mobile_sdk/v51;->g:Lads_mobile_sdk/un1;

    .line 104
    iget-object p1, p2, Lads_mobile_sdk/v51;->c:Lads_mobile_sdk/h51;

    .line 105
    iget-wide v0, p2, Lads_mobile_sdk/v51;->b:J

    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 108
    const-string v2, "eventCategory"

    const-string v3, "rewarded"

    invoke-virtual {p2, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v2, "event"

    const-string v3, "onRewardedAdLoaded"

    invoke-virtual {p2, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "objectId"

    invoke-virtual {p2, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 112
    invoke-virtual {p1, p2}, Lads_mobile_sdk/h51;->a(Lcom/google/gson/JsonObject;)V

    .line 113
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

    .line 49
    iget-object v0, p0, Lads_mobile_sdk/t51;->a:Lads_mobile_sdk/v51;

    .line 50
    iget-object v1, v0, Lads_mobile_sdk/v51;->c:Lads_mobile_sdk/h51;

    .line 51
    iget-wide v2, v0, Lads_mobile_sdk/v51;->b:J

    .line 52
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;->getCode()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->getValue()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 54
    const-string v4, "eventCategory"

    const-string v5, "rewarded"

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v4, "event"

    const-string v5, "onRewardedAdFailedToLoad"

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "objectId"

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "errorCode"

    invoke-virtual {v0, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 59
    invoke-virtual {v1, v0}, Lads_mobile_sdk/h51;->a(Lcom/google/gson/JsonObject;)V

    return-void
.end method
