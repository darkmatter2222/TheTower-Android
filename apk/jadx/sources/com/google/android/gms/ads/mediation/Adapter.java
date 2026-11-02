package com.google.android.gms.ads.mediation;

import android.content.Context;
import com.google.android.gms.ads.AdError;
import java.util.List;
import kotlin.q2;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u0000 *2\u00020\u0001:\u0001*B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H&J\b\u0010\u0005\u001a\u00020\u0004H&J&\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH&J$\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00112\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012H\u0016J$\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00162\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u0012H\u0016J$\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u00162\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00180\u0012H\u0016J$\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u001c2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001e0\u0012H\u0016J$\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020 2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"0\u0012H\u0016J$\u0010#\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020 2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\"0\u0012H\u0016J$\u0010%\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020&2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020(0\u0012H\u0016J$\u0010)\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020&2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020(0\u0012H\u0016¨\u0006+"}, d2 = {"Lcom/google/android/gms/ads/mediation/Adapter;", "Lcom/google/android/gms/ads/mediation/MediationExtrasReceiver;", "()V", "getSDKVersionInfo", "Lcom/google/android/gms/ads/VersionInfo;", "getVersionInfo", "initialize", "", "context", "Landroid/content/Context;", "callback", "Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;", "configurations", "", "Lcom/google/android/gms/ads/mediation/MediationConfiguration;", "loadAppOpenAd", "adConfiguration", "Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;", "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;", "Lcom/google/android/gms/ads/mediation/MediationAppOpenAd;", "Lcom/google/android/gms/ads/mediation/MediationAppOpenAdCallback;", "loadBannerAd", "Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;", "Lcom/google/android/gms/ads/mediation/MediationBannerAd;", "Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;", "loadInterscrollerAd", "Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;", "loadInterstitialAd", "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;", "Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;", "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;", "loadNativeAd", "Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;", "Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;", "Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;", "loadNativeAdMapper", "Lcom/google/android/gms/ads/mediation/NativeAdMapper;", "loadRewardedAd", "Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;", "Lcom/google/android/gms/ads/mediation/MediationRewardedAd;", "Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;", "loadRewardedInterstitialAd", "Companion", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class Adapter implements MediationExtrasReceiver {
    public static final String ERROR_MESSAGE_METHOD_NOT_FOUND = "Method is not found";

    public abstract com.google.android.gms.ads.VersionInfo getSDKVersionInfo();

    public abstract com.google.android.gms.ads.VersionInfo getVersionInfo();

    public abstract void initialize(Context context, InitializationCompleteCallback callback, List<MediationConfiguration> configurations);

    public void loadAppOpenAd(MediationAppOpenAdConfiguration adConfiguration, MediationAdLoadCallback<MediationAppOpenAd, MediationAppOpenAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        callback.onFailure(new AdError(q2.NOT_FOUND.d(), getClass().getSimpleName() + " does not support app open ads.", "com.google.android.libraries.ads.mobile.sdk"));
    }

    public void loadBannerAd(MediationBannerAdConfiguration adConfiguration, MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        callback.onFailure(new AdError(q2.NOT_FOUND.d(), getClass().getSimpleName() + " does not support banner ads.", "com.google.android.libraries.ads.mobile.sdk"));
    }

    public void loadInterscrollerAd(MediationBannerAdConfiguration adConfiguration, MediationAdLoadCallback<MediationInterscrollerAd, MediationBannerAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        callback.onFailure(new AdError(q2.NOT_FOUND.d(), getClass().getSimpleName() + " does not support interscroller ads.", "com.google.android.libraries.ads.mobile.sdk"));
    }

    public void loadInterstitialAd(MediationInterstitialAdConfiguration adConfiguration, MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        callback.onFailure(new AdError(q2.NOT_FOUND.d(), getClass().getSimpleName() + " does not support interstitial ads.", "com.google.android.libraries.ads.mobile.sdk"));
    }

    public void loadNativeAd(MediationNativeAdConfiguration adConfiguration, MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        callback.onFailure(new AdError(q2.NOT_FOUND.d(), getClass().getSimpleName() + " does not support native ads.", "com.google.android.libraries.ads.mobile.sdk"));
    }

    public void loadNativeAdMapper(MediationNativeAdConfiguration adConfiguration, MediationAdLoadCallback<NativeAdMapper, MediationNativeAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        throw new IllegalStateException(ERROR_MESSAGE_METHOD_NOT_FOUND);
    }

    public void loadRewardedAd(MediationRewardedAdConfiguration adConfiguration, MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        callback.onFailure(new AdError(q2.NOT_FOUND.d(), getClass().getSimpleName() + " does not support rewarded ads.", "com.google.android.libraries.ads.mobile.sdk"));
    }

    public void loadRewardedInterstitialAd(MediationRewardedAdConfiguration adConfiguration, MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        callback.onFailure(new AdError(q2.NOT_FOUND.d(), getClass().getSimpleName() + " does not support rewarded interstitial ads.", "com.google.android.libraries.ads.mobile.sdk"));
    }
}
