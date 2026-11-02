package com.ironsource.adapters.applovin.rewarded;

import android.app.Activity;
import android.content.Context;
import com.applovin.adview.AppLovinIncentivizedInterstitial;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkSettings;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.adapters.admob.AdMobConstants;
import com.ironsource.adapters.applovin.AppLovinAdapter;
import com.ironsource.adapters.applovin.AppLovinConstants;
import com.ironsource.mediationsdk.adunit.adapter.listener.RewardedVideoAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseRewardedVideo;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppLovinRewardedAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 $2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001$B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J \u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0015\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\fH\u0000¢\u0006\u0002\b J\u0015\u0010!\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020\u000eH\u0000¢\u0006\u0002\b#R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/ironsource/adapters/applovin/rewarded/AppLovinRewardedAdapter;", "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseRewardedVideo;", "Lcom/ironsource/adapters/applovin/AppLovinAdapter;", "networkSettings", "Lcom/ironsource/mediationsdk/model/NetworkSettings;", "<init>", "(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V", "rewardedAd", "Lcom/applovin/adview/AppLovinIncentivizedInterstitial;", "rewardedAdListener", "Lcom/ironsource/adapters/applovin/rewarded/AppLovinRewardedListener;", "loadedAppLovinAd", "Lcom/applovin/sdk/AppLovinAd;", "isAdAvailableFlag", "", "reservedZoneId", "", AdMobConstants.Logs.LOAD_AD, "", "adData", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;", "context", "Landroid/content/Context;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;", "showAd", "activity", "Landroid/app/Activity;", "isAdAvailable", "destroyAd", "setLoadedAppLovinAd", "ad", "setLoadedAppLovinAd$applovinadapter_release", "setRewardedAdAvailability", "isAvailable", "setRewardedAdAvailability$applovinadapter_release", "Companion", "applovinadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AppLovinRewardedAdapter extends LevelPlayBaseRewardedVideo<AppLovinAdapter> {
    private static final Set<String> rewardedZoneIds;
    private boolean isAdAvailableFlag;
    private AppLovinAd loadedAppLovinAd;
    private String reservedZoneId;
    private AppLovinIncentivizedInterstitial rewardedAd;
    private AppLovinRewardedListener rewardedAdListener;

    static {
        Set<String> setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
        Intrinsics.checkNotNullExpressionValue(setNewSetFromMap, "newSetFromMap(...)");
        rewardedZoneIds = setNewSetFromMap;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppLovinRewardedAdapter(NetworkSettings networkSettings) {
        super(networkSettings);
        Intrinsics.checkNotNullParameter(networkSettings, "networkSettings");
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void destroyAd(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        IronLog.ADAPTER_API.verbose();
        String str = this.reservedZoneId;
        if (str != null) {
            rewardedZoneIds.remove(str);
        }
        this.reservedZoneId = null;
        this.rewardedAd = null;
        this.rewardedAdListener = null;
        this.loadedAppLovinAd = null;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public boolean isAdAvailable(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        return this.rewardedAd != null && this.isAdAvailableFlag;
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
        Set<String> set = rewardedZoneIds;
        if (set.contains(string)) {
            IronLog.INTERNAL.error(AppLovinConstants.Logs.DUPLICATE_REWARDED);
            listener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1000, AppLovinConstants.Logs.DUPLICATE_REWARDED);
            return;
        }
        AppLovinSdk appLovinSdk$applovinadapter_release = AppLovinAdapter.INSTANCE.getAppLovinSdk$applovinadapter_release();
        if (appLovinSdk$applovinadapter_release == null) {
            IronLog.INTERNAL.error(AppLovinConstants.Logs.SDK_NOT_INITIALIZED);
            listener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1000, AppLovinConstants.Logs.SDK_NOT_INITIALIZED);
            return;
        }
        set.add(string);
        this.reservedZoneId = string;
        setRewardedAdAvailability$applovinadapter_release(false);
        this.rewardedAdListener = new AppLovinRewardedListener(listener, new WeakReference(this));
        this.rewardedAd = new AppLovinIncentivizedInterstitial(string);
        appLovinSdk$applovinadapter_release.getAdService().loadNextAdForZoneId(string, this.rewardedAdListener);
    }

    public final void setLoadedAppLovinAd$applovinadapter_release(AppLovinAd ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        this.loadedAppLovinAd = ad;
    }

    public final void setRewardedAdAvailability$applovinadapter_release(boolean isAvailable) {
        this.isAdAvailableFlag = isAvailable;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void showAd(AdData adData, Activity activity, RewardedVideoAdListener listener) {
        AppLovinSdkSettings settings;
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.ADAPTER_API.verbose();
        String str = this.reservedZoneId;
        if (str != null) {
            rewardedZoneIds.remove(str);
        }
        this.reservedZoneId = null;
        if (!isAdAvailable(adData)) {
            IronLog.INTERNAL.error("Ad is not available");
            listener.onAdShowFailed(1001, "Ad is not available");
            return;
        }
        String dynamicUserId = getDynamicUserId();
        if (dynamicUserId != null && dynamicUserId.length() > 0) {
            IronLog ironLog = IronLog.ADAPTER_API;
            String str2 = String.format(AppLovinConstants.Logs.SET_USER_ID, Arrays.copyOf(new Object[]{dynamicUserId}, 1));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            ironLog.verbose(str2);
            AppLovinSdk appLovinSdk$applovinadapter_release = AppLovinAdapter.INSTANCE.getAppLovinSdk$applovinadapter_release();
            if (appLovinSdk$applovinadapter_release != null && (settings = appLovinSdk$applovinadapter_release.getSettings()) != null) {
                settings.setUserIdentifier(dynamicUserId);
            }
        }
        AppLovinIncentivizedInterstitial appLovinIncentivizedInterstitial = this.rewardedAd;
        if (appLovinIncentivizedInterstitial != null) {
            AppLovinAd appLovinAd = this.loadedAppLovinAd;
            AppLovinRewardedListener appLovinRewardedListener = this.rewardedAdListener;
            appLovinIncentivizedInterstitial.show(appLovinAd, appLovinRewardedListener, appLovinRewardedListener, appLovinRewardedListener, appLovinRewardedListener);
        }
    }
}
