package com.unity3d.ironsourceads.interstitial;

import com.ironsource.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes5.dex */
public interface InterstitialAdLoaderListener {
    void onInterstitialAdLoadFailed(IronSourceError ironSourceError);

    void onInterstitialAdLoaded(InterstitialAd interstitialAd);
}
