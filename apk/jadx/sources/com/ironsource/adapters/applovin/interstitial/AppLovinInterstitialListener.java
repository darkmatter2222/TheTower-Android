package com.ironsource.adapters.applovin.interstitial;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.R6;
import com.ironsource.adapters.applovin.AppLovinAdapter;
import com.ironsource.mediationsdk.adunit.adapter.listener.InterstitialAdListener;
import com.ironsource.mediationsdk.logger.IronLog;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppLovinInterstitialListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u001d\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0014\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J \u0010\u0017\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialListener;", "Lcom/applovin/sdk/AppLovinAdLoadListener;", "Lcom/applovin/sdk/AppLovinAdClickListener;", "Lcom/applovin/sdk/AppLovinAdDisplayListener;", "Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;", R6.G1, "Ljava/lang/ref/WeakReference;", "Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;", "<init>", "(Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;Ljava/lang/ref/WeakReference;)V", "adReceived", "", "appLovinAd", "Lcom/applovin/sdk/AppLovinAd;", "failedToReceiveAd", "errorCode", "", "adDisplayed", "adClicked", "adHidden", "videoPlaybackBegan", "videoPlaybackEnded", "percentViewed", "", "fullyWatched", "", "applovinadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AppLovinInterstitialListener implements AppLovinAdLoadListener, AppLovinAdClickListener, AppLovinAdDisplayListener, AppLovinAdVideoPlaybackListener {
    private final WeakReference<AppLovinInterstitialAdapter> adapter;
    private final InterstitialAdListener listener;

    public AppLovinInterstitialListener(InterstitialAdListener listener, WeakReference<AppLovinInterstitialAdapter> adapter) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.listener = listener;
        this.adapter = adapter;
    }

    @Override // com.applovin.sdk.AppLovinAdClickListener
    public void adClicked(AppLovinAd appLovinAd) {
        Intrinsics.checkNotNullParameter(appLovinAd, "appLovinAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdClicked();
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adDisplayed(AppLovinAd appLovinAd) {
        Intrinsics.checkNotNullParameter(appLovinAd, "appLovinAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdOpened();
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adHidden(AppLovinAd appLovinAd) {
        Intrinsics.checkNotNullParameter(appLovinAd, "appLovinAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdClosed();
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        Intrinsics.checkNotNullParameter(appLovinAd, "appLovinAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        AppLovinInterstitialAdapter appLovinInterstitialAdapter = this.adapter.get();
        if (appLovinInterstitialAdapter != null) {
            appLovinInterstitialAdapter.setInterstitialAd$applovinadapter_release(appLovinAd);
        }
        AppLovinInterstitialAdapter appLovinInterstitialAdapter2 = this.adapter.get();
        if (appLovinInterstitialAdapter2 != null) {
            appLovinInterstitialAdapter2.setInterstitialAdAvailability$applovinadapter_release(true);
        }
        this.listener.onAdLoadSuccess();
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int errorCode) {
        String errorString = AppLovinAdapter.INSTANCE.getErrorString(errorCode);
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format("Failed to load, errorCode = %s, errorMessage = %s", Arrays.copyOf(new Object[]{Integer.valueOf(errorCode), errorString}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        AppLovinInterstitialAdapter appLovinInterstitialAdapter = this.adapter.get();
        if (appLovinInterstitialAdapter != null) {
            appLovinInterstitialAdapter.setInterstitialAdAvailability$applovinadapter_release(false);
        }
        this.listener.onAdLoadFailed(AppLovinAdapter.INSTANCE.getLoadErrorType(errorCode), errorCode, errorString);
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackBegan(AppLovinAd appLovinAd) {
        Intrinsics.checkNotNullParameter(appLovinAd, "appLovinAd");
        IronLog.ADAPTER_CALLBACK.verbose();
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackEnded(AppLovinAd appLovinAd, double percentViewed, boolean fullyWatched) {
        Intrinsics.checkNotNullParameter(appLovinAd, "appLovinAd");
        IronLog.ADAPTER_CALLBACK.verbose();
    }
}
