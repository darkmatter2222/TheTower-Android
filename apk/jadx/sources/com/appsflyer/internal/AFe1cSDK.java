package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.appsflyer.AFLogger;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import com.google.common.net.HttpHeaders;
import com.tapjoy.TapjoyConstants;

/* JADX INFO: loaded from: classes2.dex */
public final class AFe1cSDK extends AFe1eSDK<String> {
    private final String areAllFieldsValid;
    private final AFk1sSDK copy;
    private final AFc1pSDK toString;

    public AFe1cSDK(AFc1bSDK aFc1bSDK, String str, AFk1sSDK aFk1sSDK) {
        super(AFe1mSDK.IMPRESSIONS, new AFe1mSDK[]{AFe1mSDK.RC_CDN, AFe1mSDK.FETCH_ADVERTISING_ID}, aFc1bSDK, str);
        this.areAllFieldsValid = str;
        this.copy = aFk1sSDK;
        this.toString = aFc1bSDK.getCurrencyIso4217Code();
    }

    @Override // com.appsflyer.internal.AFe1eSDK, com.appsflyer.internal.AFe1lSDK
    public final boolean AFAdRevenueData() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1eSDK
    protected final AppsFlyerRequestListener areAllFieldsValid() {
        return null;
    }

    @Override // com.appsflyer.internal.AFe1eSDK
    protected final boolean copydefault() {
        return false;
    }

    @Override // com.appsflyer.internal.AFe1eSDK
    protected final AFd1jSDK<String> getRevenue(String str) {
        AFd1lSDK aFd1lSDK = ((AFe1eSDK) this).component1;
        String strComponent4 = this.toString.component4();
        return aFd1lSDK.AFAdRevenueData(AFk1xSDK.getRevenue(strComponent4) ? this.areAllFieldsValid : Uri.parse(this.areAllFieldsValid).buildUpon().appendQueryParameter(TapjoyConstants.TJC_ADVERTISING_ID, strComponent4).build().toString());
    }

    @Override // com.appsflyer.internal.AFe1eSDK, com.appsflyer.internal.AFe1lSDK
    public final void getRevenue() {
        super.getRevenue();
        AFe1xSDK<Result> aFe1xSDK = ((AFe1eSDK) this).component3;
        if (aFe1xSDK != 0) {
            int statusCode = aFe1xSDK.getStatusCode();
            if (statusCode == 200) {
                AFLogger.afInfoLog(new StringBuilder("Cross promotion impressions success: ").append(this.areAllFieldsValid).toString(), false);
                return;
            }
            if (statusCode != 301 && statusCode != 302) {
                AFLogger.afInfoLog(new StringBuilder("call to ").append(this.areAllFieldsValid).append(" failed: ").append(statusCode).toString());
                return;
            }
            AFLogger.afInfoLog(new StringBuilder("Cross promotion redirection success: ").append(this.areAllFieldsValid).toString(), false);
            String mediationNetwork = aFe1xSDK.getMediationNetwork(HttpHeaders.LOCATION);
            AFk1sSDK aFk1sSDK = this.copy;
            if (aFk1sSDK == null || mediationNetwork == null) {
                return;
            }
            aFk1sSDK.getMonetizationNetwork = mediationNetwork;
            AFk1sSDK aFk1sSDK2 = this.copy;
            Context context = aFk1sSDK2.AFAdRevenueData.get();
            if (context != null) {
                try {
                    if (aFk1sSDK2.getMonetizationNetwork != null) {
                        context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(aFk1sSDK2.getMonetizationNetwork)).setFlags(268435456));
                    }
                } catch (Exception e) {
                    AFLogger.afErrorLog("Failed to open cross promotion url, does OS have browser installed?".concat(String.valueOf(e)), e);
                }
            }
        }
    }
}
