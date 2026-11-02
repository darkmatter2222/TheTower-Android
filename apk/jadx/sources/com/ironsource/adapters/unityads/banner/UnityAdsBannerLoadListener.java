package com.ironsource.adapters.unityads.banner;

import android.widget.FrameLayout;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.R6;
import com.ironsource.Yf;
import com.ironsource.adapters.unityads.UnityAdsAdapter;
import com.ironsource.mediationsdk.adunit.adapter.listener.BannerAdListener;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.ads.BannerAd;
import com.unity3d.ads.LoadListener;
import com.unity3d.ads.UnityAdsError;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UnityAdsBannerLoadListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\n\u0010\u000bJ\u001c\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerLoadListener;", "Lcom/unity3d/ads/LoadListener;", "Lcom/unity3d/ads/BannerAd;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;", "layoutParams", "Landroid/widget/FrameLayout$LayoutParams;", R6.G1, "Ljava/lang/ref/WeakReference;", "Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerAdapter;", "<init>", "(Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;Landroid/widget/FrameLayout$LayoutParams;Ljava/lang/ref/WeakReference;)V", Yf.j, "", "unityAd", "error", "Lcom/unity3d/ads/UnityAdsError;", "unityadsadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UnityAdsBannerLoadListener implements LoadListener<BannerAd> {
    private final WeakReference<UnityAdsBannerAdapter> adapter;
    private final FrameLayout.LayoutParams layoutParams;
    private final BannerAdListener listener;

    public UnityAdsBannerLoadListener(BannerAdListener listener, FrameLayout.LayoutParams layoutParams, WeakReference<UnityAdsBannerAdapter> adapter) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(layoutParams, "layoutParams");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.listener = listener;
        this.layoutParams = layoutParams;
        this.adapter = adapter;
    }

    @Override // com.unity3d.ads.LoadListener
    public void onAdLoaded(BannerAd unityAd, UnityAdsError error) {
        if (unityAd != null) {
            IronLog.ADAPTER_CALLBACK.verbose();
            UnityAdsBannerAdapter unityAdsBannerAdapter = this.adapter.get();
            if (unityAdsBannerAdapter != null) {
                unityAdsBannerAdapter.setBannerAdView$unityadsadapter_release(unityAd);
            }
            this.listener.onAdLoadSuccess(unityAd.getView(), this.layoutParams);
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
