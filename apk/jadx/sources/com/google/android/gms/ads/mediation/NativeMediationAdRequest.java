package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.formats.NativeAdOptions;
import p005kotlin.Deprecated;
import p005kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated(message = "Use [com.google.android.gms.ads.mediation.Adapter] and [com.google.android.gms.ads.mediation.MediationNativeAdConfiguration] instead.")
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H'J\b\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\tH&J\b\u0010\n\u001a\u00020\tH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, d2 = {"Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;", "Lcom/google/android/gms/ads/mediation/MediationAdRequest;", "getAdVolume", "", "getNativeAdOptions", "Lcom/google/android/gms/ads/formats/NativeAdOptions;", "getNativeAdRequestOptions", "Lcom/google/android/gms/ads/nativead/NativeAdOptions;", "isAdMuted", "", "isUnifiedNativeAdRequested", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface NativeMediationAdRequest extends MediationAdRequest {
    float getAdVolume();

    @Deprecated(message = "Use getNativeAdRequestOptions() instead.")
    NativeAdOptions getNativeAdOptions();

    com.google.android.gms.ads.nativead.NativeAdOptions getNativeAdRequestOptions();

    boolean isAdMuted();

    boolean isUnifiedNativeAdRequested();
}
