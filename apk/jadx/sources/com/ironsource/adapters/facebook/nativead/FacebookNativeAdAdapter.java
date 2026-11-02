package com.ironsource.adapters.facebook.nativead;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.ironsource.adapters.admob.AdMobConstants;
import com.ironsource.adapters.facebook.FacebookAdapter;
import com.ironsource.adapters.facebook.FacebookConstants;
import com.ironsource.mediationsdk.adunit.adapter.listener.NativeAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdOptionsPosition;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseNativeAd;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FacebookNativeAdAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J \u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\"\u0010\u0014\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0016H\u0016R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdAdapter;", "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseNativeAd;", "Lcom/ironsource/adapters/facebook/FacebookAdapter;", "networkSettings", "Lcom/ironsource/mediationsdk/model/NetworkSettings;", "<init>", "(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V", "mainHandler", "Landroid/os/Handler;", "nativeAd", "Lcom/facebook/ads/NativeAd;", AdMobConstants.Logs.LOAD_AD, "", "adData", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;", "context", "Landroid/content/Context;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;", "destroyAd", "collectBiddingData", "biddingDataCallback", "Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;", "facebookadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FacebookNativeAdAdapter extends LevelPlayBaseNativeAd<FacebookAdapter> {
    private final Handler mainHandler;
    private NativeAd nativeAd;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FacebookNativeAdAdapter(NetworkSettings networkSettings) {
        super(networkSettings);
        Intrinsics.checkNotNullParameter(networkSettings, "networkSettings");
        this.mainHandler = new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void destroyAd$lambda$1(FacebookNativeAdAdapter facebookNativeAdAdapter) {
        NativeAd nativeAd = facebookNativeAdAdapter.nativeAd;
        if (nativeAd != null) {
            nativeAd.destroy();
        }
        facebookNativeAdAdapter.nativeAd = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadAd$lambda$0(Context context, String str, AdOptionsPosition adOptionsPosition, NativeAdListener nativeAdListener, String str2, FacebookNativeAdAdapter facebookNativeAdAdapter) {
        try {
            NativeAd nativeAd = new NativeAd(context, str);
            NativeAdBase.NativeAdLoadConfigBuilder nativeAdLoadConfigBuilderBuildLoadAdConfig = nativeAd.buildLoadAdConfig();
            Intrinsics.checkNotNull(context);
            NativeAdBase.NativeAdLoadConfigBuilder nativeAdLoadConfigBuilderWithAdListener = nativeAdLoadConfigBuilderBuildLoadAdConfig.withAdListener(new FacebookNativeAdListener(context, adOptionsPosition, nativeAdListener));
            String str3 = str2;
            if (str3 != null && str3.length() != 0) {
                nativeAdLoadConfigBuilderWithAdListener.withBid(str2);
            }
            facebookNativeAdAdapter.nativeAd = nativeAd;
            nativeAd.loadAd(nativeAdLoadConfigBuilderWithAdListener.build());
        } catch (Exception e) {
            String str4 = String.format(FacebookConstants.Logs.LOAD_EXCEPTION, Arrays.copyOf(new Object[]{e.getMessage()}, 1));
            Intrinsics.checkNotNullExpressionValue(str4, "format(...)");
            IronLog.INTERNAL.error(str4);
            nativeAdListener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL, 1000, str4);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.unity3d.mediation.adapters.levelplay.LevelPlayBaseNativeAd, com.ironsource.InterfaceC3928y3
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

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface
    public void destroyAd(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        IronLog.ADAPTER_API.verbose();
        this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.facebook.nativead.FacebookNativeAdAdapter$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                FacebookNativeAdAdapter.destroyAd$lambda$1(this.f$0);
            }
        });
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface
    public void loadAd(AdData adData, Context context, final NativeAdListener listener) {
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
        final AdOptionsPosition adOptionsPosition = getNativeAdProperties(adData).getAdOptionsPosition();
        final Context applicationContext = context.getApplicationContext();
        final String serverData = adData.getServerData();
        this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.facebook.nativead.FacebookNativeAdAdapter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                FacebookNativeAdAdapter.loadAd$lambda$0(applicationContext, string, adOptionsPosition, listener, serverData, this);
            }
        });
    }
}
