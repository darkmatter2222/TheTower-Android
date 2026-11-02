package com.appsflyer.internal;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.Result;
import p005kotlin.ResultKt;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class AFi1zSDK {
    public final AFi1xSDK AFAdRevenueData;
    public final AFh1aSDK getCurrencyIso4217Code;
    public AFi1ySDK getMediationNetwork;

    public AFi1zSDK(JSONObject jSONObject) {
        Intrinsics.checkNotNullParameter(jSONObject, "");
        this.getMediationNetwork = getCurrencyIso4217Code(jSONObject);
        this.getCurrencyIso4217Code = getRevenue(jSONObject);
        this.AFAdRevenueData = getMediationNetwork(jSONObject);
    }

    private static JSONObject AFAdRevenueData(JSONObject jSONObject, String str) throws JSONException, NullPointerException {
        JSONObject jSONObjectOptJSONObject;
        if (!jSONObject.has(str) || (jSONObjectOptJSONObject = jSONObject.getJSONArray(str).optJSONObject(0).optJSONObject("data")) == null) {
            return null;
        }
        return jSONObjectOptJSONObject.optJSONObject("v1");
    }

    private static AFi1ySDK getCurrencyIso4217Code(JSONObject jSONObject) {
        Object objM3022constructorimpl;
        AFi1ySDK aFi1ySDK;
        ArrayList arrayListEmptyList;
        try {
            Result.Companion companion = Result.INSTANCE;
            JSONObject jSONObjectAFAdRevenueData = AFAdRevenueData(jSONObject, "r_debugger");
            if (jSONObjectAFAdRevenueData != null) {
                long j = jSONObjectAFAdRevenueData.getLong("ttl");
                int i = jSONObjectAFAdRevenueData.getInt("counter");
                String strOptString = jSONObjectAFAdRevenueData.optString("app_ver", "");
                String strOptString2 = jSONObjectAFAdRevenueData.optString("sdk_ver", "");
                float fOptDouble = (float) jSONObjectAFAdRevenueData.optDouble("ratio", 1.0d);
                JSONArray jSONArrayOptJSONArray = jSONObjectAFAdRevenueData.optJSONArray("tags");
                if (jSONArrayOptJSONArray != null) {
                    Intrinsics.checkNotNullExpressionValue(jSONArrayOptJSONArray, "");
                    arrayListEmptyList = new ArrayList();
                    int length = jSONArrayOptJSONArray.length();
                    for (int i2 = 0; i2 < length; i2++) {
                        String string = jSONArrayOptJSONArray.getString(i2);
                        Intrinsics.checkNotNullExpressionValue(string, "");
                        arrayListEmptyList.add(string);
                    }
                } else {
                    arrayListEmptyList = CollectionsKt.emptyList();
                }
                Intrinsics.checkNotNullExpressionValue(strOptString, "");
                Intrinsics.checkNotNullExpressionValue(strOptString2, "");
                aFi1ySDK = new AFi1ySDK(j, fOptDouble, arrayListEmptyList, i, strOptString, strOptString2);
            } else {
                aFi1ySDK = null;
            }
            objM3022constructorimpl = Result.m3022constructorimpl(aFi1ySDK);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        return (AFi1ySDK) (Result.m3028isFailureimpl(objM3022constructorimpl) ? null : objM3022constructorimpl);
    }

    private static AFi1xSDK getMediationNetwork(JSONObject jSONObject) {
        Object objM3022constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            JSONObject jSONObjectAFAdRevenueData = AFAdRevenueData(jSONObject, "meta_data");
            objM3022constructorimpl = Result.m3022constructorimpl(jSONObjectAFAdRevenueData != null ? new AFi1xSDK(jSONObjectAFAdRevenueData.optDouble("send_rate", 1.0d)) : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        return (AFi1xSDK) (Result.m3028isFailureimpl(objM3022constructorimpl) ? null : objM3022constructorimpl);
    }

    private static AFh1aSDK getRevenue(JSONObject jSONObject) {
        Object objM3022constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            JSONObject jSONObjectAFAdRevenueData = AFAdRevenueData(jSONObject, "exc_mngr");
            objM3022constructorimpl = Result.m3022constructorimpl(jSONObjectAFAdRevenueData != null ? new AFh1aSDK(jSONObjectAFAdRevenueData.getString("sdk_ver"), jSONObjectAFAdRevenueData.optInt("min", -1), jSONObjectAFAdRevenueData.optInt("expire", -1), jSONObjectAFAdRevenueData.optLong("ttl", -1L)) : null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3022constructorimpl = Result.m3022constructorimpl(ResultKt.createFailure(th));
        }
        return (AFh1aSDK) (Result.m3028isFailureimpl(objM3022constructorimpl) ? null : objM3022constructorimpl);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Intrinsics.areEqual(getClass(), obj != null ? obj.getClass() : null)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "");
        AFi1zSDK aFi1zSDK = (AFi1zSDK) obj;
        return Intrinsics.areEqual(this.getCurrencyIso4217Code, aFi1zSDK.getCurrencyIso4217Code) && Intrinsics.areEqual(this.AFAdRevenueData, aFi1zSDK.AFAdRevenueData) && Intrinsics.areEqual(this.getMediationNetwork, aFi1zSDK.getMediationNetwork);
    }

    public final int hashCode() {
        AFh1aSDK aFh1aSDK = this.getCurrencyIso4217Code;
        int iHashCode = (aFh1aSDK != null ? aFh1aSDK.hashCode() : 0) * 31;
        AFi1xSDK aFi1xSDK = this.AFAdRevenueData;
        int iHashCode2 = (iHashCode + (aFi1xSDK != null ? aFi1xSDK.hashCode() : 0)) * 31;
        AFi1ySDK aFi1ySDK = this.getMediationNetwork;
        return iHashCode2 + (aFi1ySDK != null ? aFi1ySDK.hashCode() : 0);
    }
}
