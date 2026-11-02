package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class OB implements InterfaceC2240ch {
    public static byte[] A0G;
    public static String[] A0H = {"YGG1hGUD7fkjRKuCpzKT5xoEHOcfG6wu", "TQXKnorHL0Wp0UUUX4bd7R4ZTnX6wyIS", "TV3l43IPvaenHgMQpr4x7SRb", "tKBW5Kai9NbQDMaCywCTlxP8j2GOO0Oi", "rfH16", "B20XQICxyCiRsSVQ2P5LIf408", "awDRzHrVV97XPhxtIX5rVM6LFD6uycRQ", "NgNfOWdkwBWAvoaxwVn"};
    public static final double[] A0I;
    public long A00;
    public long A01;
    public long A02;
    public long A03;
    public long A04;
    public ZP A05;
    public String A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public final C1744Mk A0B;
    public final C2241ci A0C;
    public final C2249cq A0D;
    public final C2264d5 A0E;
    public final boolean[] A0F;

    static {
        A02();
        A0I = new double[]{23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};
    }

    public OB() {
        this(null);
    }

    public OB(C2264d5 c2264d5) {
        this.A0E = c2264d5;
        this.A0F = new boolean[4];
        this.A0C = new C2241ci(128);
        if (c2264d5 != null) {
            this.A0D = new C2249cq(178, 128);
            this.A0B = new C1744Mk();
        } else {
            this.A0D = null;
            this.A0B = null;
        }
        this.A01 = -9223372036854775807L;
        this.A03 = -9223372036854775807L;
    }

    public static Pair<VC, Long> A00(C2241ci c2241ci, String str) {
        byte[] bArrCopyOf = Arrays.copyOf(c2241ci.A02, c2241ci.A00);
        int i = bArrCopyOf[4] & 255;
        int i2 = bArrCopyOf[5] & 255;
        int i3 = (i << 4) | (i2 >> 4);
        int i4 = ((i2 & 15) << 8) | (bArrCopyOf[6] & 255);
        float f = 1.0f;
        switch ((bArrCopyOf[7] & 240) >> 4) {
            case 2:
                f = (i4 * 4) / (i3 * 3);
                break;
            case 3:
                float f2 = i4 * 16;
                float f3 = i3 * 9;
                if (A0H[6].charAt(30) != 'R') {
                    throw new RuntimeException();
                }
                String[] strArr = A0H;
                strArr[2] = "Up4zawitIqBYsavBWR3ldgVN";
                strArr[5] = "iQb1UOZoqczfSY3g355bEPJrS";
                f = f2 / f3;
                break;
            case 4:
                f = (i4 * 121) / (i3 * 100);
                break;
        }
        VC vcA14 = new C1689Ke().A0y(str).A11(A01(0, 11, 108)).A0r(i3).A0f(i4).A0Y(f).A12(Collections.singletonList(bArrCopyOf)).A14();
        long j = 0;
        int i5 = (bArrCopyOf[7] & Ascii.SI) - 1;
        if (i5 >= 0 && i5 < A0I.length) {
            double d = A0I[i5];
            int i6 = c2241ci.A01;
            int i7 = (bArrCopyOf[i6 + 9] & 96) >> 5;
            int i8 = bArrCopyOf[i6 + 9] & Ascii.US;
            if (i7 != i8) {
                d *= (((double) i7) + 1.0d) / ((double) (i8 + 1));
            }
            j = (long) (1000000.0d / d);
        }
        return Pair.create(vcA14, Long.valueOf(j));
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0G, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 58);
            String[] strArr = A0H;
            if (strArr[2].length() == strArr[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0H;
            strArr2[2] = "xTMpCgeabkGc6FSJv0GmRwxa";
            strArr2[5] = "wqPkn2tehNo6DcL26O9gaQyFc";
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A0G = new byte[]{32, 63, 50, 51, 57, 121, 59, 38, 51, 49, 100};
    }

    /* JADX WARN: Code duplicated, block: B:52:0x0125  */
    /* JADX WARN: Code duplicated, block: B:62:0x0162  */
    /* JADX WARN: Code duplicated, block: B:71:0x017f  */
    /* JADX WARN: Code duplicated, block: B:73:0x0190  */
    /* JADX WARN: Code duplicated, block: B:80:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:82:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:83:0x01b4  */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void A5j(C1744Mk c1744Mk) {
        long j;
        ZP zp = (ZP) AbstractC1722Ln.A02(this.A05);
        int iA09 = c1744Mk.A09();
        int iA0A = c1744Mk.A0A();
        byte[] bArrA0l = c1744Mk.A0l();
        this.A04 += (long) c1744Mk.A07();
        zp.AK9(c1744Mk, c1744Mk.A07());
        while (true) {
            int iA04 = ZE.A04(bArrA0l, iA09, iA0A, this.A0F);
            if (iA04 == iA0A) {
                if (!this.A07) {
                    this.A0C.A01(bArrA0l, iA09, iA0A);
                }
                if (this.A0D != null) {
                    this.A0D.A02(bArrA0l, iA09, iA0A);
                    return;
                }
                return;
            }
            int i = c1744Mk.A0l()[iA04 + 3] & 255;
            int i2 = iA04 - iA09;
            if (!this.A07) {
                if (i2 > 0) {
                    C2241ci c2241ci = this.A0C;
                    String[] strArr = A0H;
                    if (strArr[3].charAt(21) != strArr[0].charAt(21)) {
                        throw new RuntimeException();
                    }
                    A0H[6] = "ba9HXo214AFPWSEQ62Qpat87cjTgmWRT";
                    c2241ci.A01(bArrA0l, iA09, iA04);
                }
                if (this.A0C.A02(i, i2 < 0 ? -i2 : 0)) {
                    Pair<VC, Long> pairA00 = A00(this.A0C, (String) AbstractC1722Ln.A01(this.A06));
                    zp.A7E((VC) pairA00.first);
                    this.A00 = ((Long) pairA00.second).longValue();
                    this.A07 = true;
                }
            }
            if (this.A0D != null) {
                int i3 = 0;
                if (i2 > 0) {
                    this.A0D.A02(bArrA0l, iA09, iA04);
                } else {
                    i3 = -i2;
                }
                if (this.A0D.A04(i3)) {
                    int iA02 = ZE.A02(this.A0D.A01, this.A0D.A00);
                    if (this.A0B != null) {
                        this.A0B.A0j(this.A0D.A01, iA02);
                        if (this.A0E != null) {
                            this.A0E.A02(this.A03, this.A0B);
                        }
                    }
                }
                if (i == 178 && c1744Mk.A0l()[iA04 + 2] == 1) {
                    this.A0D.A01(i);
                }
            }
            if (i == 0 || i == 179) {
                int i4 = iA0A - iA04;
                if (this.A08 && this.A07) {
                    long j2 = this.A03;
                    String[] strArr2 = A0H;
                    if (strArr2[3].charAt(21) == strArr2[0].charAt(21)) {
                        A0H[6] = "n5lr2mqF8STMuPaUEz4Mvo9h5hfwM4R0";
                        if (j2 != -9223372036854775807L) {
                            zp.AKC(this.A03, this.A09 ? 1 : 0, ((int) (this.A04 - this.A02)) - i4, i4, null);
                        }
                    } else if (j2 != -9223372036854775807L) {
                        zp.AKC(this.A03, this.A09 ? 1 : 0, ((int) (this.A04 - this.A02)) - i4, i4, null);
                    }
                }
                if (this.A0A) {
                    boolean z = this.A08;
                    if (A0H[6].charAt(30) != 'R') {
                        throw new RuntimeException();
                    }
                    A0H[1] = "tiQ06i3kr2RyUA3PpJZvNwvRbwHBRONm";
                    if (z) {
                        this.A02 = this.A04 - ((long) i4);
                        if (this.A01 != -9223372036854775807L) {
                            j = this.A01;
                        } else if (this.A03 != -9223372036854775807L) {
                            j = this.A03 + this.A00;
                        } else {
                            j = -9223372036854775807L;
                        }
                        this.A03 = j;
                        this.A09 = false;
                        this.A01 = -9223372036854775807L;
                        this.A0A = true;
                    }
                } else {
                    this.A02 = this.A04 - ((long) i4);
                    if (this.A01 != -9223372036854775807L) {
                        j = this.A01;
                    } else if (this.A03 != -9223372036854775807L) {
                        j = this.A03 + this.A00;
                    } else {
                        j = -9223372036854775807L;
                    }
                    this.A03 = j;
                    this.A09 = false;
                    this.A01 = -9223372036854775807L;
                    this.A0A = true;
                }
                this.A08 = i == 0;
            } else if (i == 184) {
                this.A09 = true;
                zp = zp;
            } else {
                zp = zp;
            }
            iA09 = iA04 + 3;
            zp = zp;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void A6B(InterfaceC2044Yw interfaceC2044Yw, C2261d2 c2261d2) {
        c2261d2.A05();
        this.A06 = c2261d2.A04();
        this.A05 = interfaceC2044Yw.ALm(c2261d2.A03(), 2);
        if (this.A0E != null) {
            this.A0E.A03(interfaceC2044Yw, c2261d2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AI2() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AI3(long j, int i) {
        this.A01 = j;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2240ch
    public final void AKN() {
        ZE.A0H(this.A0F);
        this.A0C.A00();
        if (this.A0D != null) {
            this.A0D.A00();
        }
        this.A04 = 0L;
        this.A0A = false;
        this.A01 = -9223372036854775807L;
        this.A03 = -9223372036854775807L;
    }
}
