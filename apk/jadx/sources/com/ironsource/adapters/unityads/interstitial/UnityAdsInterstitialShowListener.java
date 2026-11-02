package com.ironsource.adapters.unityads.interstitial;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.adapters.unityads.UnityAdsConstants;
import com.ironsource.mediationsdk.adunit.adapter.listener.InterstitialAdListener;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.ads.InterstitialAd;
import com.unity3d.ads.InterstitialShowListener;
import com.unity3d.ads.ShowFinishState;
import com.unity3d.ads.UnityAdsError;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UnityAdsInterstitialShowListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\u0018\u0010\u000e\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/ironsource/adapters/unityads/interstitial/UnityAdsInterstitialShowListener;", "Lcom/unity3d/ads/InterstitialShowListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;", "<init>", "(Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;)V", "onStarted", "", "unityAd", "Lcom/unity3d/ads/InterstitialAd;", "onFailed", "error", "Lcom/unity3d/ads/UnityAdsError;", "onClicked", "onCompleted", "state", "Lcom/unity3d/ads/ShowFinishState;", "unityadsadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UnityAdsInterstitialShowListener implements InterstitialShowListener {
    private final InterstitialAdListener listener;

    public UnityAdsInterstitialShowListener(InterstitialAdListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    @Override // com.unity3d.ads.ShowListener
    public void onClicked(InterstitialAd unityAd) {
        Intrinsics.checkNotNullParameter(unityAd, "unityAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdClicked();
    }

    @Override // com.unity3d.ads.ShowListener
    public void onCompleted(InterstitialAd unityAd, ShowFinishState state) {
        Intrinsics.checkNotNullParameter(unityAd, "unityAd");
        Intrinsics.checkNotNullParameter(state, "state");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdClosed();
    }

    @Override // com.unity3d.ads.ShowListener
    public void onFailed(InterstitialAd unityAd, UnityAdsError error) {
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
        InterstitialAdListener interstitialAdListener = this.listener;
        int code = error.getCode();
        String message2 = error.getMessage();
        interstitialAdListener.onAdShowFailed(code, message2 != null ? message2 : "");
    }

    @Override // com.unity3d.ads.ShowListener
    public void onStarted(InterstitialAd unityAd) {
        Intrinsics.checkNotNullParameter(unityAd, "unityAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdOpened();
    }
}
