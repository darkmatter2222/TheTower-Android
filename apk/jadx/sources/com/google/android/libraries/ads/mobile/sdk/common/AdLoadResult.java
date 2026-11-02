package com.google.android.libraries.ads.mobile.sdk.common;

import com.google.android.libraries.ads.mobile.sdk.common.Ad;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u0000*\n\b\u0000\u0010\u0001 \u0001*\u00020\u00022\u00020\u0003:\u0002\u0004\u0005\u0082\u0001\u0002\u0006\u0007ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;", "AdT", "Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;", "", "Failure", "Success", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Failure;", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Success;", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface AdLoadResult<AdT extends Ad> {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000*\b\b\u0001\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00010\u0003B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\u000bR\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Failure;", "Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;", "AdT", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;", "Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;", "a", "Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;", "getError", "()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;", "error", "<init>", "(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Failure<AdT extends Ad> implements AdLoadResult<AdT> {

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

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000*\b\b\u0001\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00010\u0003B\u000f\u0012\u0006\u0010\b\u001a\u00028\u0001¢\u0006\u0004\b\t\u0010\nR\u0017\u0010\b\u001a\u00028\u00018\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000b"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Success;", "Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;", "AdT", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;", "a", "Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;", "getAd", "()Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;", "ad", "<init>", "(Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Success<AdT extends Ad> implements AdLoadResult<AdT> {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata */
        private final Ad ad;

        public Success(AdT ad) {
            Intrinsics.checkNotNullParameter(ad, "ad");
            this.ad = ad;
        }

        public final AdT getAd() {
            return (AdT) this.ad;
        }
    }
}
