package com.facebook.ads.redexgen.X;

import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class O2 implements InterfaceC2253cu {
    public VC A00;
    public C1752Ms A01;
    public ZP A02;

    public O2(String str) {
        this.A00 = new C1689Ke().A11(str).A14();
    }

    @EnsuresNonNull
    private void A00() {
        AbstractC1722Ln.A02(this.A01);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2253cu
    public final void A5j(C1744Mk c1744Mk) {
        A00();
        long jA03 = this.A01.A03();
        long jA04 = this.A01.A04();
        if (jA03 == -9223372036854775807L || jA04 == -9223372036854775807L) {
            return;
        }
        if (jA04 != this.A00.A0M) {
            this.A00 = this.A00.A07().A0s(jA04).A14();
            this.A02.A7E(this.A00);
        }
        int iA07 = c1744Mk.A07();
        this.A02.AK9(c1744Mk, iA07);
        this.A02.AKC(jA03, 1, iA07, 0, null);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2253cu
    public final void AAo(C1752Ms c1752Ms, InterfaceC2044Yw interfaceC2044Yw, C2261d2 c2261d2) {
        this.A01 = c1752Ms;
        c2261d2.A05();
        this.A02 = interfaceC2044Yw.ALm(c2261d2.A03(), 5);
        this.A02.A7E(this.A00);
    }
}
