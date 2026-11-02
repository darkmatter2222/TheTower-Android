package com.ironsource.adapters.facebook.banner;

import android.widget.FrameLayout;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.Yf;
import com.ironsource.adapters.facebook.FacebookAdapter;
import com.ironsource.mediationsdk.adunit.adapter.listener.BannerAdListener;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FacebookBannerListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0010\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/ironsource/adapters/facebook/banner/FacebookBannerListener;", "Lcom/facebook/ads/AdListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;", "adView", "Lcom/facebook/ads/AdView;", "layoutParams", "Landroid/widget/FrameLayout$LayoutParams;", "<init>", "(Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;Lcom/facebook/ads/AdView;Landroid/widget/FrameLayout$LayoutParams;)V", Yf.j, "", "ad", "Lcom/facebook/ads/Ad;", "onError", "adError", "Lcom/facebook/ads/AdError;", "onLoggingImpression", Yf.f, "facebookadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FacebookBannerListener implements AdListener {
    private final AdView adView;
    private final FrameLayout.LayoutParams layoutParams;
    private final BannerAdListener listener;

    public FacebookBannerListener(BannerAdListener listener, AdView adView, FrameLayout.LayoutParams layoutParams) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(adView, "adView");
        Intrinsics.checkNotNullParameter(layoutParams, "layoutParams");
        this.listener = listener;
        this.adView = adView;
        this.layoutParams = layoutParams;
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
        this.listener.onAdLoadSuccess(this.adView, this.layoutParams);
    }

    @Override // com.facebook.ads.AdListener
    public void onError(Ad ad, AdError adError) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(adError, "adError");
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format("Failed to load, errorCode = %s, errorMessage = %s", Arrays.copyOf(new Object[]{Integer.valueOf(adError.getErrorCode()), adError.getErrorMessage()}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        this.listener.onAdLoadFailed(FacebookAdapter.INSTANCE.getLoadErrorType(adError), adError.getErrorCode(), adError.getErrorMessage());
    }

    @Override // com.facebook.ads.AdListener
    public void onLoggingImpression(Ad ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdOpened();
    }
}
