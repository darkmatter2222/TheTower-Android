package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class M1 {
    public static final Map<String, WeakReference<C1905Tb>> A00 = new HashMap();

    public static int A00() {
        return A00.size();
    }

    public static C1905Tb A01(C1618Hi c1618Hi, LA la, int i, YJ yj) {
        C1905Tb c1905Tb = new C1905Tb(c1618Hi, la, c1618Hi.A02().A0A(), i);
        c1905Tb.A0h(yj);
        c1905Tb.A0a();
        A00.put(la.A1r(), new WeakReference<>(c1905Tb));
        return c1905Tb;
    }

    public static C1905Tb A02(String str) {
        WeakReference<C1905Tb> weakReference = A00.get(str);
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public static void A03(LA la, C1905Tb c1905Tb) {
        A00.put(la.A1r(), new WeakReference<>(c1905Tb));
    }

    public static void A04(String str) {
        A00.remove(str);
    }
}
