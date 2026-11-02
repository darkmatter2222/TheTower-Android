package com.google.android.libraries.ads.mobile.sdk.common;

import com.ironsource.Yf;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\u0003H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\u0003H\u0016ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\rÀ\u0006\u0001"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/AdEventCallback;", "", Yf.f, "", "onAdDismissedFullScreenContent", "onAdFailedToShowFullScreenContent", "fullScreenContentError", "Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;", "onAdImpression", "onAdPaid", "value", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;", "onAdShowedFullScreenContent", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface AdEventCallback {
    default void onAdClicked() {
    }

    default void onAdDismissedFullScreenContent() {
    }

    default void onAdFailedToShowFullScreenContent(FullScreenContentError fullScreenContentError) {
        Intrinsics.checkNotNullParameter(fullScreenContentError, "fullScreenContentError");
    }

    default void onAdImpression() {
    }

    default void onAdPaid(AdValue value) {
        Intrinsics.checkNotNullParameter(value, "value");
    }

    default void onAdShowedFullScreenContent() {
    }
}
