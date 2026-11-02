package com.ironsource.adapters.applovin.rewarded;

import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.R6;
import com.ironsource.Ue;
import com.ironsource.adapters.applovin.AppLovinAdapter;
import com.ironsource.mediationsdk.adunit.adapter.listener.RewardedVideoAdListener;
import com.ironsource.mediationsdk.logger.IronLog;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Map;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppLovinRewardedListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\u001d\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J \u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0010\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J$\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020 0\u001fH\u0016J$\u0010!\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020 0\u001fH\u0016J$\u0010\"\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020 0\u001fH\u0016J\u0018\u0010#\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/ironsource/adapters/applovin/rewarded/AppLovinRewardedListener;", "Lcom/applovin/sdk/AppLovinAdLoadListener;", "Lcom/applovin/sdk/AppLovinAdClickListener;", "Lcom/applovin/sdk/AppLovinAdDisplayListener;", "Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;", "Lcom/applovin/sdk/AppLovinAdRewardListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;", R6.G1, "Ljava/lang/ref/WeakReference;", "Lcom/ironsource/adapters/applovin/rewarded/AppLovinRewardedAdapter;", "<init>", "(Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;Ljava/lang/ref/WeakReference;)V", "adReceived", "", "appLovinAd", "Lcom/applovin/sdk/AppLovinAd;", "failedToReceiveAd", "errorCode", "", "adDisplayed", "videoPlaybackBegan", "videoPlaybackEnded", "percentViewed", "", "isFullyWatched", "", "adClicked", "adHidden", "userRewardVerified", Ue.n, "", "", "userOverQuota", "userRewardRejected", "validationRequestFailed", "applovinadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AppLovinRewardedListener implements AppLovinAdLoadListener, AppLovinAdClickListener, AppLovinAdDisplayListener, AppLovinAdVideoPlaybackListener, AppLovinAdRewardListener {
    private final WeakReference<AppLovinRewardedAdapter> adapter;
    private final RewardedVideoAdListener listener;

    public AppLovinRewardedListener(RewardedVideoAdListener listener, WeakReference<AppLovinRewardedAdapter> adapter) {
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
        AppLovinRewardedAdapter appLovinRewardedAdapter = this.adapter.get();
        if (appLovinRewardedAdapter != null) {
            appLovinRewardedAdapter.setLoadedAppLovinAd$applovinadapter_release(appLovinAd);
        }
        AppLovinRewardedAdapter appLovinRewardedAdapter2 = this.adapter.get();
        if (appLovinRewardedAdapter2 != null) {
            appLovinRewardedAdapter2.setRewardedAdAvailability$applovinadapter_release(true);
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
        AppLovinRewardedAdapter appLovinRewardedAdapter = this.adapter.get();
        if (appLovinRewardedAdapter != null) {
            appLovinRewardedAdapter.setRewardedAdAvailability$applovinadapter_release(false);
        }
        this.listener.onAdLoadFailed(AppLovinAdapter.INSTANCE.getLoadErrorType(errorCode), errorCode, errorString);
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userOverQuota(AppLovinAd appLovinAd, Map<String, String> response) {
        Intrinsics.checkNotNullParameter(appLovinAd, "appLovinAd");
        Intrinsics.checkNotNullParameter(response, "response");
        IronLog.ADAPTER_CALLBACK.verbose();
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userRewardRejected(AppLovinAd appLovinAd, Map<String, String> response) {
        Intrinsics.checkNotNullParameter(appLovinAd, "appLovinAd");
        Intrinsics.checkNotNullParameter(response, "response");
        IronLog.ADAPTER_CALLBACK.verbose();
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void userRewardVerified(AppLovinAd appLovinAd, Map<String, String> response) {
        Intrinsics.checkNotNullParameter(appLovinAd, "appLovinAd");
        Intrinsics.checkNotNullParameter(response, "response");
        IronLog.ADAPTER_CALLBACK.verbose();
    }

    @Override // com.applovin.sdk.AppLovinAdRewardListener
    public void validationRequestFailed(AppLovinAd appLovinAd, int errorCode) {
        Intrinsics.checkNotNullParameter(appLovinAd, "appLovinAd");
        IronLog.ADAPTER_CALLBACK.verbose();
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackBegan(AppLovinAd appLovinAd) {
        Intrinsics.checkNotNullParameter(appLovinAd, "appLovinAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdStarted();
    }

    @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
    public void videoPlaybackEnded(AppLovinAd appLovinAd, double percentViewed, boolean isFullyWatched) {
        Intrinsics.checkNotNullParameter(appLovinAd, "appLovinAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdEnded();
        if (isFullyWatched) {
            this.listener.onAdRewarded();
        }
    }
}
