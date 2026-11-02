.class public interface abstract Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Deprecated;
    message = "Use [com.google.android.gms.ads.mediation.Adapter] and [com.google.android.gms.ads.mediation.MediationAdLoadCallback] instead."
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008g\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH&J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\'J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u000f\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;",
        "",
        "onAdClicked",
        "",
        "adapter",
        "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;",
        "onAdClosed",
        "onAdFailedToLoad",
        "adError",
        "Lcom/google/android/gms/ads/AdError;",
        "error",
        "",
        "onAdLeftApplication",
        "onAdLoaded",
        "onAdOpened",
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


# virtual methods
.method public abstract onAdClicked(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
.end method

.method public abstract onAdClosed(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
.end method

.method public abstract onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;I)V
    .annotation runtime Lkotlin/Deprecated;
        message = "Use [onAdFailedToLoad(MediationInterstitialAdapter, AdError)] instead."
    .end annotation
.end method

.method public abstract onAdFailedToLoad(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;Lcom/google/android/gms/ads/AdError;)V
.end method

.method public abstract onAdLeftApplication(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
.end method

.method public abstract onAdLoaded(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
.end method

.method public abstract onAdOpened(Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;)V
.end method
