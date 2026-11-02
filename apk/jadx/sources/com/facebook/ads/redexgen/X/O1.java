package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class O1 implements InterfaceC2262d3 {
    public static byte[] A0C;
    public static String[] A0D = {"s1OLgDpLhwU6S3ev2LG7370P1S1hgRKL", "ZlUa", "q8uvNR0LmWicI4Royxvt1Zty1bBi2yMt", "lN3rpYNXmWWD132XUlN2ThtdYynBh6B0", "DemfNCPv02gD7OuapGlPMaBjpYQUBs9I", "lBsGkgfsHAkvf0DthDZ1e", "lPkycUi8aQ8EQdlpq3OxMzwckgLEoe", "P0z8XJzQz6G5COmoNubq0j8sI0uUWshp"};
    public int A00;
    public int A01;
    public int A02;
    public long A04;
    public C1752Ms A05;
    public boolean A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public final InterfaceC2240ch A0B;
    public final C1743Mj A0A = new C1743Mj(new byte[10]);
    public int A03 = 0;

    static {
        A02();
    }

    public O1(InterfaceC2240ch interfaceC2240ch) {
        this.A0B = interfaceC2240ch;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 16);
        }
        return new String(bArrCopyOfRange);
    }

    @RequiresNonNull
    private void A01() {
        this.A0A.A08(0);
        this.A04 = -9223372036854775807L;
        if (this.A08) {
            this.A0A.A09(4);
            long jA04 = ((long) this.A0A.A04(3)) << 30;
            this.A0A.A09(1);
            long jA05 = jA04 | ((long) (this.A0A.A04(15) << 15));
            this.A0A.A09(1);
            long jA06 = jA05 | ((long) this.A0A.A04(15));
            this.A0A.A09(1);
            if (!this.A09 && this.A07) {
                this.A0A.A09(4);
                long jA07 = ((long) this.A0A.A04(3)) << 30;
                this.A0A.A09(1);
                long jA08 = jA07 | ((long) (this.A0A.A04(15) << 15));
                this.A0A.A09(1);
                long jA09 = jA08 | ((long) this.A0A.A04(15));
                this.A0A.A09(1);
                this.A05.A06(jA09);
                this.A09 = true;
            }
            this.A04 = this.A05.A06(jA06);
        }
    }

    public static void A02() {
        A0C = new byte[]{105, -74, -72, -69, -82, 105, -85, -62, -67, -82, -68, -51, -10, -4, -11, -21, -89, -11, -20, -18, -24, -5, -16, -3, -20, -89, -9, -24, -22, -14, -20, -5, -89, -9, -24, 0, -13, -10, -24, -21, -89, -6, -16, 1, -20, -63, -89, 103, 124, -118, 105, 124, 120, 123, 124, -119, 114, -117, -126, -107, -115, -126, -128, -111, -126, -127, Base64.padSymbol, -112, -111, 126, -113, -111, Base64.padSymbol, -128, -116, -127, -126, Base64.padSymbol, -115, -113, -126, -125, -122, -107, 87, Base64.padSymbol, 111, -120, 127, -110, -118, 127, 125, -114, 127, 126, 58, -115, -114, 123, -116, -114, 58, -125, -120, 126, -125, 125, 123, -114, -119, -116, 58, -116, 127, 123, 126, -125, -120, -127, 58, 127, -110, -114, 127, -120, 126, 127, 126, 58, -126, 127, 123, 126, 127, -116, -74, -49, -58, -39, -47, -58, -60, -43, -58, -59, -127, -44, -43, -62, -45, -43, -127, -54, -49, -59, -54, -60, -62, -43, -48, -45, -101, -127, -58, -39, -47, -58, -60, -43, -58, -59, -127};
    }

    private void A03(int i) {
        this.A03 = i;
        this.A00 = 0;
    }

    private boolean A04() {
        this.A0A.A08(0);
        int iA04 = this.A0A.A04(24);
        String strA00 = A00(47, 9, 7);
        if (iA04 != 1) {
            MV.A07(strA00, A00(56, 30, 13) + iA04);
            this.A02 = -1;
            return false;
        }
        this.A0A.A09(8);
        int iA05 = this.A0A.A04(16);
        this.A0A.A09(5);
        this.A06 = this.A0A.A0H();
        this.A0A.A09(2);
        this.A08 = this.A0A.A0H();
        this.A07 = this.A0A.A0H();
        this.A0A.A09(6);
        this.A01 = this.A0A.A04(8);
        if (iA05 == 0) {
            this.A02 = -1;
        } else {
            this.A02 = ((iA05 + 6) - 9) - this.A01;
            if (this.A02 < 0) {
                MV.A07(strA00, A00(11, 36, 119) + this.A02);
                this.A02 = -1;
            }
        }
        return true;
    }

    private boolean A05(C1744Mk c1744Mk, byte[] bArr, int i) {
        int iMin = Math.min(c1744Mk.A07(), i - this.A00);
        if (iMin <= 0) {
            return true;
        }
        if (bArr == null) {
            c1744Mk.A0g(iMin);
        } else {
            c1744Mk.A0k(bArr, this.A00, iMin);
        }
        this.A00 += iMin;
        return this.A00 == i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2262d3
    public final void A5k(C1744Mk c1744Mk, int i) throws L9 {
        AbstractC1722Ln.A02(this.A05);
        if ((i & 1) != 0) {
            int i2 = this.A03;
            String strA00 = A00(47, 9, 7);
            switch (i2) {
                case 0:
                case 1:
                    A03(1);
                    break;
                case 2:
                    MV.A07(strA00, A00(86, 50, 10));
                    A03(1);
                    break;
                case 3:
                    if (this.A02 != -1) {
                        MV.A07(strA00, A00(136, 37, 81) + this.A02 + A00(0, 11, 57));
                    }
                    this.A0B.AI2();
                    A03(1);
                    break;
                default:
                    throw new IllegalStateException();
            }
        }
        while (c1744Mk.A07() > 0) {
            switch (this.A03) {
                case 0:
                    c1744Mk.A0g(c1744Mk.A07());
                    break;
                case 1:
                    if (A05(c1744Mk, this.A0A.A00, 9)) {
                        A03(A04() ? 2 : 0);
                    }
                    break;
                case 2:
                    if (!A05(c1744Mk, this.A0A.A00, Math.min(10, this.A01))) {
                        continue;
                    } else {
                        int i3 = this.A01;
                        String[] strArr = A0D;
                        if (strArr[7].charAt(13) == strArr[0].charAt(13)) {
                            throw new RuntimeException();
                        }
                        String[] strArr2 = A0D;
                        strArr2[7] = "La2ywzQaUlSKJwW2oa92KpQQSNBVqlsm";
                        strArr2[0] = "Lmwsgxnc2XnvTDKag3jwqZ0KvySkQZYo";
                        if (A05(c1744Mk, null, i3)) {
                            A01();
                            i |= this.A06 ? 4 : 0;
                            this.A0B.AI3(this.A04, i);
                            A03(3);
                        }
                    }
                    break;
                case 3:
                    int iA07 = c1744Mk.A07();
                    int i4 = this.A02 != -1 ? iA07 - this.A02 : 0;
                    if (i4 > 0) {
                        iA07 -= i4;
                        c1744Mk.A0e(c1744Mk.A09() + iA07);
                    }
                    this.A0B.A5j(c1744Mk);
                    if (this.A02 != -1) {
                        this.A02 -= iA07;
                        if (this.A02 == 0) {
                            this.A0B.AI2();
                            A03(1);
                        }
                    }
                    break;
                default:
                    throw new IllegalStateException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2262d3
    public final void AAo(C1752Ms c1752Ms, InterfaceC2044Yw interfaceC2044Yw, C2261d2 c2261d2) {
        this.A05 = c1752Ms;
        this.A0B.A6B(interfaceC2044Yw, c2261d2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2262d3
    public final void AKN() {
        this.A03 = 0;
        this.A00 = 0;
        this.A09 = false;
        this.A0B.AKN();
    }
}
