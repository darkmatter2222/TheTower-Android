.class public final Lads_mobile_sdk/mk1;
.super Lads_mobile_sdk/ei1;
.source "SourceFile"


# static fields
.field public static final b:Lads_mobile_sdk/lk1;


# instance fields
.field public final a:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lads_mobile_sdk/lk1;

    .line 2
    invoke-direct {v0}, Lads_mobile_sdk/lk1;-><init>()V

    .line 3
    sput-object v0, Lads_mobile_sdk/mk1;->b:Lads_mobile_sdk/lk1;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V
    .locals 1

    .line 1
    const-string v0, "iconAdLoadCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0}, Lads_mobile_sdk/ei1;-><init>()V

    .line 120
    iput-object p1, p0, Lads_mobile_sdk/mk1;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/zh1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 240
    check-cast p1, Lads_mobile_sdk/xz1;

    .line 241
    invoke-static {p1}, Lads_mobile_sdk/lk1;->a(Lads_mobile_sdk/xz1;)Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;

    move-result-object p1

    .line 242
    instance-of p2, p1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Success;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lads_mobile_sdk/mk1;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Success;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Success;->getAd()Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;->onAdLoaded(Ljava/lang/Object;)V

    goto :goto_0

    .line 243
    :cond_0
    instance-of p2, p1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Failure;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lads_mobile_sdk/mk1;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Failure;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Failure;->getError()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;->onAdFailedToLoad(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    .line 245
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 378
    iget-object v0, p0, Lads_mobile_sdk/mk1;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

    instance-of v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdLoadCallback;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdLoadCallback;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdLoadCallback;->onAdLoadingCompleted()V

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V
    .locals 1

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lads_mobile_sdk/mk1;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;->onAdFailedToLoad(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    return-void
.end method
