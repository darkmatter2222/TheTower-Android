package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.facebook.ads.androidx.media3.common.Metadata;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class Pu implements InterfaceC2043Yv {
    public static String[] A0E = {"zWnN8Cjz7WBbmu1e6d", "YWoQxYfRPepU", "2MQyiFWQBt4Fob21R2678jSxG37z", "wlkKQZNYzypIOj6eZICCgQsDFGsk", "IaksYYOwOgDfxL05PkLPBje8KY0H1w50", "ochPkjq7YK5t", "XRoKMReFu8G349hGPwpsHitDZJ2L6zPz", "ImP3Z1MWELf5Qe2nd5bCJ8XkbuF93Tkd"};
    public static final InterfaceC2047Yz A0F = new InterfaceC2047Yz() { // from class: com.facebook.ads.redexgen.X.Pw
        @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
        public final InterfaceC2043Yv[] A5w() {
            return Pu.A09();
        }

        @Override // com.facebook.ads.redexgen.X.InterfaceC2047Yz
        public final /* synthetic */ InterfaceC2043Yv[] A5x(Uri uri, Map map) {
            return AbstractC2046Yy.A01(this, uri, map);
        }
    };
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public long A04;
    public Metadata A05;
    public InterfaceC2044Yw A06;
    public Z5 A07;
    public ZP A08;
    public Py A09;
    public final C1744Mk A0A;
    public final Z0 A0B;
    public final boolean A0C;
    public final byte[] A0D;

    public Pu() {
        this(0);
    }

    public Pu(int i) {
        this.A0D = new byte[42];
        this.A0A = new C1744Mk(new byte[32768], 0);
        this.A0C = (i & 1) != 0;
        this.A0B = new Z0();
        this.A03 = 0;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x009c  */
    /* JADX WARN: Code duplicated, block: B:31:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:34:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:37:0x00f4  */
    private int A00(Q9 q9, ZH zh) throws IOException {
        C1744Mk c1744Mk;
        String[] strArr;
        long jA01;
        AbstractC1722Ln.A01(this.A08);
        AbstractC1722Ln.A01(this.A07);
        if (this.A09 != null && this.A09.A0B()) {
            return this.A09.A08(q9, zh);
        }
        if (this.A04 == -1) {
            this.A04 = Z1.A01(q9, this.A07);
            return 0;
        }
        int iA0A = this.A0A.A0A();
        boolean z = false;
        if (iA0A >= 32768) {
            c1744Mk = this.A0A;
            strArr = A0E;
            if (strArr[4].charAt(1) != strArr[6].charAt(1)) {
                A0E[7] = "ZbUf0aAmoKRsQ9npseAzJizoo08Ux9Rf";
                int iA09 = c1744Mk.A09();
                if (this.A00 < this.A02) {
                    this.A0A.A0g(Math.min(this.A02 - this.A00, this.A0A.A07()));
                }
                jA01 = A01(this.A0A, z);
                int iA010 = this.A0A.A09() - iA09;
                this.A0A.A0f(iA09);
                this.A08.AK9(this.A0A, iA010);
                this.A00 += iA010;
                if (jA01 != -1) {
                    A03();
                    this.A00 = 0;
                    this.A04 = jA01;
                }
                if (this.A0A.A07() < 16) {
                    int iA07 = this.A0A.A07();
                    System.arraycopy(this.A0A.A0l(), this.A0A.A09(), this.A0A.A0l(), 0, iA07);
                    this.A0A.A0f(0);
                    this.A0A.A0e(iA07);
                }
                return 0;
            }
        } else {
            int i = q9.read(this.A0A.A0l(), iA0A, 32768 - iA0A);
            z = i == -1;
            String[] strArr2 = A0E;
            if (strArr2[1].length() == strArr2[5].length()) {
                A0E[0] = "0tM9uXoYk89rR";
                if (!z) {
                    C1744Mk c1744Mk2 = this.A0A;
                    if (A0E[0].length() != 26) {
                        A0E[7] = "cZLbYcposMAPFJ6vKrsqJf879HHfmQpV";
                        c1744Mk2.A0e(iA0A + i);
                    }
                } else if (this.A0A.A07() == 0) {
                    A03();
                    return -1;
                }
                c1744Mk = this.A0A;
                strArr = A0E;
                if (strArr[4].charAt(1) != strArr[6].charAt(1)) {
                    A0E[7] = "ZbUf0aAmoKRsQ9npseAzJizoo08Ux9Rf";
                    int iA011 = c1744Mk.A09();
                    if (this.A00 < this.A02) {
                        this.A0A.A0g(Math.min(this.A02 - this.A00, this.A0A.A07()));
                    }
                    jA01 = A01(this.A0A, z);
                    int iA012 = this.A0A.A09() - iA011;
                    this.A0A.A0f(iA011);
                    this.A08.AK9(this.A0A, iA012);
                    this.A00 += iA012;
                    if (jA01 != -1) {
                        A03();
                        this.A00 = 0;
                        this.A04 = jA01;
                    }
                    if (this.A0A.A07() < 16) {
                        int iA08 = this.A0A.A07();
                        System.arraycopy(this.A0A.A0l(), this.A0A.A09(), this.A0A.A0l(), 0, iA08);
                        this.A0A.A0f(0);
                        this.A0A.A0e(iA08);
                    }
                    return 0;
                }
            }
        }
        throw new RuntimeException();
    }

    private long A01(C1744Mk c1744Mk, boolean z) {
        boolean zA07;
        AbstractC1722Ln.A01(this.A07);
        int iA09 = c1744Mk.A09();
        while (iA09 <= c1744Mk.A0A() - 16) {
            c1744Mk.A0f(iA09);
            if (Z1.A07(c1744Mk, this.A07, this.A01, this.A0B)) {
                c1744Mk.A0f(iA09);
                return this.A0B.A00;
            }
            iA09++;
        }
        if (!z) {
            c1744Mk.A0f(iA09);
            return -1L;
        }
        while (iA09 <= c1744Mk.A0A() - this.A02) {
            c1744Mk.A0f(iA09);
            try {
                zA07 = Z1.A07(c1744Mk, this.A07, this.A01, this.A0B);
            } catch (IndexOutOfBoundsException unused) {
                zA07 = false;
            }
            if (c1744Mk.A09() > c1744Mk.A0A()) {
                zA07 = false;
            }
            if (zA07) {
                c1744Mk.A0f(iA09);
                return this.A0B.A00;
            }
            iA09++;
        }
        int iA0A = c1744Mk.A0A();
        if (A0E[7].charAt(20) != 'J') {
            throw new RuntimeException();
        }
        String[] strArr = A0E;
        strArr[3] = "GYhA2myC4wjI0S4oXXXRuUzHVuZZ";
        strArr[2] = "xr8JlCzPWnFDVPufqvMfWt94WpQE";
        c1744Mk.A0f(iA0A);
        return -1L;
    }

    private ZK A02(long j, long j2) {
        AbstractC1722Ln.A01(this.A07);
        if (this.A07.A0A != null) {
            return new Q6(this.A07, j);
        }
        if (j2 == -1 || this.A07.A09 <= 0) {
            return new Q4(this.A07.A06());
        }
        this.A09 = new Py(this.A07, this.A01, j, j2);
        return this.A09.A09();
    }

    private void A03() {
        ((ZP) N1.A0f(this.A08)).AKC((this.A04 * 1000000) / ((long) ((Z5) N1.A0f(this.A07)).A07), 1, this.A00, 0, null);
    }

    private void A04(Q9 q9) throws IOException {
        this.A01 = Z3.A00(q9);
        ((InterfaceC2044Yw) N1.A0f(this.A06)).AKP(A02(q9.A9Q(), q9.A90()));
        this.A03 = 5;
    }

    private void A05(Q9 q9) throws IOException {
        q9.AI6(this.A0D, 0, this.A0D.length);
        q9.AK3();
        this.A03 = 2;
    }

    private void A06(Q9 q9) throws IOException {
        this.A05 = Z3.A02(q9, !this.A0C);
        this.A03 = 1;
    }

    private void A07(Q9 q9) throws IOException {
        boolean zA0B = false;
        Z2 z2 = new Z2(this.A07);
        while (!zA0B) {
            zA0B = Z3.A0B(q9, z2);
            this.A07 = (Z5) N1.A0f(z2.A00);
        }
        AbstractC1722Ln.A01(this.A07);
        this.A02 = Math.max(this.A07.A06, 6);
        ((ZP) N1.A0f(this.A08)).A7E(this.A07.A08(this.A0D, this.A05));
        this.A03 = 4;
    }

    private void A08(Q9 q9) throws IOException {
        Z3.A09(q9);
        this.A03 = 3;
    }

    public static /* synthetic */ InterfaceC2043Yv[] A09() {
        return new InterfaceC2043Yv[]{new Pu()};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AAq(InterfaceC2044Yw interfaceC2044Yw) {
        this.A06 = interfaceC2044Yw;
        this.A08 = interfaceC2044Yw.ALm(0, 1);
        interfaceC2044Yw.A6x();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final int AIY(Q9 q9, ZH zh) throws IOException {
        switch (this.A03) {
            case 0:
                A06(q9);
                return 0;
            case 1:
                A05(q9);
                return 0;
            case 2:
                A08(q9);
                String[] strArr = A0E;
                if (strArr[1].length() != strArr[5].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0E;
                strArr2[1] = "jMiuRjpS2ayQ";
                strArr2[5] = "rihjrbtKwpaI";
                return 0;
            case 3:
                A07(q9);
                return 0;
            case 4:
                A04(q9);
                return 0;
            case 5:
                return A00(q9, zh);
            default:
                throw new IllegalStateException();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AIp() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final void AKO(long j, long j2) {
        if (j == 0) {
            this.A03 = 0;
        } else if (this.A09 != null) {
            this.A09.A0A(j2);
        }
        this.A04 = j2 != 0 ? -1L : 0L;
        this.A00 = 0;
        this.A0A.A0d(0);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2043Yv
    public final boolean ALN(Q9 q9) throws IOException {
        Z3.A01(q9, false);
        return Z3.A0A(q9);
    }
}
