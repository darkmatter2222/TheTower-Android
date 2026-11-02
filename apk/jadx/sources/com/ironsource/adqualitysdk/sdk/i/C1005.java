package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺗ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1005 {

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public C3474h0 f3539;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final ArrayList f3540 = new ArrayList();

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final Context f3541;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final AbstractC0276 f3542;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final C0759 f3543;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C1032 f3544;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0593 f3545;

    public C1005(Context context, C0593 c0593, C1032 c1032, C0759 c0759, AbstractC0276 abstractC0276) {
        this.f3545 = c0593;
        this.f3544 = c1032;
        this.f3543 = c0759;
        this.f3542 = abstractC0276;
        this.f3541 = context.getApplicationContext();
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final void m2393() {
        for (C0116 c0116 : this.f3540) {
            C0893 c0893 = c0116.f646;
            c0893.getClass();
            AbstractC0340.m2053(new C0916(c0893));
            C0893 c0894 = c0116.f646;
            c0894.getClass();
            AbstractC0340.m2053(new C0894(c0894));
            C0893 c0895 = c0116.f646;
            c0895.getClass();
            AbstractC0340.m2053(new C0904(c0895));
            if (c0116.f650 != null) {
                AbstractC1081 abstractC1081M2437 = AbstractC1081.m2437();
                C0549 c0549 = c0116.f650;
                synchronized (abstractC1081M2437) {
                    abstractC1081M2437.f3816.remove(c0549);
                }
                c0116.f650 = null;
            }
            C0582 c0582 = c0116.f649;
            if (c0582 != null) {
                c0582.m2138();
                c0116.f649 = null;
            }
            c0116.f651 = null;
        }
        AbstractC0340.m2053(new C1037(this));
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final synchronized boolean m2394() {
        return this.f3542.mo1918();
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String m2395() {
        LinkedHashMap linkedHashMap;
        String strM2028 = this.f3542.m2028();
        String str = null;
        if (TextUtils.isEmpty(strM2028) || StringFog.decrypt("Wq+tYxNlAQ==\n", "H+HsIV8gRdA=\n").equals(strM2028) || StringFog.decrypt("JfjbswiBM5w=\n", "YbGI8krNdtg=\n").equals(strM2028)) {
            return null;
        }
        C0593 c0593 = this.f3545;
        String strM2029 = this.f3542.m2028();
        if (c0593.f2377 == null) {
            JSONObject jSONObjectOptJSONObject = c0593.f2384.optJSONObject(C0593.f2373);
            if (jSONObjectOptJSONObject != null) {
                linkedHashMap = new LinkedHashMap();
                Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    linkedHashMap.put(next, jSONObjectOptJSONObject.optString(next, null));
                }
            } else {
                linkedHashMap = null;
            }
            if (linkedHashMap != null) {
                ArrayList<String> arrayList = new ArrayList(linkedHashMap.keySet());
                Collections.sort(arrayList, new C0595());
                for (String str2 : arrayList) {
                    if (AbstractC0679.m2217(strM2029, str2) >= 0) {
                        str = (String) linkedHashMap.get(str2);
                    }
                }
                c0593.f2377 = str;
            }
        }
        return c0593.f2377;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized ArrayList m2396() {
        if (this.f3540 != null) {
            return new ArrayList(this.f3540);
        }
        return new ArrayList();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0776 m2397(C0731 c0731) {
        if (c0731 != null) {
            return new C0776(c0731, m2397((C0731) this.f3545.m2140().get(c0731.f2709)));
        }
        return null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m2398() {
        if (this.f3542.mo1918()) {
            for (C0116 c0116 : m2396()) {
                this.f3545.m2141().f3497.m2384(c0116.f655.f2898.f2711, c0116);
            }
        }
    }
}
