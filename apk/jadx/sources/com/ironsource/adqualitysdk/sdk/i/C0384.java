package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.م, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0384 extends AbstractC0686 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String f1850 = StringFog.decrypt("GN4HnK39318Jwg==\n", "e7Fp8sieqzA=\n");

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final String f1849 = StringFog.decrypt("cg==\n", "AR0auhRyf64=\n") + UUID.randomUUID().toString().replace(StringFog.decrypt("Pg==\n", "E3ZhB96fZ4s=\n"), "");

    public C0384(C1043 c1043) {
        this.f2612 = c1043;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final boolean m2064() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        return jSONObject.has(this.f1850);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m2065(String str) {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(this.f1850);
        if (jSONObjectOptJSONObject == null) {
            jSONObjectOptJSONObject = new JSONObject();
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject(str);
        if (jSONObjectOptJSONObject2 != null) {
            return jSONObjectOptJSONObject2.optString(StringFog.decrypt("3gR+JEsFJdPPPXU4XQ8+0g==\n", "vWsQSi5mUbw=\n"));
        }
        return null;
    }
}
