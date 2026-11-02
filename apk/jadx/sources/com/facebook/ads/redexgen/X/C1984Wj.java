package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Wj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1984Wj {
    public final int A00;
    public final C1926Tx A01;
    public final Object A02;
    public final C1814Ph[] A03;
    public final RA[] A04;

    public C1984Wj(C1814Ph[] c1814PhArr, RA[] raArr, C1926Tx c1926Tx, Object obj) {
        this.A03 = c1814PhArr;
        this.A04 = (RA[]) raArr.clone();
        this.A01 = c1926Tx;
        this.A02 = obj;
        this.A00 = c1814PhArr.length;
    }

    public final boolean A00(int i) {
        return this.A03[i] != null;
    }

    public final boolean A01(C1984Wj c1984Wj, int i) {
        return c1984Wj != null && N1.A1E(this.A03[i], c1984Wj.A03[i]) && N1.A1E(this.A04[i], c1984Wj.A04[i]);
    }
}
