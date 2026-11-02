package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.ISAdQualityInitError;
import com.ironsource.adqualitysdk.sdk.ISAdQualityInitListener;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ٵ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0392 {

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public final C1032 f1895;

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public final C0940 f1896;

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public final C0474 f1897;

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public final String f1898;

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public volatile C0303 f1899;

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public static final String f1894 = StringFog.decrypt("xcKRuQDAro/04J65BMS/kg==\n", "hq3/12Wj2uA=\n");

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public static final String f1893 = StringFog.decrypt("L0HXuc5XzQ==\n", "ag+W+4ISibU=\n");

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AtomicBoolean f1908 = new AtomicBoolean(false);

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public boolean f1907 = false;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public volatile ArrayList f1906 = new ArrayList();

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final ArrayList f1905 = new ArrayList();

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final HashMap f1904 = new HashMap();

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final HashMap f1903 = new HashMap();

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final C0759 f1902 = new C0759();

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public C0983 f1901 = C0983.m2380();

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public HashMap f1900 = new HashMap();

    static {
        StringFog.decrypt("4dmKNUAxw6Q=\n", "pZDZdAJ9huA=\n");
    }

    public C0392(C0940 c0940, C0690 c0690, String str, C0303 c0303, C0474 c0474) {
        this.f1896 = c0940;
        C1032 c1032 = new C1032(AbstractC0340.f1610, c0690);
        this.f1895 = c1032;
        AbstractC1071.f3806 = new WeakReference(c1032);
        c1032.f3644.add(new C0461(this));
        this.f1898 = str;
        this.f1899 = c0303;
        this.f1897 = c0474;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static HashMap m2066(C0392 c0392) {
        HashMap map;
        synchronized (c0392) {
            map = c0392.f1903;
        }
        return map;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static List m2067(C0392 c0392) {
        ArrayList arrayList;
        synchronized (c0392) {
            arrayList = c0392.f1906;
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static ArrayList m2068(C0392 c0392) {
        ArrayList arrayList;
        synchronized (c0392) {
            arrayList = c0392.f1905;
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static HashMap m2069(C0392 c0392) {
        HashMap map;
        synchronized (c0392) {
            map = c0392.f1904;
        }
        return map;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static JSONObject m2070(C0392 c0392, C1005 c1005) {
        c0392.getClass();
        String strM2028 = c1005.f3542.m2028();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AbstractC0115.f584, strM2028);
        } catch (JSONException e) {
            String str = f1894;
            AbstractC0250.m1999(str, str, StringFog.decrypt("CNBqKkozGh0ow2wsVnRZDCLMdiBbZxYdbdR9N0t6FgFtyGsqVg==\n", "TaIYRTgTeW8=\n"), e, null, false);
        }
        try {
            jSONObject.put(AbstractC0115.f585, c1005.f3545.f2380);
        } catch (JSONException e2) {
            String str2 = f1894;
            AbstractC0250.m1999(str2, str2, StringFog.decrypt("NI4MxXL5uOgUnQrDbr77+R6SEM9jrbToUYob2HOwtPRRlg3Fbg==\n", "cfx+qgDZ25o=\n"), e2, null, false);
        }
        return jSONObject;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static JSONObject m2071(HashMap map) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        for (String str : new HashSet(map.keySet())) {
            jSONObject2.put(str.toLowerCase(), (JSONObject) map.get(str));
        }
        jSONObject.put(StringFog.decrypt("+1KdVg==\n", "jSHzJfrqZrk=\n"), jSONObject2);
        return jSONObject;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2072(C0392 c0392) {
        synchronized (c0392) {
            C0533.m2116();
            C0303 c0303 = c0392.f1899;
            if (c0303 == null) {
                return;
            }
            if (c0303.m2040(c0392.m2075())) {
                ((C0474) c0392.m2079()).adQualitySdkInitSuccess();
            } else {
                ((C0474) c0392.m2079()).adQualitySdkInitFailed(ISAdQualityInitError.CONNECTOR_LOAD_TIMEOUT, StringFog.decrypt("8K5yqHZOdBLdtT25agBtEsykcqd2QX4S2uEhvnpDfwTNpyendVk=\n", "vsFSyxkgGnc=\n"));
            }
        }
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final synchronized boolean m2073() {
        return AbstractC0953.m2334().mo2335();
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final synchronized void m2074() {
        if (this.f1908.getAndSet(true)) {
            return;
        }
        C0303 c0303 = this.f1899;
        AbstractC0340.m2057(new C0442(this));
        if (c0303 != null) {
            AbstractC0340.m2053(new C0325(c0303));
        }
        this.f1899 = null;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final synchronized boolean m2075() {
        return AbstractC0953.m2334().mo2337() && m2073();
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final synchronized List m2076() {
        return this.f1906;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final JSONObject m2077() {
        HashMap map;
        try {
            synchronized (this) {
                map = this.f1904;
            }
            return m2071(map);
        } catch (JSONException e) {
            String str = f1894;
            AbstractC0250.m1999(str, str, StringFog.decrypt("1RMxhoo1ecn0CC2O2HZ3w/4EIJ2XZzjb9RMwgJd7aw==\n", "kGFD6fgVGK0=\n"), e, null, false);
            return new JSONObject();
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized HashMap m2078() {
        return this.f1903;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized ISAdQualityInitListener m2079() {
        return this.f1897;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2080(Context context, String str, String str2, AbstractC0316 abstractC0316, AbstractRunnableC0757 abstractRunnableC0757) {
        HashMap map;
        int iMo2352;
        long j;
        AbstractC0771 c0863 = null;
        C0543 c0543 = abstractRunnableC0757 == null ? null : new C0543(new AtomicBoolean(false), abstractRunnableC0757);
        abstractC0316.getClass();
        String strMo2353 = AbstractC0953.m2334().mo2353();
        if (((C0961) AbstractC0953.m2334()).f3419.m2064()) {
            String strM2065 = ((C0961) AbstractC0953.m2334()).f3419.m2065(abstractC0316.mo2036());
            if (!TextUtils.isEmpty(strM2065)) {
                c0863 = new C0856(StringFog.decrypt("VvUmJIg3J95H6Wc=\n", "NZpISu1UU7E=\n") + abstractC0316.mo2036(), strMo2353, strM2065);
            }
        } else {
            c0863 = new C0863(StringFog.decrypt("HNJS9Iah0TgNzhM=\n", "f708muPCpVc=\n") + abstractC0316.mo2036(), strMo2353);
        }
        AbstractC0771 abstractC0771 = c0863;
        if (abstractC0771 == null) {
            AbstractC0340.m2057(c0543);
            return;
        }
        AbstractC0276 abstractC0276Mo1853 = abstractC0316.mo1853();
        String strM2028 = abstractC0276Mo1853.m2028();
        synchronized (this) {
            map = this.f1904;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AbstractC0115.f584, strM2028);
        } catch (JSONException e) {
            String str3 = f1894;
            AbstractC0250.m1999(str3, str3, StringFog.decrypt("CNBqKkozGh0ow2wsVnRZDCLMdiBbZxYdbdR9N0t6FgFtyGsqVg==\n", "TaIYRTgTeW8=\n"), e, null, false);
        }
        map.put(str2, jSONObject);
        C0303 c0303 = this.f1899;
        if (c0303 != null) {
            AbstractC0340.m2053(new C0333(c0303, str2, EnumC0367.f1680));
        }
        C0940 c0940 = this.f1896;
        c0940.getClass();
        C0537 c0537 = new C0537(this, context, this.f1896.m2308(abstractC0771, new C0540(this, c0940.f3350.m2291(C0940.m2305(abstractC0771).mo2268().replace(StringFog.decrypt("yw==\n", "5Nfc4POVeY0=\n"), StringFog.decrypt("GQ==\n", "N9KS+cTCU2o=\n"))) != null, str2, context, abstractC0276Mo1853, str, abstractC0316, c0543)), abstractC0276Mo1853, str, str2, abstractC0316, c0543);
        if (!AbstractC0953.m2334().mo2338()) {
            C0940 c0941 = this.f1896;
            c0941.getClass();
            if (c0941.f3350.m2291(C0940.m2305(abstractC0771).mo2268().replace(StringFog.decrypt("yw==\n", "5Nfc4POVeY0=\n"), StringFog.decrypt("GQ==\n", "N9KS+cTCU2o=\n"))) != null) {
                j = 0;
            } else {
                iMo2352 = AbstractC0953.m2334().mo2352();
            }
            AbstractC0340.m2058(c0537, j);
        }
        iMo2352 = AbstractC0953.m2334().mo2352();
        j = iMo2352;
        AbstractC0340.m2058(c0537, j);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2081(Context context, LinkedHashMap linkedHashMap, C0410 c0410) {
        boolean zMo2335;
        if (linkedHashMap.size() <= 0) {
            AbstractC0340.m2057(new C0569(c0410));
            return;
        }
        String str = (String) linkedHashMap.keySet().iterator().next();
        List list = (List) linkedHashMap.remove(str);
        String strMo1854 = (list == null || list.isEmpty() || list.get(0) == null) ? null : ((AbstractC0316) list.get(0)).mo1854();
        if (strMo1854 == null) {
            m2081(context, linkedHashMap, c0410);
            return;
        }
        C0303 c0303 = this.f1899;
        if (c0303 != null) {
            c0303.f1541.put(strMo1854, new C0354(strMo1854));
        }
        AbstractC0340.m2055(new C0571(this, strMo1854, context, str, list, linkedHashMap, c0410));
        synchronized (this) {
            zMo2335 = AbstractC0953.m2334().mo2335();
        }
        if (zMo2335) {
            return;
        }
        m2081(context, linkedHashMap, c0410);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2082(String str, List list) {
        if (this.f1908.get()) {
            return;
        }
        Iterator it = (this.f1906 != null ? new ArrayList(this.f1906) : new ArrayList()).iterator();
        while (it.hasNext()) {
            for (C0116 c0116 : ((C1005) it.next()).m2396()) {
                c0116.getClass();
                String str2 = C0116.f640 + str;
                AbstractC0340.m2054(new C0872(c0116, str2, list));
                AbstractC0340.m2053(new C0751(c0116, str2, list));
                try {
                    AbstractC0340.m2055(new C0700(new C0727(c0116, str2, list)));
                } catch (Throwable unused) {
                }
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2083(String str, JSONObject jSONObject) {
        C0303 c0303 = this.f1899;
        if (c0303 != null) {
            AbstractC0340.m2053(new C0333(c0303, str, EnumC0367.f1677));
        }
        if (jSONObject != null) {
            try {
                jSONObject.put(StringFog.decrypt("8Gii\n", "lAvRnZ3r2Ks=\n"), true);
            } catch (JSONException unused) {
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final boolean m2084(String str) {
        return this.f1900.containsKey(str) && ((C0580) this.f1900.get(str)).m2137(this.f1898);
    }
}
