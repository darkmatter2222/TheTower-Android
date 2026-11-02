package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import java.util.Collections;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class O4 implements InterfaceC2240ch {
    public static byte[] A0L;
    public static String[] A0M = {"a", "YcQyunl4KBbKId6", "jA36uGOFg4tVukmtWPixB5qZJf1b5Kys", "xYTcuFNTJijuxgcQusD0W3D2ZkS2SQ5k", "omtoIgecnfu4", "mKTz", "Kyg537US6MGr", "HzB3"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08;
    public long A09;
    public long A0A;
    public VC A0C;
    public ZP A0D;
    public String A0E;
    public String A0F;
    public boolean A0G;
    public boolean A0H;
    public final String A0K;
    public final C1744Mk A0J = new C1744Mk(1024);
    public final C1743Mj A0I = new C1743Mj(this.A0J.A0l());
    public long A0B = -9223372036854775807L;

    static {
        A04();
    }

    public O4(String str) {
        this.A0K = str;
    }

    private int A00(C1743Mj c1743Mj) throws L9 {
        int iA01 = c1743Mj.A01();
        YY yyA02 = YZ.A02(c1743Mj, true);
        this.A0E = yyA02.A02;
        this.A05 = yyA02.A01;
        this.A02 = yyA02.A00;
        return iA01 - c1743Mj.A01();
    }

    private int A01(C1743Mj c1743Mj) throws L9 {
        int iA04;
        int i = 0;
        if (this.A03 != 0) {
            throw L9.A01(null, null);
        }
        do {
            iA04 = c1743Mj.A04(8);
            i += iA04;
        } while (iA04 == 255);
        return i;
    }

    public static long A02(C1743Mj c1743Mj) {
        return c1743Mj.A04((c1743Mj.A04(2) + 1) * 8);
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0L, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 31);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A0L = new byte[]{-17, 3, -14, -9, -3, -67, -5, -2, -62, -17, -69, -6, -17, 2, -5};
    }

    private void A05(int i) {
        this.A0J.A0d(i);
        this.A0I.A0D(this.A0J.A0l());
    }

    @RequiresNonNull
    private void A06(C1743Mj c1743Mj) throws L9 {
        if (c1743Mj.A0H()) {
            if (!this.A0H) {
                return;
            }
        } else {
            if (A0M[1].length() != 15) {
                throw new RuntimeException();
            }
            String[] strArr = A0M;
            strArr[4] = "pVouzY3q8h7u";
            strArr[6] = "ctXwG72vGr0B";
            this.A0H = true;
            A08(c1743Mj);
        }
        if (this.A00 != 0) {
            throw L9.A01(null, null);
        }
        if (this.A04 != 0) {
            throw L9.A01(null, null);
        }
        A09(c1743Mj, A01(c1743Mj));
        String[] strArr2 = A0M;
        if (strArr2[7].length() != strArr2[5].length()) {
            String[] strArr3 = A0M;
            strArr3[7] = "ldf9";
            strArr3[5] = "kvML";
            if (!this.A0G) {
                return;
            }
        } else {
            String[] strArr4 = A0M;
            strArr4[7] = "PefU";
            strArr4[5] = "AgEb";
            if (!this.A0G) {
                return;
            }
        }
        c1743Mj.A09((int) this.A09);
    }

    private void A07(C1743Mj c1743Mj) {
        this.A03 = c1743Mj.A04(3);
        switch (this.A03) {
            case 0:
                c1743Mj.A09(8);
                return;
            case 1:
                c1743Mj.A09(9);
                return;
            case 2:
            default:
                throw new IllegalStateException();
            case 3:
            case 4:
            case 5:
                c1743Mj.A09(6);
                return;
            case 6:
            case 7:
                c1743Mj.A09(1);
                return;
        }
    }

    @RequiresNonNull
    private void A08(C1743Mj c1743Mj) throws L9 {
        boolean zA0H;
        int iA04 = c1743Mj.A04(1);
        this.A00 = iA04 == 1 ? c1743Mj.A04(1) : 0;
        if (this.A00 != 0) {
            throw L9.A01(null, null);
        }
        if (iA04 == 1) {
            A02(c1743Mj);
        }
        if (!c1743Mj.A0H()) {
            throw L9.A01(null, null);
        }
        this.A04 = c1743Mj.A04(6);
        int iA05 = c1743Mj.A04(4);
        int iA06 = c1743Mj.A04(3);
        if (iA05 != 0 || iA06 != 0) {
            throw L9.A01(null, null);
        }
        if (iA04 == 0) {
            int iA03 = c1743Mj.A03();
            int iA00 = A00(c1743Mj);
            c1743Mj.A08(iA03);
            byte[] bArr = new byte[(iA00 + 7) / 8];
            c1743Mj.A0F(bArr, 0, iA00);
            VC vcA14 = new C1689Ke().A0y(this.A0F).A11(A03(0, 15, 111)).A0w(this.A0E).A0b(this.A02).A0m(this.A05).A12(Collections.singletonList(bArr)).A10(this.A0K).A14();
            if (!vcA14.equals(this.A0C)) {
                this.A0C = vcA14;
                this.A0A = 1024000000 / ((long) vcA14.A0G);
                this.A0D.A7E(vcA14);
            }
        } else {
            c1743Mj.A09(((int) A02(c1743Mj)) - A00(c1743Mj));
        }
        A07(c1743Mj);
        this.A0G = c1743Mj.A0H();
        this.A09 = 0L;
        if (this.A0G) {
            if (iA04 == 1) {
                this.A09 = A02(c1743Mj);
            } else {
                do {
                    zA0H = c1743Mj.A0H();
                    this.A09 = (this.A09 << 8) + ((long) c1743Mj.A04(8));
                } while (zA0H);
            }
        }
        if (c1743Mj.A0H()) {
            c1743Mj.A09(8);
        }
    }

    @RequiresNonNull
    private void A09(C1743Mj c1743Mj, int i) {
        int iA03 = c1743Mj.A03();
        if ((iA03 & 7) == 0) {
            this.A0J.A0f(iA03 >> 3);
        } else {
            c1743Mj.A0F(this.A0J.A0l(), 0, i * 8);
            this.A0J.A0f(0);
        }
        this.A0D.AK9(this.A0J, i);
        if (this.A0B != -9223372036854775807L) {
            this.A0D.AKC(this.A0B, 1, i, 0, null);
            this.A0B += this.A0A;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void A5j(C1744Mk c1744Mk) throws L9 {
        AbstractC1722Ln.A02(this.A0D);
        while (c1744Mk.A07() > 0) {
            switch (this.A08) {
                case 0:
                    if (c1744Mk.A0I() == 86) {
                        this.A08 = 1;
                    }
                    break;
                case 1:
                    int iA0I = c1744Mk.A0I();
                    if ((iA0I & 224) == 224) {
                        this.A07 = iA0I;
                        this.A08 = 2;
                    } else if (iA0I != 86) {
                        this.A08 = 0;
                    }
                    break;
                case 2:
                    this.A06 = ((this.A07 & (-225)) << 8) | c1744Mk.A0I();
                    if (this.A06 > this.A0J.A0l().length) {
                        A05(this.A06);
                    }
                    this.A01 = 0;
                    this.A08 = 3;
                    break;
                case 3:
                    int iMin = Math.min(c1744Mk.A07(), this.A06 - this.A01);
                    c1744Mk.A0k(this.A0I.A00, this.A01, iMin);
                    this.A01 += iMin;
                    if (this.A01 == this.A06) {
                        this.A0I.A08(0);
                        A06(this.A0I);
                        this.A08 = 0;
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
        this.A0D = interfaceC2044Yw.ALm(c2261d2.A03(), 1);
        this.A0F = c2261d2.A04();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AI2() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AI3(long j, int i) {
        if (j != -9223372036854775807L) {
            this.A0B = j;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AKN() {
        this.A08 = 0;
        this.A0B = -9223372036854775807L;
        this.A0H = false;
    }
}
