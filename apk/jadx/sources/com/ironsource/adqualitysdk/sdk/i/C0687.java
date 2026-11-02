package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᘣ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0687 implements Comparable {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C1068 f2614;

    public C0687(C1068 c1068) {
        this.f2614 = c1068;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        JSONObject jSONObject;
        C0687 c0687 = (C0687) obj;
        synchronized (this) {
            jSONObject = this.f2614.f3803;
        }
        long jOptLong = jSONObject.optLong(StringFog.decrypt("XsQ=\n", "Krfrj6TdCOk=\n"));
        long jM2228 = c0687.m2228();
        if (jOptLong < jM2228) {
            return -1;
        }
        if (jOptLong != jM2228) {
            return 1;
        }
        long jM2226 = m2226();
        long jM2227 = c0687.m2226();
        if (jM2226 < jM2227) {
            return -1;
        }
        return jM2226 == jM2227 ? 0 : 1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0687.class != obj.getClass()) {
            return false;
        }
        return this.f2614.f3802.equals(((C0687) obj).f2614.f3802);
    }

    public final int hashCode() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2614.f3803;
        }
        if (jSONObject != null) {
            return m2227().hashCode();
        }
        return 0;
    }

    public final String toString() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2614.f3803;
        }
        return jSONObject.toString();
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final String m2225() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2614.f3803;
        }
        return jSONObject.optString(StringFog.decrypt("AzaU\n", "dl/wVuWuhU4=\n"), null);
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final long m2226() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2614.f3803;
        }
        return jSONObject.optInt(StringFog.decrypt("ytg=\n", "r7Z3Gcoljqs=\n"));
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized JSONObject m2227() {
        return this.f2614.f3803;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final long m2228() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2614.f3803;
        }
        return jSONObject.optLong(StringFog.decrypt("XsQ=\n", "Krfrj6TdCOk=\n"));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m2229(int i, HashMap map) {
        JSONObject jSONObject = this.f2614.f3803;
        if (jSONObject != null) {
            AbstractC1030.m2417(jSONObject, i, map);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2230(String str) {
        JSONObject jSONObject;
        try {
            synchronized (this) {
                jSONObject = this.f2614.f3803;
            }
            jSONObject.put(StringFog.decrypt("9jAd\n", "g1l5Vi32QJU=\n"), str);
        } catch (JSONException unused) {
        }
    }
}
