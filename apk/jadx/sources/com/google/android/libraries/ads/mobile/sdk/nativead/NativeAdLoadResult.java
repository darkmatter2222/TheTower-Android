package com.google.android.libraries.ads.mobile.sdk.nativead;

import com.google.android.libraries.ads.mobile.sdk.banner.BannerAd;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0002\u0007\bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult;", "", "BannerAdSuccess", "CustomNativeAdSuccess", "Failure", "NativeAdLoadSuccessResult", "NativeAdSuccess", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$Failure;", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdLoadSuccessResult;", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface NativeAdLoadResult {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$BannerAdSuccess;", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdLoadSuccessResult;", "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;", "a", "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;", "getAd", "()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;", "ad", "<init>", "(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class BannerAdSuccess implements NativeAdLoadSuccessResult {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final BannerAd ad;

        public BannerAdSuccess(BannerAd ad) {
            Intrinsics.checkNotNullParameter(ad, "ad");
            this.ad = ad;
        }

        public final BannerAd getAd() {
            return this.ad;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$CustomNativeAdSuccess;", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdLoadSuccessResult;", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;", "a", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;", "getAd", "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;", "ad", "<init>", "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class CustomNativeAdSuccess implements NativeAdLoadSuccessResult {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final CustomNativeAd ad;

        public CustomNativeAdSuccess(CustomNativeAd ad) {
            Intrinsics.checkNotNullParameter(ad, "ad");
            this.ad = ad;
        }

        public final CustomNativeAd getAd() {
            return this.ad;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$Failure;", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult;", "Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;", "a", "Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;", "getError", "()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;", "error", "<init>", "(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Failure implements NativeAdLoadResult {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final LoadAdError error;

        public Failure(LoadAdError error) {
            Intrinsics.checkNotNullParameter(error, "error");
            this.error = error;
        }

        public final LoadAdError getError() {
            return this.error;
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001\u0082\u0001\u0003\u0002\u0003\u0004ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0005À\u0006\u0001"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdLoadSuccessResult;", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult;", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$BannerAdSuccess;", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$CustomNativeAdSuccess;", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdSuccess;", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface NativeAdLoadSuccessResult extends NativeAdLoadResult {
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdSuccess;", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdLoadSuccessResult;", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;", "a", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;", "getAd", "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;", "ad", "<init>", "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class NativeAdSuccess implements NativeAdLoadSuccessResult {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final NativeAd ad;

        public NativeAdSuccess(NativeAd ad) {
            Intrinsics.checkNotNullParameter(ad, "ad");
            this.ad = ad;
        }

        public final NativeAd getAd() {
            return this.ad;
        }
    }
}
