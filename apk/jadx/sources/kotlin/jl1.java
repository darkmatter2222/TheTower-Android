package kotlin;

import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.initialization.AdapterStatus;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.common.base.Splitter;
import java.util.List;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class jl1 {
    public static ke a() {
        List list = hf.A;
        return le.b(AdapterStatus.InitializationState.NOT_STARTED, "The Google Mobile Ads SDK has not started initializing, please call MobileAds.initialize.", 4);
    }

    public static v01 a(List nativeAdTypes, List customFormatIds, AdSize adSize, Integer num) {
        Intrinsics.checkNotNullParameter(nativeAdTypes, "nativeAdTypes");
        Intrinsics.checkNotNullParameter(customFormatIds, "customFormatIds");
        if (nativeAdTypes.isEmpty()) {
            return new m01("Native ad types cannot be empty.", kk1.INVALID_REQUEST);
        }
        NativeAd.NativeAdType nativeAdType = NativeAd.NativeAdType.CUSTOM_NATIVE;
        if (nativeAdTypes.contains(nativeAdType) && customFormatIds.isEmpty()) {
            return new m01("When requesting custom native ads, you must set at least one custom format ID.", kk1.INVALID_REQUEST);
        }
        NativeAd.NativeAdType nativeAdType2 = NativeAd.NativeAdType.BANNER;
        if (nativeAdTypes.contains(nativeAdType2) && nativeAdTypes.size() == 1) {
            return new m01("A native ad request for banner ads only is not allowed. Suggested action: Use BannerAd to request banner ads.", kk1.INVALID_REQUEST);
        }
        if (nativeAdTypes.contains(nativeAdType2) && adSize == null) {
            return new m01("When requesting a banner ad, you must set at least one AdSize. Suggested action: Call NativeRequest.setAdSizes() with at least one ad size.", kk1.INVALID_REQUEST);
        }
        if (num != null && num.intValue() < 1) {
            return new m01("Number of ads requested must be greater than 0.", kk1.INVALID_REQUEST);
        }
        if (!customFormatIds.isEmpty() && !nativeAdTypes.contains(nativeAdType)) {
            Splitter splitter = f01.a;
            f01.c("Custom native ad format IDs were provided, but custom native ads were not requested.", null);
        }
        if (adSize != null && !nativeAdTypes.contains(nativeAdType2)) {
            Splitter splitter2 = f01.a;
            f01.c("AdSize was provided, but banner ads were not requested. Suggested action: Update NativeRequest.nativeAdTypes to add NativeAdType.BANNER.", null);
        }
        return new q01(p005kotlin.Unit.INSTANCE);
    }
}
