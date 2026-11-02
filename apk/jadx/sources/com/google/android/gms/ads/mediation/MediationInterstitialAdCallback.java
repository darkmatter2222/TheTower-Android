package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.AdError;
import com.ironsource.Yf;
import p005kotlin.Deprecated;
import p005kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H'J\b\u0010\b\u001a\u00020\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Lcom/google/android/gms/ads/mediation/MediationInterstitialAdCallback;", "Lcom/google/android/gms/ads/mediation/MediationAdCallback;", "onAdFailedToShow", "", "adError", "Lcom/google/android/gms/ads/AdError;", "errorDescription", "", Yf.k, "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface MediationInterstitialAdCallback extends MediationAdCallback {
    void onAdFailedToShow(AdError adError);

    @Deprecated(message = "Use MediationInterstitialAdCallback.onAdFailedToShow(AdError) instead.")
    void onAdFailedToShow(String errorDescription);

    void onAdLeftApplication();
}
