package com.google.unity.ads;

import com.google.android.gms.ads.LoadAdError;

/* JADX INFO: loaded from: classes4.dex */
public interface UnityRewardedAdCallback extends UnityPaidEventListener, UnityFullScreenContentCallback {
    void onRewardedAdFailedToLoad(LoadAdError loadAdError);

    void onRewardedAdLoaded();

    void onUserEarnedReward(String str, float f);
}
