package com.ironsource.adapters.admob;

import android.content.Context;
import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.MobileAds;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerAdRequest;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesPlacement;
import com.google.android.libraries.ads.mobile.sdk.common.AdFormat;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import com.google.android.libraries.ads.mobile.sdk.common.RequestConfiguration;
import com.google.android.libraries.ads.mobile.sdk.initialization.AdapterStatus;
import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig;
import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationStatus;
import com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener;
import com.google.android.libraries.ads.mobile.sdk.interstitial.InterstitialSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAd;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeAdRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardedSignalRequest;
import com.google.android.libraries.ads.mobile.sdk.signal.Signal;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalError;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalGenerationCallback;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import com.ironsource.C3510b4;
import com.ironsource.environment.ContextProvider;
import com.ironsource.environment.StringUtils;
import com.ironsource.mediationsdk.AdapterNetworkData;
import com.ironsource.mediationsdk.adunit.adapter.listener.NetworkInitializationListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.metadata.MetaData;
import com.ironsource.mediationsdk.metadata.MetaDataUtils;
import com.tapjoy.TJAdUnitConstants;
import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseAdapter;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import p005kotlin.Metadata;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: compiled from: AdMobAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Â\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 N2\u00020\u0001:\u0001NB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0016J\"\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0017J\b\u0010\u0016\u001a\u00020\u000fH\u0002J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0005H\u0002J\u0010\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\bH\u0016J$\u0010\u001b\u001a\u00020\u000f2\b\u0010\u001c\u001a\u0004\u0018\u00010\u00052\u0010\u0010\u001d\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u001eH\u0016J\u0010\u0010\u001f\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\bH\u0002J\u0018\u0010$\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u0005H\u0002J\u0010\u0010%\u001a\u00020&2\u0006\u0010#\u001a\u00020\u0005H\u0002J\u0010\u0010'\u001a\u00020(2\u0006\u0010#\u001a\u00020\u0005H\u0002J\u0012\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010#\u001a\u00020\u0005H\u0002J\b\u0010+\u001a\u00020\u000fH\u0002J\u001f\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0000¢\u0006\u0002\b/J'\u00100\u001a\u0002012\u0006\u0010.\u001a\u00020\u00052\u0006\u00102\u001a\u0002032\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0000¢\u0006\u0002\b4J'\u00105\u001a\u0002062\u0006\u0010.\u001a\u00020\u00052\u0006\u00107\u001a\u0002082\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0000¢\u0006\u0002\b9J\u0010\u0010:\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020<H\u0002J\u0010\u0010:\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020=H\u0002J\u0010\u0010:\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020>H\u0002J.\u0010?\u001a\u00020\b2\u0014\u0010@\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020B\u0018\u00010A2\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010C\u001a\u00020\bH\u0002J\u0012\u0010D\u001a\u00020E2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0002J'\u0010F\u001a\u00020\u000f2\u0006\u0010G\u001a\u00020H2\u0006\u0010\t\u001a\u00020I2\b\u0010J\u001a\u0004\u0018\u00010EH\u0000¢\u0006\u0002\bKJ\u001c\u0010L\u001a\u0004\u0018\u00010M2\u0006\u0010\t\u001a\u00020I2\b\u0010J\u001a\u0004\u0018\u00010EH\u0002¨\u0006O"}, d2 = {"Lcom/ironsource/adapters/admob/AdMobAdapter;", "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;", "<init>", "()V", "getAdapterVersion", "", "getNetworkSDKVersion", "isUsingActivityBeforeImpression", "", "adFormat", "Lcom/unity3d/mediation/LevelPlay$AdFormat;", "getAdaptiveHeight", "", "width", "init", "", "adData", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;", "context", "Landroid/content/Context;", "networkInitializationListener", "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;", "onInitializationSuccess", "onInitializationFailure", "errorMessage", "setConsent", C3510b4.j.b0, "setMetaData", C3510b4.i.W, TJAdUnitConstants.String.USAGE_TRACKER_VALUES, "", "setNetworkData", "networkData", "Lcom/ironsource/mediationsdk/AdapterNetworkData;", "setCCPAValue", "value", "setAdMobMetaDataValue", "getAdMobCoppaValue", "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;", "getAdMobEuValue", "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;", "getAdMobRatingValue", "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;", "setRequestConfiguration", "createAdRequest", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;", "adUnitId", "createAdRequest$admobadapter_release", "createBannerAdRequest", "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;", C3510b4.i.O, "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", "createBannerAdRequest$admobadapter_release", "createNativeAdRequest", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;", "adChoicesPlacement", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;", "createNativeAdRequest$admobadapter_release", "applyContentMapping", "builder", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;", "readBoolean", "source", "", "", com.unity3d.ads.BuildConfig.FLAVOR, "createExtrasBundle", "Landroid/os/Bundle;", "collectBiddingData", "biddingDataCallback", "Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;", "additionalExtras", "collectBiddingData$admobadapter_release", "createSignalRequest", "Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;", "Companion", "admobadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AdMobAdapter extends LevelPlayBaseAdapter {
    private static final String GitHash = "f82370e";
    private static Boolean ccpaValue;
    private static Boolean consent;
    private static String contentMappingUrl;
    private static RequestConfiguration.TagForChildDirectedTreatment coppaValue;
    private static RequestConfiguration.TagForUnderAgeOfConsent euValue;
    private static RequestConfiguration.MaxAdContentRating ratingValue;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final AtomicBoolean wasInitCalled = new AtomicBoolean(false);
    private static Companion.InitState initState = Companion.InitState.INIT_STATE_NONE;
    private static final CopyOnWriteArrayList<NetworkInitializationListener> initListeners = new CopyOnWriteArrayList<>();
    private static Set<String> neighboringContentMappingUrls = new HashSet();

    /* JADX INFO: compiled from: AdMobAdapter.kt */
    @Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001 B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u001a\u001a\u00020\u0005H\u0007J\u0015\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0000¢\u0006\u0002\b\u001fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000fR\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000fR\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00050\u0019X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Lcom/ironsource/adapters/admob/AdMobAdapter$Companion;", "", "<init>", "()V", "GitHash", "", "wasInitCalled", "Ljava/util/concurrent/atomic/AtomicBoolean;", "initState", "Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;", "initListeners", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;", C3510b4.j.b0, "", "Ljava/lang/Boolean;", "ccpaValue", "coppaValue", "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;", "euValue", "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;", "ratingValue", "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;", "contentMappingUrl", "neighboringContentMappingUrls", "", "networkAdapterVersion", "getLoadErrorType", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;", "errorCode", "Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;", "getLoadErrorType$admobadapter_release", "InitState", "admobadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: compiled from: AdMobAdapter.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;", "", "<init>", "(Ljava/lang/String;I)V", "INIT_STATE_NONE", "INIT_STATE_IN_PROGRESS", "INIT_STATE_SUCCESS", "INIT_STATE_FAILED", "admobadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public enum InitState {
            INIT_STATE_NONE,
            INIT_STATE_IN_PROGRESS,
            INIT_STATE_SUCCESS,
            INIT_STATE_FAILED;

            private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

            public static EnumEntries<InitState> getEntries() {
                return $ENTRIES;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final AdapterErrorType getLoadErrorType$admobadapter_release(LoadAdError.ErrorCode errorCode) {
            Intrinsics.checkNotNullParameter(errorCode, "errorCode");
            return errorCode == LoadAdError.ErrorCode.NO_FILL ? AdapterErrorType.ADAPTER_ERROR_TYPE_NO_FILL : AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL;
        }

        @JvmStatic
        public final String networkAdapterVersion() {
            return "5.16.0";
        }
    }

    /* JADX INFO: compiled from: AdMobAdapter.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AdFormat.values().length];
            try {
                iArr[AdFormat.INTERSTITIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AdFormat.REWARDED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AdFormat.BANNER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AdFormat.NATIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void applyContentMapping(BannerAdRequest.Builder builder) {
        String str = contentMappingUrl;
        if (str != null) {
            if (str.length() <= 0) {
                str = null;
            }
            if (str != null) {
                IronLog ironLog = IronLog.ADAPTER_API;
                String str2 = String.format(AdMobConstants.Logs.CONTENT_MAPPING_URL, Arrays.copyOf(new Object[]{str}, 1));
                Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
                ironLog.verbose(str2);
            }
        }
        if (neighboringContentMappingUrls.isEmpty()) {
            return;
        }
        IronLog ironLog2 = IronLog.ADAPTER_API;
        String str3 = String.format(AdMobConstants.Logs.NEIGHBORING_CONTENT_MAPPING_URLS, Arrays.copyOf(new Object[]{neighboringContentMappingUrls}, 1));
        Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
        ironLog2.verbose(str3);
        builder.setNeighboringContentUrls(neighboringContentMappingUrls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void applyContentMapping(AdRequest.Builder builder) {
        String str = contentMappingUrl;
        if (str != null) {
            if (str.length() <= 0) {
                str = null;
            }
            if (str != null) {
                IronLog ironLog = IronLog.ADAPTER_API;
                String str2 = String.format(AdMobConstants.Logs.CONTENT_MAPPING_URL, Arrays.copyOf(new Object[]{str}, 1));
                Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
                ironLog.verbose(str2);
            }
        }
        if (neighboringContentMappingUrls.isEmpty()) {
            return;
        }
        IronLog ironLog2 = IronLog.ADAPTER_API;
        String str3 = String.format(AdMobConstants.Logs.NEIGHBORING_CONTENT_MAPPING_URLS, Arrays.copyOf(new Object[]{neighboringContentMappingUrls}, 1));
        Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
        ironLog2.verbose(str3);
        builder.setNeighboringContentUrls(neighboringContentMappingUrls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void applyContentMapping(NativeAdRequest.Builder builder) {
        String str = contentMappingUrl;
        if (str != null) {
            if (str.length() <= 0) {
                str = null;
            }
            if (str != null) {
                IronLog ironLog = IronLog.ADAPTER_API;
                String str2 = String.format(AdMobConstants.Logs.CONTENT_MAPPING_URL, Arrays.copyOf(new Object[]{str}, 1));
                Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
                ironLog.verbose(str2);
            }
        }
        if (neighboringContentMappingUrls.isEmpty()) {
            return;
        }
        IronLog ironLog2 = IronLog.ADAPTER_API;
        String str3 = String.format(AdMobConstants.Logs.NEIGHBORING_CONTENT_MAPPING_URLS, Arrays.copyOf(new Object[]{neighboringContentMappingUrls}, 1));
        Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
        ironLog2.verbose(str3);
        builder.setNeighboringContentUrls(neighboringContentMappingUrls);
    }

    private final Bundle createExtrasBundle(AdData adData) {
        Map<String, Object> adUnitData;
        Object obj;
        Bundle bundle = new Bundle();
        bundle.putString(AdMobConstants.EXTRA_PLATFORM_NAME, "unity");
        String string = (adData == null || (adUnitData = adData.getAdUnitData()) == null || (obj = adUnitData.get(AdMobConstants.REQUEST_ID_KEY)) == null) ? null : obj.toString();
        boolean z = readBoolean(adData != null ? adData.getAdUnitData() : null, AdMobConstants.IS_HYBRID_KEY, false);
        String str = string;
        if (str != null && str.length() != 0) {
            bundle.putString(AdMobConstants.EXTRA_PLACEMENT_REQ_ID, string);
        }
        bundle.putString(AdMobConstants.EXTRA_IS_HYBRID_SETUP, String.valueOf(z));
        Boolean bool = consent;
        if (bool != null && !bool.booleanValue()) {
            bundle.putString(AdMobConstants.EXTRA_NPA, "1");
        }
        Boolean bool2 = ccpaValue;
        if (bool2 != null) {
            bundle.putInt(AdMobConstants.EXTRA_RDP, bool2.booleanValue() ? 1 : 0);
        }
        return bundle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final SignalRequest createSignalRequest(AdFormat adFormat, Bundle additionalExtras) {
        int i = WhenMappings.$EnumSwitchMapping$0[adFormat.ordinal()];
        if (i == 1) {
            return new InterstitialSignalRequest.Builder(AdMobConstants.REQUESTER_TYPE).build();
        }
        if (i == 2) {
            return new RewardedSignalRequest.Builder(AdMobConstants.REQUESTER_TYPE).build();
        }
        if (i != 3) {
            if (i != 4) {
                return null;
            }
            return new NativeSignalRequest.Builder(AdMobConstants.REQUESTER_TYPE).build();
        }
        BannerSignalRequest.Builder builder = new BannerSignalRequest.Builder(AdMobConstants.REQUESTER_TYPE);
        if (additionalExtras == null) {
            additionalExtras = new Bundle();
        }
        return ((BannerSignalRequest.Builder) builder.setGoogleExtrasBundle(additionalExtras)).build();
    }

    private final RequestConfiguration.TagForChildDirectedTreatment getAdMobCoppaValue(String value) {
        return MetaDataUtils.getMetaDataBooleanValue(value) ? RequestConfiguration.TagForChildDirectedTreatment.TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE : RequestConfiguration.TagForChildDirectedTreatment.TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE;
    }

    private final RequestConfiguration.TagForUnderAgeOfConsent getAdMobEuValue(String value) {
        return MetaDataUtils.getMetaDataBooleanValue(value) ? RequestConfiguration.TagForUnderAgeOfConsent.TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE : RequestConfiguration.TagForUnderAgeOfConsent.TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final RequestConfiguration.MaxAdContentRating getAdMobRatingValue(String value) {
        if (value.length() == 0) {
            IronLog.INTERNAL.error(AdMobConstants.Logs.NULL_RATING_VALUE);
            return null;
        }
        switch (value.hashCode()) {
            case -1038878193:
                if (value.equals(AdMobConstants.ADMOB_MAX_AD_CONTENT_RATING_MA)) {
                    return RequestConfiguration.MaxAdContentRating.MAX_AD_CONTENT_RATING_MA;
                }
                break;
            case -1038878094:
                if (value.equals(AdMobConstants.ADMOB_MAX_AD_CONTENT_RATING_PG)) {
                    return RequestConfiguration.MaxAdContentRating.MAX_AD_CONTENT_RATING_PG;
                }
                break;
            case 936319116:
                if (value.equals(AdMobConstants.ADMOB_MAX_AD_CONTENT_RATING_G)) {
                    return RequestConfiguration.MaxAdContentRating.MAX_AD_CONTENT_RATING_G;
                }
                break;
            case 936319129:
                if (value.equals(AdMobConstants.ADMOB_MAX_AD_CONTENT_RATING_T)) {
                    return RequestConfiguration.MaxAdContentRating.MAX_AD_CONTENT_RATING_T;
                }
                break;
        }
        IronLog ironLog = IronLog.INTERNAL;
        String str = String.format(AdMobConstants.Logs.UNDEFINED_RATING_VALUE, Arrays.copyOf(new Object[]{value}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void init$lambda$2(boolean z, Context context, InitializationConfig initializationConfig, final AdMobAdapter adMobAdapter) throws InterruptedException {
        if (z) {
            IronLog.ADAPTER_API.verbose(AdMobConstants.Logs.INIT_AND_WAIT);
            MobileAds.Companion companion = MobileAds.INSTANCE;
            Intrinsics.checkNotNull(context);
            companion.initialize(context, initializationConfig, new OnAdapterInitializationCompleteListener() { // from class: com.ironsource.adapters.admob.AdMobAdapter$$ExternalSyntheticLambda0
                @Override // com.google.android.libraries.ads.mobile.sdk.initialization.OnAdapterInitializationCompleteListener
                public final void onAdapterInitializationComplete(InitializationStatus initializationStatus) {
                    AdMobAdapter.init$lambda$2$lambda$1(this.f$0, initializationStatus);
                }
            });
            return;
        }
        IronLog.ADAPTER_API.verbose(AdMobConstants.Logs.INIT_WITHOUT_CALLBACK);
        MobileAds.Companion companion2 = MobileAds.INSTANCE;
        Intrinsics.checkNotNull(context);
        companion2.initialize(context, initializationConfig);
        adMobAdapter.onInitializationSuccess();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void init$lambda$2$lambda$1(AdMobAdapter adMobAdapter, InitializationStatus initializationStatus) {
        String description;
        Intrinsics.checkNotNullParameter(initializationStatus, "initializationStatus");
        AdapterStatus adapterStatus = initializationStatus.getAdapterStatusMap().get(AdMobConstants.ADMOB_ADAPTER_CLASS_NAME);
        if (adapterStatus != null) {
            IronLog ironLog = IronLog.ADAPTER_API;
            String str = String.format(AdMobConstants.Logs.INIT_STATE, Arrays.copyOf(new Object[]{adapterStatus.getInitializationState(), adapterStatus.getDescription()}, 2));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            ironLog.verbose(str);
        }
        if (adapterStatus != null && adapterStatus.getInitializationState() == AdapterStatus.InitializationState.COMPLETE) {
            adMobAdapter.onInitializationSuccess();
            return;
        }
        if (adapterStatus == null || (description = adapterStatus.getDescription()) == null) {
            description = AdMobConstants.Logs.ADAPTER_STATUS_NOT_FOUND;
        }
        adMobAdapter.onInitializationFailure(description);
    }

    @JvmStatic
    public static final String networkAdapterVersion() {
        return INSTANCE.networkAdapterVersion();
    }

    private final void onInitializationFailure(String errorMessage) {
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format(AdMobConstants.Logs.INIT_FAILED, Arrays.copyOf(new Object[]{errorMessage}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        initState = Companion.InitState.INIT_STATE_FAILED;
        Iterator<NetworkInitializationListener> it = initListeners.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            it.next().onInitFailed(1000, AdMobConstants.Logs.SDK_INIT_FAILED);
        }
        initListeners.clear();
    }

    private final void onInitializationSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose();
        initState = Companion.InitState.INIT_STATE_SUCCESS;
        Iterator<NetworkInitializationListener> it = initListeners.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            it.next().onInitSuccess();
        }
        initListeners.clear();
    }

    private final boolean readBoolean(Map<String, ? extends Object> source, String key, boolean z) {
        Object obj = source != null ? source.get(key) : null;
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (StringsKt.equals(str, "true", true)) {
                return true;
            }
            if (StringsKt.equals(str, "false", true)) {
                return false;
            }
        }
        return z;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final void setAdMobMetaDataValue(String key, String value) {
        String valueForType;
        if (Intrinsics.areEqual(key, AdMobConstants.ADMOB_TFCD_KEY) || Intrinsics.areEqual(key, AdMobConstants.ADMOB_TFUA_KEY)) {
            valueForType = MetaDataUtils.formatValueForType(value, MetaData.MetaDataValueTypes.META_DATA_VALUE_BOOLEAN);
            Intrinsics.checkNotNullExpressionValue(valueForType, "formatValueForType(...)");
            if (valueForType.length() == 0) {
                IronLog ironLog = IronLog.ADAPTER_API;
                String str = String.format(AdMobConstants.Logs.INVALID_META_DATA_VALUE, Arrays.copyOf(new Object[]{key, value}, 2));
                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                ironLog.verbose(str);
                return;
            }
        } else {
            valueForType = value;
        }
        switch (key.hashCode()) {
            case -2052944638:
                if (key.equals(AdMobConstants.ADMOB_CONTENT_MAPPING_KEY)) {
                    contentMappingUrl = value;
                    IronLog ironLog2 = IronLog.ADAPTER_API;
                    String str2 = String.format(AdMobConstants.Logs.CONTENT_MAPPING_VALUE, Arrays.copyOf(new Object[]{key, contentMappingUrl}, 2));
                    Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
                    ironLog2.verbose(str2);
                }
                break;
            case -139240332:
                if (key.equals(AdMobConstants.ADMOB_MAX_RATING_KEY)) {
                    ratingValue = getAdMobRatingValue(valueForType);
                    IronLog ironLog3 = IronLog.ADAPTER_API;
                    String str3 = String.format(AdMobConstants.Logs.RATING_VALUE, Arrays.copyOf(new Object[]{key, ratingValue}, 2));
                    Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
                    ironLog3.verbose(str3);
                }
                break;
            case 1374613845:
                if (key.equals(AdMobConstants.ADMOB_TFCD_KEY)) {
                    coppaValue = getAdMobCoppaValue(valueForType);
                    IronLog ironLog4 = IronLog.ADAPTER_API;
                    String str4 = String.format(AdMobConstants.Logs.COPPA_VALUE, Arrays.copyOf(new Object[]{key, coppaValue}, 2));
                    Intrinsics.checkNotNullExpressionValue(str4, "format(...)");
                    ironLog4.verbose(str4);
                }
                break;
            case 1374614400:
                if (key.equals(AdMobConstants.ADMOB_TFUA_KEY)) {
                    euValue = getAdMobEuValue(valueForType);
                    IronLog ironLog5 = IronLog.ADAPTER_API;
                    String str5 = String.format(AdMobConstants.Logs.EU_VALUE, Arrays.copyOf(new Object[]{key, euValue}, 2));
                    Intrinsics.checkNotNullExpressionValue(str5, "format(...)");
                    ironLog5.verbose(str5);
                }
                break;
        }
        setRequestConfiguration();
    }

    private final void setCCPAValue(boolean value) {
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format("value = %s", Arrays.copyOf(new Object[]{Boolean.valueOf(value)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        ccpaValue = Boolean.valueOf(value);
    }

    private final void setRequestConfiguration() {
        RequestConfiguration.Builder builder = new RequestConfiguration.Builder();
        RequestConfiguration.TagForChildDirectedTreatment tagForChildDirectedTreatment = coppaValue;
        RequestConfiguration requestConfigurationBuild = tagForChildDirectedTreatment != null ? builder.setTagForChildDirectedTreatment(tagForChildDirectedTreatment).build() : null;
        RequestConfiguration.TagForUnderAgeOfConsent tagForUnderAgeOfConsent = euValue;
        if (tagForUnderAgeOfConsent != null) {
            requestConfigurationBuild = builder.setTagForUnderAgeOfConsent(tagForUnderAgeOfConsent).build();
        }
        RequestConfiguration.MaxAdContentRating maxAdContentRating = ratingValue;
        if (maxAdContentRating != null) {
            requestConfigurationBuild = builder.setMaxAdContentRating(maxAdContentRating).build();
        }
        if (requestConfigurationBuild != null) {
            MobileAds.INSTANCE.setRequestConfiguration(requestConfigurationBuild);
        }
    }

    public final void collectBiddingData$admobadapter_release(final BiddingDataCallback biddingDataCallback, AdFormat adFormat, Bundle additionalExtras) {
        Intrinsics.checkNotNullParameter(biddingDataCallback, "biddingDataCallback");
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        if (initState == Companion.InitState.INIT_STATE_NONE) {
            IronLog.INTERNAL.verbose(AdMobConstants.Logs.TOKEN_INIT_NOT_STARTED);
            biddingDataCallback.onFailure(AdMobConstants.Logs.TOKEN_INIT_NOT_STARTED);
            return;
        }
        IronLog.ADAPTER_API.verbose(adFormat.toString());
        SignalRequest signalRequestCreateSignalRequest = createSignalRequest(adFormat, additionalExtras);
        if (signalRequestCreateSignalRequest != null) {
            MobileAds.INSTANCE.generateSignal(signalRequestCreateSignalRequest, new SignalGenerationCallback() { // from class: com.ironsource.adapters.admob.AdMobAdapter$collectBiddingData$1
                @Override // com.google.android.libraries.ads.mobile.sdk.signal.SignalGenerationCallback
                public void onFailure(SignalError error) {
                    Intrinsics.checkNotNullParameter(error, "error");
                    BiddingDataCallback biddingDataCallback2 = biddingDataCallback;
                    String str = String.format(AdMobConstants.Logs.TOKEN_FAILED, Arrays.copyOf(new Object[]{error.getCom.tapjoy.TJAdUnitConstants.String.MESSAGE java.lang.String()}, 1));
                    Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                    biddingDataCallback2.onFailure(str);
                }

                @Override // com.google.android.libraries.ads.mobile.sdk.signal.SignalGenerationCallback
                public void onSuccess(Signal signal) {
                    Intrinsics.checkNotNullParameter(signal, "signal");
                    String signalString = signal.getSignalString();
                    if (signalString == null) {
                        signalString = "";
                    }
                    String networkSDKVersion = this.this$0.getNetworkSDKVersion();
                    IronLog ironLog = IronLog.ADAPTER_API;
                    String str = String.format(AdMobConstants.Logs.TOKEN_COLLECTED, Arrays.copyOf(new Object[]{signalString, networkSDKVersion}, 2));
                    Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                    ironLog.verbose(str);
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    linkedHashMap.put("token", signalString);
                    linkedHashMap.put("sdkVersion", networkSDKVersion);
                    biddingDataCallback.onSuccess(linkedHashMap);
                }
            });
            return;
        }
        String str = String.format(AdMobConstants.Logs.UNSUPPORTED_AD_FORMAT, Arrays.copyOf(new Object[]{adFormat}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        IronLog.INTERNAL.error(str);
        biddingDataCallback.onFailure(str);
    }

    public final AdRequest createAdRequest$admobadapter_release(String adUnitId, AdData adData) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        AdRequest.Builder builder = new AdRequest.Builder(adUnitId);
        builder.setRequestAgent("unity");
        applyContentMapping(builder);
        setRequestConfiguration();
        builder.setGoogleExtrasBundle(createExtrasBundle(adData));
        return builder.build();
    }

    public final BannerAdRequest createBannerAdRequest$admobadapter_release(String adUnitId, AdSize adSize, AdData adData) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        BannerAdRequest.Builder builder = new BannerAdRequest.Builder(adUnitId, adSize);
        builder.setRequestAgent("unity");
        applyContentMapping(builder);
        setRequestConfiguration();
        builder.setGoogleExtrasBundle(createExtrasBundle(adData));
        return builder.build();
    }

    public final NativeAdRequest createNativeAdRequest$admobadapter_release(String adUnitId, AdChoicesPlacement adChoicesPlacement, AdData adData) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(adChoicesPlacement, "adChoicesPlacement");
        List listSingletonList = Collections.singletonList(NativeAd.NativeAdType.NATIVE);
        Intrinsics.checkNotNullExpressionValue(listSingletonList, "singletonList(...)");
        NativeAdRequest.Builder builder = new NativeAdRequest.Builder(adUnitId, listSingletonList);
        builder.setRequestAgent("unity");
        builder.setAdChoicesPlacement(adChoicesPlacement);
        applyContentMapping(builder);
        setRequestConfiguration();
        builder.setGoogleExtrasBundle(createExtrasBundle(adData));
        return builder.build();
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public String getAdapterVersion() {
        return "5.16.0";
    }

    @Override // com.unity3d.mediation.adapters.levelplay.LevelPlayBaseAdapter, com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAdaptiveInterface
    public int getAdaptiveHeight(int width) {
        AdSize.Companion companion = AdSize.INSTANCE;
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        int height = companion.getLargeAnchoredAdaptiveBannerAdSize(applicationContext, width).getHeight();
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format(AdMobConstants.Logs.ADAPTIVE_HEIGHT, Arrays.copyOf(new Object[]{Integer.valueOf(height), Integer.valueOf(width)}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        return height;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public String getNetworkSDKVersion() {
        return MobileAds.INSTANCE.getVersion().toString();
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public void init(AdData adData, Context context, NetworkInitializationListener networkInitializationListener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(context, "context");
        String string = adData.getString("appId");
        String str = string;
        if (str == null || str.length() == 0) {
            String str2 = String.format(AdMobConstants.Logs.MISSING_PARAM, Arrays.copyOf(new Object[]{"appId"}, 1));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            IronLog.INTERNAL.error(str2);
            if (networkInitializationListener != null) {
                networkInitializationListener.onInitFailed(1002, str2);
                return;
            }
            return;
        }
        if (initState == Companion.InitState.INIT_STATE_SUCCESS) {
            if (networkInitializationListener != null) {
                networkInitializationListener.onInitSuccess();
                return;
            }
            return;
        }
        if (initState == Companion.InitState.INIT_STATE_FAILED) {
            IronLog.INTERNAL.error(AdMobConstants.Logs.SDK_INIT_FAILED);
            if (networkInitializationListener != null) {
                networkInitializationListener.onInitFailed(1000, AdMobConstants.Logs.SDK_INIT_FAILED);
                return;
            }
            return;
        }
        if ((initState == Companion.InitState.INIT_STATE_NONE || initState == Companion.InitState.INIT_STATE_IN_PROGRESS) && networkInitializationListener != null) {
            initListeners.add(networkInitializationListener);
        }
        if (wasInitCalled.compareAndSet(false, true)) {
            initState = Companion.InitState.INIT_STATE_IN_PROGRESS;
            IronLog ironLog = IronLog.ADAPTER_API;
            String str3 = String.format(AdMobConstants.Logs.APP_ID, Arrays.copyOf(new Object[]{string}, 1));
            Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
            ironLog.verbose(str3);
            boolean z = readBoolean(adData.getConfiguration(), AdMobConstants.NETWORK_ONLY_INIT_KEY, true);
            final boolean z2 = readBoolean(adData.getConfiguration(), AdMobConstants.INIT_RESPONSE_REQUIRED_KEY, false);
            InitializationConfig.Builder builder = new InitializationConfig.Builder(string);
            if (z) {
                IronLog.ADAPTER_API.verbose(AdMobConstants.Logs.DISABLE_MEDIATION_ADAPTER_INIT);
                builder.disableMediationAdapterInitialization();
            }
            final InitializationConfig initializationConfigBuild = builder.build();
            final Context applicationContext = context.getApplicationContext();
            new Thread(new Runnable() { // from class: com.ironsource.adapters.admob.AdMobAdapter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() throws InterruptedException {
                    AdMobAdapter.init$lambda$2(z2, applicationContext, initializationConfigBuild, this);
                }
            }).start();
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.BaseAdapter, com.ironsource.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface
    public boolean isUsingActivityBeforeImpression(LevelPlay.AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        return false;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.BaseAdapter, com.ironsource.mediationsdk.adunit.adapter.internal.AdapterConsentInterface
    public void setConsent(boolean consent2) {
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format("consent = %s", Arrays.copyOf(new Object[]{Boolean.valueOf(consent2)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        consent = Boolean.valueOf(consent2);
    }

    @Override // com.unity3d.mediation.adapters.levelplay.LevelPlayBaseAdapter, com.ironsource.mediationsdk.adunit.adapter.internal.AdapterMetaDataInterface
    public void setMetaData(String key, List<String> values) {
        List<String> list;
        String str = key;
        if (str == null || str.length() == 0 || (list = values) == null || list.isEmpty()) {
            return;
        }
        if (values.size() > 1 && StringsKt.equals(key, AdMobConstants.ADMOB_CONTENT_MAPPING_KEY, true)) {
            neighboringContentMappingUrls = new HashSet(CollectionsKt.filterNotNull(values));
            IronLog ironLog = IronLog.ADAPTER_API;
            String str2 = String.format("key = %s, values = %s", Arrays.copyOf(new Object[]{key, values}, 2));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            ironLog.verbose(str2);
            return;
        }
        String str3 = values.get(0);
        if (str3 == null) {
            return;
        }
        IronLog ironLog2 = IronLog.ADAPTER_API;
        String str4 = String.format("key = %s, value = %s", Arrays.copyOf(new Object[]{key, str3}, 2));
        Intrinsics.checkNotNullExpressionValue(str4, "format(...)");
        ironLog2.verbose(str4);
        if (MetaDataUtils.isValidCCPAMetaData(key, str3)) {
            setCCPAValue(MetaDataUtils.getMetaDataBooleanValue(str3));
            return;
        }
        String lowerCase = StringUtils.toLowerCase(key);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        String lowerCase2 = StringUtils.toLowerCase(str3);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
        setAdMobMetaDataValue(lowerCase, lowerCase2);
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.BaseAdapter, com.ironsource.mediationsdk.adunit.adapter.internal.AdapterNetworkDataInterface
    public void setNetworkData(AdapterNetworkData networkData) {
        Intrinsics.checkNotNullParameter(networkData, "networkData");
        String str = (String) networkData.dataByKeyIgnoreCase(AdMobConstants.NETWORK_DATA_CONTENT_MAPPING, String.class);
        if (str != null) {
            contentMappingUrl = str;
            IronLog ironLog = IronLog.ADAPTER_API;
            String str2 = String.format(AdMobConstants.Logs.CONTENT_MAPPING_VALUE, Arrays.copyOf(new Object[]{AdMobConstants.NETWORK_DATA_CONTENT_MAPPING, str}, 2));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            ironLog.verbose(str2);
        }
        JSONArray jSONArray = (JSONArray) networkData.dataByKeyIgnoreCase(AdMobConstants.NETWORK_DATA_CONTENT_MAPPING, JSONArray.class);
        if (jSONArray != null) {
            neighboringContentMappingUrls.clear();
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                Set<String> set = neighboringContentMappingUrls;
                String strOptString = jSONArray.optString(i);
                Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
                set.add(strOptString);
            }
            IronLog ironLog2 = IronLog.ADAPTER_API;
            String str3 = String.format(AdMobConstants.Logs.CONTENT_MAPPING_VALUES, Arrays.copyOf(new Object[]{AdMobConstants.NETWORK_DATA_CONTENT_MAPPING, neighboringContentMappingUrls}, 2));
            Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
            ironLog2.verbose(str3);
        }
        String str4 = (String) networkData.dataByKeyIgnoreCase(AdMobConstants.NETWORK_DATA_CONTENT_RATING, String.class);
        if (str4 != null) {
            String lowerCase = StringUtils.toLowerCase(str4);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            ratingValue = getAdMobRatingValue(lowerCase);
            IronLog ironLog3 = IronLog.ADAPTER_API;
            String str5 = String.format(AdMobConstants.Logs.RATING_VALUE, Arrays.copyOf(new Object[]{AdMobConstants.NETWORK_DATA_CONTENT_RATING, ratingValue}, 2));
            Intrinsics.checkNotNullExpressionValue(str5, "format(...)");
            ironLog3.verbose(str5);
            setRequestConfiguration();
        }
    }
}
