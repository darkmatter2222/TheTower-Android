package com.ironsource.adapters.admob.nativead;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesPlacement;
import com.google.android.libraries.ads.mobile.sdk.common.AdFormat;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdLoader;
import com.ironsource.adapters.admob.AdMobAdapter;
import com.ironsource.adapters.admob.AdMobConstants;
import com.ironsource.mediationsdk.adunit.adapter.listener.NativeAdListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdOptionsPosition;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseNativeAd;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import p005kotlin.Metadata;
import p005kotlin.NoWhenBranchMatchedException;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdMobNativeAdAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J \u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\"\u0010\u0014\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0017\u0010\u0017\u001a\u00020\f2\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0000¢\u0006\u0002\b\u0018J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;", "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseNativeAd;", "Lcom/ironsource/adapters/admob/AdMobAdapter;", "networkSettings", "Lcom/ironsource/mediationsdk/model/NetworkSettings;", "<init>", "(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V", "nativeAd", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;", "mainHandler", "Landroid/os/Handler;", AdMobConstants.Logs.LOAD_AD, "", "adData", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;", "context", "Landroid/content/Context;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;", "destroyAd", "collectBiddingData", "biddingDataCallback", "Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;", "setNativeAd", "setNativeAd$admobadapter_release", "getAdChoicesPlacement", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;", "adOptionsPosition", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;", "admobadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AdMobNativeAdAdapter extends LevelPlayBaseNativeAd<AdMobAdapter> {
    private final Handler mainHandler;
    private NativeAd nativeAd;

    /* JADX INFO: compiled from: AdMobNativeAdAdapter.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AdOptionsPosition.values().length];
            try {
                iArr[AdOptionsPosition.TOP_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AdOptionsPosition.TOP_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AdOptionsPosition.BOTTOM_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AdOptionsPosition.BOTTOM_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdMobNativeAdAdapter(NetworkSettings networkSettings) {
        super(networkSettings);
        Intrinsics.checkNotNullParameter(networkSettings, "networkSettings");
        this.mainHandler = new Handler(Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void destroyAd$lambda$1(AdMobNativeAdAdapter adMobNativeAdAdapter) {
        try {
            NativeAd nativeAd = adMobNativeAdAdapter.nativeAd;
            if (nativeAd != null) {
                nativeAd.destroy();
            }
            adMobNativeAdAdapter.nativeAd = null;
        } catch (Exception e) {
            IronLog ironLog = IronLog.INTERNAL;
            String str = String.format(AdMobConstants.Logs.DESTROY_EXCEPTION, Arrays.copyOf(new Object[]{e.getMessage()}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            ironLog.error(str);
        }
    }

    private final AdChoicesPlacement getAdChoicesPlacement(AdOptionsPosition adOptionsPosition) {
        int i = WhenMappings.$EnumSwitchMapping$0[adOptionsPosition.ordinal()];
        if (i == 1) {
            return AdChoicesPlacement.TOP_LEFT;
        }
        if (i == 2) {
            return AdChoicesPlacement.TOP_RIGHT;
        }
        if (i == 3) {
            return AdChoicesPlacement.BOTTOM_LEFT;
        }
        if (i == 4) {
            return AdChoicesPlacement.BOTTOM_RIGHT;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void loadAd$lambda$0(String str, AdMobAdapter adMobAdapter, String str2, AdMobNativeAdAdapter adMobNativeAdAdapter, AdOptionsPosition adOptionsPosition, AdData adData, AdMobNativeAdListener adMobNativeAdListener, NativeAdListener nativeAdListener) {
        try {
            String str3 = str;
            if (str3 != null && str3.length() != 0) {
                IronLog.ADAPTER_API.verbose(AdMobConstants.Logs.LOAD_WITH_SERVER_DATA);
                NativeAdLoader.INSTANCE.loadFromAdResponse(str, adMobNativeAdListener);
                return;
            }
            NativeAdLoader.INSTANCE.load(adMobAdapter.createNativeAdRequest$admobadapter_release(str2, adMobNativeAdAdapter.getAdChoicesPlacement(adOptionsPosition), adData), adMobNativeAdListener);
        } catch (Exception e) {
            IronLog ironLog = IronLog.ADAPTER_API;
            String str4 = String.format(AdMobConstants.Logs.LOAD_EXCEPTION, Arrays.copyOf(new Object[]{e.getMessage()}, 1));
            Intrinsics.checkNotNullExpressionValue(str4, "format(...)");
            ironLog.error(str4);
            AdapterErrorType adapterErrorType = AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL;
            String str5 = String.format(AdMobConstants.Logs.LOAD_EXCEPTION, Arrays.copyOf(new Object[]{e.getMessage()}, 1));
            Intrinsics.checkNotNullExpressionValue(str5, "format(...)");
            nativeAdListener.onAdLoadFailed(adapterErrorType, 1000, str5);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.unity3d.mediation.adapters.levelplay.LevelPlayBaseNativeAd, com.ironsource.InterfaceC3928y3
    public void collectBiddingData(AdData adData, Context context, BiddingDataCallback biddingDataCallback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(biddingDataCallback, "biddingDataCallback");
        AdMobAdapter adMobAdapter = (AdMobAdapter) getNetworkAdapter();
        if (adMobAdapter != null) {
            adMobAdapter.collectBiddingData$admobadapter_release(biddingDataCallback, AdFormat.NATIVE, null);
        } else {
            IronLog.INTERNAL.error("Network adapter is null");
            biddingDataCallback.onFailure("Network adapter is null");
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface
    public void destroyAd(AdData adData) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        IronLog.ADAPTER_API.verbose();
        this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.admob.nativead.AdMobNativeAdAdapter$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                AdMobNativeAdAdapter.destroyAd$lambda$1(this.f$0);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface
    public void loadAd(final AdData adData, Context context, final NativeAdListener listener) {
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
        } else {
            final AdOptionsPosition adOptionsPosition = getNativeAdProperties(adData).getAdOptionsPosition();
            final String serverData = adData.getServerData();
            final AdMobNativeAdListener adMobNativeAdListener = new AdMobNativeAdListener(new WeakReference(this), listener);
            this.mainHandler.post(new Runnable() { // from class: com.ironsource.adapters.admob.nativead.AdMobNativeAdAdapter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AdMobNativeAdAdapter.loadAd$lambda$0(serverData, adMobAdapter, string, this, adOptionsPosition, adData, adMobNativeAdListener, listener);
                }
            });
        }
    }

    public final void setNativeAd$admobadapter_release(NativeAd nativeAd) {
        this.nativeAd = nativeAd;
    }
}
