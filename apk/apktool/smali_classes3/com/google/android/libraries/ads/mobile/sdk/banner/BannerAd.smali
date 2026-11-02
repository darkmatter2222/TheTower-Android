.class public interface abstract Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008f\u0018\u0000  2\u00020\u0001:\u0001 J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH&\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\rH&\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u00108&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u00168&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u0004\u0018\u00010\u001c8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001e\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006!\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;",
        "Landroid/app/Activity;",
        "activity",
        "Landroid/view/View;",
        "getView",
        "(Landroid/app/Activity;)Landroid/view/View;",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;",
        "getAdSize",
        "()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;",
        "",
        "recordManualImpression",
        "()V",
        "",
        "isCollapsible",
        "()Z",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdEventCallback;",
        "getAdEventCallback",
        "()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdEventCallback;",
        "setAdEventCallback",
        "(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdEventCallback;)V",
        "adEventCallback",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRefreshCallback;",
        "getBannerAdRefreshCallback",
        "()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRefreshCallback;",
        "setBannerAdRefreshCallback",
        "(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRefreshCallback;)V",
        "bannerAdRefreshCallback",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;",
        "getVideoController",
        "()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;",
        "videoController",
        "Companion",
        "ads-mobile-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd$Companion;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd$Companion;

    sput-object v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd$Companion;

    return-void
.end method

.method public static load(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback<",
            "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use AdView.loadAd() or BannerAdPreloader instead."
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd$Companion;->load(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V

    return-void
.end method

.method public static loadFromAdResponse(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback<",
            "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use AdView.loadAd() or BannerAdPreloader instead."
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd$Companion;->loadFromAdResponse(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)V
.end method

.method public abstract getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdEventCallback;
.end method

.method public abstract getAdSize()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
.end method

.method public abstract getBannerAdRefreshCallback()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRefreshCallback;
.end method

.method public abstract getVideoController()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract getView(Landroid/app/Activity;)Landroid/view/View;
    .annotation runtime Lkotlin/Deprecated;
        message = "Use AdView.registerBannerAd() instead."
    .end annotation
.end method

.method public abstract isCollapsible()Z
.end method

.method public abstract recordManualImpression()V
.end method

.method public abstract setAdEventCallback(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdEventCallback;)V
.end method

.method public abstract setBannerAdRefreshCallback(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRefreshCallback;)V
.end method
