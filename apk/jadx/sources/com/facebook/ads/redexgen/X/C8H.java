package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8H, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C8H implements PG {
    public long A00;
    public final long A01;
    public final MW A03 = new MW();
    public final MW A02 = new MW();

    public C8H(long j, long j2, long j3) {
        this.A00 = j;
        this.A01 = j3;
        this.A03.A04(0L);
        this.A02.A04(j2);
    }

    public final void A00(long j) {
        this.A00 = j;
    }

    public final void A01(long j, long j2) {
        if (A02(j)) {
            return;
        }
        this.A03.A04(j);
        this.A02.A04(j2);
    }

    public final boolean A02(long j) {
        return j - this.A03.A03(this.A03.A02() - 1) < 100000;
    }

    @Override // com.facebook.ads.redexgen.X.PG
    public final long A8K() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final long A8U() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final ZJ A9e(long j) {
        int iA0C = N1.A0C(this.A03, j, true, true);
        ZL zl = new ZL(this.A03.A03(iA0C), this.A02.A03(iA0C));
        return (zl.A01 == j || iA0C == this.A03.A02() - 1) ? new ZJ(zl) : new ZJ(zl, new ZL(this.A03.A03(iA0C + 1), this.A02.A03(iA0C + 1)));
    }

    @Override // com.facebook.ads.redexgen.X.PG
    public final long A9u(long j) {
        return this.A03.A03(N1.A0C(this.A02, j, true, true));
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final boolean ABR() {
        return true;
    }
}
