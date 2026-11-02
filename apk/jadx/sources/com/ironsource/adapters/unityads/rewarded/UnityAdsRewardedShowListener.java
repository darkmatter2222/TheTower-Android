package com.ironsource.adapters.unityads.rewarded;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.adapters.unityads.UnityAdsConstants;
import com.ironsource.mediationsdk.adunit.adapter.listener.RewardedVideoAdListener;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.ads.RewardedAd;
import com.unity3d.ads.RewardedShowListener;
import com.unity3d.ads.ShowFinishState;
import com.unity3d.ads.UnityAdsError;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UnityAdsRewardedShowListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\tH\u0016J\u0018\u0010\u0010\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedShowListener;", "Lcom/unity3d/ads/RewardedShowListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;", "<init>", "(Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;)V", "onStarted", "", "unityAd", "Lcom/unity3d/ads/RewardedAd;", "onFailed", "error", "Lcom/unity3d/ads/UnityAdsError;", "onClicked", "onRewarded", "rewardedAd", "onCompleted", "state", "Lcom/unity3d/ads/ShowFinishState;", "unityadsadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UnityAdsRewardedShowListener implements RewardedShowListener {
    private final RewardedVideoAdListener listener;

    public UnityAdsRewardedShowListener(RewardedVideoAdListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    @Override // com.unity3d.ads.ShowListener
    public void onClicked(RewardedAd unityAd) {
        Intrinsics.checkNotNullParameter(unityAd, "unityAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdClicked();
    }

    @Override // com.unity3d.ads.ShowListener
    public void onCompleted(RewardedAd unityAd, ShowFinishState state) {
        Intrinsics.checkNotNullParameter(unityAd, "unityAd");
        Intrinsics.checkNotNullParameter(state, "state");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdClosed();
    }

    @Override // com.unity3d.ads.ShowListener
    public void onFailed(RewardedAd unityAd, UnityAdsError error) {
        Intrinsics.checkNotNullParameter(unityAd, "unityAd");
        Intrinsics.checkNotNullParameter(error, "error");
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        Integer numValueOf = Integer.valueOf(error.getCode());
        String message = error.getMessage();
        if (message == null) {
            message = "";
        }
        String str = String.format(UnityAdsConstants.Logs.FAILED_TO_SHOW, Arrays.copyOf(new Object[]{numValueOf, message}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        RewardedVideoAdListener rewardedVideoAdListener = this.listener;
        int code = error.getCode();
        String message2 = error.getMessage();
        rewardedVideoAdListener.onAdShowFailed(code, message2 != null ? message2 : "");
    }

    @Override // com.unity3d.ads.RewardedShowListener
    public void onRewarded(RewardedAd rewardedAd) {
        Intrinsics.checkNotNullParameter(rewardedAd, "rewardedAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdRewarded();
    }

    @Override // com.unity3d.ads.ShowListener
    public void onStarted(RewardedAd unityAd) {
        Intrinsics.checkNotNullParameter(unityAd, "unityAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdOpened();
    }
}
