package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.AdError;
import com.ironsource.R6;
import com.ironsource.Yf;
import p005kotlin.Deprecated;
import p005kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated(message = "Use [com.google.android.gms.ads.mediation.Adapter] and [com.google.android.gms.ads.mediation.MediationAdLoadCallback] instead.")
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH&J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH'J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0010H&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0013À\u0006\u0001"}, d2 = {"Lcom/google/android/gms/ads/mediation/MediationNativeListener;", "", Yf.f, "", R6.G1, "Lcom/google/android/gms/ads/mediation/MediationNativeAdapter;", Yf.g, "onAdFailedToLoad", "adError", "Lcom/google/android/gms/ads/AdError;", "error", "", "onAdImpression", Yf.k, Yf.j, "unifiedNativeAdMapper", "Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;", Yf.c, "onVideoEnd", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface MediationNativeListener {
    void onAdClicked(MediationNativeAdapter adapter);

    void onAdClosed(MediationNativeAdapter adapter);

    @Deprecated(message = "Use onAdFailedToLoad(MediationNativeAdapter, AdError) instead.")
    void onAdFailedToLoad(MediationNativeAdapter adapter, int error);

    void onAdFailedToLoad(MediationNativeAdapter adapter, AdError adError);

    void onAdImpression(MediationNativeAdapter adapter);

    void onAdLeftApplication(MediationNativeAdapter adapter);

    void onAdLoaded(MediationNativeAdapter adapter, UnifiedNativeAdMapper unifiedNativeAdMapper);

    void onAdOpened(MediationNativeAdapter adapter);

    void onVideoEnd(MediationNativeAdapter adapter);
}
