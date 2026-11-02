package com.ironsource.adapters.admob.rewarded;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.libraries.ads.mobile.sdk.common.AdFormat;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardedAd;
import com.ironsource.adapters.admob.AdMobAdapter;
import com.ironsource.adapters.admob.AdMobConstants;
import com.ironsource.mediationsdk.adunit.adapter.listener.RewardedVideoAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseRewardedVideo;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdMobRewardedAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J \u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u001a\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\"\u0010\u001c\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0017\u0010\u001f\u001a\u00020\u00102\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0000¢\u0006\u0002\b J\u0015\u0010!\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020\fH\u0000¢\u0006\u0002\b#R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;", "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseRewardedVideo;", "Lcom/ironsource/adapters/admob/AdMobAdapter;", "networkSettings", "Lcom/ironsource/mediationsdk/model/NetworkSettings;", "<init>", "(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V", "rewardedAd", "Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;", "rewardedAdListener", "Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedListener;", "isAdAvailableFlag", "", "mainHandler", "Landroid/os/Handler;", AdMobConstants.Logs.LOAD_AD, "", "adData", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;", "context", "Landroid/content/Context;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;", "showAd", "activity", "Landroid/app/Activity;", "isAdAvailable", "destroyAd", "collectBiddingData", "biddingDataCallback", "Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;", "setRewardedAd", "setRewardedAd$admobadapter_release", "setRewardedAdAvailability", "isAvailable", "setRewardedAdAvailability$admobadapter_release", "admobadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AdMobRewardedAdapter extends LevelPlayBaseRewardedVideo<AdMobAdapter> {
    private boolean isAdAvailableFlag;
    private final Handler mainHandler;
    private RewardedAd rewardedAd;
    private AdMobRewardedListener rewardedAdListener;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdMobRewardedAdapter(NetworkSettings networkSettings) {
        super(networkSettings);
        Intrinsics.checkNotNullParameter(networkSettings, "networkSettings");
        this.mainHandler = new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadAd$lambda$0(String str, AdMobAdapter adMobAdapter, String str2, AdData adData, AdMobRewardedListener adMobRewardedListener) {
        String str3 = str;
        if (str3 == null || str3.length() == 0) {
            RewardedAd.INSTANCE.load(adMobAdapter.createAdRequest$admobadapter_release(str2, adData), adMobRewardedListener);
        } else {
            IronLog.ADAPTER_API.verbose(AdMobConstants.Logs.LOAD_WITH_SERVER_DATA);
            RewardedAd.INSTANCE.loadFromAdResponse(str, adMobRewardedListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showAd$lambda$2(AdMobRewardedAdapter adMobRewardedAdapter, Activity activity) {
        AdMobRewardedListener adMobRewardedListener;
        RewardedAd rewardedAd = adMobRewardedAdapter.rewardedAd;
        if (rewardedAd == null || (adMobRewardedListener = adMobRewardedAdapter.rewardedAdListener) == null) {
            return;
        }
        rewardedAd.setAdEventCallback(adMobRewardedListener);
        rewardedAd.show(activity, adMobRewardedListener);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.unity3d.mediation.adapters.levelplay.LevelPlayBaseRewardedVideo, com.ironsource.InterfaceC3928y3
    public void collectBiddingData(AdData adData, Context context, BiddingDataCallback biddingDataCallback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(biddingDataCallback, "biddingDataCallback");
        AdMobAdapter adMobAdapter = (AdMobAdapter) getNetworkAdapter();
        if (adMobAdapter != null) {
            adMobAdapter.collectBiddingData$admobadapter_release(biddingDataCallback, AdFormat.REWARDED, null);
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
        this.rewardedAdListener = null;
        this.isAdAvailableFlag = false;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public boolean isAdAvailable(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        return this.rewardedAd != null && this.isAdAvailableFlag;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void loadAd(final AdData adData, Context context, RewardedVideoAdListener listener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(context, "context");
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
            return;
        }
        final String serverData = adData.getServerData();
        setRewardedAdAvailability$admobadapter_release(false);
        final AdMobRewardedListener adMobRewardedListener = new AdMobRewardedListener(listener, new WeakReference(this));
        this.rewardedAdListener = adMobRewardedListener;
        this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.admob.rewarded.AdMobRewardedAdapter$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                AdMobRewardedAdapter.loadAd$lambda$0(serverData, adMobAdapter, string, adData, adMobRewardedListener);
            }
        });
    }

    public final void setRewardedAd$admobadapter_release(RewardedAd rewardedAd) {
        this.rewardedAd = rewardedAd;
    }

    public final void setRewardedAdAvailability$admobadapter_release(boolean isAvailable) {
        this.isAdAvailableFlag = isAvailable;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void showAd(AdData adData, final Activity activity, RewardedVideoAdListener listener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.ADAPTER_API.verbose();
        if (isAdAvailable(adData)) {
            this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.admob.rewarded.AdMobRewardedAdapter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AdMobRewardedAdapter.showAd$lambda$2(this.f$0, activity);
                }
            });
        } else {
            IronLog.ADAPTER_API.error(AdMobConstants.Logs.AD_NOT_READY);
            listener.onAdShowFailed(1001, AdMobConstants.Logs.AD_NOT_READY);
        }
    }
}
