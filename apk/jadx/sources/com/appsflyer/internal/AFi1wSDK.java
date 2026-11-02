package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import com.ironsource.C3510b4;
import com.unity3d.ads.BuildConfig;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class AFi1wSDK {
    private final boolean AFAdRevenueData;
    public final String getCurrencyIso4217Code;
    public final AFh1cSDK getMediationNetwork;
    public final AFi1zSDK getMonetizationNetwork;
    public final String getRevenue;

    public AFi1wSDK(String str) throws JSONException {
        if (str == null) {
            throw new JSONException("Failed to parse remote configuration JSON: originalJson is null");
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("ver");
            this.getCurrencyIso4217Code = string;
            this.AFAdRevenueData = jSONObject.optBoolean("test_mode");
            this.getRevenue = str;
            this.getMediationNetwork = string.startsWith(BuildConfig.FLAVOR) ? AFh1cSDK.DEFAULT : AFh1cSDK.CUSTOM;
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(C3510b4.a.v);
            this.getMonetizationNetwork = jSONObjectOptJSONObject != null ? new AFi1zSDK(jSONObjectOptJSONObject) : null;
        } catch (JSONException e) {
            AFLogger.afErrorLogForExcManagerOnly("Error in RC config parsing", e);
            throw new JSONException("Failed to parse remote configuration JSON");
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AFi1wSDK aFi1wSDK = (AFi1wSDK) obj;
        if (this.AFAdRevenueData == aFi1wSDK.AFAdRevenueData && this.getCurrencyIso4217Code.equals(aFi1wSDK.getCurrencyIso4217Code)) {
            return this.getRevenue.equals(aFi1wSDK.getRevenue);
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = ((((this.AFAdRevenueData ? 1 : 0) * 31) + this.getCurrencyIso4217Code.hashCode()) * 31) + this.getRevenue.hashCode();
        AFi1zSDK aFi1zSDK = this.getMonetizationNetwork;
        return aFi1zSDK != null ? (iHashCode * 31) + aFi1zSDK.hashCode() : iHashCode;
    }
}
