.class public final Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdListener;
.super Ljava/lang/Object;
.source "AdMobNativeAdListener.kt"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;
.implements Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u000bH\u0016J\u0008\u0010\u0012\u001a\u00020\u000bH\u0016J\u0008\u0010\u0013\u001a\u00020\u000bH\u0016J\u0008\u0010\u0014\u001a\u00020\u000bH\u0016R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdListener;",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;",
        "adapter",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;",
        "listener",
        "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;",
        "<init>",
        "(Ljava/lang/ref/WeakReference;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;)V",
        "onNativeAdLoaded",
        "",
        "nativeAd",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;",
        "onAdFailedToLoad",
        "adError",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;",
        "onAdImpression",
        "onAdClicked",
        "onAdShowedFullScreenContent",
        "onAdDismissedFullScreenContent",
        "admobadapter_release"
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
.field private final adapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;",
            ">;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;",
            ")V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdListener;->adapter:Ljava/lang/ref/WeakReference;

    .line 15
    iput-object p2, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 53
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 54
    iget-object v0, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;->onAdClicked()V

    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .locals 1

    .line 68
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V
    .locals 5

    const-string v0, "adError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;->getCode()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "failed to load, error code = %s, message = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;

    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter;->Companion:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;->getCode()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion;->getLoadErrorType$admobadapter_release(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;->getCode()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;->getCode()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 1

    .line 45
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 46
    iget-object v0, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;->onAdOpened()V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 1

    .line 61
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    return-void
.end method

.method public onNativeAdLoaded(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;)V
    .locals 2

    const-string v0, "nativeAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 24
    move-object v0, p0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;

    invoke-interface {p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;->setAdEventCallback(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;)V

    .line 25
    iget-object v0, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdListener;->adapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;->setNativeAd$admobadapter_release(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;)V

    .line 27
    :cond_0
    new-instance v0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdData;

    invoke-direct {v0, p1}, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdData;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;)V

    .line 28
    new-instance v1, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;

    invoke-direct {v1, p1}, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;)V

    .line 29
    iget-object p1, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;

    check-cast v0, Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;

    check-cast v1, Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;

    invoke-interface {p1, v0, v1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;->onAdLoadSuccess(Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;)V

    return-void
.end method
