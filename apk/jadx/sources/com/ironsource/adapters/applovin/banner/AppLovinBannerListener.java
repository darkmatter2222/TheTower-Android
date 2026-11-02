package com.ironsource.adapters.applovin.banner;

import android.os.Handler;
import android.os.Looper;
import android.widget.FrameLayout;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinAdViewDisplayErrorCode;
import com.applovin.adview.AppLovinAdViewEventListener;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.adapters.applovin.AppLovinAdapter;
import com.ironsource.mediationsdk.adunit.adapter.listener.BannerAdListener;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppLovinBannerListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u001f\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\bH\u0016J\u0018\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\bH\u0016J\u0018\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\bH\u0016J \u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u001eH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener;", "Lcom/applovin/sdk/AppLovinAdLoadListener;", "Lcom/applovin/sdk/AppLovinAdDisplayListener;", "Lcom/applovin/sdk/AppLovinAdClickListener;", "Lcom/applovin/adview/AppLovinAdViewEventListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;", "adView", "Lcom/applovin/adview/AppLovinAdView;", "layoutParams", "Landroid/widget/FrameLayout$LayoutParams;", "<init>", "(Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;Lcom/applovin/adview/AppLovinAdView;Landroid/widget/FrameLayout$LayoutParams;)V", "mainHandler", "Landroid/os/Handler;", "adReceived", "", "appLovinAd", "Lcom/applovin/sdk/AppLovinAd;", "failedToReceiveAd", "errorCode", "", "adDisplayed", "adHidden", "adClicked", "adOpenedFullscreen", "appLovinAdView", "adClosedFullscreen", "adLeftApplication", "adFailedToDisplay", "Lcom/applovin/adview/AppLovinAdViewDisplayErrorCode;", "applovinadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AppLovinBannerListener implements AppLovinAdLoadListener, AppLovinAdDisplayListener, AppLovinAdClickListener, AppLovinAdViewEventListener {
    private final AppLovinAdView adView;
    private final FrameLayout.LayoutParams layoutParams;
    private final BannerAdListener listener;
    private final Handler mainHandler;

    public AppLovinBannerListener(BannerAdListener listener, AppLovinAdView adView, FrameLayout.LayoutParams layoutParams) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(adView, "adView");
        Intrinsics.checkNotNullParameter(layoutParams, "layoutParams");
        this.listener = listener;
        this.adView = adView;
        this.layoutParams = layoutParams;
        this.mainHandler = new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void adReceived$lambda$0(AppLovinBannerListener appLovinBannerListener, AppLovinAd appLovinAd) {
        appLovinBannerListener.adView.renderAd(appLovinAd);
        appLovinBannerListener.listener.onAdLoadSuccess(appLovinBannerListener.adView, appLovinBannerListener.layoutParams);
    }

    @Override // com.applovin.sdk.AppLovinAdClickListener
    public void adClicked(AppLovinAd appLovinAd) {
        Intrinsics.checkNotNullParameter(appLovinAd, "appLovinAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdClicked();
    }

    @Override // com.applovin.adview.AppLovinAdViewEventListener
    public void adClosedFullscreen(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
        Intrinsics.checkNotNullParameter(appLovinAd, "appLovinAd");
        Intrinsics.checkNotNullParameter(appLovinAdView, "appLovinAdView");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdScreenDismissed();
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adDisplayed(AppLovinAd appLovinAd) {
        Intrinsics.checkNotNullParameter(appLovinAd, "appLovinAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdOpened();
    }

    @Override // com.applovin.adview.AppLovinAdViewEventListener
    public void adFailedToDisplay(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView, AppLovinAdViewDisplayErrorCode errorCode) {
        Intrinsics.checkNotNullParameter(appLovinAd, "appLovinAd");
        Intrinsics.checkNotNullParameter(appLovinAdView, "appLovinAdView");
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        IronLog.ADAPTER_CALLBACK.verbose();
    }

    @Override // com.applovin.sdk.AppLovinAdDisplayListener
    public void adHidden(AppLovinAd appLovinAd) {
        Intrinsics.checkNotNullParameter(appLovinAd, "appLovinAd");
        IronLog.ADAPTER_CALLBACK.verbose();
    }

    @Override // com.applovin.adview.AppLovinAdViewEventListener
    public void adLeftApplication(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
        Intrinsics.checkNotNullParameter(appLovinAd, "appLovinAd");
        Intrinsics.checkNotNullParameter(appLovinAdView, "appLovinAdView");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdLeftApplication();
    }

    @Override // com.applovin.adview.AppLovinAdViewEventListener
    public void adOpenedFullscreen(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
        Intrinsics.checkNotNullParameter(appLovinAd, "appLovinAd");
        Intrinsics.checkNotNullParameter(appLovinAdView, "appLovinAdView");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.listener.onAdScreenPresented();
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(final AppLovinAd appLovinAd) {
        Intrinsics.checkNotNullParameter(appLovinAd, "appLovinAd");
        IronLog.ADAPTER_CALLBACK.verbose();
        this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.applovin.banner.AppLovinBannerListener$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AppLovinBannerListener.adReceived$lambda$0(this.f$0, appLovinAd);
            }
        });
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int errorCode) {
        String errorString = AppLovinAdapter.INSTANCE.getErrorString(errorCode);
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format("Failed to load, errorCode = %s, errorMessage = %s", Arrays.copyOf(new Object[]{Integer.valueOf(errorCode), errorString}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        this.listener.onAdLoadFailed(AppLovinAdapter.INSTANCE.getLoadErrorType(errorCode), errorCode, errorString);
    }
}
