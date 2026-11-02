package com.ironsource.adapters.admob.banner;

import android.widget.FrameLayout;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.libraries.ads.mobile.sdk.banner.AdView;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAd;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import com.ironsource.Yf;
import com.ironsource.adapters.admob.AdMobAdapter;
import com.ironsource.adapters.admob.AdMobConstants;
import com.ironsource.mediationsdk.adunit.adapter.listener.BannerAdListener;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.TuplesKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdMobBannerListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0002H\u0016J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u000bH\u0016J\b\u0010\u0011\u001a\u00020\u000bH\u0016J\b\u0010\u0012\u001a\u00020\u000bH\u0016J\b\u0010\u0013\u001a\u00020\u000bH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/ironsource/adapters/admob/banner/AdMobBannerListener;", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;", "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;", "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdEventCallback;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;", "adView", "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;", "<init>", "(Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;)V", Yf.j, "", "ad", "onAdFailedToLoad", "adError", "Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;", "onAdImpression", Yf.f, "onAdShowedFullScreenContent", "onAdDismissedFullScreenContent", "admobadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AdMobBannerListener implements AdLoadCallback<BannerAd>, BannerAdEventCallback {
    private final AdView adView;
    private final BannerAdListener listener;

    public AdMobBannerListener(BannerAdListener listener, AdView adView) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(adView, "adView");
        this.listener = listener;
        this.adView = adView;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdClicked() {
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdClicked();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdDismissedFullScreenContent() {
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdScreenDismissed();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback
    public void onAdFailedToLoad(LoadAdError adError) {
        Intrinsics.checkNotNullParameter(adError, "adError");
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format(AdMobConstants.Logs.FAILED_TO_LOAD, Arrays.copyOf(new Object[]{adError.getCode(), adError.getCom.tapjoy.TJAdUnitConstants.String.MESSAGE java.lang.String()}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        this.listener.onAdLoadFailed(AdMobAdapter.INSTANCE.getLoadErrorType$admobadapter_release(adError.getCode()), adError.getCode().ordinal(), adError.getCom.tapjoy.TJAdUnitConstants.String.MESSAGE java.lang.String() + " (" + adError.getCode() + ")");
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdImpression() {
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdOpened();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback
    public void onAdLoaded(BannerAd ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        IronLog.ADAPTER_CALLBACK.verbose();
        ad.setAdEventCallback(this);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        ResponseInfo responseInfo = ad.getResponseInfo();
        String responseId = responseInfo != null ? responseInfo.getResponseId() : null;
        String str = responseId;
        if (str == null || str.length() == 0) {
            this.listener.onAdLoadSuccess(this.adView, layoutParams);
            return;
        }
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str2 = String.format(AdMobConstants.Logs.CREATIVE_ID, Arrays.copyOf(new Object[]{responseId}, 1));
        Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
        ironLog.verbose(str2);
        this.listener.onAdLoadSuccess(this.adView, layoutParams, MapsKt.mapOf(TuplesKt.to("creativeId", responseId)));
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdShowedFullScreenContent() {
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdScreenPresented();
    }
}
