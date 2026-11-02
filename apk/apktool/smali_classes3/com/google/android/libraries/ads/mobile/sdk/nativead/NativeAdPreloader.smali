.class public interface abstract Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0003\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader;",
        "",
        "Companion",
        "ads-mobile-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader$Companion;->b:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader$Companion;

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader$Companion;

    return-void
.end method

.method public static destroy(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader$Companion;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader$Companion;->destroy(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static destroyAll()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader$Companion;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader$Companion;->destroyAll()V

    return-void
.end method

.method public static getConfiguration(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader$Companion;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader$Companion;->getConfiguration(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static getConfigurations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader$Companion;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader$Companion;->getConfigurations()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getNumAdsAvailable(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader$Companion;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader$Companion;->getNumAdsAvailable(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static isAdAvailable(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader$Companion;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader$Companion;->isAdAvailable(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static peekAdResponseInfo(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader$Companion;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader$Companion;->peekAdResponseInfo(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    move-result-object p0

    return-object p0
.end method

.method public static pollAd(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdLoadSuccessResult;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader$Companion;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader$Companion;->pollAd(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdLoadSuccessResult;

    move-result-object p0

    return-object p0
.end method

.method public static start(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader$Companion;->start(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;)Z

    move-result p0

    return p0
.end method

.method public static start(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 2
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdPreloader$Companion;->start(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;)Z

    move-result p0

    return p0
.end method
