package com.google.unity.ads;

import com.google.android.gms.ads.AdError;

/* JADX INFO: loaded from: classes4.dex */
public interface UnityFullScreenContentCallback {
    void onAdClicked();

    void onAdDismissedFullScreenContent();

    void onAdFailedToShowFullScreenContent(AdError adError);

    void onAdImpression();

    void onAdShowedFullScreenContent();
}
