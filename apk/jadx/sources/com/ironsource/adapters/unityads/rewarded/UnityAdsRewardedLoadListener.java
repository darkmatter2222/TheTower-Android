package com.ironsource.adapters.unityads.rewarded;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.R6;
import com.ironsource.Yf;
import com.ironsource.adapters.unityads.UnityAdsAdapter;
import com.ironsource.mediationsdk.adunit.adapter.listener.RewardedVideoAdListener;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.ads.LoadListener;
import com.unity3d.ads.RewardedAd;
import com.unity3d.ads.UnityAdsError;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UnityAdsRewardedLoadListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\b\u0010\tJ\u001c\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u00022\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedLoadListener;", "Lcom/unity3d/ads/LoadListener;", "Lcom/unity3d/ads/RewardedAd;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;", R6.G1, "Ljava/lang/ref/WeakReference;", "Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedAdapter;", "<init>", "(Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;Ljava/lang/ref/WeakReference;)V", Yf.j, "", "unityAd", "error", "Lcom/unity3d/ads/UnityAdsError;", "unityadsadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UnityAdsRewardedLoadListener implements LoadListener<RewardedAd> {
    private final WeakReference<UnityAdsRewardedAdapter> adapter;
    private final RewardedVideoAdListener listener;

    public UnityAdsRewardedLoadListener(RewardedVideoAdListener listener, WeakReference<UnityAdsRewardedAdapter> adapter) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.listener = listener;
        this.adapter = adapter;
    }

    @Override // com.unity3d.ads.LoadListener
    public void onAdLoaded(RewardedAd unityAd, UnityAdsError error) {
        if (unityAd != null) {
            IronLog.ADAPTER_CALLBACK.verbose();
            UnityAdsRewardedAdapter unityAdsRewardedAdapter = this.adapter.get();
            if (unityAdsRewardedAdapter != null) {
                unityAdsRewardedAdapter.setRewardedAd$unityadsadapter_release(unityAd);
            }
            this.listener.onAdLoadSuccess();
            return;
        }
        int code = error != null ? error.getCode() : 1000;
        String message = error != null ? error.getMessage() : null;
        if (message == null) {
            message = "";
        }
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format("Failed to load, errorCode = %s, errorMessage = %s", Arrays.copyOf(new Object[]{Integer.valueOf(code), message}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        this.listener.onAdLoadFailed(UnityAdsAdapter.INSTANCE.getLoadErrorType(error), code, message);
    }
}
