package com.applovin.sdk;

import android.content.Context;
import com.applovin.impl.q0;
import com.applovin.impl.sdk.l;
import com.applovin.impl.sdk.p;
import com.applovin.impl.u7;

/* JADX INFO: loaded from: classes2.dex */
public class AppLovinPrivacySettings {
    public static Boolean getAdditionalConsentStatus(int i) {
        l lVarF = u7.f();
        if (lVarF != null) {
            return lVarF.t0().a(i);
        }
        p.h("AppLovinPrivacySettings", "Unable to retrieve additional consent status");
        return null;
    }

    public static Boolean getPurposeConsentStatus(int i) {
        l lVarF = u7.f();
        if (lVarF != null) {
            return lVarF.t0().b(i);
        }
        p.h("AppLovinPrivacySettings", "Unable to retrieve purpose consent status");
        return null;
    }

    public static Boolean getSpecialFeatureOptInStatus(int i) {
        l lVarF = u7.f();
        if (lVarF != null) {
            return lVarF.t0().c(i);
        }
        p.h("AppLovinPrivacySettings", "Unable to retrieve special feature opt in status");
        return null;
    }

    public static Boolean getTcfVendorConsentStatus(int i) {
        l lVarF = u7.f();
        if (lVarF != null) {
            return lVarF.t0().d(i);
        }
        p.h("AppLovinPrivacySettings", "Unable to retrieve TCF vendor consent status");
        return null;
    }

    public static boolean hasUserConsent() {
        return hasUserConsent(l.p());
    }

    @Deprecated
    public static boolean hasUserConsent(Context context) {
        Boolean boolB = q0.b().b(context);
        if (boolB != null) {
            return boolB.booleanValue();
        }
        return false;
    }

    public static boolean isDoNotSell() {
        return isDoNotSell(l.p());
    }

    @Deprecated
    public static boolean isDoNotSell(Context context) {
        Boolean boolB = q0.a().b(context);
        if (boolB != null) {
            return boolB.booleanValue();
        }
        return false;
    }

    public static boolean isDoNotSellSet() {
        return isDoNotSellSet(l.p());
    }

    @Deprecated
    public static boolean isDoNotSellSet(Context context) {
        return q0.a().b(context) != null;
    }

    public static boolean isUserConsentSet() {
        return isUserConsentSet(l.p());
    }

    @Deprecated
    public static boolean isUserConsentSet(Context context) {
        return q0.b().b(context) != null;
    }

    public static void setDoNotSell(boolean z) {
        setDoNotSell(z, l.p());
    }

    @Deprecated
    public static void setDoNotSell(boolean z, Context context) {
        p.g("AppLovinPrivacySettings", "setDoNotSell()");
        if (q0.a(z, context)) {
            AppLovinSdk.getInstance(context).reinitialize(null, Boolean.valueOf(z));
        }
    }

    public static void setHasUserConsent(boolean z) {
        setHasUserConsent(z, l.p());
    }

    @Deprecated
    public static void setHasUserConsent(boolean z, Context context) {
        p.g("AppLovinPrivacySettings", "setHasUserConsent()");
        if (q0.b(z, context)) {
            AppLovinSdk.getInstance(context).reinitialize(Boolean.valueOf(z), null);
        }
    }
}
