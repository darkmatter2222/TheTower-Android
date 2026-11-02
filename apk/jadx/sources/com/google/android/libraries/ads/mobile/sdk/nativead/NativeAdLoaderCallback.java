package com.google.android.libraries.ads.mobile.sdk.nativead;

import com.google.android.libraries.ads.mobile.sdk.banner.BannerAd;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH\u0016ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0010À\u0006\u0001"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;", "", "onAdFailedToLoad", "", "adError", "Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;", "onAdLoadingCompleted", "onBannerAdLoaded", "bannerAd", "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;", "onCustomNativeAdLoaded", "customNativeAd", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;", "onNativeAdLoaded", "nativeAd", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface NativeAdLoaderCallback {
    default void onAdFailedToLoad(LoadAdError adError) {
        Intrinsics.checkNotNullParameter(adError, "adError");
    }

    default void onAdLoadingCompleted() {
    }

    default void onBannerAdLoaded(BannerAd bannerAd) {
        Intrinsics.checkNotNullParameter(bannerAd, "bannerAd");
    }

    default void onCustomNativeAdLoaded(CustomNativeAd customNativeAd) {
        Intrinsics.checkNotNullParameter(customNativeAd, "customNativeAd");
    }

    default void onNativeAdLoaded(NativeAd nativeAd) {
        Intrinsics.checkNotNullParameter(nativeAd, "nativeAd");
    }
}
