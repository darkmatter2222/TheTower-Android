package com.ironsource.adapters.admob.nativead;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.libraries.ads.mobile.sdk.nativead.MediaView;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdView;
import com.ironsource.adapters.admob.AdMobConstants;
import com.ironsource.mediationsdk.ads.nativead.LevelPlayMediaView;
import com.ironsource.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinder;
import com.ironsource.mediationsdk.logger.IronLog;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdMobNativeAdViewBinder.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\f\u001a\u0004\u0018\u00010\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;", "Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;", "nativeAd", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;", "<init>", "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;)V", "adMobNativeAdView", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;", "setNativeAdView", "", "nativeAdView", "Landroid/view/View;", "networkNativeAdView", "Landroid/view/ViewGroup;", "getNetworkNativeAdView", "()Landroid/view/ViewGroup;", "admobadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AdMobNativeAdViewBinder extends AdapterNativeAdViewBinder {
    private NativeAdView adMobNativeAdView;
    private final NativeAd nativeAd;

    public AdMobNativeAdViewBinder(NativeAd nativeAd) {
        Intrinsics.checkNotNullParameter(nativeAd, "nativeAd");
        this.nativeAd = nativeAd;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinderInterface
    public ViewGroup getNetworkNativeAdView() {
        return this.adMobNativeAdView;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinderInterface
    public void setNativeAdView(View nativeAdView) {
        MediaView mediaView;
        if (nativeAdView == null) {
            IronLog.INTERNAL.error(AdMobConstants.Logs.AD_VIEW_IS_NULL);
            return;
        }
        Context context = nativeAdView.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        NativeAdView nativeAdView2 = new NativeAdView(context);
        nativeAdView2.setHeadlineView(getNativeAdViewHolder().getTitleView());
        nativeAdView2.setAdvertiserView(getNativeAdViewHolder().getAdvertiserView());
        nativeAdView2.setIconView(getNativeAdViewHolder().getIconView());
        nativeAdView2.setBodyView(getNativeAdViewHolder().getBodyView());
        LevelPlayMediaView mediaView2 = getNativeAdViewHolder().getMediaView();
        if (mediaView2 != null) {
            Context context2 = mediaView2.getContext();
            Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
            mediaView = new MediaView(context2);
            mediaView2.addView(mediaView);
        } else {
            mediaView = null;
        }
        nativeAdView2.setCallToActionView(getNativeAdViewHolder().getCallToActionView());
        nativeAdView2.addView(nativeAdView);
        nativeAdView2.registerNativeAd(this.nativeAd, mediaView);
        this.adMobNativeAdView = nativeAdView2;
    }
}
