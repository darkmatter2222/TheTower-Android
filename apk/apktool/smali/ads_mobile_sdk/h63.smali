.class public final Lads_mobile_sdk/h63;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/f73;

.field public final b:Lads_mobile_sdk/i2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/f73;Lads_mobile_sdk/i2;)V
    .locals 1

    .line 1
    const-string v0, "rewardedEventEmitter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lads_mobile_sdk/h63;->a:Lads_mobile_sdk/f73;

    .line 21
    iput-object p2, p0, Lads_mobile_sdk/h63;->b:Lads_mobile_sdk/i2;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 51
    const-string p1, "action"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x5e0c11c

    if-eq v0, v1, :cond_6

    const p2, 0x5296b39e

    if-eq v0, p2, :cond_3

    const p2, 0x7d1a287d

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "video_complete"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    iget-object p1, p0, Lads_mobile_sdk/h63;->a:Lads_mobile_sdk/f73;

    invoke-virtual {p1, p3}, Lads_mobile_sdk/f73;->g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 57
    :cond_3
    const-string p2, "video_start"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 65
    :cond_4
    iget-object p1, p0, Lads_mobile_sdk/h63;->a:Lads_mobile_sdk/f73;

    invoke-virtual {p1, p3}, Lads_mobile_sdk/f73;->l(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_5

    return-object p1

    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 66
    :cond_6
    const-string v0, "grant"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 68
    invoke-virtual {p0, p2, p3}, Lads_mobile_sdk/h63;->a(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Lkotlin/Unit;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_7

    return-object p1

    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 77
    :cond_8
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Lkotlin/Unit;
    .locals 4

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/h63;->b:Lads_mobile_sdk/i2;

    iget-object v0, v0, Lads_mobile_sdk/i2;->l0:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lads_mobile_sdk/h63;->a:Lads_mobile_sdk/f73;

    invoke-virtual {p1, v0, p2}, Lads_mobile_sdk/f73;->a(Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    check-cast p1, Lkotlin/Unit;

    return-object p1

    .line 5
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_1
    const/4 v0, 0x1

    .line 10
    :try_start_0
    const-string v1, "amount"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;->Companion:Lads_mobile_sdk/k63;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 12
    sget-object v2, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to parse reward amount: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    .line 13
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;->Companion:Lads_mobile_sdk/k63;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    :goto_0
    const-string v1, "type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_3

    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;->Companion:Lads_mobile_sdk/k63;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, ""

    .line 18
    :cond_3
    new-instance v1, Lads_mobile_sdk/g63;

    invoke-direct {v1, v0, p1}, Lads_mobile_sdk/g63;-><init>(ILjava/lang/String;)V

    .line 22
    iget-object p1, p0, Lads_mobile_sdk/h63;->a:Lads_mobile_sdk/f73;

    invoke-virtual {p1, v1, p2}, Lads_mobile_sdk/f73;->a(Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_4

    check-cast p1, Lkotlin/Unit;

    return-object p1

    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final g()Lads_mobile_sdk/u11;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->s:Lads_mobile_sdk/u11;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
