package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﾚ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1097 extends AbstractC0686 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f3867 = StringFog.decrypt("5hm5\n", "g23NW1BQbxU=\n");

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final String f3866 = StringFog.decrypt("SuBnYQ==\n", "L5QTErtyvxc=\n");

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static final String f3865 = StringFog.decrypt("6D6x01eQ\n", "nEzQuiPjUeA=\n");

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final String m2445() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        return jSONObject.optString(f3867);
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final JSONObject m2446() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        return jSONObject.optJSONObject(f3865);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final JSONArray m2447() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        return jSONObject.optJSONArray(f3866);
    }
}
