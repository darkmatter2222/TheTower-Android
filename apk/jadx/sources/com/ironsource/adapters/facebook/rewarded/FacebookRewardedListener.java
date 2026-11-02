package com.ironsource.adapters.facebook.rewarded;

import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.RewardedVideoAdExtendedListener;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.R6;
import com.ironsource.Yf;
import com.ironsource.adapters.facebook.FacebookAdapter;
import com.ironsource.mediationsdk.adunit.adapter.listener.RewardedVideoAdListener;
import com.ironsource.mediationsdk.logger.IronLog;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FacebookRewardedListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0019\u001a\u00020\u0011H\u0016J\b\u0010\u001a\u001a\u00020\u0011H\u0016J\b\u0010\u001b\u001a\u00020\u0011H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/ironsource/adapters/facebook/rewarded/FacebookRewardedListener;", "Lcom/facebook/ads/RewardedVideoAdExtendedListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;", R6.G1, "Ljava/lang/ref/WeakReference;", "Lcom/ironsource/adapters/facebook/rewarded/FacebookRewardedAdapter;", "<init>", "(Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;Ljava/lang/ref/WeakReference;)V", "showAttempted", "", "getShowAttempted$facebookadapter_release", "()Z", "setShowAttempted$facebookadapter_release", "(Z)V", "didCallClosed", Yf.j, "", "ad", "Lcom/facebook/ads/Ad;", "onError", "adError", "Lcom/facebook/ads/AdError;", "onLoggingImpression", Yf.f, "onRewardedVideoCompleted", "onRewardedVideoClosed", "onRewardedVideoActivityDestroyed", "facebookadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FacebookRewardedListener implements RewardedVideoAdExtendedListener {
    private final WeakReference<FacebookRewardedAdapter> adapter;
    private boolean didCallClosed;
    private final RewardedVideoAdListener listener;
    private boolean showAttempted;

    public FacebookRewardedListener(RewardedVideoAdListener listener, WeakReference<FacebookRewardedAdapter> adapter) {
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
        FacebookRewardedAdapter facebookRewardedAdapter = this.adapter.get();
        if (facebookRewardedAdapter != null) {
            facebookRewardedAdapter.setRewardedAdAvailability$facebookadapter_release(true);
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
        FacebookRewardedAdapter facebookRewardedAdapter = this.adapter.get();
        if (facebookRewardedAdapter != null) {
            facebookRewardedAdapter.setRewardedAdAvailability$facebookadapter_release(false);
        }
        this.listener.onAdLoadFailed(FacebookAdapter.INSTANCE.getLoadErrorType(adError), adError.getErrorCode(), adError.getErrorMessage());
    }

    @Override // com.facebook.ads.AdListener
    public void onLoggingImpression(Ad ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.didCallClosed = false;
        this.listener.onAdOpened();
    }

    @Override // com.facebook.ads.RewardedVideoAdExtendedListener
    public void onRewardedVideoActivityDestroyed() {
        IronLog.ADAPTER_CALLBACK.verbose();
        if (this.didCallClosed) {
            return;
        }
        this.didCallClosed = true;
        this.listener.onAdClosed();
    }

    @Override // com.facebook.ads.RewardedVideoAdListener
    public void onRewardedVideoClosed() {
        IronLog.ADAPTER_CALLBACK.verbose();
        this.didCallClosed = true;
        this.listener.onAdClosed();
    }

    @Override // com.facebook.ads.RewardedVideoAdListener
    public void onRewardedVideoCompleted() {
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdRewarded();
    }

    public final void setShowAttempted$facebookadapter_release(boolean z) {
        this.showAttempted = z;
    }
}
