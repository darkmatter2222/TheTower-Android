package com.ironsource.adqualitysdk.sdk.i;

import android.os.Handler;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﾞ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1100 {

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static final String f3906 = StringFog.decrypt("0wAbkUgV7Ez3Og+aWAn/TukADJFJ\n", "h2l29DthjSE=\n");

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final int f3907;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public long f3908;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public long f3909;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public long f3910;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public long f3911;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public Boolean f3912 = null;

    public C1100(int i) {
        this.f3907 = i;
        AbstractC0953 abstractC0953M2334 = AbstractC0953.m2334();
        C0216 c0216 = new C0216(this);
        C0961 c0961 = (C0961) abstractC0953M2334;
        Handler handler = c0961.f3422;
        if (handler != null) {
            handler.post(new C0970(c0961, c0216));
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m2448(JSONObject jSONObject) {
        boolean z;
        long jOptLong;
        try {
            if (jSONObject.optInt(StringFog.decrypt("CaUI\n", "esxsfwMyG6o=\n"), 1) == this.f3907 || Math.abs((this.f3910 - this.f3911) - (jSONObject.optLong(StringFog.decrypt("f0/D\n", "GzuwGEEUrl0=\n")) - jSONObject.optLong(StringFog.decrypt("9wM=\n", "gnes0CQi6/g=\n")))) <= 10) {
                long jOptLong2 = jSONObject.optLong(StringFog.decrypt("LFM=\n", "WSfgT2QFni4=\n")) + this.f3909;
                jSONObject.put(StringFog.decrypt("xZVH\n", "sOEonM4IVnc=\n"), this.f3909);
                z = true;
                jOptLong = jOptLong2;
            } else {
                jOptLong = jSONObject.optLong(StringFog.decrypt("wbup\n", "pc/ajNblieU=\n")) + this.f3908;
                jSONObject.put(StringFog.decrypt("oX+/\n", "1QzQEQIJjqg=\n"), this.f3908);
                z = false;
            }
            jSONObject.put(AbstractC0115.f626, jOptLong);
            if (!this.f3912.booleanValue()) {
                jSONObject.put(StringFog.decrypt("Dex4\n", "eZ8LWbs09uA=\n"), false);
            }
            m2449(jSONObject, z);
            m2450(jSONObject, z);
        } catch (JSONException unused) {
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m2449(JSONObject jSONObject, boolean z) {
        long jOptLong;
        long j;
        if (jSONObject.has(StringFog.decrypt("XPO+\n", "L4fNu1SRJxc=\n"))) {
            if (z) {
                jOptLong = jSONObject.optLong(StringFog.decrypt("9OfX\n", "h5Kjmc2ExE0=\n"));
                j = this.f3909;
            } else {
                jOptLong = jSONObject.optLong(StringFog.decrypt("DEFH\n", "fzU0Y+MrGgM=\n"));
                j = this.f3908;
            }
            try {
                jSONObject.put(StringFog.decrypt("7u8t\n", "nZtemgYM+xY=\n"), jOptLong + j);
            } catch (JSONException unused) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0042  */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2450(JSONObject jSONObject, boolean z) {
        Long lValueOf;
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(StringFog.decrypt("xEF5dfi4qVDA\n", "qCAKAazX3DM=\n"));
            if (jSONObjectOptJSONObject != null) {
                if (z) {
                    long jOptLong = jSONObjectOptJSONObject.optLong(StringFog.decrypt("JA==\n", "UaKr8SU8Hko=\n"));
                    if (jOptLong > 0) {
                        lValueOf = Long.valueOf(jOptLong + this.f3909);
                    } else {
                        lValueOf = null;
                    }
                } else {
                    long jOptLong2 = jSONObjectOptJSONObject.optLong(StringFog.decrypt("3A==\n", "qLiZZce/ujQ=\n"));
                    if (jOptLong2 > 0) {
                        lValueOf = Long.valueOf(jOptLong2 + this.f3908);
                    } else {
                        lValueOf = null;
                    }
                }
                if (lValueOf != null) {
                    jSONObjectOptJSONObject.put(StringFog.decrypt("mA==\n", "7KmudrAQaXs=\n"), lValueOf);
                }
            }
        } catch (JSONException unused) {
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final boolean m2451(JSONObject jSONObject) {
        if (!jSONObject.has(StringFog.decrypt("nCB+\n", "6VQROkfirok=\n")) && !jSONObject.has(StringFog.decrypt("PBgc\n", "SGtztpq9Viw=\n")) && this.f3912 != null) {
            try {
                m2448(jSONObject);
                return true;
            } catch (Exception e) {
                AbstractC1071.m2435(f3906, StringFog.decrypt("Rev5Ent9KBVu+uMPZjMyFmn37F1sKz4CdA==\n", "AJmLfQldW2w=\n"), (Throwable) e, false);
            }
        }
        return false;
    }
}
