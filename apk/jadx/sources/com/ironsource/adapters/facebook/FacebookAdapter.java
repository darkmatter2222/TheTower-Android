package com.ironsource.adapters.facebook;

import android.content.Context;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.BidderTokenProvider;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.internal.settings.AdSdkVersion;
import com.ironsource.C3510b4;
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
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import p005kotlin.Metadata;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.IntIterator;
import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.jvm.internal.StringCompanionObject;
import p005kotlin.ranges.IntRange;
import p005kotlin.ranges.RangesKt;
import p005kotlin.text.StringsKt;

/* JADX INFO: compiled from: FacebookAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 ,2\u00020\u00012\u00020\u0002:\u0001,B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\"\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\rH\u0002J\u0010\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u0006H\u0002J$\u0010\u001a\u001a\u00020\r2\b\u0010\u001b\u001a\u0004\u0018\u00010\u00062\u0010\u0010\u001c\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0010\u0010!\u001a\u00020\r2\u0006\u0010\"\u001a\u00020\tH\u0016J\"\u0010#\u001a\u00020\r2\b\u0010\u001b\u001a\u0004\u0018\u00010\u00062\u000e\u0010\u001c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060$H\u0002J\u0010\u0010%\u001a\u00020\r2\u0006\u0010&\u001a\u00020\tH\u0002J\b\u0010'\u001a\u00020\u0006H\u0002J\u001d\u0010(\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010)\u001a\u00020*H\u0000¢\u0006\u0002\b+¨\u0006-"}, d2 = {"Lcom/ironsource/adapters/facebook/FacebookAdapter;", "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;", "Lcom/facebook/ads/AudienceNetworkAds$InitListener;", "<init>", "()V", "getAdapterVersion", "", "getNetworkSDKVersion", "isUsingActivityBeforeImpression", "", "adFormat", "Lcom/unity3d/mediation/LevelPlay$AdFormat;", "init", "", "adData", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;", "context", "Landroid/content/Context;", "networkInitializationListener", "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;", "onInitialized", "result", "Lcom/facebook/ads/AudienceNetworkAds$InitResult;", "onInitializationSuccess", "onInitializationFailure", "errorMessage", "setMetaData", C3510b4.i.W, TJAdUnitConstants.String.USAGE_TRACKER_VALUES, "", "setNetworkData", "networkData", "Lcom/ironsource/mediationsdk/AdapterNetworkData;", "setTestMode", "enabled", "processCacheFlags", "", "setMixedAudience", "isMixedAudience", "getMediationServiceInfo", "collectBiddingData", "biddingDataCallback", "Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;", "collectBiddingData$facebookadapter_release", "Companion", "facebookadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FacebookAdapter extends LevelPlayBaseAdapter implements AudienceNetworkAds.InitListener {
    private static final String GitHash = "28d5f5a";
    private static EnumSet<CacheFlag> interstitialFacebookCacheFlags;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final AtomicBoolean wasInitCalled = new AtomicBoolean(false);
    private static Companion.InitState initState = Companion.InitState.INIT_STATE_NONE;
    private static final CopyOnWriteArrayList<NetworkInitializationListener> initListeners = new CopyOnWriteArrayList<>();

    /* JADX INFO: compiled from: FacebookAdapter.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0019B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0005H\u0007J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, d2 = {"Lcom/ironsource/adapters/facebook/FacebookAdapter$Companion;", "", "<init>", "()V", "GitHash", "", "networkAdapterVersion", "wasInitCalled", "Ljava/util/concurrent/atomic/AtomicBoolean;", "initState", "Lcom/ironsource/adapters/facebook/FacebookAdapter$Companion$InitState;", "initListeners", "Ljava/util/concurrent/CopyOnWriteArrayList;", "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;", "interstitialFacebookCacheFlags", "Ljava/util/EnumSet;", "Lcom/facebook/ads/CacheFlag;", "getInterstitialFacebookCacheFlags$facebookadapter_release", "()Ljava/util/EnumSet;", "setInterstitialFacebookCacheFlags$facebookadapter_release", "(Ljava/util/EnumSet;)V", "getLoadErrorType", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;", "adError", "Lcom/facebook/ads/AdError;", "InitState", "facebookadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: compiled from: FacebookAdapter.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/ironsource/adapters/facebook/FacebookAdapter$Companion$InitState;", "", "<init>", "(Ljava/lang/String;I)V", "INIT_STATE_NONE", "INIT_STATE_IN_PROGRESS", "INIT_STATE_SUCCESS", "INIT_STATE_FAILED", "facebookadapter_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
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

        public final EnumSet<CacheFlag> getInterstitialFacebookCacheFlags$facebookadapter_release() {
            return FacebookAdapter.interstitialFacebookCacheFlags;
        }

        public final AdapterErrorType getLoadErrorType(AdError adError) {
            Intrinsics.checkNotNullParameter(adError, "adError");
            return adError.getErrorCode() == 1001 ? AdapterErrorType.ADAPTER_ERROR_TYPE_NO_FILL : AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL;
        }

        @JvmStatic
        public final String networkAdapterVersion() {
            return "5.5.0";
        }

        public final void setInterstitialFacebookCacheFlags$facebookadapter_release(EnumSet<CacheFlag> enumSet) {
            Intrinsics.checkNotNullParameter(enumSet, "<set-?>");
            FacebookAdapter.interstitialFacebookCacheFlags = enumSet;
        }
    }

    static {
        EnumSet<CacheFlag> enumSetAllOf = EnumSet.allOf(CacheFlag.class);
        Intrinsics.checkNotNullExpressionValue(enumSetAllOf, "allOf(...)");
        interstitialFacebookCacheFlags = enumSetAllOf;
    }

    private final String getMediationServiceInfo() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String str = String.format("%s_%s:%s", Arrays.copyOf(new Object[]{"ironSource", LevelPlay.getSdkVersion(), "5.5.0"}, 3));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        IronLog ironLog = IronLog.INTERNAL;
        String str2 = String.format(FacebookConstants.Logs.MEDIATION_SERVICE_INFO, Arrays.copyOf(new Object[]{str}, 1));
        Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
        ironLog.verbose(str2);
        return str;
    }

    @JvmStatic
    public static final String networkAdapterVersion() {
        return INSTANCE.networkAdapterVersion();
    }

    private final void onInitializationFailure(String errorMessage) {
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        String str = String.format("Failed to initialize SDK - %s", Arrays.copyOf(new Object[]{errorMessage}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.error(str);
        initState = Companion.InitState.INIT_STATE_FAILED;
        Iterator<NetworkInitializationListener> it = initListeners.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            it.next().onInitFailed(1000, errorMessage);
        }
        initListeners.clear();
    }

    private final void onInitializationSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose(FacebookConstants.Logs.INIT_SUCCESS);
        initState = Companion.InitState.INIT_STATE_SUCCESS;
        Iterator<NetworkInitializationListener> it = initListeners.iterator();
        Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
        while (it.hasNext()) {
            it.next().onInitSuccess();
        }
        initListeners.clear();
    }

    private final void processCacheFlags(String key, List<String> values) {
        EnumSet<CacheFlag> enumSetAllOf;
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format("key = %s, values = %s", Arrays.copyOf(new Object[]{key, values}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        try {
            enumSetAllOf = EnumSet.noneOf(CacheFlag.class);
            Iterator<String> it = values.iterator();
            while (it.hasNext()) {
                String next = it.next();
                String upperCase = StringUtils.toUpperCase(next == null ? "" : next);
                Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                CacheFlag cacheFlagValueOf = CacheFlag.valueOf(upperCase);
                IronLog ironLog2 = IronLog.ADAPTER_API;
                String str2 = String.format(FacebookConstants.Logs.CACHE_FLAG_VALUE, Arrays.copyOf(new Object[]{next, cacheFlagValueOf.name()}, 2));
                Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
                ironLog2.verbose(str2);
                enumSetAllOf.add(cacheFlagValueOf);
            }
        } catch (Exception unused) {
            IronLog.INTERNAL.error(FacebookConstants.Logs.CACHE_FLAG_UNKNOWN);
            enumSetAllOf = EnumSet.allOf(CacheFlag.class);
        }
        Intrinsics.checkNotNull(enumSetAllOf);
        interstitialFacebookCacheFlags = enumSetAllOf;
        IronLog ironLog3 = IronLog.ADAPTER_API;
        String str3 = String.format(FacebookConstants.Logs.CACHE_FLAGS_ALL, Arrays.copyOf(new Object[]{interstitialFacebookCacheFlags}, 1));
        Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
        ironLog3.verbose(str3);
    }

    private final void setMixedAudience(boolean isMixedAudience) {
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format(FacebookConstants.Logs.MIXED_AUDIENCE, Arrays.copyOf(new Object[]{Boolean.valueOf(isMixedAudience)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        AdSettings.setMixedAudience(isMixedAudience);
    }

    public final void collectBiddingData$facebookadapter_release(Context context, BiddingDataCallback biddingDataCallback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(biddingDataCallback, "biddingDataCallback");
        if (initState == Companion.InitState.INIT_STATE_FAILED) {
            IronLog.INTERNAL.verbose(FacebookConstants.Logs.TOKEN_INIT_FAILED);
            biddingDataCallback.onFailure(FacebookConstants.Logs.SDK_INIT_FAILED);
            return;
        }
        String bidderToken = BidderTokenProvider.getBidderToken(context.getApplicationContext());
        String str = bidderToken;
        if (str == null || str.length() == 0) {
            bidderToken = "";
        }
        IronLog ironLog = IronLog.ADAPTER_API;
        String str2 = String.format("token = %s", Arrays.copyOf(new Object[]{bidderToken}, 1));
        Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
        ironLog.verbose(str2);
        HashMap map = new HashMap();
        map.put("token", bidderToken);
        biddingDataCallback.onSuccess(map);
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public String getAdapterVersion() {
        return "5.5.0";
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public String getNetworkSDKVersion() {
        return AdSdkVersion.BUILD;
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public void init(AdData adData, Context context, NetworkInitializationListener networkInitializationListener) {
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(context, "context");
        String string = adData.getString("placementId");
        if (string == null || string.length() == 0) {
            String str = String.format("Missing params - %s", Arrays.copyOf(new Object[]{"placementId"}, 1));
            Intrinsics.checkNotNullExpressionValue(str, "format(...)");
            IronLog.INTERNAL.error(str);
            if (networkInitializationListener != null) {
                networkInitializationListener.onInitFailed(1002, str);
                return;
            }
            return;
        }
        String string2 = adData.getString(FacebookConstants.ALL_PLACEMENT_IDS_KEY);
        if (string2 == null || string2.length() == 0) {
            String str2 = String.format("Missing params - %s", Arrays.copyOf(new Object[]{FacebookConstants.ALL_PLACEMENT_IDS_KEY}, 1));
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
            IronLog.INTERNAL.error(FacebookConstants.Logs.SDK_INIT_FAILED);
            if (networkInitializationListener != null) {
                networkInitializationListener.onInitFailed(1000, FacebookConstants.Logs.SDK_INIT_FAILED);
                return;
            }
            return;
        }
        if ((initState == Companion.InitState.INIT_STATE_NONE || initState == Companion.InitState.INIT_STATE_IN_PROGRESS) && networkInitializationListener != null) {
            initListeners.add(networkInitializationListener);
        }
        if (wasInitCalled.compareAndSet(false, true)) {
            initState = Companion.InitState.INIT_STATE_IN_PROGRESS;
            List<String> listSplit$default = StringsKt.split$default((CharSequence) string2, new String[]{FacebookConstants.PLACEMENT_IDS_SEPARATOR}, false, 0, 6, (Object) null);
            IronLog ironLog = IronLog.ADAPTER_API;
            String str3 = String.format(FacebookConstants.Logs.INIT, Arrays.copyOf(new Object[]{listSplit$default}, 1));
            Intrinsics.checkNotNullExpressionValue(str3, "format(...)");
            ironLog.verbose(str3);
            AudienceNetworkAds.buildInitSettings(context.getApplicationContext()).withInitListener(this).withMediationService(getMediationServiceInfo()).withPlacementIds(listSplit$default).initialize();
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.BaseAdapter, com.ironsource.mediationsdk.adunit.adapter.internal.AdapterSettingsInterface
    public boolean isUsingActivityBeforeImpression(LevelPlay.AdFormat adFormat) {
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        return false;
    }

    @Override // com.facebook.ads.AudienceNetworkAds.InitListener
    public void onInitialized(AudienceNetworkAds.InitResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (result.isSuccess()) {
            onInitializationSuccess();
            return;
        }
        String message = result.getMessage();
        Intrinsics.checkNotNullExpressionValue(message, "getMessage(...)");
        onInitializationFailure(message);
    }

    @Override // com.unity3d.mediation.adapters.levelplay.LevelPlayBaseAdapter, com.ironsource.mediationsdk.adunit.adapter.internal.AdapterMetaDataInterface
    public void setMetaData(String key, List<String> values) {
        List<String> list;
        String lowerCase;
        String str;
        if (key == null || (list = values) == null || list.isEmpty() || (lowerCase = StringUtils.toLowerCase(key)) == null) {
            return;
        }
        int iHashCode = lowerCase.hashCode();
        if (iHashCode != -2119383230) {
            if (iHashCode != -1227342573) {
                if (iHashCode != 5585394 || !lowerCase.equals(FacebookConstants.FACEBOOK_INTERSTITIAL_CACHE_FLAG)) {
                    return;
                }
            } else if (!lowerCase.equals(FacebookConstants.META_INTERSTITIAL_CACHE_FLAG)) {
                return;
            }
            processCacheFlags(key, values);
            return;
        }
        if (lowerCase.equals(FacebookConstants.META_MIXED_AUDIENCE) && (str = values.get(0)) != null) {
            IronLog ironLog = IronLog.ADAPTER_API;
            String str2 = String.format("key = %s, value = %s", Arrays.copyOf(new Object[]{key, str}, 2));
            Intrinsics.checkNotNullExpressionValue(str2, "format(...)");
            ironLog.verbose(str2);
            String valueForType = MetaDataUtils.formatValueForType(str, MetaData.MetaDataValueTypes.META_DATA_VALUE_BOOLEAN);
            Intrinsics.checkNotNull(valueForType);
            if (valueForType.length() > 0) {
                setMixedAudience(MetaDataUtils.getMetaDataBooleanValue(valueForType));
            }
        }
    }

    @Override // com.ironsource.mediationsdk.adunit.adapter.BaseAdapter, com.ironsource.mediationsdk.adunit.adapter.internal.AdapterNetworkDataInterface
    public void setNetworkData(AdapterNetworkData networkData) {
        Intrinsics.checkNotNullParameter(networkData, "networkData");
        JSONArray jSONArray = (JSONArray) networkData.dataByKeyIgnoreCase(FacebookConstants.NETWORK_DATA_CACHE_FLAG, JSONArray.class);
        if (jSONArray != null) {
            IntRange intRangeUntil = RangesKt.until(0, jSONArray.length());
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(intRangeUntil, 10));
            Iterator<Integer> it = intRangeUntil.iterator();
            while (it.hasNext()) {
                arrayList.add(jSONArray.optString(((IntIterator) it).nextInt()));
            }
            processCacheFlags(FacebookConstants.NETWORK_DATA_CACHE_FLAG, arrayList);
        }
    }

    @Override // com.unity3d.mediation.adapters.levelplay.LevelPlayBaseAdapter, com.ironsource.mediationsdk.adunit.adapter.internal.AdapterTestModeInterface
    public void setTestMode(boolean enabled) {
        IronLog ironLog = IronLog.ADAPTER_API;
        String str = String.format(FacebookConstants.Logs.TEST_MODE, Arrays.copyOf(new Object[]{Boolean.valueOf(enabled)}, 1));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        ironLog.verbose(str);
        AdSettings.setTestMode(enabled);
    }
}
