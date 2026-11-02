package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class Q5 implements ZK {
    public final long A00;
    public final boolean A01;
    public final long[] A02;
    public final long[] A03;

    public Q5(long[] jArr, long[] jArr2, long j) {
        AbstractC1722Ln.A07(jArr.length == jArr2.length);
        int length = jArr2.length;
        this.A01 = length > 0;
        if (!this.A01 || jArr2[0] <= 0) {
            this.A02 = jArr;
            this.A03 = jArr2;
        } else {
            this.A02 = new long[length + 1];
            this.A03 = new long[length + 1];
            System.arraycopy(jArr, 0, this.A02, 1, length);
            System.arraycopy(jArr2, 0, this.A03, 1, length);
        }
        this.A00 = j;
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final long A8U() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final ZJ A9e(long j) {
        if (!this.A01) {
            return new ZJ(ZL.A03);
        }
        int iA0L = N1.A0L(this.A03, j, true, true);
        ZL zl = new ZL(this.A03[iA0L], this.A02[iA0L]);
        return (zl.A01 == j || iA0L == this.A03.length - 1) ? new ZJ(zl) : new ZJ(zl, new ZL(this.A03[iA0L + 1], this.A02[iA0L + 1]));
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final boolean ABR() {
        return this.A01;
    }
}
