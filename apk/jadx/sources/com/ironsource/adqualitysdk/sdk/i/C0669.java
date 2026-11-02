package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
import p005kotlin.time.DurationKt;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᖬ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0669 extends AbstractC0686 {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static final String f2565 = StringFog.decrypt("sxiY\n", "wGzrJO7sexY=\n");

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static final String f2564 = StringFog.decrypt("3L4=\n", "qM0kjcxeJqU=\n");

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static final String f2563 = StringFog.decrypt("t78=\n", "wssr4ZE/2z0=\n");

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public static final String f2562 = StringFog.decrypt("HQ0l5w==\n", "cGBEkWE/myo=\n");

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final int f2568 = (int) TimeUnit.SECONDS.toMillis(120);

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final String f2567 = StringFog.decrypt("eioYARbyQA==\n", "Clh3dXmcM1o=\n");

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final String f2566 = StringFog.decrypt("FaDxfuKFIEsD\n", "cMyUHZb3TyU=\n");

    public C0669(C1043 c1043) {
        this.f2612 = c1043;
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final String m2204() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(StringFog.decrypt("v54r\n", "yuxHbcURJi0=\n"));
        return jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optString(StringFog.decrypt("rg==\n", "y7aZ4lL4jfI=\n"), this.f2566) : this.f2566;
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final long m2205() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        return jSONObject.optLong(f2563, 0L);
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final long m2206() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        return jSONObject.optLong(f2564, 0L);
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final int m2207() {
        JSONObject jSONObject;
        if (((C0961) AbstractC0953.m2334()).f3411) {
            synchronized (this) {
                jSONObject = this.f2613;
            }
            if (jSONObject.optBoolean(StringFog.decrypt("M2fjzg==\n", "Vw6CqWtqtjQ=\n"), false)) {
                return m2211();
            }
        }
        return m2223().optInt(StringFog.decrypt("0XVI\n", "vAM7p2UY5ts=\n"), 9850);
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final int m2208() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        return jSONObject.optInt(StringFog.decrypt("rhQ9\n", "w3FN+mLkpbA=\n"), 40);
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final HashMap m2209() {
        JSONObject jSONObject;
        HashMap map = new HashMap();
        synchronized (this) {
            jSONObject = this.f2613;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(StringFog.decrypt("8aK1ug==\n", "l9bczqW554A=\n"));
        if (jSONObjectOptJSONObject != null) {
            Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                int iOptInt = jSONObjectOptJSONObject.optInt(next, -1);
                if (iOptInt >= 0) {
                    map.put(next, Integer.valueOf(iOptInt));
                }
            }
        }
        return map;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final List m2210() {
        JSONObject jSONObject;
        C1043 c1043 = this.f2612;
        JSONObject jSONObject2 = c1043.f3677;
        String str = c1043.f3678;
        List arrayList = new ArrayList();
        String str2 = AbstractC1030.f3634;
        JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray(str);
        if (jSONArrayOptJSONArray != null) {
            arrayList = AbstractC1030.m2414(jSONArrayOptJSONArray);
        }
        synchronized (this) {
            jSONObject = this.f2613;
        }
        String strDecrypt = StringFog.decrypt("lFiu\n", "8SzWNyhbHxA=\n");
        List arrayList2 = new ArrayList();
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray(strDecrypt);
        if (jSONArrayOptJSONArray2 != null) {
            arrayList2 = AbstractC1030.m2414(jSONArrayOptJSONArray2);
        }
        arrayList.addAll(arrayList2);
        return arrayList;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final int m2211() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        return jSONObject.optInt(StringFog.decrypt("BbwKek+TJA==\n", "YdVrHSLlV2w=\n"), DurationKt.NANOS_IN_MILLIS);
    }
}
