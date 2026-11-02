package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Pj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1816Pj {
    public final long A00;
    public final long A01;
    public static String[] A02 = {"SLZ5bt2", "TxmLMeH058DekG56M7wy4nR5KMq5pMPh", "eBbdgg1", "qYRnZmHlNNOmdhzPczecuBQTrVXdvPhL", "XHrw677fMneecKWCQwAKaoAXefA0whbX", "TfeBQ6bu34UKNE7Gc9tjiUBuIN8abPgz", "lPJVSIPfqeQvwQkHJHYX1ciyqzvm8k2w", "F39FrC2LczUQ7fzRYqAV4ggGr8hXBi6w"};
    public static final C1816Pj A05 = new C1816Pj(0, 0);
    public static final C1816Pj A03 = new C1816Pj(Long.MAX_VALUE, Long.MAX_VALUE);
    public static final C1816Pj A07 = new C1816Pj(Long.MAX_VALUE, 0);
    public static final C1816Pj A06 = new C1816Pj(0, Long.MAX_VALUE);
    public static final C1816Pj A04 = A05;

    public C1816Pj(long j, long j2) {
        AbstractC1722Ln.A07(j >= 0);
        AbstractC1722Ln.A07(j2 >= 0);
        this.A01 = j;
        this.A00 = j2;
    }

    public final long A00(long j, long j2, long j3) {
        if (this.A01 == 0 && this.A00 == 0) {
            return j;
        }
        long jA0V = N1.A0V(j, this.A01, Long.MIN_VALUE);
        long jA0S = N1.A0S(j, this.A00, Long.MAX_VALUE);
        boolean z = jA0V <= j2 && j2 <= jA0S;
        boolean z2 = jA0V <= j3 && j3 <= jA0S;
        if (z && z2) {
            return Math.abs(j2 - j) <= Math.abs(j3 - j) ? j2 : j3;
        }
        if (z) {
            return j2;
        }
        return z2 ? j3 : jA0V;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (A02[4].charAt(13) == 'J') {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[5] = "nyvPka8FxV5magz4P2aOgFXOCbZI4PbG";
        strArr[3] = "SXRLMRY4P0Iz3ySZjOtsK8erpvbOKPV5";
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1816Pj c1816Pj = (C1816Pj) obj;
        return this.A01 == c1816Pj.A01 && this.A00 == c1816Pj.A00;
    }

    public final int hashCode() {
        return (((int) this.A01) * 31) + ((int) this.A00);
    }
}
