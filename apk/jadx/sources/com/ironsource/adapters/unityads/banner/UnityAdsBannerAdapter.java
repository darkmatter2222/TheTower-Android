package com.ironsource.adapters.unityads.banner;

import android.app.Activity;
import android.content.Context;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.adapters.admob.AdMobConstants;
import com.ironsource.adapters.unityads.UnityAdsAdapter;
import com.ironsource.adapters.unityads.UnityAdsConstants;
import com.ironsource.mediationsdk.AdapterUtils;
import com.ironsource.mediationsdk.ISBannerSize;
import com.ironsource.mediationsdk.adunit.adapter.listener.BannerAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.unity3d.ads.AdFormat;
import com.unity3d.ads.BannerAd;
import com.unity3d.ads.BannerConfiguration;
import com.unity3d.ads.BannerSize;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseBanner;
import com.unity3d.services.banners.UnityBannerSize;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Map;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UnityAdsBannerAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J(\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\"\u0010\u0014\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0015\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\bH\u0000¢\u0006\u0002\b\u001bJ\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u001fH\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerAdapter;", "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseBanner;", "Lcom/ironsource/adapters/unityads/UnityAdsAdapter;", "networkSettings", "Lcom/ironsource/mediationsdk/model/NetworkSettings;", "<init>", "(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V", "bannerAdView", "Lcom/unity3d/ads/BannerAd;", AdMobConstants.Logs.LOAD_AD, "", "adData", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;", "activity", "Landroid/app/Activity;", "bannerSize", "Lcom/ironsource/mediationsdk/ISBannerSize;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;", "destroyAd", "collectBiddingData", "context", "Landroid/content/Context;", "biddingDataCallback", "Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;", "setBannerAdView", "ad", "setBannerAdView$unityadsadapter_release", "getBannerSize", "Lcom/unity3d/services/banners/UnityBannerSize;", "isLargeScreen", "", "unityadsadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UnityAdsBannerAdapter extends LevelPlayBaseBanner<UnityAdsAdapter> {
    private BannerAd bannerAdView;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnityAdsBannerAdapter(NetworkSettings networkSettings) {
        super(networkSettings);
        Intrinsics.checkNotNullParameter(networkSettings, "networkSettings");
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final UnityBannerSize getBannerSize(ISBannerSize bannerSize, boolean isLargeScreen) {
        String description = bannerSize.getDescription();
        if (description == null) {
            return null;
        }
        switch (description.hashCode()) {
            case -387072689:
                if (description.equals("RECTANGLE")) {
                    return new UnityBannerSize(300, 250);
                }
                return null;
            case 72205083:
                if (!description.equals("LARGE")) {
                    return null;
                }
                break;
            case 79011241:
                if (description.equals("SMART")) {
                    return isLargeScreen ? new UnityBannerSize(728, 90) : new UnityBannerSize(320, 50);
                }
                return null;
            case 1951953708:
                if (!description.equals("BANNER")) {
                    return null;
                }
                break;
            default:
                return null;
        }
        return new UnityBannerSize(320, 50);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.unity3d.mediation.adapters.levelplay.LevelPlayBaseBanner, com.ironsource.InterfaceC3928y3
    public void collectBiddingData(AdData adData, Context context, BiddingDataCallback biddingDataCallback) {
        Map<String, Object> adUnitData;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(biddingDataCallback, "biddingDataCallback");
        IronLog.ADAPTER_API.verbose();
        UnityAdsAdapter unityAdsAdapter = (UnityAdsAdapter) getNetworkAdapter();
        if (unityAdsAdapter == null) {
            IronLog.INTERNAL.error("Network adapter is null");
            biddingDataCallback.onFailure("Network adapter is null");
        } else {
            Object obj = (adData == null || (adUnitData = adData.getAdUnitData()) == null) ? null : adUnitData.get("bannerSize");
            ISBannerSize iSBannerSize = obj instanceof ISBannerSize ? (ISBannerSize) obj : null;
            unityAdsAdapter.collectBiddingData$unityadsadapter_release(adData, biddingDataCallback, AdFormat.BANNER, iSBannerSize != null ? new BannerSize(iSBannerSize.getWidth(), iSBannerSize.getHeight()) : null);
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBannerInterface
    public void destroyAd(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        IronLog.ADAPTER_API.verbose();
        this.bannerAdView = null;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBannerInterface
    public void loadAd(AdData adData, Activity activity, ISBannerSize bannerSize, BannerAdListener listener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(bannerSize, "bannerSize");
        Intrinsics.checkNotNullParameter(listener, "listener");
        String string = adData.getString("zoneId");
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format("zoneId = %s", Arrays.copyOf(new Object[]{string == null ? "" : string}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        String str2 = string;
        if (str2 == null || str2.length() == 0) {
            String str3 = String.format("Missing params - %s", Arrays.copyOf(new Object[]{"zoneId"}, 1));
            Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
            IronLog.INTERNAL.error(str3);
            listener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1002, str3);
            return;
        }
        UnityBannerSize bannerSize2 = getBannerSize(bannerSize, AdapterUtils.isLargeScreen(activity.getApplicationContext()));
        if (bannerSize2 == null) {
            IronLog.INTERNAL.error(UnityAdsConstants.Logs.UNSUPPORTED_BANNER_SIZE);
            listener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1000, UnityAdsConstants.Logs.UNSUPPORTED_BANNER_SIZE);
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(AdapterUtils.dpToPixels(activity.getApplicationContext(), bannerSize2.getWidth()), -2, 17);
        Map<String, Object> adUnitData = adData.getAdUnitData();
        Object obj = adUnitData != null ? adUnitData.get("adUnitId") : null;
        String str4 = obj instanceof String ? (String) obj : null;
        BannerConfiguration.Builder builderWithMediationInfo = new BannerConfiguration.Builder(string, new BannerSize(bannerSize2.getWidth(), bannerSize2.getHeight()), new UnityAdsBannerShowListener(listener)).withMediationInfo(UnityAdsAdapter.INSTANCE.getMediationInfo$unityadsadapter_release());
        String serverData = adData.getServerData();
        if (serverData != null && serverData.length() > 0) {
            builderWithMediationInfo.withAdMarkup(serverData);
        }
        String str5 = str4;
        if (str5 != null && str5.length() != 0) {
            builderWithMediationInfo.withMediationAdUnitId(str4);
        }
        BannerAd.INSTANCE.load(builderWithMediationInfo.build(), new UnityAdsBannerLoadListener(listener, layoutParams, new WeakReference(this)));
    }

    public final void setBannerAdView$unityadsadapter_release(BannerAd ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        this.bannerAdView = ad;
    }
}
