package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Rd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1855Rd implements InterfaceC1986Wl {
    public long A00;
    public long A01;
    public C1855Rd A02;
    public C1985Wk A03;

    public C1855Rd(long j, int i) {
        A02(j, i);
    }

    public final int A00(long j) {
        return ((int) (j - this.A01)) + this.A03.A00;
    }

    public final C1855Rd A01() {
        this.A03 = null;
        C1855Rd c1855Rd = this.A02;
        this.A02 = null;
        return c1855Rd;
    }

    public final void A02(long j, int i) {
        AbstractC1722Ln.A08(this.A03 == null);
        this.A01 = j;
        this.A00 = ((long) i) + j;
    }

    public final void A03(C1985Wk c1985Wk, C1855Rd c1855Rd) {
        this.A03 = c1985Wk;
        this.A02 = c1855Rd;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1986Wl
    public final C1985Wk A7U() {
        return (C1985Wk) AbstractC1722Ln.A01(this.A03);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1986Wl
    public final C1855Rd ADT() {
        if (this.A02 == null || this.A02.A03 == null) {
            return null;
        }
        return this.A02;
    }
}
