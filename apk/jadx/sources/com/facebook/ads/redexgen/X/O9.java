package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class O9 implements InterfaceC2240ch {
    public static byte[] A0B;
    public static String[] A0C = {"RmzQBswPTcHRn", "7sruaPUkodwgw3QS8ipm4Ha2G8d1hbf4", "aAnMB0oWNfLMgIl9siRQZtZewG2pJ8kh", "xQmU", "ncat", "INsyHwzMN49j6MmZBuVitykaDF", "oUMWpFbAo", "SoiUZ4hHIkR"};
    public static final float[] A0D;
    public long A00;
    public long A01;
    public ZP A02;
    public C2244cl A03;
    public String A04;
    public boolean A05;
    public final C1744Mk A06;
    public final C2243ck A07;
    public final C2249cq A08;
    public final C2264d5 A09;
    public final boolean[] A0A;

    static {
        A02();
        A0D = new float[]{1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};
    }

    public O9() {
        this(null);
    }

    public O9(C2264d5 c2264d5) {
        this.A09 = c2264d5;
        this.A0A = new boolean[4];
        this.A07 = new C2243ck(128);
        this.A00 = -9223372036854775807L;
        if (c2264d5 != null) {
            this.A08 = new C2249cq(178, 128);
            this.A06 = new C1744Mk();
        } else {
            this.A08 = null;
            this.A06 = null;
        }
    }

    public static VC A00(C2243ck c2243ck, int i, String str) {
        float f;
        byte[] bArrCopyOf = Arrays.copyOf(c2243ck.A02, c2243ck.A00);
        C1743Mj c1743Mj = new C1743Mj(bArrCopyOf);
        c1743Mj.A0A(i);
        c1743Mj.A0A(4);
        c1743Mj.A07();
        c1743Mj.A09(8);
        if (c1743Mj.A0H()) {
            c1743Mj.A09(4);
            c1743Mj.A09(3);
        }
        int iA04 = c1743Mj.A04(4);
        String strA01 = A01(10, 20, 13);
        String strA02 = A01(0, 10, 16);
        if (iA04 == 15) {
            int iA05 = c1743Mj.A04(8);
            int iA06 = c1743Mj.A04(8);
            if (iA06 == 0) {
                MV.A07(strA02, strA01);
                f = 1.0f;
            } else {
                f = iA05 / iA06;
            }
        } else if (iA04 < A0D.length) {
            f = A0D[iA04];
        } else {
            MV.A07(strA02, strA01);
            f = 1.0f;
        }
        if (c1743Mj.A0H()) {
            c1743Mj.A09(2);
            String[] strArr = A0C;
            if (strArr[5].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0C;
            strArr2[6] = "1DXyjb23W";
            strArr2[7] = "3ybYm7e6XuU";
            c1743Mj.A09(1);
            if (c1743Mj.A0H()) {
                c1743Mj.A09(15);
                c1743Mj.A07();
                c1743Mj.A09(15);
                c1743Mj.A07();
                String[] strArr3 = A0C;
                if (strArr3[2].charAt(17) != strArr3[1].charAt(17)) {
                    String[] strArr4 = A0C;
                    strArr4[5] = "RxqFL1LhobXh1ktc6pkc0Ud8kV";
                    strArr4[0] = "1CEsVmL5qvOrx";
                    c1743Mj.A09(15);
                    c1743Mj.A07();
                    c1743Mj.A09(3);
                    c1743Mj.A09(4);
                    c1743Mj.A07();
                    c1743Mj.A09(15);
                    c1743Mj.A07();
                } else {
                    String[] strArr5 = A0C;
                    strArr5[3] = "7wQW";
                    strArr5[4] = "XsvE";
                    c1743Mj.A09(15);
                    c1743Mj.A07();
                    c1743Mj.A09(3);
                    c1743Mj.A09(11);
                    c1743Mj.A07();
                    c1743Mj.A09(15);
                    c1743Mj.A07();
                }
            }
        }
        if (c1743Mj.A04(2) != 0) {
            MV.A07(strA02, A01(67, 34, 121));
        }
        c1743Mj.A07();
        int iA07 = c1743Mj.A04(16);
        c1743Mj.A07();
        if (c1743Mj.A0H()) {
            if (iA07 == 0) {
                MV.A07(strA02, A01(30, 37, 102));
            } else {
                int i2 = 0;
                for (int i3 = iA07 - 1; i3 > 0; i3 >>= 1) {
                    i2++;
                }
                c1743Mj.A09(i2);
            }
        }
        c1743Mj.A07();
        int iA08 = c1743Mj.A04(13);
        c1743Mj.A07();
        int iA09 = c1743Mj.A04(13);
        c1743Mj.A07();
        c1743Mj.A07();
        return new C1689Ke().A0y(str).A11(A01(101, 13, 89)).A0r(iA08).A0f(iA09).A0Y(f).A12(Collections.singletonList(bArrCopyOf)).A14();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 93);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A0B = new byte[]{-75, -97, -93, -96, -65, -46, -50, -47, -46, -33, -77, -40, -32, -53, -42, -45, -50, -118, -53, -35, -38, -49, -51, -34, -118, -36, -53, -34, -45, -39, Ascii.FF, 49, 57, 36, 47, 44, 39, -29, 57, 50, 51, 34, 44, 49, 38, 53, 40, 48, 40, 49, 55, 34, 55, 44, 48, 40, 34, 53, 40, 54, 50, 47, 56, 55, 44, 50, 49, 43, 68, 62, 55, 68, 58, 66, 59, 58, -10, 76, 63, 58, 59, 69, -10, 69, 56, SignedBytes.MAX_POWER_OF_TWO, 59, 57, 74, -10, 66, 55, 79, 59, 72, -10, 73, 62, 55, 70, 59, 44, Ascii.US, Ascii.SUB, Ascii.ESC, 37, -27, 35, 38, -22, 44, -29, Ascii.ESC, 41};
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0142  */
    /* JADX WARN: Code duplicated, block: B:48:0x016e A[LOOP:0: B:3:0x0029->B:48:0x016e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:53:0x0168 A[SYNTHETIC] */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void A5j(C1744Mk c1744Mk) {
        String[] strArr;
        AbstractC1722Ln.A02(this.A03);
        AbstractC1722Ln.A02(this.A02);
        int iA09 = c1744Mk.A09();
        int iA0A = c1744Mk.A0A();
        byte[] bArrA0l = c1744Mk.A0l();
        this.A01 += (long) c1744Mk.A07();
        this.A02.AK9(c1744Mk, c1744Mk.A07());
        while (true) {
            int iA04 = ZE.A04(bArrA0l, iA09, iA0A, this.A0A);
            if (iA04 == iA0A) {
                if (!this.A05) {
                    this.A07.A03(bArrA0l, iA09, iA0A);
                }
                this.A03.A03(bArrA0l, iA09, iA0A);
                if (this.A08 != null) {
                    this.A08.A02(bArrA0l, iA09, iA0A);
                    return;
                }
                return;
            }
            int i = c1744Mk.A0l()[iA04 + 3] & 255;
            int i2 = iA04 - iA09;
            String[] strArr2 = A0C;
            if (strArr2[5].length() != strArr2[0].length()) {
                String[] strArr3 = A0C;
                strArr3[3] = "CaNK";
                strArr3[4] = "biqh";
                if (!this.A05) {
                    if (i2 > 0) {
                        this.A07.A03(bArrA0l, iA09, iA04);
                    }
                    if (this.A07.A04(i, i2 < 0 ? -i2 : 0)) {
                        this.A02.A7E(A00(this.A07, this.A07.A01, (String) AbstractC1722Ln.A01(this.A04)));
                        this.A05 = true;
                    }
                }
                this.A03.A03(bArrA0l, iA09, iA04);
                if (this.A08 != null) {
                    int i3 = 0;
                    if (i2 > 0) {
                        this.A08.A02(bArrA0l, iA09, iA04);
                    } else {
                        i3 = -i2;
                    }
                    if (this.A08.A04(i3)) {
                        ((C1744Mk) N1.A0f(this.A06)).A0j(this.A08.A01, ZE.A02(this.A08.A01, this.A08.A00));
                        ((C2264d5) N1.A0f(this.A09)).A02(this.A00, this.A06);
                    }
                    if (i == 178) {
                        byte[] bArrA0l2 = c1744Mk.A0l();
                        int i4 = iA04 + 2;
                        String[] strArr4 = A0C;
                        if (strArr4[6].length() != strArr4[7].length()) {
                            String[] strArr5 = A0C;
                            strArr5[3] = "XuHL";
                            strArr5[4] = "pdRE";
                            if (bArrA0l2[i4] == 1) {
                                C2249cq c2249cq = this.A08;
                                String[] strArr6 = A0C;
                                if (strArr6[2].charAt(17) != strArr6[1].charAt(17)) {
                                    throw new RuntimeException();
                                }
                                String[] strArr7 = A0C;
                                strArr7[3] = "XpqV";
                                strArr7[4] = "m0yB";
                                c2249cq.A01(i);
                            }
                            int i5 = iA0A - iA04;
                            this.A03.A02(this.A01 - ((long) i5), i5, this.A05);
                            this.A03.A01(i, this.A00);
                            strArr = A0C;
                            if (strArr[3].length() == strArr[4].length()) {
                                String[] strArr8 = A0C;
                                strArr8[2] = "6iTxcmzVIXvxdsIc5i1IeG77VcHbU7AW";
                                strArr8[1] = "TQw8c6Kr3dOAts0YtieK5cfYtyLkhdsR";
                                iA09 = iA04 + 3;
                            }
                        }
                    } else {
                        int i6 = iA0A - iA04;
                        this.A03.A02(this.A01 - ((long) i6), i6, this.A05);
                        this.A03.A01(i, this.A00);
                        strArr = A0C;
                        if (strArr[3].length() == strArr[4].length()) {
                            String[] strArr9 = A0C;
                            strArr9[2] = "6iTxcmzVIXvxdsIc5i1IeG77VcHbU7AW";
                            strArr9[1] = "TQw8c6Kr3dOAts0YtieK5cfYtyLkhdsR";
                            iA09 = iA04 + 3;
                        }
                    }
                } else {
                    int i7 = iA0A - iA04;
                    this.A03.A02(this.A01 - ((long) i7), i7, this.A05);
                    this.A03.A01(i, this.A00);
                    strArr = A0C;
                    if (strArr[3].length() == strArr[4].length()) {
                        String[] strArr10 = A0C;
                        strArr10[2] = "6iTxcmzVIXvxdsIc5i1IeG77VcHbU7AW";
                        strArr10[1] = "TQw8c6Kr3dOAts0YtieK5cfYtyLkhdsR";
                        iA09 = iA04 + 3;
                    }
                }
            }
            throw new RuntimeException();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void A6B(InterfaceC2044Yw interfaceC2044Yw, C2261d2 c2261d2) {
        c2261d2.A05();
        this.A04 = c2261d2.A04();
        this.A02 = interfaceC2044Yw.ALm(c2261d2.A03(), 2);
        this.A03 = new C2244cl(this.A02);
        if (this.A09 != null) {
            this.A09.A03(interfaceC2044Yw, c2261d2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AI2() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AI3(long j, int i) {
        if (j != -9223372036854775807L) {
            this.A00 = j;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AKN() {
        ZE.A0H(this.A0A);
        this.A07.A02();
        if (this.A03 != null) {
            this.A03.A00();
        }
        C2249cq c2249cq = this.A08;
        String[] strArr = A0C;
        if (strArr[5].length() != strArr[0].length()) {
            String[] strArr2 = A0C;
            strArr2[5] = "5MBZOjuw4oVT52TSKhuedhnMOR";
            strArr2[0] = "KYdk32ZZwRgXS";
            if (c2249cq != null) {
                C2249cq c2249cq2 = this.A08;
                String[] strArr3 = A0C;
                if (strArr3[5].length() != strArr3[0].length()) {
                    String[] strArr4 = A0C;
                    strArr4[5] = "X4bSBGsfUgHipqaUiLNXeKByPJ";
                    strArr4[0] = "P2KClEvmHXOZL";
                    c2249cq2.A00();
                }
            }
            this.A01 = 0L;
            this.A00 = -9223372036854775807L;
            return;
        }
        throw new RuntimeException();
    }
}
