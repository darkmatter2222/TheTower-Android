package com.facebook.ads.redexgen.X;

import java.util.Comparator;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.cU, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2227cU {
    public static final Comparator<C2227cU> A02 = new Comparator() { // from class: com.facebook.ads.redexgen.X.cT
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return Integer.compare(((C2227cU) obj).A01.A00, ((C2227cU) obj2).A01.A00);
        }
    };
    public final int A00;
    public final C2228cV A01;

    public C2227cU(C2228cV c2228cV, int i) {
        this.A01 = c2228cV;
        this.A00 = i;
    }
}
