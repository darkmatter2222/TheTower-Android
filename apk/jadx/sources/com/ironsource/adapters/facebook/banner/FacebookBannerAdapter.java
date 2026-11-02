package com.ironsource.adapters.facebook.banner;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.widget.FrameLayout;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.adapters.admob.AdMobConstants;
import com.ironsource.adapters.facebook.FacebookAdapter;
import com.ironsource.adapters.facebook.FacebookConstants;
import com.ironsource.mediationsdk.AdapterUtils;
import com.ironsource.mediationsdk.ISBannerSize;
import com.ironsource.mediationsdk.adunit.adapter.listener.BannerAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseBanner;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FacebookBannerAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J(\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\"\u0010\u0016\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\u0018H\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/ironsource/adapters/facebook/banner/FacebookBannerAdapter;", "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseBanner;", "Lcom/ironsource/adapters/facebook/FacebookAdapter;", "networkSettings", "Lcom/ironsource/mediationsdk/model/NetworkSettings;", "<init>", "(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V", "mainHandler", "Landroid/os/Handler;", "bannerAdView", "Lcom/facebook/ads/AdView;", AdMobConstants.Logs.LOAD_AD, "", "adData", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;", "activity", "Landroid/app/Activity;", "bannerSize", "Lcom/ironsource/mediationsdk/ISBannerSize;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;", "destroyAd", "collectBiddingData", "context", "Landroid/content/Context;", "biddingDataCallback", "Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;", "calculateBannerSize", "Lcom/facebook/ads/AdSize;", "calcLayoutParams", "Landroid/widget/FrameLayout$LayoutParams;", "facebookadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FacebookBannerAdapter extends LevelPlayBaseBanner<FacebookAdapter> {
    private AdView bannerAdView;
    private final Handler mainHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FacebookBannerAdapter(NetworkSettings networkSettings) {
        super(networkSettings);
        Intrinsics.checkNotNullParameter(networkSettings, "networkSettings");
        this.mainHandler = new Handler(Looper.getMainLooper());
    }

    private final FrameLayout.LayoutParams calcLayoutParams(ISBannerSize bannerSize, Context context) {
        int i;
        if (Intrinsics.areEqual(bannerSize.getDescription(), "RECTANGLE")) {
            i = 300;
        } else {
            i = (Intrinsics.areEqual(bannerSize.getDescription(), "SMART") && AdapterUtils.isLargeScreen(context)) ? 728 : 320;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(context, i), -2);
        layoutParams.gravity = 17;
        return layoutParams;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final AdSize calculateBannerSize(ISBannerSize bannerSize, Context context) {
        String description = bannerSize.getDescription();
        if (description != null) {
            switch (description.hashCode()) {
                case -387072689:
                    if (description.equals("RECTANGLE")) {
                        return AdSize.RECTANGLE_HEIGHT_250;
                    }
                    break;
                case 72205083:
                    if (description.equals("LARGE")) {
                        return AdSize.BANNER_HEIGHT_90;
                    }
                    break;
                case 79011241:
                    if (description.equals("SMART")) {
                        return AdapterUtils.isLargeScreen(context) ? AdSize.BANNER_HEIGHT_90 : AdSize.BANNER_HEIGHT_50;
                    }
                    break;
                case 1951953708:
                    if (description.equals("BANNER")) {
                        return AdSize.BANNER_HEIGHT_50;
                    }
                    break;
                case 1999208305:
                    if (description.equals("CUSTOM")) {
                        int height = bannerSize.getHeight();
                        if (height == 50) {
                            return AdSize.BANNER_HEIGHT_50;
                        }
                        if (height == 90) {
                            return AdSize.BANNER_HEIGHT_90;
                        }
                        if (height != 250) {
                            return null;
                        }
                        return AdSize.RECTANGLE_HEIGHT_250;
                    }
                    break;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void destroyAd$lambda$1(FacebookBannerAdapter facebookBannerAdapter) {
        AdView adView = facebookBannerAdapter.bannerAdView;
        if (adView != null) {
            adView.destroy();
        }
        facebookBannerAdapter.bannerAdView = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadAd$lambda$0(Context context, String str, AdSize adSize, FacebookBannerAdapter facebookBannerAdapter, ISBannerSize iSBannerSize, BannerAdListener bannerAdListener, String str2) {
        try {
            AdView adView = new AdView(context, str, adSize);
            Intrinsics.checkNotNull(context);
            AdView.AdViewLoadConfigBuilder adViewLoadConfigBuilderWithAdListener = adView.buildLoadAdConfig().withAdListener(new FacebookBannerListener(bannerAdListener, adView, facebookBannerAdapter.calcLayoutParams(iSBannerSize, context)));
            String str3 = str2;
            if (str3 != null && str3.length() != 0) {
                adViewLoadConfigBuilderWithAdListener.withBid(str2);
            }
            facebookBannerAdapter.bannerAdView = adView;
            adView.loadAd(adViewLoadConfigBuilderWithAdListener.build());
        } catch (Exception e) {
            String str4 = String.format(FacebookConstants.Logs.LOAD_EXCEPTION, Arrays.copyOf(new Object[]{e.getMessage()}, 1));
            Intrinsics.checkNotNullExpressionValue(str4, "format(...)");
            IronLog.INTERNAL.error(str4);
            bannerAdListener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1000, str4);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.unity3d.mediation.adapters.levelplay.LevelPlayBaseBanner, com.ironsource.InterfaceC3928y3
    public void collectBiddingData(AdData adData, Context context, BiddingDataCallback biddingDataCallback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(biddingDataCallback, "biddingDataCallback");
        IronLog.ADAPTER_API.verbose();
        FacebookAdapter facebookAdapter = (FacebookAdapter) getNetworkAdapter();
        if (facebookAdapter != null) {
            facebookAdapter.collectBiddingData$facebookadapter_release(context, biddingDataCallback);
        } else {
            IronLog.INTERNAL.error("Network adapter is null");
            biddingDataCallback.onFailure("Network adapter is null");
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBannerInterface
    public void destroyAd(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        IronLog.ADAPTER_API.verbose();
        this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.facebook.banner.FacebookBannerAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                FacebookBannerAdapter.destroyAd$lambda$1(this.f$0);
            }
        });
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBannerInterface
    public void loadAd(AdData adData, Activity activity, final ISBannerSize bannerSize, final BannerAdListener listener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(bannerSize, "bannerSize");
        Intrinsics.checkNotNullParameter(listener, "listener");
        final String string = adData.getString("placementId");
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format(FacebookConstants.Logs.PLACEMENT_ID, Arrays.copyOf(new Object[]{string == null ? "" : string}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        String str2 = string;
        if (str2 == null || str2.length() == 0) {
            String str3 = String.format("Missing params - %s", Arrays.copyOf(new Object[]{"placementId"}, 1));
            Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
            IronLog.INTERNAL.error(str3);
            listener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1002, str3);
            return;
        }
        final Context applicationContext = activity.getApplicationContext();
        Intrinsics.checkNotNull(applicationContext);
        final AdSize adSizeCalculateBannerSize = calculateBannerSize(bannerSize, applicationContext);
        if (adSizeCalculateBannerSize != null) {
            final String serverData = adData.getServerData();
            this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.facebook.banner.FacebookBannerAdapter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    FacebookBannerAdapter.loadAd$lambda$0(applicationContext, string, adSizeCalculateBannerSize, this, bannerSize, listener, serverData);
                }
            });
        } else {
            String str4 = String.format("size not supported, size = %s", Arrays.copyOf(new Object[]{bannerSize.getDescription()}, 1));
            Intrinsics.checkNotNullExpressionValue(str4, "format(...)");
            IronLog.INTERNAL.error(str4);
            listener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1000, str4);
        }
    }
}
