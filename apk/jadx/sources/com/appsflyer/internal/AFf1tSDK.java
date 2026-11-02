package com.appsflyer.internal;

import android.util.Base64;
import com.appsflyer.AFLogger;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.appsflyer.internal.components.network.http.ResponseNetwork;
import java.net.MalformedURLException;
import java.net.URL;

/* JADX INFO: loaded from: classes2.dex */
public final class AFf1tSDK extends AFe1eSDK<String> {
    private final AFh1gSDK areAllFieldsValid;

    public AFf1tSDK(AFh1gSDK aFh1gSDK, AFc1bSDK aFc1bSDK) {
        super(aFh1gSDK.toString != null ? aFh1gSDK.toString : AFe1mSDK.CACHED_EVENT, new AFe1mSDK[]{AFe1mSDK.RC_CDN}, aFc1bSDK, new StringBuilder().append(aFh1gSDK.getRevenue).append("-").append(getMediationNetwork(aFh1gSDK)).toString(), aFh1gSDK.getRevenue);
        this.areAllFieldsValid = aFh1gSDK;
    }

    private boolean copy() {
        AFh1gSDK aFh1gSDK = this.areAllFieldsValid;
        return (aFh1gSDK.toString != null ? aFh1gSDK.toString : AFe1mSDK.CACHED_EVENT) == AFe1mSDK.ARS_VALIDATE && ((AFe1eSDK) this).component3 != null && ((AFe1eSDK) this).component3.getStatusCode() == 424;
    }

    private boolean equals() {
        ResponseNetwork responseNetwork = ((AFe1eSDK) this).component3;
        return (this.AFAdRevenueData == AFe1uSDK.FAILURE && responseNetwork != null && responseNetwork.getStatusCode() / 500 == 1) && (this.getCurrencyIso4217Code == AFe1mSDK.CONVERSION || this.getCurrencyIso4217Code == AFe1mSDK.ATTR);
    }

    private static String getMediationNetwork(AFh1gSDK aFh1gSDK) {
        try {
            return new URL(aFh1gSDK.component3).getHost();
        } catch (MalformedURLException unused) {
            return "";
        }
    }

    @Override // com.appsflyer.internal.AFe1eSDK, com.appsflyer.internal.AFe1lSDK
    public final boolean AFAdRevenueData() {
        return super.AFAdRevenueData() || copy() || equals();
    }

    @Override // com.appsflyer.internal.AFe1eSDK
    protected final AppsFlyerRequestListener areAllFieldsValid() {
        return this.areAllFieldsValid.getMonetizationNetwork;
    }

    @Override // com.appsflyer.internal.AFe1eSDK
    protected final boolean copydefault() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1eSDK
    protected final AFd1jSDK<String> getRevenue(String str) {
        String strEncodeToString = Base64.encodeToString(this.areAllFieldsValid.AFAdRevenueData(), 2);
        AFLogger.afInfoLog("cached data: ".concat(String.valueOf(strEncodeToString)));
        this.component4.getMonetizationNetwork(this.areAllFieldsValid.component3, strEncodeToString);
        return ((AFe1eSDK) this).component1.getRevenue(this.areAllFieldsValid);
    }
}
