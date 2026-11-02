package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ct, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2252ct {
    public int A00;
    public long A01;
    public boolean A02;
    public boolean A03;
    public boolean A04;
    public final C1743Mj A05 = new C1743Mj(new byte[64]);
    public final C1752Ms A06;
    public final InterfaceC2240ch A07;

    public C2252ct(InterfaceC2240ch interfaceC2240ch, C1752Ms c1752Ms) {
        this.A07 = interfaceC2240ch;
        this.A06 = c1752Ms;
    }

    private void A00() {
        this.A05.A09(8);
        this.A03 = this.A05.A0H();
        this.A02 = this.A05.A0H();
        this.A05.A09(6);
        this.A00 = this.A05.A04(8);
    }

    private void A01() {
        this.A01 = 0L;
        if (this.A03) {
            this.A05.A09(4);
            long jA04 = ((long) this.A05.A04(3)) << 30;
            this.A05.A09(1);
            long jA05 = jA04 | ((long) (this.A05.A04(15) << 15));
            this.A05.A09(1);
            long jA06 = jA05 | ((long) this.A05.A04(15));
            this.A05.A09(1);
            if (!this.A04 && this.A02) {
                this.A05.A09(4);
                long jA07 = ((long) this.A05.A04(3)) << 30;
                this.A05.A09(1);
                long jA08 = jA07 | ((long) (this.A05.A04(15) << 15));
                this.A05.A09(1);
                long jA09 = jA08 | ((long) this.A05.A04(15));
                this.A05.A09(1);
                this.A06.A06(jA09);
                this.A04 = true;
            }
            this.A01 = this.A06.A06(jA06);
        }
    }

    public final void A02() {
        this.A04 = false;
        this.A07.AKN();
    }

    public final void A03(C1744Mk c1744Mk) throws L9 {
        c1744Mk.A0k(this.A05.A00, 0, 3);
        this.A05.A08(0);
        A00();
        c1744Mk.A0k(this.A05.A00, 0, this.A00);
        this.A05.A08(0);
        A01();
        this.A07.AI3(this.A01, 4);
        this.A07.A5j(c1744Mk);
        this.A07.AI2();
    }
}
