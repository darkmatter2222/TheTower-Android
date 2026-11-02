.class public interface abstract Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdapter;


# annotations
.annotation runtime Lkotlin/Deprecated;
    message = "Use [com.google.android.gms.ads.mediation.Adapter] instead."
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001J2\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\tH&J\u0008\u0010\r\u001a\u00020\u0003H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u000e\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;",
        "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
        "requestInterstitialAd",
        "",
        "context",
        "Landroid/content/Context;",
        "listener",
        "Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;",
        "serverParameters",
        "Landroid/os/Bundle;",
        "mediationAdRequest",
        "Lcom/google/android/gms/ads/mediation/MediationAdRequest;",
        "mediationExtras",
        "showInterstitial",
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
.method public abstract requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
.end method

.method public abstract showInterstitial()V
.end method
