package com.ironsource.adapters.unityads.banner;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.adapters.unityads.UnityAdsConstants;
import com.ironsource.mediationsdk.adunit.adapter.listener.BannerAdListener;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.ads.BannerAd;
import com.unity3d.ads.BannerShowListener;
import com.unity3d.ads.UnityAdsError;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UnityAdsBannerShowListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\u0018\u0010\u000b\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerShowListener;", "Lcom/unity3d/ads/BannerShowListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;", "<init>", "(Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;)V", "onImpression", "", "banner", "Lcom/unity3d/ads/BannerAd;", "onClicked", "onFailedToShow", "error", "Lcom/unity3d/ads/UnityAdsError;", "unityadsadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UnityAdsBannerShowListener implements BannerShowListener {
    private final BannerAdListener listener;

    public UnityAdsBannerShowListener(BannerAdListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.listener = listener;
    }

    @Override // com.unity3d.ads.BannerShowListener
    public void onClicked(BannerAd banner) {
        Intrinsics.checkNotNullParameter(banner, "banner");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdClicked();
    }

    @Override // com.unity3d.ads.BannerShowListener
    public void onFailedToShow(BannerAd banner, UnityAdsError error) {
        Intrinsics.checkNotNullParameter(banner, "banner");
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
    }

    @Override // com.unity3d.ads.BannerShowListener
    public void onImpression(BannerAd banner) {
        Intrinsics.checkNotNullParameter(banner, "banner");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdOpened();
    }
}
