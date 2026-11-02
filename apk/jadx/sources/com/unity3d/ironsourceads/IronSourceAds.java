package com.unity3d.ironsourceads;

import android.content.Context;
import com.ironsource.V9;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.p;
import java.util.List;
import org.json.JSONException;
import p005kotlin.enums.EnumEntries;
import p005kotlin.enums.EnumEntriesKt;
import p005kotlin.jvm.JvmStatic;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class IronSourceAds {
    public static final IronSourceAds INSTANCE = new IronSourceAds();

    public enum AdFormat {
        BANNER("Banner"),
        INTERSTITIAL("Interstitial"),
        REWARDED("RewardedVideo");

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

    private IronSourceAds() {
    }

    @JvmStatic
    public static final void enableDebugMode(boolean z) {
        IronLog.API.info("enabled: " + z);
        p.g().a(z);
    }

    @JvmStatic
    public static final String getSdkVersion() {
        IronLog.API.info("");
        return "9.6.1";
    }

    @JvmStatic
    public static final void init(Context context, InitRequest initRequest, InitListener initializationListener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(initRequest, "initRequest");
        Intrinsics.checkNotNullParameter(initializationListener, "initializationListener");
        V9.a.a(context, initRequest, initializationListener);
    }

    @JvmStatic
    public static final void setConsent(boolean z) throws JSONException {
        IronLog.API.info("consent: " + z);
        V9.a.b(z);
    }

    @JvmStatic
    public static final void setMetaData(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        IronLog.API.info("key = " + key + ", value = " + value);
        V9.a.a(key, value);
    }

    @JvmStatic
    public static final void setMetaData(String key, List<String> values) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(values, "values");
        IronLog.API.info("key = " + key + ", values = " + values);
        p.g().a(key, values);
    }
}
