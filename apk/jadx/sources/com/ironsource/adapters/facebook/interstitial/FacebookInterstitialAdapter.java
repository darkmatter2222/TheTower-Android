package com.ironsource.adapters.facebook.interstitial;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.InterstitialAd;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.adapters.admob.AdMobConstants;
import com.ironsource.adapters.facebook.FacebookAdapter;
import com.ironsource.adapters.facebook.FacebookConstants;
import com.ironsource.mediationsdk.adunit.adapter.listener.InterstitialAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseInterstitial;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.EnumSet;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FacebookInterstitialAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J \u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\"\u0010\u001c\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0015\u0010\u001f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u000eH\u0000¢\u0006\u0002\b!R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;", "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseInterstitial;", "Lcom/ironsource/adapters/facebook/FacebookAdapter;", "networkSettings", "Lcom/ironsource/mediationsdk/model/NetworkSettings;", "<init>", "(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V", "mainHandler", "Landroid/os/Handler;", "interstitialAd", "Lcom/facebook/ads/InterstitialAd;", "interstitialAdListener", "Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;", "isAdAvailableFlag", "", AdMobConstants.Logs.LOAD_AD, "", "adData", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;", "context", "Landroid/content/Context;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;", "showAd", "activity", "Landroid/app/Activity;", "isAdAvailable", "destroyAd", "collectBiddingData", "biddingDataCallback", "Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;", "setInterstitialAdAvailability", "isAvailable", "setInterstitialAdAvailability$facebookadapter_release", "facebookadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FacebookInterstitialAdapter extends LevelPlayBaseInterstitial<FacebookAdapter> {
    private InterstitialAd interstitialAd;
    private FacebookInterstitialListener interstitialAdListener;
    private boolean isAdAvailableFlag;
    private final Handler mainHandler;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FacebookInterstitialAdapter(NetworkSettings networkSettings) {
        super(networkSettings);
        Intrinsics.checkNotNullParameter(networkSettings, "networkSettings");
        this.mainHandler = new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void destroyAd$lambda$2(FacebookInterstitialAdapter facebookInterstitialAdapter) {
        InterstitialAd interstitialAd = facebookInterstitialAdapter.interstitialAd;
        if (interstitialAd != null) {
            interstitialAd.destroy();
        }
        facebookInterstitialAdapter.interstitialAd = null;
        facebookInterstitialAdapter.interstitialAdListener = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadAd$lambda$0(FacebookInterstitialAdapter facebookInterstitialAdapter, Context context, String str, InterstitialAdListener interstitialAdListener, String str2) {
        try {
            InterstitialAd interstitialAd = facebookInterstitialAdapter.interstitialAd;
            if (interstitialAd != null) {
                interstitialAd.destroy();
            }
            InterstitialAd interstitialAd2 = new InterstitialAd(context, str);
            EnumSet<CacheFlag> interstitialFacebookCacheFlags$facebookadapter_release = FacebookAdapter.INSTANCE.getInterstitialFacebookCacheFlags$facebookadapter_release();
            FacebookInterstitialListener facebookInterstitialListener = new FacebookInterstitialListener(interstitialAdListener, new WeakReference(facebookInterstitialAdapter));
            facebookInterstitialAdapter.interstitialAdListener = facebookInterstitialListener;
            InterstitialAd.InterstitialAdLoadConfigBuilder interstitialAdLoadConfigBuilderWithAdListener = interstitialAd2.buildLoadAdConfig().withCacheFlags(interstitialFacebookCacheFlags$facebookadapter_release).withAdListener(facebookInterstitialListener);
            String str3 = str2;
            if (str3 != null && str3.length() != 0) {
                interstitialAdLoadConfigBuilderWithAdListener.withBid(str2);
            }
            IronLog ironLog = IronLog.ADAPTER_API;
            String str4 = String.format(FacebookConstants.Logs.LOADING_INTERSTITIAL, Arrays.copyOf(new Object[]{str, interstitialFacebookCacheFlags$facebookadapter_release}, 2));
            Intrinsics.checkNotNullExpressionValue(str4, "format(...)");
            ironLog.verbose(str4);
            facebookInterstitialAdapter.interstitialAd = interstitialAd2;
            interstitialAd2.loadAd(interstitialAdLoadConfigBuilderWithAdListener.build());
        } catch (Exception e) {
            String str5 = String.format(FacebookConstants.Logs.LOAD_EXCEPTION, Arrays.copyOf(new Object[]{e.getMessage()}, 1));
            Intrinsics.checkNotNullExpressionValue(str5, "format(...)");
            IronLog.INTERNAL.error(str5);
            interstitialAdListener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1000, str5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showAd$lambda$1(FacebookInterstitialAdapter facebookInterstitialAdapter, InterstitialAdListener interstitialAdListener) {
        try {
            InterstitialAd interstitialAd = facebookInterstitialAdapter.interstitialAd;
            if (interstitialAd != null && interstitialAd.isAdLoaded() && !interstitialAd.isAdInvalidated()) {
                facebookInterstitialAdapter.setInterstitialAdAvailability$facebookadapter_release(false);
                FacebookInterstitialListener facebookInterstitialListener = facebookInterstitialAdapter.interstitialAdListener;
                if (facebookInterstitialListener != null) {
                    facebookInterstitialListener.setShowAttempted$facebookadapter_release(true);
                }
                interstitialAd.show();
                return;
            }
            IronLog.INTERNAL.error(FacebookConstants.Logs.AD_NOT_AVAILABLE);
            interstitialAdListener.onAdShowFailed(1001, FacebookConstants.Logs.AD_NOT_AVAILABLE);
        } catch (Exception e) {
            String str = String.format(FacebookConstants.Logs.SHOW_EXCEPTION, Arrays.copyOf(new Object[]{e.getMessage()}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            IronLog.INTERNAL.error(str);
            interstitialAdListener.onAdShowFailed(1000, str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.unity3d.mediation.adapters.levelplay.LevelPlayBaseInterstitial, com.ironsource.InterfaceC3928y3
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
        setInterstitialAdAvailability$facebookadapter_release(false);
        this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.facebook.interstitial.FacebookInterstitialAdapter$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                FacebookInterstitialAdapter.destroyAd$lambda$2(this.f$0);
            }
        });
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public boolean isAdAvailable(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        return this.isAdAvailableFlag;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void loadAd(AdData adData, Context context, final InterstitialAdListener listener) {
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
        final Context applicationContext = context.getApplicationContext();
        setInterstitialAdAvailability$facebookadapter_release(false);
        this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.facebook.interstitial.FacebookInterstitialAdapter$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                FacebookInterstitialAdapter.loadAd$lambda$0(this.f$0, applicationContext, string, listener, serverData);
            }
        });
    }

    public final void setInterstitialAdAvailability$facebookadapter_release(boolean isAvailable) {
        this.isAdAvailableFlag = isAvailable;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void showAd(AdData adData, Activity activity, final InterstitialAdListener listener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.ADAPTER_API.verbose();
        if (isAdAvailable(adData)) {
            this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.facebook.interstitial.FacebookInterstitialAdapter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    FacebookInterstitialAdapter.showAd$lambda$1(this.f$0, listener);
                }
            });
        } else {
            IronLog.INTERNAL.error(FacebookConstants.Logs.AD_NOT_AVAILABLE);
            listener.onAdShowFailed(1001, FacebookConstants.Logs.AD_NOT_AVAILABLE);
        }
    }
}
