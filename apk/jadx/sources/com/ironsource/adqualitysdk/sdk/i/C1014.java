package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺪ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1014 {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public int f3581 = -1;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final C1014 f3582;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final C0694 f3583;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String[] f3584;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0731 f3585;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f3586;

    static {
        StringFog.decrypt("qXw/3g==\n", "yA5YrWFx/J8=\n");
        StringFog.decrypt("MDxD5Q==\n", "UlMnnNEMjQE=\n");
    }

    /* JADX WARN: Unreachable blocks removed: 2, instructions: 4 */
    public C1014(C0731 c0731, String str, JSONObject jSONObject, C1014 c1014) {
        ArrayList arrayList;
        this.f3585 = c0731;
        this.f3586 = AbstractC0736.m2259(str);
        this.f3582 = c1014;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(StringFog.decrypt("b3esvQ==\n", "DgXLzmUfmqA=\n"));
        if (jSONArrayOptJSONArray != null) {
            arrayList = new ArrayList();
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                String strM2259 = AbstractC0736.m2259(jSONArrayOptJSONArray.optString(i));
                if (strM2259 != null) {
                    arrayList.add(strM2259);
                }
            }
        } else {
            arrayList = null;
        }
        String[] strArr = new String[arrayList.size()];
        this.f3584 = strArr;
        arrayList.toArray(strArr);
        String str2 = c0731.f2710;
        String str3 = c0731.f2711;
        try {
            this.f3583 = AbstractC0704.m2252(str2, str, jSONObject.optString(StringFog.decrypt("pnvxHQ==\n", "xBSVZGbM54w=\n")));
        } catch (C0992 e) {
            new C0949(str2, str3, str, m2399(), StringFog.decrypt("Y4KmZHyYAa1Ug71laZgcqVKYu28unw==\n", "JvDUCw64ccw=\n") + this.f3586 + StringFog.decrypt("Xj+8WS2K6ukcPw==\n", "eR/dLQ3mg4c=\n") + (m2399() + e.f3514) + StringFog.decrypt("tss=\n", "jOvjHIuIApY=\n") + e.getMessage(), e).m2264(str2);
        } catch (Throwable th) {
            String str4 = StringFog.decrypt("hJQzmCWerMqzlSiZMJ6xzrWOLpN3mQ==\n", "weZB91e+3Ks=\n") + this.f3586 + StringFog.decrypt("KQCt\n", "DjqNV0FFRKY=\n") + th.getMessage();
            AbstractC0991.m2386(str2, str4, th, new C0949(str2, str3, str, m2399(), str4));
        }
    }

    public final String toString() {
        StringBuilder sbAppend = new StringBuilder().append(StringFog.decrypt("J9icXWsd+ilh\n", "Qa3yPh90lUc=\n")).append(this.f3586).append(StringFog.decrypt("fQ==\n", "VQ3E5JkP8jc=\n")).append(String.join(StringFog.decrypt("HTI=\n", "MRKQCnYKsJE=\n"), this.f3584)).append(StringFog.decrypt("ynU=\n", "41WRxbIxcr4=\n"));
        C0694 c0694 = this.f3583;
        return sbAppend.append(c0694 != null ? c0694.toString() : StringFog.decrypt("9PDR\n", "j9CsbPBuDjM=\n")).toString();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final int m2399() {
        if (this.f3581 == -1) {
            C1014 c1014 = this.f3582;
            if (c1014 == null) {
                this.f3581 = 1;
            } else {
                int iM2399 = c1014.m2399();
                C0694 c0694 = this.f3582.f3583;
                this.f3581 = iM2399 + (c0694 != null ? c0694.mo1891() : 1) + 1;
            }
        }
        return this.f3581;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0248 m2400(C0983 c0983, C0116 c0116, List list) {
        return m2401(c0983, c0983.f3496, c0116, list);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0248 m2401(C0983 c0983, C0983 c0984, C0116 c0116, List list) {
        HashMap map;
        List listAsList = Arrays.asList(this.f3584);
        if (list.size() != listAsList.size()) {
            AbstractC0991.m2386(c0116.m1903(), this.f3586 + StringFog.decrypt("vd+kZjZ83an4yrF3PWfc7b0=\n", "nbLBEl4TuYk=\n") + listAsList.size() + StringFog.decrypt("EPRx68NEL1ZE5iPuw11qSlX2ZuXATC4Y\n", "MJUDjLYpSjg=\n") + list.size(), null, null);
            map = null;
        } else {
            HashMap map2 = new HashMap();
            for (int i = 0; i < list.size(); i++) {
                map2.put((String) listAsList.get(i), list.get(i));
            }
            map = map2;
        }
        C0983 c0985 = new C0983(map, c0984, this, c0983, c0984 == null);
        C0694 c0694 = this.f3583;
        if (c0694 != null) {
            return c0694.m2261(c0985, c0116);
        }
        new C0548(c0116, c0985, AbstractC0897.m2299("9zuN7xmNEPW0IcXjD9kW77xtjeATnQE=\n", "0AGtgnz5eJo=\n", new StringBuilder().append(StringFog.decrypt("i05RDHdgzD64U0gKayeFPatISwxhYII=\n", "zjwjYwVApVA=\n")).append(this.f3586)), null).m2264(c0116.m1903());
        return null;
    }
}
