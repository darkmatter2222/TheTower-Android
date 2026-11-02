package com.google.android.libraries.ads.mobile.sdk.pip;

import com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.common.OnAppEventListener;
import p005kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u00012\u00020\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdEventCallback;", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdEventCallback;", "Lcom/google/android/libraries/ads/mobile/sdk/common/OnAppEventListener;", "onAdHidden", "", "onAdShown", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface PictureInPictureAdEventCallback extends AdEventCallback, OnAppEventListener {
    default void onAdHidden() {
    }

    default void onAdShown() {
    }
}
