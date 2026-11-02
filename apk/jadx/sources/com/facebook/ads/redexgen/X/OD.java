package com.facebook.ads.redexgen.X;

import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class OD implements InterfaceC2240ch {
    public static String[] A0B = {"6kjAgVnpfq9OwfS", "tasmQUASsgPurMsU1or7nJ", "6GeLOXJIbceL5ZC6FVYmp", "m6K3OU4CkrSomM0B41mtNXyy0ObLe21t", "2kapsxFVMMIN6SdFTLqe3ftWk69kPmv", "hCW0ULZmvmyfrf3EveVcW", "JtqmU4TacWqW6r6GoOmvPYxHMKMY1A2n", "z3zzNvN7f6qVAq7vWf"};
    public int A00;
    public int A01;
    public int A03;
    public long A04;
    public VC A06;
    public ZP A07;
    public String A08;
    public final String A0A;
    public final C1744Mk A09 = new C1744Mk(new byte[18]);
    public int A02 = 0;
    public long A05 = -9223372036854775807L;

    public OD(String str) {
        this.A0A = str;
    }

    @RequiresNonNull
    private void A00() {
        byte[] bArrA0l = this.A09.A0l();
        if (this.A06 == null) {
            this.A06 = AbstractC2041Yt.A03(bArrA0l, this.A08, this.A0A, null);
            this.A07.A7E(this.A06);
        }
        this.A01 = AbstractC2041Yt.A01(bArrA0l);
        this.A04 = (int) ((((long) AbstractC2041Yt.A02(bArrA0l)) * 1000000) / ((long) this.A06.A0G));
    }

    private boolean A01(C1744Mk c1744Mk) {
        while (c1744Mk.A07() > 0) {
            this.A03 <<= 8;
            if (A0B[3].charAt(0) != 'm') {
                throw new RuntimeException();
            }
            A0B[7] = "RH7umrlPSCb8SZB30m";
            this.A03 |= c1744Mk.A0I();
            if (AbstractC2041Yt.A07(this.A03)) {
                byte[] bArrA0l = this.A09.A0l();
                bArrA0l[0] = (byte) ((this.A03 >> 24) & 255);
                bArrA0l[1] = (byte) ((this.A03 >> 16) & 255);
                bArrA0l[2] = (byte) ((this.A03 >> 8) & 255);
                bArrA0l[3] = (byte) (this.A03 & 255);
                this.A00 = 4;
                this.A03 = 0;
                return true;
            }
        }
        return false;
    }

    private boolean A02(C1744Mk c1744Mk, byte[] bArr, int i) {
        int iMin = Math.min(c1744Mk.A07(), i - this.A00);
        c1744Mk.A0k(bArr, this.A00, iMin);
        this.A00 += iMin;
        return this.A00 == i;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void A5j(C1744Mk c1744Mk) {
        AbstractC1722Ln.A02(this.A07);
        while (c1744Mk.A07() > 0) {
            switch (this.A02) {
                case 0:
                    if (A01(c1744Mk)) {
                        this.A02 = 1;
                    }
                    break;
                case 1:
                    if (A02(c1744Mk, this.A09.A0l(), 18)) {
                        A00();
                        this.A09.A0f(0);
                        this.A07.AK9(this.A09, 18);
                        this.A02 = 2;
                    }
                    break;
                case 2:
                    int iA07 = c1744Mk.A07();
                    int i = this.A01;
                    int i2 = this.A00;
                    String[] strArr = A0B;
                    if (strArr[2].length() != strArr[5].length()) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A0B;
                    strArr2[2] = "wIQUE1P3Kn4QM0RJxuBVM";
                    strArr2[5] = "CRrXHut1QH9x2yLYiVAkq";
                    int iMin = Math.min(iA07, i - i2);
                    this.A07.AK9(c1744Mk, iMin);
                    this.A00 += iMin;
                    if (this.A00 == this.A01) {
                        if (this.A05 != -9223372036854775807L) {
                            this.A07.AKC(this.A05, 1, this.A01, 0, null);
                            long j = this.A05;
                            long j2 = this.A04;
                            if (A0B[1].length() != 23) {
                                String[] strArr3 = A0B;
                                strArr3[4] = "sRRWLtm0DZNG4v9ouKUzxgKaNuMUuTn";
                                strArr3[0] = "skFxzuAYv2diCkn";
                                this.A05 = j + j2;
                            } else {
                                String[] strArr4 = A0B;
                                strArr4[4] = "GLdm6LbDN5muLhXOziE9YY0TVpvEQ7n";
                                strArr4[0] = "TR12m5URzZ7upGD";
                                this.A05 = j + j2;
                            }
                        }
                        this.A02 = 0;
                    }
                    break;
                default:
                    throw new IllegalStateException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void A6B(InterfaceC2044Yw interfaceC2044Yw, C2261d2 c2261d2) {
        c2261d2.A05();
        this.A08 = c2261d2.A04();
        this.A07 = interfaceC2044Yw.ALm(c2261d2.A03(), 1);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AI2() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AI3(long j, int i) {
        if (j != -9223372036854775807L) {
            this.A05 = j;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AKN() {
        this.A02 = 0;
        this.A00 = 0;
        this.A03 = 0;
        this.A05 = -9223372036854775807L;
    }
}
