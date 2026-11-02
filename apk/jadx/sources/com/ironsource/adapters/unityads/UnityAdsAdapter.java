package com.ironsource.adapters.unityads;

import android.content.Context;
import com.ironsource.C3510b4;
import com.ironsource.environment.ContextProvider;
import com.ironsource.mediationsdk.adunit.adapter.listener.NetworkInitializationListener;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdData;
import com.ironsource.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.ironsource.mediationsdk.bidding.BiddingDataCallback;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.metadata.MetaDataUtils;
import com.tapjoy.TJAdUnitConstants;
import com.unity3d.ads.AdFormat;
import com.unity3d.ads.BannerSize;
import com.unity3d.ads.IUnityAdsTokenListener;
import com.unity3d.ads.InitializationConfiguration;
import com.unity3d.ads.InitializationListener;
import com.unity3d.ads.LogLevel;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.TokenConfiguration;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.UnityAdsError;
import com.unity3d.ads.metadata.MetaData;
import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.adapters.levelplay.LevelPlayBaseAdapter;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import p005kotlin.Metadata;
import p005kotlin.Unit;
import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: compiled from: UnityAdsAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 -2\u00020\u0001:\u0001-B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\"\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u000eH\u0002J\u0018\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0007H\u0002J\u0010\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\nH\u0016J$\u0010\u001c\u001a\u00020\u000e2\b\u0010\u001d\u001a\u0004\u0018\u00010\u00072\u0010\u0010\u001e\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0018\u00010\u001fH\u0016J\u0010\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\nH\u0002J\u0010\u0010\"\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\nH\u0002J\u001c\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070$2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0018\u0010%\u001a\u00020\u000e2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\nH\u0002J3\u0010&\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010'\u001a\u00020(2\u0006\u0010\u000b\u001a\u00020)2\n\b\u0002\u0010*\u001a\u0004\u0018\u00010+H\u0000¢\u0006\u0002\b,R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Lcom/ironsource/adapters/unityads/UnityAdsAdapter;", "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;", "<init>", "()V", "unityAdsStorageLock", "", "getAdapterVersion", "", "getNetworkSDKVersion", "isUsingActivityBeforeImpression", "", "adFormat", "Lcom/unity3d/mediation/LevelPlay$AdFormat;", "init", "", "adData", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;", "context", "Landroid/content/Context;", "networkInitializationListener", "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;", "initializationSuccess", "initializationFailure", "errorCode", "", "errorMessage", "setConsent", C3510b4.j.b0, "setMetaData", C3510b4.i.W, TJAdUnitConstants.String.USAGE_TRACKER_VALUES, "", "setCCPAValue", "value", "setCOPPAValue", "buildInitExtras", "", "setUnityAdsMetaData", "collectBiddingData", "biddingDataCallback", "Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;", "Lcom/unity3d/ads/AdFormat;", "bannerSize", "Lcom/unity3d/ads/BannerSize;", "collectBiddingData$unityadsadapter_release", "Companion", "unityadsadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UnityAdsAdapter extends LevelPlayBaseAdapter {
    private static final String GitHash = "6ad4c94";
    private final Object unityAdsStorageLock = new Object();

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final MediationInfo mediationInfo = new MediationInfo("ironSource", LevelPlay.getSdkVersion(), "5.14.0");
    private static final AtomicBoolean wasInitCalled = new AtomicBoolean(false);
    private static Companion.InitState initState = Companion.InitState.INIT_STATE_NONE;
    private static final CopyOnWriteArrayList<NetworkInitializationListener> initCallbackListeners = new CopyOnWriteArrayList<>();

    /* JADX INFO: compiled from: UnityAdsAdapter.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0016B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0007J\b\u0010\u0015\u001a\u00020\u0005H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u0007X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion;", "", "<init>", "()V", "GitHash", "", "mediationInfo", "Lcom/unity3d/ads/MediationInfo;", "getMediationInfo$unityadsadapter_release", "()Lcom/unity3d/ads/MediationInfo;", "wasInitCalled", "Ljava/util/concurrent/atomic/AtomicBoolean;", "initState", "Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;", "initCallbackListeners", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;", "getLoadErrorType", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;", "error", "Lcom/unity3d/ads/UnityAdsError;", "networkAdapterVersion", "InitState", "unityadsadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: compiled from: UnityAdsAdapter.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion$InitState;", "", "<init>", "(Ljava/lang/String;I)V", "INIT_STATE_NONE", "INIT_STATE_IN_PROGRESS", "INIT_STATE_SUCCESS", "INIT_STATE_FAILED", "unityadsadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
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

        @JvmStatic
        public final AdapterErrorType getLoadErrorType(UnityAdsError error) {
            return (error == null || error.getCode() != 52100) ? AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL : AdapterErrorType.ADAPTER_ERROR_TYPE_NO_FILL;
        }

        public final MediationInfo getMediationInfo$unityadsadapter_release() {
            return UnityAdsAdapter.mediationInfo;
        }

        @JvmStatic
        public final String networkAdapterVersion() {
            return "5.14.0";
        }
    }

    private final Map<String, String> buildInitExtras(AdData adData) {
        String str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String string = adData.getString(UnityAdsConstants.UADS_INIT_BLOB);
        if (string != null && string.length() > 0) {
            linkedHashMap.put(UnityAdsConstants.UADS_INIT_BLOB, string);
        }
        Object obj = adData.getConfiguration().get("traits");
        Map map = obj instanceof Map ? (Map) obj : null;
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                String str2 = key instanceof String ? (String) key : null;
                String str3 = value instanceof String ? (String) value : null;
                String str4 = str2;
                if (str4 != null && str4.length() != 0 && (str = str3) != null && str.length() != 0) {
                    linkedHashMap.put(str2, str3);
                }
            }
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void collectBiddingData$lambda$10(BiddingDataCallback biddingDataCallback, String str) {
        String str2 = str;
        if (str2 == null || str2.length() == 0) {
            IronLog.ADAPTER_API.verbose(UnityAdsConstants.Logs.TOKEN_FAILURE);
            biddingDataCallback.onFailure(UnityAdsConstants.Logs.TOKEN_FAILURE);
            return;
        }
        IronLog ironLog = IronLog.ADAPTER_API;
        String str3 = String.format("token = %s", Arrays.copyOf(new Object[]{str}, 1));
        Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
        ironLog.verbose(str3);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("token", str);
        biddingDataCallback.onSuccess(linkedHashMap);
    }

    public static /* synthetic */ void collectBiddingData$unityadsadapter_release$default(UnityAdsAdapter unityAdsAdapter, AdData adData, BiddingDataCallback biddingDataCallback, AdFormat adFormat, BannerSize bannerSize, int i, Object obj) {
        if ((i & 8) != 0) {
            bannerSize = null;
        }
        unityAdsAdapter.collectBiddingData$unityadsadapter_release(adData, biddingDataCallback, adFormat, bannerSize);
    }

    @JvmStatic
    public static final AdapterErrorType getLoadErrorType(UnityAdsError unityAdsError) {
        return INSTANCE.getLoadErrorType(unityAdsError);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void init$lambda$2(UnityAdsAdapter unityAdsAdapter, UnityAdsError unityAdsError) {
        if (unityAdsError == null) {
            unityAdsAdapter.initializationSuccess();
            return;
        }
        int code = unityAdsError.getCode();
        String message = unityAdsError.getMessage();
        if (message == null) {
            message = "";
        }
        unityAdsAdapter.initializationFailure(code, message);
    }

    private final void initializationFailure(int errorCode, String errorMessage) {
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format(UnityAdsConstants.Logs.INIT_FAILED, Arrays.copyOf(new Object[]{Integer.valueOf(errorCode), errorMessage}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        initState = Companion.InitState.INIT_STATE_FAILED;
        Iterator<NetworkInitializationListener> it = initCallbackListeners.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            NetworkInitializationListener next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            next.onInitFailed(errorCode, errorMessage);
        }
        initCallbackListeners.clear();
    }

    private final void initializationSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose();
        initState = Companion.InitState.INIT_STATE_SUCCESS;
        Iterator<NetworkInitializationListener> it = initCallbackListeners.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            NetworkInitializationListener next = it.next();
            Intrinsics.checkNotNullExpressionValue(next, "next(...)");
            next.onInitSuccess();
        }
        initCallbackListeners.clear();
    }

    @JvmStatic
    public static final String networkAdapterVersion() {
        return INSTANCE.networkAdapterVersion();
    }

    private final void setCCPAValue(boolean value) {
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format(UnityAdsConstants.Logs.CCPA, Arrays.copyOf(new Object[]{Boolean.valueOf(value)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        setUnityAdsMetaData(UnityAdsConstants.CONSENT_CCPA, !value);
        UnityAds.setUserOptOut(Boolean.valueOf(value));
    }

    private final void setCOPPAValue(boolean value) {
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format(UnityAdsConstants.Logs.COPPA, Arrays.copyOf(new Object[]{Boolean.valueOf(value)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        setUnityAdsMetaData(UnityAdsConstants.UNITYADS_COPPA, value);
        UnityAds.setNonBehavioral(Boolean.valueOf(value));
    }

    private final void setUnityAdsMetaData(String key, boolean value) {
        IronLog ironLog = IronLog.INTERNAL;
        String str = String.format("key = %s, value = %s", Arrays.copyOf(new Object[]{key, Boolean.valueOf(value)}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        synchronized (this.unityAdsStorageLock) {
            MetaData metaData = new MetaData(ContextProvider.getInstance().getApplicationContext());
            metaData.set(key, Boolean.valueOf(value));
            metaData.commit();
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void collectBiddingData$unityadsadapter_release(AdData adData, final BiddingDataCallback biddingDataCallback, AdFormat adFormat, BannerSize bannerSize) {
        Map<String, Object> adUnitData;
        String string;
        Intrinsics.checkNotNullParameter(biddingDataCallback, "biddingDataCallback");
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        TokenConfiguration.Builder builderWithMediationInfo = new TokenConfiguration.Builder(adFormat).withMediationInfo(mediationInfo);
        if (adData != null && (string = adData.getString("zoneId")) != null && !StringsKt.isBlank(string)) {
            builderWithMediationInfo.withPlacementId(string);
        }
        Object obj = (adData == null || (adUnitData = adData.getAdUnitData()) == null) ? null : adUnitData.get("adUnitId");
        String str = obj instanceof String ? (String) obj : null;
        if (str != null && !StringsKt.isBlank(str)) {
            builderWithMediationInfo.withMediationAdUnitId(str);
        }
        if (bannerSize != null) {
            builderWithMediationInfo.withBannerSize(bannerSize);
        }
        UnityAds.getToken(builderWithMediationInfo.build(), new IUnityAdsTokenListener() { // from class: com.ironsource.adapters.unityads.UnityAdsAdapter$$ExternalSyntheticLambda1
            @Override // com.unity3d.ads.IUnityAdsTokenListener
            public final void onUnityAdsTokenReady(String str2) {
                UnityAdsAdapter.collectBiddingData$lambda$10(biddingDataCallback, str2);
            }
        });
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public String getAdapterVersion() {
        return "5.14.0";
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public String getNetworkSDKVersion() {
        return UnityAds.getVersion();
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public void init(AdData adData, Context context, NetworkInitializationListener networkInitializationListener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(context, "context");
        String string = adData.getString(UnityAdsConstants.SOURCE_ID_KEY);
        String str = string;
        if (str == null || str.length() == 0) {
            String str2 = String.format("Missing params - %s", Arrays.copyOf(new Object[]{UnityAdsConstants.SOURCE_ID_KEY}, 1));
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
            IronLog.INTERNAL.error(UnityAdsConstants.Logs.SDK_INIT_FAILED);
            if (networkInitializationListener != null) {
                networkInitializationListener.onInitFailed(1000, UnityAdsConstants.Logs.SDK_INIT_FAILED);
                return;
            }
            return;
        }
        if ((initState == Companion.InitState.INIT_STATE_NONE || initState == Companion.InitState.INIT_STATE_IN_PROGRESS) && networkInitializationListener != null) {
            initCallbackListeners.add(networkInitializationListener);
        }
        if (wasInitCalled.compareAndSet(false, true)) {
            initState = Companion.InitState.INIT_STATE_IN_PROGRESS;
            IronLog ironLog = IronLog.ADAPTER_API;
            String str3 = String.format(UnityAdsConstants.Logs.SOURCE_ID, Arrays.copyOf(new Object[]{string}, 1));
            Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
            ironLog.verbose(str3);
            InitializationConfiguration.Builder builderWithMediationInfo = new InitializationConfiguration.Builder(string).withTestMode(false).withMediationInfo(mediationInfo);
            if (isAdaptersDebugEnabled()) {
                builderWithMediationInfo.withLogLevel(LogLevel.DEBUG);
            }
            Map<String, String> mapBuildInitExtras = buildInitExtras(adData);
            if (!mapBuildInitExtras.isEmpty()) {
                builderWithMediationInfo.withExtras(mapBuildInitExtras);
            }
            UnityAds.initialize(builderWithMediationInfo.build(), new InitializationListener() { // from class: com.ironsource.adapters.unityads.UnityAdsAdapter$$ExternalSyntheticLambda0
                @Override // com.unity3d.ads.InitializationListener
                public final void onInitializationComplete(UnityAdsError unityAdsError) {
                    UnityAdsAdapter.init$lambda$2(this.f$0, unityAdsError);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.BaseAdapter, com.ironsource.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface
    public boolean isUsingActivityBeforeImpression(LevelPlay.AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        return false;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.BaseAdapter, com.ironsource.mediationsdk.adunit.adapter.internal.AdapterConsentInterface
    public void setConsent(boolean consent) {
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format("consent = %s", Arrays.copyOf(new Object[]{Boolean.valueOf(consent)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        setUnityAdsMetaData(UnityAdsConstants.CONSENT_GDPR, consent);
        UnityAds.setUserConsent(Boolean.valueOf(consent));
    }

    @Override // com.unity3d.mediation.adapters.levelplay.LevelPlayBaseAdapter, com.ironsource.mediationsdk.adunit.adapter.internal.AdapterMetaDataInterface
    public void setMetaData(String key, List<String> values) {
        String str;
        List<String> list = values;
        if (list == null || list.isEmpty() || (str = values.get(0)) == null) {
            return;
        }
        IronLog ironLog = IronLog.ADAPTER_API;
        String str2 = String.format("key = %s, value = %s", Arrays.copyOf(new Object[]{key == null ? "" : key, str}, 2));
        Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
        ironLog.verbose(str2);
        if (MetaDataUtils.isValidCCPAMetaData(key, str)) {
            setCCPAValue(MetaDataUtils.getMetaDataBooleanValue(str));
            return;
        }
        String valueForType = MetaDataUtils.formatValueForType(str, com.ironsource.mediationsdk.metadata.MetaData.MetaDataValueTypes.META_DATA_VALUE_BOOLEAN);
        if (MetaDataUtils.isValidMetaData(key, UnityAdsConstants.UNITYADS_METADATA_COPPA_KEY, valueForType)) {
            setCOPPAValue(MetaDataUtils.getMetaDataBooleanValue(valueForType));
        }
    }
}
