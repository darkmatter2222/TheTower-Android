package com.google.android.libraries.ads.mobile.sdk.nativead;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest;
import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesPlacement;
import java.util.List;
import p005kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@KeepForSdk
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001:\u0001\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;", "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;", "Builder", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public interface NativeRequest extends BannerRequest {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\bg\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0003À\u0006\u0001"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest$Builder;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    @KeepForSdk
    public interface Builder<T> {
    }

    AdChoicesPlacement getAdChoicesPlacement();

    boolean getCustomClickGestureAllowTaps();

    NativeAd.SwipeGestureDirection getCustomClickGestureDirection();

    List getCustomFormatIds();

    boolean getCustomMuteThisAdRequested();

    NativeAd.NativeMediaAspectRatio getMediaAspectRatio();

    List getNativeAdTypes();

    boolean isImageLoadingDisabled();
}
