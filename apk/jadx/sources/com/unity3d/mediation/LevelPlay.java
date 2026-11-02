package com.unity3d.mediation;

import android.content.Context;
import com.ironsource.C3900wb;
import com.ironsource.C3934y9;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.p;
import com.unity3d.mediation.impression.LevelPlayImpressionDataListener;
import com.unity3d.mediation.segment.LevelPlaySegment;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
import p005kotlin.Deprecated;
import p005kotlin.DeprecationLevel;
import p005kotlin.ReplaceWith;
import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class LevelPlay {
    public static final LevelPlay INSTANCE = new LevelPlay();

    public enum AdFormat {
        BANNER("banner"),
        INTERSTITIAL("interstitial"),
        REWARDED("rewarded"),
        NATIVE_AD("nativeAd");

        private static final /* synthetic */ EnumEntries c = EnumEntriesKt.enumEntries(a());
        private final String a;

        AdFormat(String str) {
            this.a = str;
        }

        public static EnumEntries<AdFormat> getEntries() {
            return c;
        }

        public final String getValue() {
            return this.a;
        }
    }

    private LevelPlay() {
    }

    private final void a(String str) {
        if (StringsKt.equals(str, com.ironsource.mediationsdk.metadata.a.a, true)) {
            a(str, "LevelPlayPrivacySettings.setCCPA()");
            return;
        }
        List<String> META_DATA_COPPA_FLAGS = com.ironsource.mediationsdk.metadata.a.g;
        Intrinsics.checkNotNullExpressionValue(META_DATA_COPPA_FLAGS, "META_DATA_COPPA_FLAGS");
        if ((META_DATA_COPPA_FLAGS instanceof Collection) && META_DATA_COPPA_FLAGS.isEmpty()) {
            return;
        }
        Iterator<T> it = META_DATA_COPPA_FLAGS.iterator();
        while (it.hasNext()) {
            if (StringsKt.equals((String) it.next(), str, true)) {
                a(str, "LevelPlayPrivacySettings.setCOPPA()");
                return;
            }
        }
    }

    private final void a(String str, String str2) {
        IronLog.API.warning("Setting '" + str + "' via setMetaData is deprecated. Use " + str2 + " instead.");
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Publishers: use setImpressionDataListener() on each LevelPlayBannerAdView, LevelPlayInterstitialAd, or LevelPlayRewardedAd. Third-party SDKs: use addImpressionLevelRevenueListener(listener, subscriberId).")
    @JvmStatic
    public static final void addImpressionDataListener(LevelPlayImpressionDataListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.API.info("adding listener: " + listener.getClass().getSimpleName());
        C3900wb.a.a(listener);
    }

    @JvmStatic
    public static final void addImpressionLevelRevenueListener(LevelPlayImpressionDataListener listener, String subscriberId) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(subscriberId, "subscriberId");
        IronLog.API.info("adding listener: " + listener.getClass().getSimpleName());
        C3900wb.a.a(listener, subscriberId);
    }

    @JvmStatic
    public static final String getSdkVersion() {
        IronLog.API.info("");
        return "9.6.1";
    }

    @JvmStatic
    public static final void init(Context context, LevelPlayInitRequest initRequest, LevelPlayInitListener listener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initRequest, "initRequest");
        Intrinsics.checkNotNullParameter(listener, "listener");
        C3900wb.a.a(context, initRequest, listener);
    }

    @JvmStatic
    public static final void launchTestSuite(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        IronLog.API.info("");
        p.g().c(context);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Publishers: use setImpressionDataListener(null) on each LevelPlayBannerAdView, LevelPlayInterstitialAd, or LevelPlayRewardedAd.Third-party SDKs: use removeImpressionLevelRevenueListener(listener).")
    @JvmStatic
    public static final void removeImpressionDataListener(LevelPlayImpressionDataListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.API.info("removing listener: " + listener.getClass().getSimpleName());
        C3900wb.a.b(listener);
    }

    @JvmStatic
    public static final void removeImpressionLevelRevenueListener(LevelPlayImpressionDataListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        IronLog.API.info("removing subscriber listener: " + listener.getClass().getSimpleName());
        C3900wb.a.c(listener);
    }

    @JvmStatic
    public static final void setAdaptersDebug(boolean z) {
        IronLog.API.info("enabled: " + z);
        p.g().a(z);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "use LevelPlayPrivacySettings.setGDPRConsent() for GDPR consent management.", replaceWith = @ReplaceWith(expression = "LevelPlayPrivacySettings.setGDPRConsent(consent)", imports = {"com.unity3d.mediation.LevelPlayPrivacySettings"}))
    @JvmStatic
    public static final void setConsent(boolean z) {
        IronLog.API.info("consent: " + z);
        p.g().b(z);
    }

    @JvmStatic
    public static final boolean setDynamicUserId(String dynamicUserId) {
        Intrinsics.checkNotNullParameter(dynamicUserId, "dynamicUserId");
        IronLog.API.info("dynamicUserId: " + dynamicUserId);
        return p.g().b(dynamicUserId);
    }

    @JvmStatic
    public static final void setMetaData(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        IronLog.API.info("key = " + key + ", value = " + value);
        INSTANCE.a(key);
        C3900wb.a.a(key, value);
    }

    @JvmStatic
    public static final void setMetaData(String key, List<String> values) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(values, "values");
        IronLog.API.info("key = " + key + ", values = " + values);
        INSTANCE.a(key);
        C3900wb.a.a(key, values);
    }

    @JvmStatic
    public static final void setNetworkData(String networkKey, JSONObject networkData) {
        Intrinsics.checkNotNullParameter(networkKey, "networkKey");
        Intrinsics.checkNotNullParameter(networkData, "networkData");
        IronLog.API.info("networkKey = " + networkKey + ", networkData = " + networkData);
        p.g().b(networkKey, networkData);
    }

    @JvmStatic
    public static final void setSegment(LevelPlaySegment segment) {
        Intrinsics.checkNotNullParameter(segment, "segment");
        IronLog.API.info("");
        C3900wb.a.b(segment);
    }

    @JvmStatic
    public static final void validateIntegration(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        IronLog.API.info("");
        C3934y9.a.a(context);
    }
}
