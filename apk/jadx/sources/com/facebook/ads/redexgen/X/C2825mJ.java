package com.facebook.ads.redexgen.X;

import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.mJ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2825mJ {
    public static C2825mJ A00 = new C2825mJ();

    public static C2825mJ A00() {
        return A00;
    }

    public final HD A01(C2755lA c2755lA, boolean z) {
        return new HD(c2755lA, z, new C2736kp());
    }

    public final Map<String, String> A02(C2755lA c2755lA) {
        try {
            return A01(c2755lA, false).A06();
        } catch (Throwable th) {
            c2755lA.A08().A4j(th);
            return C2817mB.A01(c2755lA);
        }
    }
}
