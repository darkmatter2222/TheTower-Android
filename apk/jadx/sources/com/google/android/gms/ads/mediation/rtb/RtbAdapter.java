package com.google.android.gms.ads.mediation.rtb;

import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationAppOpenAd;
import com.google.android.gms.ads.mediation.MediationAppOpenAdCallback;
import com.google.android.gms.ads.mediation.MediationAppOpenAdConfiguration;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationInterscrollerAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH&J$\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\fH\u0016J$\u0010\u000f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00102\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00120\fH\u0016J$\u0010\u0013\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00102\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00120\fH\u0016J$\u0010\u0015\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00162\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\fH\u0016J$\u0010\u0019\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u001a2\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\fH\u0016J$\u0010\u001d\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u001a2\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001c0\fH\u0016J$\u0010\u001f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020 2\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"0\fH\u0016J$\u0010#\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020 2\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"0\fH\u0016¨\u0006$"}, d2 = {"Lcom/google/android/gms/ads/mediation/rtb/RtbAdapter;", "Lcom/google/android/gms/ads/mediation/Adapter;", "()V", "collectSignals", "", "data", "Lcom/google/android/gms/ads/mediation/rtb/RtbSignalData;", "callback", "Lcom/google/android/gms/ads/mediation/rtb/SignalCallbacks;", "loadRtbAppOpenAd", "adConfiguration", "Lcom/google/android/gms/ads/mediation/MediationAppOpenAdConfiguration;", "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;", "Lcom/google/android/gms/ads/mediation/MediationAppOpenAd;", "Lcom/google/android/gms/ads/mediation/MediationAppOpenAdCallback;", "loadRtbBannerAd", "Lcom/google/android/gms/ads/mediation/MediationBannerAdConfiguration;", "Lcom/google/android/gms/ads/mediation/MediationBannerAd;", "Lcom/google/android/gms/ads/mediation/MediationBannerAdCallback;", "loadRtbInterscrollerAd", "Lcom/google/android/gms/ads/mediation/MediationInterscrollerAd;", "loadRtbInterstitialAd", "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdConfiguration;", "Lcom/google/android/gms/ads/mediation/MediationInterstitialAd;", "Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;", "loadRtbNativeAd", "Lcom/google/android/gms/ads/mediation/MediationNativeAdConfiguration;", "Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;", "Lcom/google/android/gms/ads/mediation/MediationNativeAdCallback;", "loadRtbNativeAdMapper", "Lcom/google/android/gms/ads/mediation/NativeAdMapper;", "loadRtbRewardedAd", "Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;", "Lcom/google/android/gms/ads/mediation/MediationRewardedAd;", "Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;", "loadRtbRewardedInterstitialAd", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class RtbAdapter extends Adapter {
    public abstract void collectSignals(RtbSignalData data, SignalCallbacks callback);

    public void loadRtbAppOpenAd(MediationAppOpenAdConfiguration adConfiguration, MediationAdLoadCallback<MediationAppOpenAd, MediationAppOpenAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        loadAppOpenAd(adConfiguration, callback);
    }

    public void loadRtbBannerAd(MediationBannerAdConfiguration adConfiguration, MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        loadBannerAd(adConfiguration, callback);
    }

    public void loadRtbInterscrollerAd(MediationBannerAdConfiguration adConfiguration, MediationAdLoadCallback<MediationInterscrollerAd, MediationBannerAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        loadInterscrollerAd(adConfiguration, callback);
    }

    public void loadRtbInterstitialAd(MediationInterstitialAdConfiguration adConfiguration, MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        loadInterstitialAd(adConfiguration, callback);
    }

    public void loadRtbNativeAd(MediationNativeAdConfiguration adConfiguration, MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        loadNativeAd(adConfiguration, callback);
    }

    public void loadRtbNativeAdMapper(MediationNativeAdConfiguration adConfiguration, MediationAdLoadCallback<NativeAdMapper, MediationNativeAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        loadNativeAdMapper(adConfiguration, callback);
    }

    public void loadRtbRewardedAd(MediationRewardedAdConfiguration adConfiguration, MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        loadRewardedAd(adConfiguration, callback);
    }

    public void loadRtbRewardedInterstitialAd(MediationRewardedAdConfiguration adConfiguration, MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> callback) {
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        loadRewardedInterstitialAd(adConfiguration, callback);
    }
}
