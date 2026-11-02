package com.google.android.libraries.ads.mobile.sdk.swipeableinterstitial;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.ironsource.C3510b4;
import p005kotlin.Deprecated;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001:\u0001\u0016R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u00078gX§\u0004¢\u0006\f\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u0004\u0018\u00010\rX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0012\u0010\u0010\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000bR\u0012\u0010\u0012\u001a\u00020\u0013X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0017À\u0006\u0001"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;", "", C3510b4.i.O, "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", "getAdSize", "()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", "customClickGestureEnabled", "", "getCustomClickGestureEnabled$annotations", "()V", "getCustomClickGestureEnabled", "()Z", "customClickSwipeGestureDirection", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;", "getCustomClickSwipeGestureDirection", "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;", "customClickSwipeGestureTapsAllowed", "getCustomClickSwipeGestureTapsAllowed", "maxScreenHoldDurationSeconds", "", "getMaxScreenHoldDurationSeconds", "()I", "Builder", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface SwipeableInterstitialRequest {

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\bg\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J\u0015\u0010\u0003\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¢\u0006\u0002\u0010\u0006J\u001d\u0010\u0003\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bH&¢\u0006\u0002\u0010\tJ\r\u0010\n\u001a\u00028\u0000H'¢\u0006\u0002\u0010\u000bJ\u001d\u0010\f\u001a\u00028\u00002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000eH&¢\u0006\u0002\u0010\u0010J\u0015\u0010\u0011\u001a\u00028\u00002\u0006\u0010\u0012\u001a\u00020\u000eH&¢\u0006\u0002\u0010\u0013ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0014À\u0006\u0001"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest$Builder;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "", "enableCustomClickSwipeGesture", "customClickSwipeGestureDirection", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;", "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;)Ljava/lang/Object;", "customClickSwipeGestureTapsAllowed", "", "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;Z)Ljava/lang/Object;", "requestCustomClickGesture", "()Ljava/lang/Object;", "setAdSize", "width", "", "height", "(II)Ljava/lang/Object;", "setMaxScreenHoldDurationSeconds", "maxScreenHoldDurationSeconds", "(I)Ljava/lang/Object;", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface Builder<T> {
        default T enableCustomClickSwipeGesture(NativeAd.SwipeGestureDirection customClickSwipeGestureDirection) {
            Intrinsics.checkNotNullParameter(customClickSwipeGestureDirection, "customClickSwipeGestureDirection");
            return enableCustomClickSwipeGesture(customClickSwipeGestureDirection, true);
        }

        T enableCustomClickSwipeGesture(NativeAd.SwipeGestureDirection customClickSwipeGestureDirection, boolean customClickSwipeGestureTapsAllowed);

        @Deprecated(message = "Use enableCustomClickSwipeGesture(SwipeGestureDirection, Boolean) instead.")
        @KeepForSdk
        T requestCustomClickGesture();

        T setAdSize(int width, int height);

        T setMaxScreenHoldDurationSeconds(int maxScreenHoldDurationSeconds);
    }

    AdSize getAdSize();

    @KeepForSdk
    boolean getCustomClickGestureEnabled();

    NativeAd.SwipeGestureDirection getCustomClickSwipeGestureDirection();

    boolean getCustomClickSwipeGestureTapsAllowed();

    int getMaxScreenHoldDurationSeconds();
}
