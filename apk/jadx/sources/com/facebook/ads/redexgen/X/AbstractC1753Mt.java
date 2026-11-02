package com.facebook.ads.redexgen.X;

import android.os.Trace;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Mt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC1753Mt {
    public static void A00() {
        if (!C1705Ku.A00 || N1.A02 < 18) {
            return;
        }
        A01();
    }

    public static void A01() {
        Trace.endSection();
    }

    public static void A02(String str) {
        if (!C1705Ku.A00 || N1.A02 < 18) {
            return;
        }
        A03(str);
    }

    public static void A03(String str) {
        Trace.beginSection(str);
    }
}
