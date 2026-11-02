package com.ironsource.unity.androidbridge;

/* JADX INFO: loaded from: classes4.dex */
interface IUnityRewardedAdListener {
    void onAdClicked(String str);

    void onAdClosed(String str);

    void onAdDisplayFailed(String str, String str2);

    void onAdDisplayed(String str);

    void onAdInfoChanged(String str);

    void onAdLoadFailed(String str);

    void onAdLoaded(String str);

    void onAdRewarded(String str, String str2, int i);
}
