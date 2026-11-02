.class public final Lads_mobile_sdk/k91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/oe3;


# instance fields
.field public final a:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;)V
    .locals 1

    .line 1
    const-string v0, "iconRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/k91;->a:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;)V
    .locals 12

    .line 1
    const-string v0, "signals"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->isIconAdRequest:Ljava/lang/Boolean;

    .line 28
    iget-object v0, p0, Lads_mobile_sdk/k91;->a:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;

    invoke-interface {v0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;->getCorrelator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->correlator:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lads_mobile_sdk/k91;->a:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;

    invoke-interface {v0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;->getIconAdPlacement()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->iconAdPlacement:Ljava/lang/Integer;

    .line 30
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/k91;->a:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;

    instance-of v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->getExcludedAppIds()Ljava/util/Set;

    move-result-object v2

    :cond_2
    move-object v3, v2

    if-eqz v3, :cond_4

    .line 31
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v10, 0x3e

    const/4 v11, 0x0

    .line 32
    const-string v4, "|"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->excludedAppIds:Ljava/lang/String;

    :cond_4
    :goto_1
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lads_mobile_sdk/k91;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lads_mobile_sdk/k91;

    iget-object v1, p0, Lads_mobile_sdk/k91;->a:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;

    iget-object p1, p1, Lads_mobile_sdk/k91;->a:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/k91;->a:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/k91;->a:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IconAdSignal(iconRequest="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
