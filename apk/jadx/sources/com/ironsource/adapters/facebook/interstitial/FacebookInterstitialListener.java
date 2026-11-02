package com.ironsource.adapters.facebook.interstitial;

import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.InterstitialAdExtendedListener;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.R6;
import com.ironsource.Yf;
import com.ironsource.adapters.facebook.FacebookAdapter;
import com.ironsource.mediationsdk.adunit.adapter.listener.InterstitialAdListener;
import com.ironsource.mediationsdk.logger.IronLog;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FacebookInterstitialListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u001b\u001a\u00020\u0011H\u0016J\b\u0010\u001c\u001a\u00020\u0011H\u0016J\b\u0010\u001d\u001a\u00020\u0011H\u0016J\b\u0010\u001e\u001a\u00020\u0011H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;", "Lcom/facebook/ads/InterstitialAdExtendedListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;", R6.G1, "Ljava/lang/ref/WeakReference;", "Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;", "<init>", "(Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;Ljava/lang/ref/WeakReference;)V", "showAttempted", "", "getShowAttempted$facebookadapter_release", "()Z", "setShowAttempted$facebookadapter_release", "(Z)V", "didCallClosed", Yf.j, "", "ad", "Lcom/facebook/ads/Ad;", "onError", "adError", "Lcom/facebook/ads/AdError;", "onInterstitialDisplayed", "onLoggingImpression", Yf.f, "onInterstitialDismissed", "onInterstitialActivityDestroyed", "onRewardedAdCompleted", "onRewardedAdServerSucceeded", "onRewardedAdServerFailed", "facebookadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FacebookInterstitialListener implements InterstitialAdExtendedListener {
    private final WeakReference<FacebookInterstitialAdapter> adapter;
    private boolean didCallClosed;
    private final InterstitialAdListener listener;
    private boolean showAttempted;

    public FacebookInterstitialListener(InterstitialAdListener listener, WeakReference<FacebookInterstitialAdapter> adapter) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.listener = listener;
        this.adapter = adapter;
    }

    /* JADX INFO: renamed from: getShowAttempted$facebookadapter_release, reason: from getter */
    public final boolean getShowAttempted() {
        return this.showAttempted;
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(Ad ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdClicked();
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(Ad ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        IronLog.ADAPTER_CALLBACK.verbose();
        FacebookInterstitialAdapter facebookInterstitialAdapter = this.adapter.get();
        if (facebookInterstitialAdapter != null) {
            facebookInterstitialAdapter.setInterstitialAdAvailability$facebookadapter_release(true);
        }
        this.listener.onAdLoadSuccess();
    }

    @Override // com.facebook.ads.AdListener
    public void onError(Ad ad, AdError adError) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(adError, "adError");
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format("Failed to load, errorCode = %s, errorMessage = %s", Arrays.copyOf(new Object[]{Integer.valueOf(adError.getErrorCode()), adError.getErrorMessage()}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        if (this.showAttempted) {
            this.listener.onAdShowFailed(adError.getErrorCode(), adError.getErrorMessage());
            return;
        }
        FacebookInterstitialAdapter facebookInterstitialAdapter = this.adapter.get();
        if (facebookInterstitialAdapter != null) {
            facebookInterstitialAdapter.setInterstitialAdAvailability$facebookadapter_release(false);
        }
        this.listener.onAdLoadFailed(FacebookAdapter.INSTANCE.getLoadErrorType(adError), adError.getErrorCode(), adError.getErrorMessage());
    }

    @Override // com.facebook.ads.InterstitialAdExtendedListener
    public void onInterstitialActivityDestroyed() {
        IronLog.ADAPTER_CALLBACK.verbose();
        if (this.didCallClosed) {
            return;
        }
        this.didCallClosed = true;
        this.listener.onAdClosed();
    }

    @Override // com.facebook.ads.InterstitialAdListener
    public void onInterstitialDismissed(Ad ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.didCallClosed = true;
        this.listener.onAdClosed();
    }

    @Override // com.facebook.ads.InterstitialAdListener
    public void onInterstitialDisplayed(Ad ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        IronLog.ADAPTER_CALLBACK.verbose();
    }

    @Override // com.facebook.ads.AdListener
    public void onLoggingImpression(Ad ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.didCallClosed = false;
        this.listener.onAdOpened();
    }

    @Override // com.facebook.ads.RewardedAdListener
    public void onRewardedAdCompleted() {
        IronLog.ADAPTER_CALLBACK.verbose();
    }

    @Override // com.facebook.ads.RewardedAdListener
    public void onRewardedAdServerFailed() {
        IronLog.ADAPTER_CALLBACK.verbose();
    }

    @Override // com.facebook.ads.RewardedAdListener
    public void onRewardedAdServerSucceeded() {
        IronLog.ADAPTER_CALLBACK.verbose();
    }

    public final void setShowAttempted$facebookadapter_release(boolean z) {
        this.showAttempted = z;
    }
}
