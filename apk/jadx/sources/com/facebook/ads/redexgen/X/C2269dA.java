package com.facebook.ads.redexgen.X;

import java.io.IOException;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.dA, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2269dA {
    public final int A00;
    public final long A01;

    public C2269dA(int i, long j) {
        this.A00 = i;
        this.A01 = j;
    }

    public static C2269dA A00(Q9 q9, C1744Mk c1744Mk) throws IOException {
        q9.AI6(c1744Mk.A0l(), 0, 8);
        c1744Mk.A0f(0);
        return new C2269dA(c1744Mk.A0C(), c1744Mk.A0O());
    }
}
