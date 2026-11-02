package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class AFa1oSDK {
    static JSONObject AFAdRevenueData(String str) {
        JSONObject monetizationNetwork = AFg1hSDK.getMonetizationNetwork(str);
        if (monetizationNetwork != null) {
            try {
                if (monetizationNetwork.has("ol_id")) {
                    String strOptString = monetizationNetwork.optString("ol_scheme", null);
                    String strOptString2 = monetizationNetwork.optString("ol_domain", null);
                    String strOptString3 = monetizationNetwork.optString("ol_ver", null);
                    if (strOptString != null) {
                        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.ONELINK_SCHEME, strOptString);
                    }
                    if (strOptString2 != null) {
                        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.ONELINK_DOMAIN, strOptString2);
                    }
                    if (strOptString3 != null) {
                        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.ONELINK_VERSION, strOptString3);
                        return monetizationNetwork;
                    }
                }
            } catch (Throwable th) {
                AFLogger.INSTANCE.e(AFg1cSDK.GENERAL, new StringBuilder("Error in handleResponse: ").append(th.getMessage()).toString(), th, false, false, true);
                AFa1uSDK monetizationNetwork2 = AFa1uSDK.getMonetizationNetwork();
                ((AFc1bSDK) AFa1uSDK.getRevenue(new Object[]{monetizationNetwork2}, 389316487, -389316474, System.identityHashCode(monetizationNetwork2))).equals().getMediationNetwork();
                AFa1uSDK monetizationNetwork3 = AFa1uSDK.getMonetizationNetwork();
                ((AFc1bSDK) AFa1uSDK.getRevenue(new Object[]{monetizationNetwork3}, 389316487, -389316474, System.identityHashCode(monetizationNetwork3))).equals().AFAdRevenueData();
            }
        }
        return monetizationNetwork;
    }
}
