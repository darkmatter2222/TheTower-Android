package com.ironsource.adapters.admob.nativead;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdEventCallback;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoaderCallback;
import com.ironsource.R6;
import com.ironsource.Yf;
import com.ironsource.adapters.admob.AdMobAdapter;
import com.ironsource.adapters.admob.AdMobConstants;
import com.ironsource.mediationsdk.adunit.adapter.listener.NativeAdListener;
import com.ironsource.mediationsdk.logger.IronLog;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdMobNativeAdListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u000bH\u0016J\b\u0010\u0012\u001a\u00020\u000bH\u0016J\b\u0010\u0013\u001a\u00020\u000bH\u0016J\b\u0010\u0014\u001a\u00020\u000bH\u0016R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdListener;", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;", R6.G1, "Ljava/lang/ref/WeakReference;", "Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;", "<init>", "(Ljava/lang/ref/WeakReference;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;)V", "onNativeAdLoaded", "", "nativeAd", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;", "onAdFailedToLoad", "adError", "Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;", "onAdImpression", Yf.f, "onAdShowedFullScreenContent", "onAdDismissedFullScreenContent", "admobadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AdMobNativeAdListener implements NativeAdLoaderCallback, NativeAdEventCallback {
    private final WeakReference<AdMobNativeAdAdapter> adapter;
    private final NativeAdListener listener;

    public AdMobNativeAdListener(WeakReference<AdMobNativeAdAdapter> adapter, NativeAdListener listener) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.adapter = adapter;
        this.listener = listener;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdClicked() {
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdClicked();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdDismissedFullScreenContent() {
        IronLog.ADAPTER_CALLBACK.verbose();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoaderCallback
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

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdShowedFullScreenContent() {
        IronLog.ADAPTER_CALLBACK.verbose();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoaderCallback
    public void onNativeAdLoaded(NativeAd nativeAd) {
        Intrinsics.checkNotNullParameter(nativeAd, "nativeAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        nativeAd.setAdEventCallback(this);
        AdMobNativeAdAdapter adMobNativeAdAdapter = this.adapter.get();
        if (adMobNativeAdAdapter != null) {
            adMobNativeAdAdapter.setNativeAd$admobadapter_release(nativeAd);
        }
        this.listener.onAdLoadSuccess(new AdMobNativeAdData(nativeAd), new AdMobNativeAdViewBinder(nativeAd));
    }
}
