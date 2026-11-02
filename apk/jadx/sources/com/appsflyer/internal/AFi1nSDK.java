package com.appsflyer.internal;

import android.app.Activity;
import android.net.Uri;
import p005kotlin.jvm.internal.Intrinsics;
import p005kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
public final class AFi1nSDK implements AFi1kSDK {
    private String getMonetizationNetwork;

    private static String getRevenue(Activity activity) {
        Uri uriK_ = AFb1tSDK.k_(activity != null ? activity.getIntent() : null);
        String string = uriK_ != null ? uriK_.toString() : null;
        if (string == null) {
            string = "";
        }
        if (getRevenue(string)) {
            return null;
        }
        return string;
    }

    private static boolean getRevenue(String str) {
        return StringsKt.startsWith$default(str, "android-app://", false, 2, (Object) null);
    }

    @Override // com.appsflyer.internal.AFi1kSDK
    public final String getCurrencyIso4217Code(Activity activity) {
        Uri referrer = (activity == null || activity.getIntent() == null) ? null : activity.getReferrer();
        String string = referrer != null ? referrer.toString() : null;
        return string == null ? "" : string;
    }

    @Override // com.appsflyer.internal.AFi1kSDK
    public final String getMediationNetwork(Activity activity) {
        String str = this.getMonetizationNetwork;
        this.getMonetizationNetwork = null;
        String str2 = str;
        return (str2 == null || str2.length() == 0) ? getRevenue(activity) : str;
    }

    @Override // com.appsflyer.internal.AFi1kSDK
    public final void getMonetizationNetwork(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "");
        String str = this.getMonetizationNetwork;
        if (str == null || str.length() == 0) {
            this.getMonetizationNetwork = getRevenue(activity);
        }
    }
}
