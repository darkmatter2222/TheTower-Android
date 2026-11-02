package com.ironsource.adapters.applovin.interstitial;

import android.app.Activity;
import android.content.Context;
import com.applovin.adview.AppLovinInterstitialAd;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinSdk;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.adapters.admob.AdMobConstants;
import com.ironsource.adapters.applovin.AppLovinAdapter;
import com.ironsource.adapters.applovin.AppLovinConstants;
import com.ironsource.mediationsdk.adunit.adapter.listener.InterstitialAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseInterstitial;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppLovinInterstitialAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 \"2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\"B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J \u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u001a\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0015\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\nH\u0000¢\u0006\u0002\b\u001eJ\u0015\u0010\u001f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\fH\u0000¢\u0006\u0002\b!R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;", "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseInterstitial;", "Lcom/ironsource/adapters/applovin/AppLovinAdapter;", "networkSettings", "Lcom/ironsource/mediationsdk/model/NetworkSettings;", "<init>", "(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V", "interstitialAdListener", "Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialListener;", "interstitialAd", "Lcom/applovin/sdk/AppLovinAd;", "isAdAvailableFlag", "", "reservedZoneId", "", AdMobConstants.Logs.LOAD_AD, "", "adData", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;", "context", "Landroid/content/Context;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;", "showAd", "activity", "Landroid/app/Activity;", "isAdAvailable", "destroyAd", "setInterstitialAd", "ad", "setInterstitialAd$applovinadapter_release", "setInterstitialAdAvailability", "isAvailable", "setInterstitialAdAvailability$applovinadapter_release", "Companion", "applovinadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AppLovinInterstitialAdapter extends LevelPlayBaseInterstitial<AppLovinAdapter> {
    private static final Set<String> interstitialZoneIds;
    private AppLovinAd interstitialAd;
    private AppLovinInterstitialListener interstitialAdListener;
    private boolean isAdAvailableFlag;
    private String reservedZoneId;

    static {
        Set<String> setNewSetFromMap = Collections.newSetFromMap(new ConcurrentHashMap());
        Intrinsics.checkNotNullExpressionValue(setNewSetFromMap, "newSetFromMap(...)");
        interstitialZoneIds = setNewSetFromMap;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppLovinInterstitialAdapter(NetworkSettings networkSettings) {
        super(networkSettings);
        Intrinsics.checkNotNullParameter(networkSettings, "networkSettings");
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void destroyAd(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        IronLog.ADAPTER_API.verbose();
        String str = this.reservedZoneId;
        if (str != null) {
            interstitialZoneIds.remove(str);
        }
        this.reservedZoneId = null;
        this.interstitialAd = null;
        this.interstitialAdListener = null;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public boolean isAdAvailable(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        return this.interstitialAd != null && this.isAdAvailableFlag;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void loadAd(AdData adData, Context context, InterstitialAdListener listener) {
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
        Set<String> set = interstitialZoneIds;
        if (set.contains(string)) {
            IronLog.INTERNAL.error(AppLovinConstants.Logs.DUPLICATE_INTERSTITIAL);
            listener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1000, AppLovinConstants.Logs.DUPLICATE_INTERSTITIAL);
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
        setInterstitialAdAvailability$applovinadapter_release(false);
        this.interstitialAdListener = new AppLovinInterstitialListener(listener, new WeakReference(this));
        appLovinSdk$applovinadapter_release.getAdService().loadNextAdForZoneId(string, this.interstitialAdListener);
    }

    public final void setInterstitialAd$applovinadapter_release(AppLovinAd ad) {
        Intrinsics.checkNotNullParameter(ad, "ad");
        this.interstitialAd = ad;
    }

    public final void setInterstitialAdAvailability$applovinadapter_release(boolean isAvailable) {
        this.isAdAvailableFlag = isAvailable;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void showAd(AdData adData, Activity activity, InterstitialAdListener listener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.ADAPTER_API.verbose();
        String str = this.reservedZoneId;
        if (str != null) {
            interstitialZoneIds.remove(str);
        }
        this.reservedZoneId = null;
        AppLovinAd appLovinAd = this.interstitialAd;
        if (!isAdAvailable(adData) || appLovinAd == null) {
            IronLog.INTERNAL.error("Ad is not available");
            listener.onAdShowFailed(1000, "Ad is not available");
            return;
        }
        AppLovinInterstitialAdDialog appLovinInterstitialAdDialogCreate = AppLovinInterstitialAd.create();
        appLovinInterstitialAdDialogCreate.setAdClickListener(this.interstitialAdListener);
        appLovinInterstitialAdDialogCreate.setAdDisplayListener(this.interstitialAdListener);
        appLovinInterstitialAdDialogCreate.setAdVideoPlaybackListener(this.interstitialAdListener);
        appLovinInterstitialAdDialogCreate.showAndRender(appLovinAd);
    }
}
