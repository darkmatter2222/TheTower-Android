package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Qx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1849Qx implements InterfaceC1987Wm {
    public int A00;
    public int A01;
    public int A02;
    public C1985Wk[] A03;
    public final int A04;
    public final boolean A05;
    public final byte[] A06;

    public C1849Qx(boolean z, int i) {
        this(z, i, 0);
    }

    public C1849Qx(boolean z, int i, int i2) {
        AbstractC1722Ln.A07(i > 0);
        AbstractC1722Ln.A07(i2 >= 0);
        this.A05 = z;
        this.A04 = i;
        this.A01 = i2;
        this.A03 = new C1985Wk[i2 + 100];
        if (i2 <= 0) {
            this.A06 = null;
            return;
        }
        this.A06 = new byte[i2 * i];
        for (int i3 = 0; i3 < i2; i3++) {
            this.A03[i3] = new C1985Wk(this.A06, i3 * i);
        }
    }

    public final synchronized int A00() {
        return this.A00 * this.A04;
    }

    public final synchronized void A01() {
        if (this.A05) {
            A02(0);
        }
    }

    public final synchronized void A02(int i) {
        boolean z = i < this.A02;
        this.A02 = i;
        if (z) {
            ALn();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1987Wm
    public final synchronized C1985Wk A4Z() {
        C1985Wk c1985Wk;
        this.A00++;
        if (this.A01 > 0) {
            C1985Wk[] c1985WkArr = this.A03;
            int i = this.A01 - 1;
            this.A01 = i;
            c1985Wk = (C1985Wk) AbstractC1722Ln.A01(c1985WkArr[i]);
            this.A03[this.A01] = null;
        } else {
            c1985Wk = new C1985Wk(new byte[this.A04], 0);
            if (this.A00 > this.A03.length) {
                this.A03 = (C1985Wk[]) Arrays.copyOf(this.A03, this.A03.length * 2);
            }
        }
        return c1985Wk;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1987Wm
    public final int A8u() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1987Wm
    public final synchronized void AIr(C1985Wk c1985Wk) {
        C1985Wk[] c1985WkArr = this.A03;
        int i = this.A01;
        this.A01 = i + 1;
        c1985WkArr[i] = c1985Wk;
        this.A00--;
        notifyAll();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1987Wm
    public final synchronized void AIs(InterfaceC1986Wl interfaceC1986Wl) {
        while (interfaceC1986Wl != null) {
            C1985Wk[] c1985WkArr = this.A03;
            int i = this.A01;
            this.A01 = i + 1;
            c1985WkArr[i] = interfaceC1986Wl.A7U();
            this.A00--;
            interfaceC1986Wl = interfaceC1986Wl.ADT();
        }
        notifyAll();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1987Wm
    public final synchronized void ALn() {
        int iMax = Math.max(0, N1.A05(this.A02, this.A04) - this.A00);
        if (iMax >= this.A01) {
            return;
        }
        if (this.A06 != null) {
            int i = 0;
            int i2 = this.A01 - 1;
            while (i <= i2) {
                C1985Wk c1985Wk = (C1985Wk) AbstractC1722Ln.A01(this.A03[i]);
                if (c1985Wk.A01 == this.A06) {
                    i++;
                } else {
                    C1985Wk c1985Wk2 = (C1985Wk) AbstractC1722Ln.A01(this.A03[i2]);
                    if (c1985Wk2.A01 != this.A06) {
                        i2--;
                    } else {
                        this.A03[i] = c1985Wk2;
                        this.A03[i2] = c1985Wk;
                        i2--;
                        i++;
                    }
                }
            }
            iMax = Math.max(iMax, i);
            if (iMax >= this.A01) {
                return;
            }
        }
        Arrays.fill(this.A03, iMax, this.A01, (Object) null);
        this.A01 = iMax;
    }
}
