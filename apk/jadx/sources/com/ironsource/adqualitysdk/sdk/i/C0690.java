package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᘦ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0690 {

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public final C0516 f2622;

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public final String f2623;

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public C0582 f2624;

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public final C1100 f2626;

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public C0718 f2627;

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public final Context f2628;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public boolean f2631;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public boolean f2632;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final Handler f2633;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final C0674 f2634;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final C0999 f2635;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final C0853 f2636;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public boolean f2637;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0211 f2638;

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f2621 = StringFog.decrypt("4D+ieNLfQMXS\n", "oVHDFKurKaY=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f2620 = StringFog.decrypt("smH3dxHxumOtPf1iWve5Lqd993gN57JjtQ==\n", "xhOWFHST2wA=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f2619 = StringFog.decrypt("QSfw4gR2tE5XK+3qHDqtXFwp8/YcfvpO\n", "Mkifj2gXmT0=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f2618 = StringFog.decrypt("JR1fL8xSLe4FFw==\n", "THMrAb83Xp0=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f2617 = StringFog.decrypt("lzAwqZNzmy2LKy+snEHcOg==\n", "5ERCwP0UtV4=\n");

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final ArrayList f2630 = new ArrayList();

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public final ArrayList f2629 = new ArrayList();

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public final Thread.UncaughtExceptionHandler f2625 = Thread.getDefaultUncaughtExceptionHandler();

    public C0690(Context context, r rVar, C0211 c0211, boolean z, String str, C0516 c0516) {
        this.f2622 = c0516;
        Thread.setDefaultUncaughtExceptionHandler(new C0814(this));
        this.f2638 = c0211;
        this.f2628 = context;
        C0841 c0841 = new C0841(context, StringFog.decrypt("SxnlOZ72sq5URe8s1fCx414F5TaC4LquTA==\n", "P2uEWvuU080=\n"), StringFog.decrypt("1Vx5ZvbjodjDUGRu7q+4yshSenLu6+/Y\n", "pjMWC5qCjKs=\n"));
        this.f2635 = new C0999(c0841, StringFog.decrypt("8DfL1yq1EWA=\n", "uGCOoU/bZRM=\n"), StringFog.decrypt("sdMkVH+r\n", "1KVBOguFAKg=\n"));
        String str2 = f2618;
        String strM2291 = c0841.m2291(str2);
        int i = !TextUtils.isEmpty(strM2291) ? Integer.parseInt(strM2291) + 1 : 1;
        c0841.m2292(str2, "" + i);
        String str3 = f2617;
        String strM2292 = c0841.m2291(str3);
        if (TextUtils.isEmpty(strM2292)) {
            strM2292 = UUID.randomUUID().toString();
            c0841.m2292(str3, strM2292);
        }
        String strM2293 = ((C0961) AbstractC0953.m2334()).f3424.m2291(C0961.f3401);
        this.f2634 = new C0674(context, rVar, i, strM2292, !TextUtils.isEmpty(strM2293) ? Long.parseLong(strM2293) : 0L);
        this.f2636 = new C0853(context);
        this.f2637 = false;
        HandlerThread handlerThread = new HandlerThread(StringFog.decrypt("RaczbV7kfxBloyN2VMY=\n", "BsZQBTu0DX8=\n"));
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        this.f2633 = handler;
        this.f2626 = new C1100(i);
        this.f2632 = !z;
        this.f2623 = str;
        synchronized (this) {
            handler.removeCallbacksAndMessages(null);
            handler.postDelayed(new C0889(this), 0);
        }
        m2237();
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m2231(C0690 c0690) {
        synchronized (c0690) {
            c0690.f2631 = false;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2232(C0690 c0690) {
        synchronized (c0690) {
            if (c0690.m2240() && !TextUtils.isEmpty(c0690.f2634.f1196.m1871()) && !c0690.m2242()) {
                c0690.m2236();
                AbstractC0250.m1997(f2621, StringFog.decrypt("+FeQTJXtrDPORJtGiPDrddldkwif4qh7zg==\n", "qzL+KPyDyxM=\n"));
                C0999 c0999 = c0690.f2635;
                int iM2208 = c0690.m2243().m2208();
                C0879 c0879 = new C0879(c0690);
                c0999.getClass();
                C0841.m2289().post(new C1056(c0999, iM2208, c0879));
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2233(C0690 c0690, ArrayList arrayList, C0885 c0885) {
        JSONObject jSONObject;
        c0690.getClass();
        JSONArray jSONArray = new JSONArray();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            C0687 c0687 = (C0687) it.next();
            synchronized (c0687) {
                jSONObject = c0687.f2614.f3803;
            }
            if (!jSONObject.has(StringFog.decrypt("g2AO\n", "5xR9pn43a98=\n"))) {
                try {
                    jSONObject.put(StringFog.decrypt("buGK\n", "CpX5WjU+T9s=\n"), jSONObject.optLong(AbstractC0115.f626));
                } catch (JSONException unused) {
                }
            }
            if (c0690.f2626.m2451(jSONObject)) {
                c0690.f2635.m2391(c0687.f2614, null);
            }
            jSONArray.put(jSONObject);
        }
        C0674 c0674 = c0690.f2634;
        c0674.f2574.post(new C0675(c0674, c0690.f2636.f3123.m2288(), jSONArray, new C0832(c0690, jSONArray, arrayList, c0885)));
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final void m2234() {
        C0718 c0718 = this.f2627;
        if (c0718 != null) {
            C0835 c0835 = this.f2636.f3123;
            synchronized (c0835) {
                c0835.f3097.remove(c0718);
            }
        }
        this.f2624.m2138();
        this.f2624 = null;
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final synchronized void m2235() {
        this.f2637 = false;
        Handler handler = this.f2633;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        C0853 c0853 = this.f2636;
        C0835 c0835 = c0853.f3123;
        c0835.f3099.unregisterReceiver(c0835);
        c0853.f3122 = true;
        m2234();
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final synchronized void m2236() {
        this.f2631 = true;
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final void m2237() {
        C0718 c0718 = new C0718(this);
        this.f2627 = c0718;
        C0835 c0835 = this.f2636.f3123;
        synchronized (c0835) {
            c0835.f3097.add(c0718);
        }
        this.f2624 = new C0582(new C0709(this));
        AbstractC1081.m2437().m2439(new C0707(this));
        AbstractC0953 abstractC0953M2334 = AbstractC0953.m2334();
        C0699 c0699 = new C0699(this);
        C0961 c0961 = (C0961) abstractC0953M2334;
        Handler handler = c0961.f3422;
        if (handler != null) {
            handler.post(new C0970(c0961, c0699));
        }
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final void m2238() {
        synchronized (this) {
            Handler handler = this.f2633;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            m2249(true);
        }
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m2239() {
        try {
            this.f2632 = true;
            AbstractC0340.m2054(new C0807(this));
            m2238();
        } catch (Exception e) {
            AbstractC1071.m2435(f2621, StringFog.decrypt("pKXIWoCykUvBuNR0guKsSqO22V6V4JdQj7M=\n", "4de6NfKS+CU=\n"), (Throwable) e, false);
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final synchronized boolean m2240() {
        return this.f2637;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m2241(JSONObject jSONObject) {
        ArrayList arrayList;
        if (C0272.m2008().m2019()) {
            synchronized (this) {
                arrayList = new ArrayList(this.f2630);
            }
            AbstractC0340.m2053(new C0817(arrayList, jSONObject));
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized boolean m2242() {
        return this.f2631;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized C0669 m2243() {
        return ((C0961) AbstractC0953.m2334()).f3420;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m2244(C0500 c0500) {
        this.f2629.add(c0500);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m2245(C0514 c0514) {
        this.f2630.add(c0514);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2246(String str, JSONObject jSONObject) {
        m2247(str, jSONObject, null, null);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2247(String str, JSONObject jSONObject, JSONObject jSONObject2, C1045 c1045) {
        boolean z;
        String str2 = f2621;
        AbstractC0250.m1998(str2, str2, AbstractC0897.m2299("5ZMtqM1tf6axliX8zCN8sf8=\n", "xeRE3KVNGt4=\n", AbstractC0662.m2192("TYDjdpFKkCl20ul6kUmQOG+X9GvFDQ==\n", "GfKaH/8tsF0=\n", new StringBuilder(), str)), jSONObject, true);
        try {
            if (m2243().m2210().contains(str)) {
                AbstractC0250.m1997(str2, StringFog.decrypt("DaDUaBXujMsqocdoA/2HwTfv1yES48LBIqLFckY=\n", "Q8+gSGaL4q8=\n") + str + StringFog.decrypt("Carl1g7L9DBM5qDMFIfyMVv05dxE\n", "KYKArm2ngVQ=\n"));
                return;
            }
            AbstractC0250.m1997(str2, StringFog.decrypt("8rFqegB63AHJ42B2AHncENCmfWdOapUBzuN9cgN4xlU=\n", "psMTE24d/HU=\n") + str);
            C0674 c0674 = this.f2634;
            C0835 c0835 = this.f2636.f3123;
            synchronized (c0835) {
                z = c0835.f3098;
            }
            c0674.m2212(str, jSONObject, jSONObject2, z, new C0798(this, c1045));
        } catch (Exception e) {
            AbstractC1071.m2436(f2621, StringFog.decrypt("KhFAzH8eectPEFfNaXtmwAEX\n", "b2Myow0+EKU=\n"), e, false, false, true);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2248(JSONObject jSONObject) {
        JSONObject jSONObject2;
        C0669 c0669M2243 = m2243();
        C1043 c1043 = c0669M2243.f2612;
        JSONObject jSONObject3 = c1043.f3677;
        String str = c1043.f3679;
        List arrayList = new ArrayList();
        String str2 = AbstractC1030.f3634;
        JSONArray jSONArrayOptJSONArray = jSONObject3.optJSONArray(str);
        if (jSONArrayOptJSONArray != null) {
            arrayList = AbstractC1030.m2414(jSONArrayOptJSONArray);
        }
        synchronized (c0669M2243) {
            jSONObject2 = c0669M2243.f2613;
        }
        String strDecrypt = StringFog.decrypt("y50z\n", "relLpGWAsw4=\n");
        List arrayList2 = new ArrayList();
        JSONArray jSONArrayOptJSONArray2 = jSONObject2.optJSONArray(strDecrypt);
        if (jSONArrayOptJSONArray2 != null) {
            arrayList2 = AbstractC1030.m2414(jSONArrayOptJSONArray2);
        }
        arrayList.addAll(arrayList2);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            jSONObject.remove((String) it.next());
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m2249(boolean z) {
        try {
            if (z) {
                this.f2633.removeCallbacksAndMessages(null);
                this.f2633.postDelayed(new C0889(this), 0);
            } else {
                C0999 c0999 = this.f2635;
                C0691 c0691 = new C0691(this);
                c0999.getClass();
                C0841.m2289().post(new C1028(c0999, c0691));
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
