package com.ironsource.adapters.unityads.rewarded;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.adapters.admob.AdMobConstants;
import com.ironsource.adapters.unityads.UnityAdsAdapter;
import com.ironsource.mediationsdk.adunit.adapter.listener.RewardedVideoAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.unity3d.ads.AdFormat;
import com.unity3d.ads.LoadConfiguration;
import com.unity3d.ads.RewardedAd;
import com.unity3d.ads.ShowConfiguration;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseRewardedVideo;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UnityAdsRewardedAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J \u0010\u0011\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0010\u0010\u0016\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\"\u0010\u0017\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0015\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\bH\u0000¢\u0006\u0002\b\u001cR\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedAdapter;", "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseRewardedVideo;", "Lcom/ironsource/adapters/unityads/UnityAdsAdapter;", "networkSettings", "Lcom/ironsource/mediationsdk/model/NetworkSettings;", "<init>", "(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V", "rewardedAd", "Lcom/unity3d/ads/RewardedAd;", AdMobConstants.Logs.LOAD_AD, "", "adData", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;", "context", "Landroid/content/Context;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;", "showAd", "activity", "Landroid/app/Activity;", "isAdAvailable", "", "destroyAd", "collectBiddingData", "biddingDataCallback", "Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;", "setRewardedAd", "ad", "setRewardedAd$unityadsadapter_release", "unityadsadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UnityAdsRewardedAdapter extends LevelPlayBaseRewardedVideo<UnityAdsAdapter> {
    private RewardedAd rewardedAd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnityAdsRewardedAdapter(NetworkSettings networkSettings) {
        super(networkSettings);
        Intrinsics.checkNotNullParameter(networkSettings, "networkSettings");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.unity3d.mediation.adapters.levelplay.LevelPlayBaseRewardedVideo, com.ironsource.InterfaceC3928y3
    public void collectBiddingData(AdData adData, Context context, BiddingDataCallback biddingDataCallback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(biddingDataCallback, "biddingDataCallback");
        IronLog.ADAPTER_API.verbose();
        UnityAdsAdapter unityAdsAdapter = (UnityAdsAdapter) getNetworkAdapter();
        if (unityAdsAdapter != null) {
            UnityAdsAdapter.collectBiddingData$unityadsadapter_release$default(unityAdsAdapter, adData, biddingDataCallback, AdFormat.REWARDED, null, 8, null);
        } else {
            IronLog.INTERNAL.error("Network adapter is null");
            biddingDataCallback.onFailure("Network adapter is null");
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void destroyAd(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        IronLog.ADAPTER_API.verbose();
        this.rewardedAd = null;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public boolean isAdAvailable(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        return this.rewardedAd != null;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void loadAd(AdData adData, Context context, RewardedVideoAdListener listener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(context, "context");
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
        LoadConfiguration.Builder builderWithMediationInfo = new LoadConfiguration.Builder(string).withMediationInfo(UnityAdsAdapter.INSTANCE.getMediationInfo$unityadsadapter_release());
        String serverData = adData.getServerData();
        if (serverData != null && serverData.length() > 0) {
            builderWithMediationInfo.withAdMarkup(serverData);
        }
        RewardedAd.INSTANCE.load(builderWithMediationInfo.build(), new UnityAdsRewardedLoadListener(listener, new WeakReference(this)));
    }

    public final void setRewardedAd$unityadsadapter_release(RewardedAd ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        this.rewardedAd = ad;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void showAd(AdData adData, Activity activity, RewardedVideoAdListener listener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.ADAPTER_API.verbose();
        if (!isAdAvailable(adData)) {
            IronLog.INTERNAL.error("Ad is not available");
            listener.onAdShowFailed(1001, "Ad is not available");
            return;
        }
        ShowConfiguration.Builder builder = new ShowConfiguration.Builder();
        String dynamicUserId = getDynamicUserId();
        if (dynamicUserId != null && dynamicUserId.length() > 0) {
            builder.withCustomRewardString(dynamicUserId);
        }
        ShowConfiguration showConfigurationBuild = builder.build();
        RewardedAd rewardedAd = this.rewardedAd;
        if (rewardedAd != null) {
            rewardedAd.show(activity, showConfigurationBuild, new UnityAdsRewardedShowListener(listener));
        }
    }
}
