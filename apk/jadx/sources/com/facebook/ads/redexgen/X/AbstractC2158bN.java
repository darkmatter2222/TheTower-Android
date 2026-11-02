package com.facebook.ads.redexgen.X;

import java.io.IOException;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bN, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2158bN {
    public static String[] A0D = {"g8nan3Eix9TMXF71b3ii", "VqOiAqE20ZMhG0SyxN0KJWf0m7t4NbS3", "0umC86Nmv", "3Zzeue8JuUGGD0kv0PRBSFB07eO2nT", "u9S02E0zErA94rYTmZeQAGWZBMk5ji", "bZrsQmbn99WLyfcy8e8udZLxLZkq3LB7", "IsIEVc2Ll", "LGQBk4985b5dKy7tpgajPMb3cjzomyMi"};
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public long A04;
    public long A05;
    public InterfaceC2044Yw A06;
    public ZP A07;
    public InterfaceC2155bK A08;
    public boolean A0A;
    public boolean A0B;
    public final C2153bI A0C = new C2153bI();
    public C2157bM A09 = new C2157bM();

    @RequiresNonNull
    private int A07(Q9 q9) throws IOException {
        if (!A0A(q9)) {
            return -1;
        }
        this.A00 = this.A09.A00.A0G;
        if (!this.A0A) {
            this.A07.A7E(this.A09.A00);
            this.A0A = true;
        }
        if (this.A09.A01 != null) {
            this.A08 = this.A09.A01;
        } else if (q9.A90() == -1) {
            this.A08 = new C1798Om();
        } else {
            C2154bJ c2154bJA02 = this.A0C.A02();
            this.A08 = new C1808Ow(this, this.A04, q9.A90(), c2154bJA02.A01 + c2154bJA02.A00, c2154bJA02.A05, (c2154bJA02.A04 & 4) != 0);
        }
        this.A01 = 2;
        this.A0C.A04();
        return 0;
    }

    @RequiresNonNull
    private int A08(Q9 q9, ZH zh) throws IOException {
        long jAIa = this.A08.AIa(q9);
        if (jAIa >= 0) {
            zh.A00 = jAIa;
            return 1;
        }
        if (jAIa < -1) {
            A0F(-(2 + jAIa));
        }
        if (!this.A0B) {
            this.A06.AKP((ZK) AbstractC1722Ln.A02(this.A08.A68()));
            this.A0B = true;
        }
        if (this.A03 <= 0 && !this.A0C.A05(q9)) {
            this.A01 = 3;
            return -1;
        }
        this.A03 = 0L;
        C1744Mk c1744MkA01 = this.A0C.A01();
        long jA0E = A0E(c1744MkA01);
        if (jA0E >= 0) {
            long j = this.A02 + jA0E;
            if (A0D[1].charAt(5) == 'U') {
                throw new RuntimeException();
            }
            String[] strArr = A0D;
            strArr[6] = "mfKthaVa8";
            strArr[2] = "Pdzie9OR7";
            if (j >= this.A05) {
                long jA0C = A0C(this.A02);
                this.A07.AK9(c1744MkA01, c1744MkA01.A0A());
                this.A07.AKC(jA0C, 1, c1744MkA01.A0A(), 0, null);
                this.A05 = -1L;
            }
        }
        this.A02 += jA0E;
        return 0;
    }

    @EnsuresNonNull
    private void A09() {
        AbstractC1722Ln.A02(this.A07);
    }

    @EnsuresNonNullIf
    private boolean A0A(Q9 q9) throws IOException {
        while (this.A0C.A05(q9)) {
            this.A03 = q9.A9Q() - this.A04;
            C1744Mk c1744MkA01 = this.A0C.A01();
            long j = this.A04;
            C2157bM c2157bM = this.A09;
            String[] strArr = A0D;
            if (strArr[6].length() == strArr[2].length()) {
                String[] strArr2 = A0D;
                strArr2[6] = "UnGMnhYLI";
                strArr2[2] = "vvAxuYbCR";
                if (A0J(c1744MkA01, j, c2157bM)) {
                    this.A04 = q9.A9Q();
                } else if (A0D[7].charAt(10) == '5') {
                    A0D[4] = "3qpqZK65S8VZSf";
                    return true;
                }
            }
            throw new RuntimeException();
        }
        this.A01 = 3;
        return false;
    }

    public final int A0B(Q9 q9, ZH zh) throws IOException {
        A09();
        switch (this.A01) {
            case 0:
                int iA07 = A07(q9);
                if (A0D[0].length() == 9) {
                    throw new RuntimeException();
                }
                A0D[4] = "67Vs16VC5kRnPsaF4P7";
                return iA07;
            case 1:
                q9.ALL((int) this.A04);
                this.A01 = 2;
                return 0;
            case 2:
                return A08(q9, zh);
            case 3:
                return -1;
            default:
                throw new IllegalStateException();
        }
    }

    public final long A0C(long j) {
        return (1000000 * j) / ((long) this.A00);
    }

    public final long A0D(long j) {
        return (((long) this.A00) * j) / 1000000;
    }

    public abstract long A0E(C1744Mk c1744Mk);

    public void A0F(long j) {
        this.A02 = j;
    }

    public final void A0G(long j, long j2) {
        this.A0C.A03();
        if (j == 0) {
            A0I(!this.A0B);
        } else if (this.A01 != 0) {
            this.A05 = A0D(j2);
            ((InterfaceC2155bK) N1.A0f(this.A08)).ALV(this.A05);
            this.A01 = 2;
        }
    }

    public final void A0H(InterfaceC2044Yw interfaceC2044Yw, ZP zp) {
        this.A06 = interfaceC2044Yw;
        this.A07 = zp;
        A0I(true);
    }

    public void A0I(boolean z) {
        if (z) {
            this.A09 = new C2157bM();
            this.A04 = 0L;
            this.A01 = 0;
        } else {
            this.A01 = 1;
        }
        this.A05 = -1L;
        this.A02 = 0L;
    }

    @EnsuresNonNullIf
    public abstract boolean A0J(C1744Mk c1744Mk, long j, C2157bM c2157bM) throws IOException;
}
