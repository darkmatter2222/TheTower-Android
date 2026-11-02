package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class P1 implements ZK {
    public final /* synthetic */ C1808Ow A00;

    public P1(C1808Ow c1808Ow) {
        this.A00 = c1808Ow;
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final long A8U() {
        return this.A00.A0B.A0C(this.A00.A07);
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final ZJ A9e(long j) {
        return new ZJ(new ZL(j, N1.A0T((this.A00.A09 + (((this.A00.A08 - this.A00.A09) * this.A00.A0B.A0D(j)) / this.A00.A07)) - 30000, this.A00.A09, this.A00.A08 - 1)));
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final boolean ABR() {
        return true;
    }
}
