package com.appsflyer.internal;

import com.appsflyer.AFInAppEventParameterName;
import com.appsflyer.AFLogger;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.appsflyer.internal.components.network.http.ResponseNetwork;
import com.ironsource.adapters.applovin.AppLovinConstants;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class AFg1nSDK extends AFe1eSDK<Map<String, Object>> {
    private static final List<String> areAllFieldsValid = Arrays.asList("googleplay", "playstore", "googleplaystore");
    private final AFc1pSDK copy;
    private final AFh1tSDK copydefault;
    private final AFc1oSDK equals;
    private Map<String, Object> hashCode;
    private String registerClient;
    private final AFd1lSDK toString;

    public AFg1nSDK(AFc1bSDK aFc1bSDK) {
        super(AFe1mSDK.GCDSDK, new AFe1mSDK[]{AFe1mSDK.RC_CDN}, aFc1bSDK, "GCD-FETCH");
        this.toString = aFc1bSDK.getRevenue();
        this.equals = aFc1bSDK.component2();
        this.copydefault = aFc1bSDK.component3();
        this.copy = aFc1bSDK.getCurrencyIso4217Code();
        this.getRevenue.add(AFe1mSDK.CONVERSION);
        this.getRevenue.add(AFe1mSDK.LAUNCH);
    }

    @Override // com.appsflyer.internal.AFe1eSDK, com.appsflyer.internal.AFe1lSDK
    public final boolean AFAdRevenueData() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1eSDK
    public final AppsFlyerRequestListener areAllFieldsValid() {
        return null;
    }

    @Override // com.appsflyer.internal.AFe1eSDK
    public final boolean copydefault() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1eSDK, com.appsflyer.internal.AFe1lSDK
    public final AFe1uSDK getMediationNetwork() throws Exception {
        AFe1uSDK mediationNetwork;
        AFe1uSDK aFe1uSDK;
        if (((AFe1eSDK) this).component2.getMonetizationNetwork()) {
            AFLogger.afDebugLog("[GCD-E03] 'isStopTracking' enabled");
            this.registerClient = "'isStopTracking' enabled";
            throw new AFe1iSDK();
        }
        AFe1uSDK aFe1uSDK2 = AFe1uSDK.FAILURE;
        int i = 0;
        while (i <= 2) {
            boolean z = true;
            boolean z2 = i >= 2;
            this.copydefault.toString = System.currentTimeMillis();
            try {
                try {
                    try {
                        mediationNetwork = super.getMediationNetwork();
                        ResponseNetwork responseNetwork = ((AFe1eSDK) this).component3;
                        if (responseNetwork != null) {
                            int statusCode = responseNetwork.getStatusCode();
                            if (statusCode != 403 && statusCode < 500) {
                                z = false;
                            }
                            if (responseNetwork.isSuccessful() || statusCode == 404) {
                                Map<String, Object> map = (Map) responseNetwork.getBody();
                                int statusCode2 = responseNetwork.getStatusCode();
                                Boolean bool = (Boolean) map.get("iscache");
                                if (statusCode2 == 404) {
                                    map.remove("error_reason");
                                    map.remove("status_code");
                                    map.put("af_status", "Organic");
                                    map.put("af_message", "organic install");
                                }
                                if (bool != null && !bool.booleanValue()) {
                                    this.equals.getRevenue("appsflyerConversionDataCacheExpiration", System.currentTimeMillis());
                                }
                                if (map.containsKey("af_siteid")) {
                                    if (map.containsKey(AFInAppEventParameterName.AF_CHANNEL)) {
                                        AFLogger.afDebugLog(new StringBuilder("[Invite] Detected App-Invite via channel: ").append(map.get(AFInAppEventParameterName.AF_CHANNEL)).toString());
                                    } else {
                                        AFLogger.afDebugLog(String.format("[CrossPromotion] App was installed via %s's Cross Promotion", map.get("af_siteid")));
                                    }
                                }
                                map.put("is_first_launch", Boolean.FALSE);
                                this.equals.AFAdRevenueData("attributionId", new JSONObject(map).toString());
                                if (!this.equals.getMediationNetwork("sixtyDayConversionData", false)) {
                                    map.put("is_first_launch", Boolean.TRUE);
                                }
                                this.hashCode = map;
                                aFe1uSDK = AFe1uSDK.SUCCESS;
                            } else {
                                if (!z2) {
                                    if (!z) {
                                    }
                                }
                                this.registerClient = "Error connection to server: ".concat(String.valueOf(statusCode));
                                aFe1uSDK = AFe1uSDK.FAILURE;
                            }
                            this.copydefault.getMonetizationNetwork(i);
                            AFLogger.afDebugLog("[GCD-A03] Server retrieving attempt finished");
                            return aFe1uSDK;
                        }
                    } catch (AFe1pSDK e) {
                        AFLogger.afDebugLog("[GCD-E05] AppsFlyer dev key is missing");
                        this.registerClient = "AppsFlyer dev key is missing";
                        throw e;
                    }
                } catch (Exception e2) {
                    AFLogger.afErrorLog(new StringBuilder("[GCD] Error: ").append(e2.getMessage()).toString(), e2, false, false);
                    mediationNetwork = AFe1uSDK.FAILURE;
                    if (z2) {
                        this.registerClient = e2.getMessage();
                        throw e2;
                    }
                }
                this.copydefault.getMonetizationNetwork(i);
                AFLogger.afDebugLog("[GCD-A03] Server retrieving attempt finished");
                aFe1uSDK2 = mediationNetwork;
                i++;
            } catch (Throwable th) {
                this.copydefault.getMonetizationNetwork(i);
                AFLogger.afDebugLog("[GCD-A03] Server retrieving attempt finished");
                throw th;
            }
        }
        return aFe1uSDK2;
    }

    @Override // com.appsflyer.internal.AFe1eSDK
    public final AFd1jSDK<Map<String, Object>> getRevenue(String str) {
        String strConcat;
        String currencyIso4217Code = AFa1uSDK.getCurrencyIso4217Code(this.equals, this.copy.areAllFieldsValid());
        if (currencyIso4217Code == null || currencyIso4217Code.trim().isEmpty()) {
            strConcat = "";
        } else if (areAllFieldsValid.contains(currencyIso4217Code.toLowerCase(Locale.getDefault()))) {
            AFLogger.afWarnLog(String.format("[GCD] AF detected using redundant Google-Play channel for attribution - %s. Using without channel postfix.", currencyIso4217Code));
            strConcat = "";
        } else {
            strConcat = "-".concat(String.valueOf(currencyIso4217Code));
        }
        AFd1lSDK aFd1lSDK = this.toString;
        AFd1jSDK<Map<String, Object>> aFd1jSDK = (AFd1jSDK) AFd1lSDK.getRevenue(new Object[]{aFd1lSDK, strConcat, str}, 2067226218, -2067226217, System.identityHashCode(aFd1lSDK));
        AFLogger.afInfoLog(new StringBuilder("[GCD-B01] URL: ").append(aFd1jSDK.getRevenue.getRevenue).toString());
        return aFd1jSDK;
    }

    @Override // com.appsflyer.internal.AFe1eSDK, com.appsflyer.internal.AFe1lSDK
    public final void getRevenue() {
        super.getRevenue();
        Map<String, Object> map = this.hashCode;
        String str = this.registerClient;
        if (map != null) {
            AFg1pSDK.getMonetizationNetwork(map);
        } else if (str == null || str.isEmpty()) {
            AFg1pSDK.getRevenue(AppLovinConstants.Logs.ERROR_UNKNOWN);
        } else {
            AFg1pSDK.getRevenue(str);
        }
    }
}
