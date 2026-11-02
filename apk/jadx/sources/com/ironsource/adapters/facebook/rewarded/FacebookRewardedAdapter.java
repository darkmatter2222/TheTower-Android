package com.ironsource.adapters.facebook.rewarded;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.facebook.ads.RewardData;
import com.facebook.ads.RewardedVideoAd;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.adapters.admob.AdMobConstants;
import com.ironsource.adapters.facebook.FacebookAdapter;
import com.ironsource.adapters.facebook.FacebookConstants;
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

/* JADX INFO: compiled from: FacebookRewardedAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J \u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\"\u0010\u001c\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0015\u0010\u001f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u000eH\u0000¢\u0006\u0002\b!R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/ironsource/adapters/facebook/rewarded/FacebookRewardedAdapter;", "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseRewardedVideo;", "Lcom/ironsource/adapters/facebook/FacebookAdapter;", "networkSettings", "Lcom/ironsource/mediationsdk/model/NetworkSettings;", "<init>", "(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V", "mainHandler", "Landroid/os/Handler;", "rewardedAd", "Lcom/facebook/ads/RewardedVideoAd;", "rewardedAdListener", "Lcom/ironsource/adapters/facebook/rewarded/FacebookRewardedListener;", "isAdAvailableFlag", "", AdMobConstants.Logs.LOAD_AD, "", "adData", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;", "context", "Landroid/content/Context;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;", "showAd", "activity", "Landroid/app/Activity;", "isAdAvailable", "destroyAd", "collectBiddingData", "biddingDataCallback", "Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;", "setRewardedAdAvailability", "isAvailable", "setRewardedAdAvailability$facebookadapter_release", "facebookadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FacebookRewardedAdapter extends LevelPlayBaseRewardedVideo<FacebookAdapter> {
    private boolean isAdAvailableFlag;
    private final Handler mainHandler;
    private RewardedVideoAd rewardedAd;
    private FacebookRewardedListener rewardedAdListener;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FacebookRewardedAdapter(NetworkSettings networkSettings) {
        super(networkSettings);
        Intrinsics.checkNotNullParameter(networkSettings, "networkSettings");
        this.mainHandler = new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void destroyAd$lambda$2(FacebookRewardedAdapter facebookRewardedAdapter) {
        RewardedVideoAd rewardedVideoAd = facebookRewardedAdapter.rewardedAd;
        if (rewardedVideoAd != null) {
            rewardedVideoAd.destroy();
        }
        facebookRewardedAdapter.rewardedAd = null;
        facebookRewardedAdapter.rewardedAdListener = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadAd$lambda$0(FacebookRewardedAdapter facebookRewardedAdapter, Context context, String str, RewardedVideoAdListener rewardedVideoAdListener, String str2, String str3) {
        try {
            RewardedVideoAd rewardedVideoAd = facebookRewardedAdapter.rewardedAd;
            if (rewardedVideoAd != null) {
                rewardedVideoAd.destroy();
            }
            RewardedVideoAd rewardedVideoAd2 = new RewardedVideoAd(context, str);
            FacebookRewardedListener facebookRewardedListener = new FacebookRewardedListener(rewardedVideoAdListener, new WeakReference(facebookRewardedAdapter));
            facebookRewardedAdapter.rewardedAdListener = facebookRewardedListener;
            RewardedVideoAd.RewardedVideoAdLoadConfigBuilder rewardedVideoAdLoadConfigBuilderWithAdListener = rewardedVideoAd2.buildLoadAdConfig().withAdListener(facebookRewardedListener);
            String str4 = str2;
            if (str4 != null && str4.length() != 0) {
                rewardedVideoAdLoadConfigBuilderWithAdListener.withBid(str2);
            }
            String str5 = str3;
            if (str5 != null && str5.length() != 0) {
                rewardedVideoAdLoadConfigBuilderWithAdListener.withRewardData(new RewardData(str3, ""));
            }
            facebookRewardedAdapter.rewardedAd = rewardedVideoAd2;
            rewardedVideoAd2.loadAd(rewardedVideoAdLoadConfigBuilderWithAdListener.build());
        } catch (Exception e) {
            String str6 = String.format(FacebookConstants.Logs.LOAD_EXCEPTION, Arrays.copyOf(new Object[]{e.getMessage()}, 1));
            Intrinsics.checkNotNullExpressionValue(str6, "format(...)");
            IronLog.INTERNAL.error(str6);
            rewardedVideoAdListener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1000, str6);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showAd$lambda$1(FacebookRewardedAdapter facebookRewardedAdapter, RewardedVideoAdListener rewardedVideoAdListener) {
        try {
            RewardedVideoAd rewardedVideoAd = facebookRewardedAdapter.rewardedAd;
            if (rewardedVideoAd != null && rewardedVideoAd.isAdLoaded() && !rewardedVideoAd.isAdInvalidated()) {
                facebookRewardedAdapter.setRewardedAdAvailability$facebookadapter_release(false);
                FacebookRewardedListener facebookRewardedListener = facebookRewardedAdapter.rewardedAdListener;
                if (facebookRewardedListener != null) {
                    facebookRewardedListener.setShowAttempted$facebookadapter_release(true);
                }
                rewardedVideoAd.show();
                return;
            }
            IronLog.INTERNAL.error(FacebookConstants.Logs.AD_NOT_AVAILABLE);
            rewardedVideoAdListener.onAdShowFailed(1001, FacebookConstants.Logs.AD_NOT_AVAILABLE);
        } catch (Exception e) {
            String str = String.format(FacebookConstants.Logs.SHOW_EXCEPTION, Arrays.copyOf(new Object[]{e.getMessage()}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            IronLog.INTERNAL.error(str);
            rewardedVideoAdListener.onAdShowFailed(1000, str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.unity3d.mediation.adapters.levelplay.LevelPlayBaseRewardedVideo, com.ironsource.InterfaceC3928y3
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

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void destroyAd(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        IronLog.ADAPTER_API.verbose();
        setRewardedAdAvailability$facebookadapter_release(false);
        this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.facebook.rewarded.FacebookRewardedAdapter$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                FacebookRewardedAdapter.destroyAd$lambda$2(this.f$0);
            }
        });
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public boolean isAdAvailable(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        return this.isAdAvailableFlag;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void loadAd(AdData adData, Context context, final RewardedVideoAdListener listener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(context, "context");
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
        final String serverData = adData.getServerData();
        final String dynamicUserId = getDynamicUserId();
        final Context applicationContext = context.getApplicationContext();
        setRewardedAdAvailability$facebookadapter_release(false);
        this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.facebook.rewarded.FacebookRewardedAdapter$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                FacebookRewardedAdapter.loadAd$lambda$0(this.f$0, applicationContext, string, listener, serverData, dynamicUserId);
            }
        });
    }

    public final void setRewardedAdAvailability$facebookadapter_release(boolean isAvailable) {
        this.isAdAvailableFlag = isAvailable;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void showAd(AdData adData, Activity activity, final RewardedVideoAdListener listener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.ADAPTER_API.verbose();
        if (isAdAvailable(adData)) {
            this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.facebook.rewarded.FacebookRewardedAdapter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    FacebookRewardedAdapter.showAd$lambda$1(this.f$0, listener);
                }
            });
        } else {
            IronLog.INTERNAL.error(FacebookConstants.Logs.AD_NOT_AVAILABLE);
            listener.onAdShowFailed(1001, FacebookConstants.Logs.AD_NOT_AVAILABLE);
        }
    }
}
