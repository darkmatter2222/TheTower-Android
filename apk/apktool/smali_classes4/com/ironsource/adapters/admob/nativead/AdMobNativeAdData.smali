.class public final Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdData;
.super Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;
.source "AdMobNativeAdData.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdMobNativeAdData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdMobNativeAdData.kt\ncom/ironsource/adapters/admob/nativead/AdMobNativeAdData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,26:1\n1#2:27\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\n\u001a\u0004\u0018\u00010\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\tR\u0016\u0010\u000c\u001a\u0004\u0018\u00010\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\tR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u00078VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\tR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00118VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdData;",
        "Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;",
        "nativeAd",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;",
        "<init>",
        "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;)V",
        "title",
        "",
        "getTitle",
        "()Ljava/lang/String;",
        "advertiser",
        "getAdvertiser",
        "body",
        "getBody",
        "callToAction",
        "getCallToAction",
        "icon",
        "Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdDataInterface$Image;",
        "getIcon",
        "()Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdDataInterface$Image;",
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
.field private final nativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;)V
    .locals 1

    const-string v0, "nativeAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdData;->nativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    return-void
.end method


# virtual methods
.method public getAdvertiser()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdData;->nativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    invoke-interface {v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;->getAdvertiser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdData;->nativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    invoke-interface {v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;->getBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdData;->nativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    invoke-interface {v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdDataInterface$Image;
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdData;->nativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    invoke-interface {v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;->getIcon()Lcom/google/android/libraries/ads/mobile/sdk/common/Image;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdDataInterface$Image;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdDataInterface$Image;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdData;->nativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    invoke-interface {v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
