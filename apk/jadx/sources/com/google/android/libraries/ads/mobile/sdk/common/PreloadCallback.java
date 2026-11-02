package com.google.android.libraries.ads.mobile.sdk.common;

import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\fÀ\u0006\u0001"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;", "", "onAdFailedToPreload", "", "preloadId", "", "adError", "Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;", "onAdPreloaded", "responseInfo", "Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;", "onAdsExhausted", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface PreloadCallback {
    default void onAdFailedToPreload(String preloadId, LoadAdError adError) {
        Intrinsics.checkNotNullParameter(preloadId, "preloadId");
        Intrinsics.checkNotNullParameter(adError, "adError");
    }

    default void onAdPreloaded(String preloadId, ResponseInfo responseInfo) {
        Intrinsics.checkNotNullParameter(preloadId, "preloadId");
        Intrinsics.checkNotNullParameter(responseInfo, "responseInfo");
    }

    default void onAdsExhausted(String preloadId) {
        Intrinsics.checkNotNullParameter(preloadId, "preloadId");
    }
}
