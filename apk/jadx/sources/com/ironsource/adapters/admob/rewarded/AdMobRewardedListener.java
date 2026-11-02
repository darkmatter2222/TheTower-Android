package com.ironsource.adapters.admob.rewarded;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import com.google.android.libraries.ads.mobile.sdk.common.ResponseInfo;
import com.google.android.libraries.ads.mobile.sdk.rewarded.OnUserEarnedRewardListener;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardedAd;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardedAdEventCallback;
import com.ironsource.R6;
import com.ironsource.Yf;
import com.ironsource.adapters.admob.AdMobAdapter;
import com.ironsource.adapters.admob.AdMobConstants;
import com.ironsource.mediationsdk.adunit.adapter.listener.RewardedVideoAdListener;
import com.ironsource.mediationsdk.logger.IronLog;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.TuplesKt;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdMobRewardedListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004B\u001d\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\rH\u0016J\b\u0010\u0013\u001a\u00020\rH\u0016J\u0010\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\rH\u0016J\u0010\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u001aH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedListener;", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;", "Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;", "Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAdEventCallback;", "Lcom/google/android/libraries/ads/mobile/sdk/rewarded/OnUserEarnedRewardListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;", R6.G1, "Ljava/lang/ref/WeakReference;", "Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;", "<init>", "(Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;Ljava/lang/ref/WeakReference;)V", Yf.j, "", "rewardedAd", "onAdFailedToLoad", "loadAdError", "Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;", "onAdImpression", Yf.f, "onUserEarnedReward", "rewardItem", "Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;", "onAdDismissedFullScreenContent", "onAdFailedToShowFullScreenContent", "error", "Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;", "admobadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AdMobRewardedListener implements AdLoadCallback<RewardedAd>, RewardedAdEventCallback, OnUserEarnedRewardListener {
    private final WeakReference<AdMobRewardedAdapter> adapter;
    private final RewardedVideoAdListener listener;

    public AdMobRewardedListener(RewardedVideoAdListener listener, WeakReference<AdMobRewardedAdapter> adapter) {
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
    public void onAdFailedToLoad(LoadAdError loadAdError) {
        Intrinsics.checkNotNullParameter(loadAdError, "loadAdError");
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format(AdMobConstants.Logs.FAILED_TO_LOAD, Arrays.copyOf(new Object[]{loadAdError.getCode(), loadAdError.getCom.tapjoy.TJAdUnitConstants.String.MESSAGE java.lang.String()}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        AdMobRewardedAdapter adMobRewardedAdapter = this.adapter.get();
        if (adMobRewardedAdapter != null) {
            adMobRewardedAdapter.setRewardedAdAvailability$admobadapter_release(false);
        }
        this.listener.onAdLoadFailed(AdMobAdapter.INSTANCE.getLoadErrorType$admobadapter_release(loadAdError.getCode()), loadAdError.getCode().ordinal(), loadAdError.getCom.tapjoy.TJAdUnitConstants.String.MESSAGE java.lang.String() + " (" + loadAdError.getCode() + ")");
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
    public void onAdLoaded(RewardedAd rewardedAd) {
        Intrinsics.checkNotNullParameter(rewardedAd, "rewardedAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        AdMobRewardedAdapter adMobRewardedAdapter = this.adapter.get();
        if (adMobRewardedAdapter != null) {
            adMobRewardedAdapter.setRewardedAd$admobadapter_release(rewardedAd);
        }
        AdMobRewardedAdapter adMobRewardedAdapter2 = this.adapter.get();
        if (adMobRewardedAdapter2 != null) {
            adMobRewardedAdapter2.setRewardedAdAvailability$admobadapter_release(true);
        }
        ResponseInfo responseInfo = rewardedAd.getResponseInfo();
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

    @Override // com.google.android.libraries.ads.mobile.sdk.rewarded.OnUserEarnedRewardListener
    public void onUserEarnedReward(RewardItem rewardItem) {
        Intrinsics.checkNotNullParameter(rewardItem, "rewardItem");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdRewarded();
    }
}
