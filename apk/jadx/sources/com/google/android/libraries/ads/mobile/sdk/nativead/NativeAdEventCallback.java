package com.google.android.libraries.ads.mobile.sdk.nativead;

import com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback;
import p005kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0017ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0005À\u0006\u0001"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdEventCallback;", "onAdSwipeGestureClicked", "", "onCustomMuteThisAdReported", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface NativeAdEventCallback extends AdEventCallback {
    default void onAdSwipeGestureClicked() {
    }

    default void onCustomMuteThisAdReported() {
    }
}
