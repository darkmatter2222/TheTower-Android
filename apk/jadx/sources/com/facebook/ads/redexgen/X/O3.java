package com.facebook.ads.redexgen.X;

import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class O3 implements InterfaceC2240ch {
    public static String[] A0C = {"1Lj4x7S1lVuTKgDJUSYDYqjEVIdvtlHj", "T31F5e1Ojmn8hLMrI14SV5rKxKNVIhyx", "jF388P0yRetCJLicjtzDxi0Gu", "lgyZGuQ1Tai7jsjPUROJbGJDHbx5fz51", "jF14IqutEYmI957EvX8WYxOXeb1zMo3b", "1IHFks79ZirbUEFpA1KxHK1Z7J0NDTOn", "lp14kmTG7oLZ4mKyt2MZy", "aeaRWDyfYOOo1pl6WrlQRcbXoucuBGP0"};
    public int A00;
    public int A01;
    public int A02;
    public long A03;
    public long A04;
    public ZP A05;
    public String A06;
    public boolean A07;
    public boolean A08;
    public final C1744Mk A09;
    public final Z9 A0A;
    public final String A0B;

    public O3() {
        this(null);
    }

    public O3(String str) {
        this.A02 = 0;
        this.A09 = new C1744Mk(4);
        this.A09.A0l()[0] = -1;
        this.A0A = new Z9();
        this.A04 = -9223372036854775807L;
        this.A0B = str;
    }

    private void A00(C1744Mk c1744Mk) {
        byte[] bArrA0l = c1744Mk.A0l();
        int iA0A = c1744Mk.A0A();
        for (int iA09 = c1744Mk.A09(); iA09 < iA0A; iA09++) {
            boolean z = (bArrA0l[iA09] & 255) == 255;
            boolean z2 = this.A08 && (bArrA0l[iA09] & 224) == 224;
            this.A08 = z;
            if (A0C[1].charAt(6) != '1') {
                throw new RuntimeException();
            }
            String[] strArr = A0C;
            strArr[3] = "fURMoL45edrYEaEvXIj3Ydyywbt1MKRQ";
            strArr[4] = "1rvVgcpF9PgBmcs6cVUZXkLFabzNefaL";
            if (z2) {
                c1744Mk.A0f(iA09 + 1);
                this.A08 = false;
                this.A09.A0l()[1] = bArrA0l[iA09];
                this.A00 = 2;
                this.A02 = 1;
                return;
            }
        }
        c1744Mk.A0f(iA0A);
    }

    @RequiresNonNull
    private void A01(C1744Mk c1744Mk) {
        int iMin = Math.min(c1744Mk.A07(), this.A01 - this.A00);
        this.A05.AK9(c1744Mk, iMin);
        this.A00 += iMin;
        if (this.A00 < this.A01) {
            return;
        }
        long j = this.A04;
        if (A0C[7].charAt(15) == 'H') {
            throw new RuntimeException();
        }
        String[] strArr = A0C;
        strArr[3] = "GGfFVDtbBiaeAEyl2e5ob8ZYab6JvgSi";
        strArr[4] = "9c1zRhiT0Cn1hO0QneAhNFTXMbYm4hq1";
        if (j != -9223372036854775807L) {
            this.A05.AKC(this.A04, 1, this.A01, 0, null);
            this.A04 += this.A03;
        }
        this.A00 = 0;
        this.A02 = 0;
    }

    @RequiresNonNull
    private void A02(C1744Mk c1744Mk) {
        int iMin = Math.min(c1744Mk.A07(), 4 - this.A00);
        c1744Mk.A0k(this.A09.A0l(), this.A00, iMin);
        this.A00 += iMin;
        if (this.A00 < 4) {
            return;
        }
        this.A09.A0f(0);
        if (!this.A0A.A00(this.A09.A0C())) {
            this.A00 = 0;
            this.A02 = 1;
            return;
        }
        this.A01 = this.A0A.A02;
        if (!this.A07) {
            this.A03 = (((long) this.A0A.A04) * 1000000) / ((long) this.A0A.A03);
            this.A05.A7E(new C1689Ke().A0y(this.A06).A11(this.A0A.A06).A0h(4096).A0b(this.A0A.A01).A0m(this.A0A.A03).A10(this.A0B).A14());
            this.A07 = true;
        }
        this.A09.A0f(0);
        this.A05.AK9(this.A09, 4);
        this.A02 = 2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void A5j(C1744Mk c1744Mk) {
        AbstractC1722Ln.A02(this.A05);
        while (c1744Mk.A07() > 0) {
            switch (this.A02) {
                case 0:
                    A00(c1744Mk);
                    break;
                case 1:
                    A02(c1744Mk);
                    break;
                case 2:
                    A01(c1744Mk);
                    break;
                default:
                    throw new IllegalStateException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void A6B(InterfaceC2044Yw interfaceC2044Yw, C2261d2 c2261d2) {
        c2261d2.A05();
        this.A06 = c2261d2.A04();
        this.A05 = interfaceC2044Yw.ALm(c2261d2.A03(), 1);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AI2() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AI3(long j, int i) {
        if (j != -9223372036854775807L) {
            this.A04 = j;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AKN() {
        this.A02 = 0;
        this.A00 = 0;
        this.A08 = false;
        this.A04 = -9223372036854775807L;
    }
}
