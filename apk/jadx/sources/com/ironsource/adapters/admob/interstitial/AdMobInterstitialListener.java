package com.ironsource.adapters.admob.interstitial;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialAd;
import com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialAdEventCallback;
import com.ironsource.R6;
import com.ironsource.Yf;
import com.ironsource.adapters.admob.AdMobAdapter;
import com.ironsource.adapters.admob.AdMobConstants;
import com.ironsource.mediationsdk.adunit.adapter.listener.InterstitialAdListener;
import com.ironsource.mediationsdk.logger.IronLog;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.TuplesKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdMobInterstitialListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\fH\u0016J\b\u0010\u0012\u001a\u00020\fH\u0016J\b\u0010\u0013\u001a\u00020\fH\u0016J\u0010\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/ironsource/adapters/admob/interstitial/AdMobInterstitialListener;", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;", "Lcom/google/android/libraries/ads/mobile/sdk/interstitial/InterstitialAd;", "Lcom/google/android/libraries/ads/mobile/sdk/interstitial/InterstitialAdEventCallback;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;", R6.G1, "Ljava/lang/ref/WeakReference;", "Lcom/ironsource/adapters/admob/interstitial/AdMobInterstitialAdapter;", "<init>", "(Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;Ljava/lang/ref/WeakReference;)V", Yf.j, "", "ad", "onAdFailedToLoad", "adError", "Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;", "onAdImpression", Yf.f, "onAdDismissedFullScreenContent", "onAdFailedToShowFullScreenContent", "error", "Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;", "admobadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AdMobInterstitialListener implements AdLoadCallback<InterstitialAd>, InterstitialAdEventCallback {
    private final WeakReference<AdMobInterstitialAdapter> adapter;
    private final InterstitialAdListener listener;

    public AdMobInterstitialListener(InterstitialAdListener listener, WeakReference<AdMobInterstitialAdapter> adapter) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.listener = listener;
        this.adapter = adapter;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdClicked() {
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdClicked();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdDismissedFullScreenContent() {
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdClosed();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback
    public void onAdFailedToLoad(LoadAdError adError) {
        Intrinsics.checkNotNullParameter(adError, "adError");
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format(AdMobConstants.Logs.FAILED_TO_LOAD, Arrays.copyOf(new Object[]{adError.getCode(), adError.getCom.tapjoy.TJAdUnitConstants.String.MESSAGE java.lang.String()}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        AdMobInterstitialAdapter adMobInterstitialAdapter = this.adapter.get();
        if (adMobInterstitialAdapter != null) {
            adMobInterstitialAdapter.setInterstitialAdAvailability$admobadapter_release(false);
        }
        this.listener.onAdLoadFailed(AdMobAdapter.INSTANCE.getLoadErrorType$admobadapter_release(adError.getCode()), adError.getCode().ordinal(), adError.getCom.tapjoy.TJAdUnitConstants.String.MESSAGE java.lang.String() + " (" + adError.getCode() + ")");
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdFailedToShowFullScreenContent(FullScreenContentError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format(AdMobConstants.Logs.FAILED_TO_SHOW, Arrays.copyOf(new Object[]{error.getCom.tapjoy.TJAdUnitConstants.String.MESSAGE java.lang.String() + " (" + error.getCode() + ")"}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        this.listener.onAdShowFailed(1000, error.getCom.tapjoy.TJAdUnitConstants.String.MESSAGE java.lang.String() + " (" + error.getCode() + ")");
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
    public void onAdImpression() {
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdOpened();
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback
    public void onAdLoaded(InterstitialAd ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        IronLog.ADAPTER_CALLBACK.verbose();
        AdMobInterstitialAdapter adMobInterstitialAdapter = this.adapter.get();
        if (adMobInterstitialAdapter != null) {
            adMobInterstitialAdapter.setInterstitialAd$admobadapter_release(ad);
        }
        AdMobInterstitialAdapter adMobInterstitialAdapter2 = this.adapter.get();
        if (adMobInterstitialAdapter2 != null) {
            adMobInterstitialAdapter2.setInterstitialAdAvailability$admobadapter_release(true);
        }
        ResponseInfo responseInfo = ad.getResponseInfo();
        String responseId = responseInfo != null ? responseInfo.getResponseId() : null;
        String str = responseId;
        if (str == null || str.length() == 0) {
            this.listener.onAdLoadSuccess();
            return;
        }
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str2 = String.format(AdMobConstants.Logs.CREATIVE_ID, Arrays.copyOf(new Object[]{responseId}, 1));
        Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
        ironLog.verbose(str2);
        this.listener.onAdLoadSuccess(MapsKt.mapOf(TuplesKt.to("creativeId", responseId)));
    }
}
