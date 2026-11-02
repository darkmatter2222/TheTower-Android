package com.google.unity.ads;

import com.google.android.gms.ads.LoadAdError;

/* JADX INFO: loaded from: classes4.dex */
public interface UnityInterstitialAdCallback extends UnityPaidEventListener, UnityFullScreenContentCallback {
    void onInterstitialAdFailedToLoad(LoadAdError loadAdError);

    void onInterstitialAdLoaded();
}
