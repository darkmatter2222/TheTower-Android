package com.ironsource.adapters.admob.banner;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.banner.AdView;
import com.google.android.libraries.ads.mobile.sdk.common.AdFormat;
import com.ironsource.C3510b4;
import com.ironsource.C3927y2;
import com.ironsource.adapters.admob.AdMobAdapter;
import com.ironsource.adapters.admob.AdMobConstants;
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
import java.util.Map;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdMobBannerAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J(\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\"\u0010\u0016\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016JB\u0010\u001b\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u001a\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020\u0012H\u0002J\u0018\u0010#\u001a\u00020!2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010$\u001a\u00020%H\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;", "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseBanner;", "Lcom/ironsource/adapters/admob/AdMobAdapter;", "networkSettings", "Lcom/ironsource/mediationsdk/model/NetworkSettings;", "<init>", "(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V", "bannerAdView", "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;", "mainHandler", "Landroid/os/Handler;", AdMobConstants.Logs.LOAD_AD, "", "adData", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;", "activity", "Landroid/app/Activity;", "bannerSize", "Lcom/ironsource/mediationsdk/ISBannerSize;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;", "destroyAd", "collectBiddingData", "context", "Landroid/content/Context;", "biddingDataCallback", "Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;", C3510b4.h.N, "networkAdapter", "adUnitId", "", C3927y2.s, "getAdSize", "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", "selectedBannerSize", "getAdaptiveBannerSize", "width", "", "admobadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AdMobBannerAdapter extends LevelPlayBaseBanner<AdMobAdapter> {
    private AdView bannerAdView;
    private final Handler mainHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdMobBannerAdapter(NetworkSettings networkSettings) {
        super(networkSettings);
        Intrinsics.checkNotNullParameter(networkSettings, "networkSettings");
        this.mainHandler = new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void destroyAd$lambda$1(AdMobBannerAdapter adMobBannerAdapter) {
        try {
            AdView adView = adMobBannerAdapter.bannerAdView;
            if (adView != null) {
                adView.destroy();
            }
            adMobBannerAdapter.bannerAdView = null;
        } catch (Exception e) {
            IronLog ironLog = IronLog.ADAPTER_API;
            String str = String.format(AdMobConstants.Logs.DESTROY_EXCEPTION, Arrays.copyOf(new Object[]{e.getMessage()}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            ironLog.error(str);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:30:0x005e  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final AdSize getAdSize(Context context, ISBannerSize selectedBannerSize) {
        AdSize adSize;
        AdSize adaptiveBannerSize;
        String description = selectedBannerSize.getDescription();
        if (description != null) {
            switch (description.hashCode()) {
                case -387072689:
                    if (!description.equals("RECTANGLE")) {
                        adSize = null;
                    } else {
                        adSize = AdSize.MEDIUM_RECTANGLE;
                    }
                    break;
                case 72205083:
                    if (!description.equals("LARGE")) {
                        adSize = null;
                    } else {
                        adSize = AdSize.LARGE_BANNER;
                    }
                    break;
                case 79011241:
                    if (!description.equals("SMART")) {
                        adSize = null;
                    } else if (!AdapterUtils.isLargeScreen(context)) {
                        adSize = AdSize.BANNER;
                    } else {
                        adSize = AdSize.LEADERBOARD;
                    }
                    break;
                case 1951953708:
                    if (!description.equals("BANNER")) {
                        adSize = null;
                    } else {
                        adSize = AdSize.BANNER;
                    }
                    break;
                case 1999208305:
                    if (!description.equals("CUSTOM")) {
                        adSize = null;
                    } else {
                        adSize = new AdSize(selectedBannerSize.getWidth(), selectedBannerSize.getHeight());
                    }
                    break;
                default:
                    adSize = null;
                    break;
            }
        } else {
            adSize = null;
        }
        return (!selectedBannerSize.isAdaptive() || adSize == null || (adaptiveBannerSize = getAdaptiveBannerSize(context, selectedBannerSize.toLevelPlayAdSize(context).getWidth())) == null) ? adSize : adaptiveBannerSize;
    }

    private final AdSize getAdaptiveBannerSize(Context context, int width) {
        return AdSize.INSTANCE.getLargeAnchoredAdaptiveBannerAdSize(context, width);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadAd$lambda$0(AdMobBannerAdapter adMobBannerAdapter, AdMobAdapter adMobAdapter, AdData adData, Context context, ISBannerSize iSBannerSize, String str, String str2, BannerAdListener bannerAdListener) {
        try {
            Intrinsics.checkNotNull(context);
            adMobBannerAdapter.loadBanner(adMobAdapter, adData, context, iSBannerSize, str, str2, bannerAdListener);
        } catch (Exception e) {
            IronLog ironLog = IronLog.ADAPTER_API;
            String str3 = String.format(AdMobConstants.Logs.LOAD_EXCEPTION, Arrays.copyOf(new Object[]{e.getMessage()}, 1));
            Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
            ironLog.error(str3);
            AdapterErrorType adapterErrorType = AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL;
            String str4 = String.format(AdMobConstants.Logs.LOAD_EXCEPTION, Arrays.copyOf(new Object[]{e.getMessage()}, 1));
            Intrinsics.checkNotNullExpressionValue(str4, "format(...)");
            bannerAdListener.onAdLoadFailed(adapterErrorType, 1000, str4);
        }
    }

    private final void loadBanner(AdMobAdapter networkAdapter, AdData adData, Context context, ISBannerSize bannerSize, String adUnitId, String serverData, BannerAdListener listener) {
        AdSize adSize = getAdSize(context, bannerSize);
        if (adSize == null) {
            String str = String.format("size not supported, size = %s", Arrays.copyOf(new Object[]{bannerSize.getDescription()}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            IronLog.INTERNAL.error(str);
            listener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1000, str);
            return;
        }
        AdView adView = new AdView(context);
        adView.setDescendantFocusability(393216);
        this.bannerAdView = adView;
        AdMobBannerListener adMobBannerListener = new AdMobBannerListener(listener, adView);
        String str2 = serverData;
        if (str2 == null || str2.length() == 0) {
            IronLog.ADAPTER_API.verbose(AdMobConstants.Logs.LOAD_AD);
            adView.loadAd(networkAdapter.createBannerAdRequest$admobadapter_release(adUnitId, adSize, adData), adMobBannerListener);
        } else {
            IronLog.ADAPTER_API.verbose(AdMobConstants.Logs.LOAD_WITH_SERVER_DATA);
            adView.loadFromAdResponse(serverData, adMobBannerListener);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.unity3d.mediation.adapters.levelplay.LevelPlayBaseBanner, com.ironsource.InterfaceC3928y3
    public void collectBiddingData(AdData adData, Context context, BiddingDataCallback biddingDataCallback) {
        AdSize adSize;
        Map<String, Object> adUnitData;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(biddingDataCallback, "biddingDataCallback");
        AdMobAdapter adMobAdapter = (AdMobAdapter) getNetworkAdapter();
        if (adMobAdapter == null) {
            IronLog.INTERNAL.error("Network adapter is null");
            biddingDataCallback.onFailure("Network adapter is null");
            return;
        }
        Bundle bundle = new Bundle();
        Object obj = (adData == null || (adUnitData = adData.getAdUnitData()) == null) ? null : adUnitData.get("bannerSize");
        ISBannerSize iSBannerSize = obj instanceof ISBannerSize ? (ISBannerSize) obj : null;
        if (iSBannerSize != null && iSBannerSize.isAdaptive() && (adSize = getAdSize(context, iSBannerSize)) != null) {
            bundle.putInt(AdMobConstants.EXTRA_ADAPTIVE_BANNER_WIDTH, adSize.getWidth());
            bundle.putInt(AdMobConstants.EXTRA_ADAPTIVE_BANNER_HEIGHT, adSize.getHeight());
            IronLog ironLog = IronLog.ADAPTER_API;
            String str = String.format(AdMobConstants.Logs.ADAPTIVE_BANNER_SIZE, Arrays.copyOf(new Object[]{Integer.valueOf(adSize.getWidth()), Integer.valueOf(adSize.getHeight())}, 2));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            ironLog.verbose(str);
        }
        adMobAdapter.collectBiddingData$admobadapter_release(biddingDataCallback, AdFormat.BANNER, bundle);
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBannerInterface
    public void destroyAd(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        IronLog.ADAPTER_API.verbose();
        this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.admob.banner.AdMobBannerAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AdMobBannerAdapter.destroyAd$lambda$1(this.f$0);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBannerInterface
    public void loadAd(final AdData adData, Activity activity, final ISBannerSize bannerSize, final BannerAdListener listener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(bannerSize, "bannerSize");
        Intrinsics.checkNotNullParameter(listener, "listener");
        final String string = adData.getString("adUnitId");
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format(AdMobConstants.Logs.AD_UNIT_ID, Arrays.copyOf(new Object[]{string}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        String str2 = string;
        if (str2 == null || str2.length() == 0) {
            String str3 = String.format(AdMobConstants.Logs.MISSING_PARAM, Arrays.copyOf(new Object[]{"adUnitId"}, 1));
            Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
            IronLog.INTERNAL.error(str3);
            listener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1002, str3);
            return;
        }
        final AdMobAdapter adMobAdapter = (AdMobAdapter) getNetworkAdapter();
        if (adMobAdapter == null) {
            IronLog.INTERNAL.error("Network adapter is null");
            listener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1000, "Network adapter is null");
        } else {
            final String serverData = adData.getServerData();
            final Context applicationContext = activity.getApplicationContext();
            this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.admob.banner.AdMobBannerAdapter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    AdMobBannerAdapter.loadAd$lambda$0(this.f$0, adMobAdapter, adData, applicationContext, bannerSize, string, serverData, listener);
                }
            });
        }
    }
}
