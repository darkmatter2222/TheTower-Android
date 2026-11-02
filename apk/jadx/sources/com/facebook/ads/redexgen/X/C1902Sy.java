package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.unity3d.services.UnityAdsConstants;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Sy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1902Sy implements InterfaceC1805Ot {
    public static byte[] A0B;
    public static String[] A0C = {"kvahaK37sOLnwDFfnOq", "yZiP5AqEmO3k8TpmKVl1XQGPiKhYSM5M", "usGSJ69btV8Dv3r63jGUdww58XzHzZNc", "PEe7f5oEsPqgmkqAoWPr4r6sZlN4UajI", "zLihgrkWdioASsyIDxoPFW0ZjEXFNEN1", "p8JA1b5BgUenvR679b2QNCJit85cgwQI", "8fuK5eu37ZxpjsMbzziryDXsxDUjrwpe", "YOCU2QMTUAa74todh04RrzV4YhGHcz55"};
    public int A00;
    public boolean A01;
    public final int A02;
    public final long A03;
    public final long A04;
    public final long A05;
    public final long A06;
    public final long A07;
    public final C1849Qx A08;
    public final boolean A09;
    public final boolean A0A;

    static {
        A03();
    }

    public C1902Sy() {
        this(new C1849Qx(true, 65536), 50000, 50000, UnityAdsConstants.RequestPolicy.RETRY_MAX_INTERVAL, 5000, -1, false, 0, false);
    }

    public C1902Sy(C1849Qx c1849Qx, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
        String strA02 = A02(163, 19, 95);
        String strA03 = A02(21, 1, 101);
        A04(i3, 0, strA02, strA03);
        String strA04 = A02(131, 32, 5);
        A04(i4, 0, strA04, strA03);
        String strA05 = A02(193, 11, 114);
        A04(i, i3, strA05, strA02);
        A04(i, i4, strA05, strA04);
        A04(i2, i, A02(182, 11, 93), strA05);
        A04(i6, 0, A02(111, 20, 98), strA03);
        this.A08 = c1849Qx;
        this.A07 = N1.A0O(i);
        this.A06 = N1.A0O(i2);
        this.A05 = N1.A0O(i3);
        this.A04 = N1.A0O(i4);
        this.A02 = i5;
        this.A00 = this.A02 != -1 ? this.A02 : 13107200;
        this.A09 = z;
        this.A03 = N1.A0O(i6);
        this.A0A = z2;
    }

    public static int A00(int i) {
        switch (i) {
            case -2:
                return 0;
            case -1:
            default:
                throw new IllegalArgumentException();
            case 0:
                return 144310272;
            case 1:
                return 13107200;
            case 2:
                return 131072000;
            case 3:
                return 131072;
            case 4:
                return 131072;
            case 5:
                return 131072;
            case 6:
                return 131072;
        }
    }

    private final int A01(RA[] raArr) {
        int iA00 = 0;
        for (RA ra : raArr) {
            if (ra != null) {
                iA00 += A00(ra.A9y().A02);
            }
        }
        return Math.max(13107200, iA00);
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 125);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A0B = new byte[]{101, 38, 36, 43, 43, 42, 49, 101, 39, 32, 101, 41, 32, 54, 54, 101, 49, 45, 36, 43, 101, 40, 38, 7, 4, 3, Ascii.ETB, Ascii.SO, Ascii.SYN, 46, Ascii.CR, 3, 6, 33, Ascii.CR, Ascii.FF, Ascii.SYN, Ascii.DLE, Ascii.CR, Ascii.SO, 60, 9, Ascii.SUB, Ascii.SI, Ascii.CR, Ascii.FS, 72, 10, Ascii.GS, Ascii.SO, Ascii.SO, Ascii.CR, Ascii.SUB, 72, Ascii.ESC, 1, Ascii.DC2, Ascii.CR, 72, Ascii.SUB, Ascii.CR, 9, Ascii.VT, 0, Ascii.CR, Ascii.FF, 72, Ascii.US, 1, Ascii.FS, 0, 72, 4, Ascii.CR, Ascii.ESC, Ascii.ESC, 72, Ascii.FS, 0, 9, 6, 72, 93, 88, 88, 5, Ascii.ESC, 72, 7, Ascii.SO, 72, 10, Ascii.GS, Ascii.SO, Ascii.SO, Ascii.CR, Ascii.SUB, Ascii.CR, Ascii.FF, 72, 5, Ascii.CR, Ascii.FF, 1, 9, 72, Ascii.FF, 9, Ascii.FS, 9, 70, 125, 126, 124, 116, 93, 106, 121, 121, 122, 109, 91, 106, 109, 126, 107, 118, 112, 113, 82, 108, Ascii.SUB, Ascii.CR, Ascii.RS, Ascii.RS, Ascii.GS, 10, 62, Ascii.ETB, 10, 40, Ascii.DC4, Ascii.EM, 1, Ascii.SUB, Ascii.EM, Ascii.ESC, 19, 57, Ascii.RS, Ascii.FF, Ascii.GS, 10, 42, Ascii.GS, Ascii.SUB, Ascii.CR, Ascii.RS, Ascii.RS, Ascii.GS, 10, 53, Ascii.VT, SignedBytes.MAX_POWER_OF_TWO, 87, 68, 68, 71, 80, 100, 77, 80, 114, 78, 67, 91, SignedBytes.MAX_POWER_OF_TWO, 67, 65, 73, 111, 81, 77, 65, 88, 98, 85, 70, 70, 69, 82, 109, 83, 98, 102, 97, 77, 122, 105, 105, 106, 125, 66, 124};
    }

    public static void A04(int i, int i2, String str, String str2) {
        AbstractC1722Ln.A09(i >= i2, str + A02(0, 21, 56) + str2);
    }

    private void A05(boolean z) {
        this.A00 = this.A02 == -1 ? 13107200 : this.A02;
        this.A01 = false;
        if (z) {
            this.A08.A01();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1805Ot
    public final C1849Qx A7V() {
        return this.A08;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1805Ot
    public final long A7a(QD qd) {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1805Ot
    public final void AGW(QD qd) {
        A05(false);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1805Ot
    public final void AGj(QD qd) {
        A05(true);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1805Ot
    public final void AHD(QD qd) {
        A05(true);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1805Ot
    public final void AHO(C1804Os c1804Os, RY ry, RA[] raArr) {
        this.A00 = this.A02 == -1 ? A01(raArr) : this.A02;
        this.A08.A02(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1805Ot
    public final boolean AK5(QD qd) {
        return this.A0A;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1805Ot
    public final boolean ALD(C1804Os c1804Os) {
        boolean z = true;
        boolean z2 = this.A08.A00() >= this.A00;
        long jMin = this.A07;
        if (c1804Os.A00 > 1.0f) {
            jMin = Math.min(N1.A0Q(jMin, c1804Os.A00), this.A06);
        }
        if (c1804Os.A01 < Math.max(jMin, 500000L)) {
            if (!this.A09 && z2) {
                z = false;
            }
            this.A01 = z;
            boolean z3 = this.A01;
            if (A0C[0].length() != 19) {
                throw new RuntimeException();
            }
            String[] strArr = A0C;
            strArr[1] = "RPsxz9X2WJlrVCFRvztVCr1gFLsyu0HY";
            strArr[6] = "UfnKhmU3SdsrRgULwhfYF6GPsY2YBSit";
            if (!z3 && c1804Os.A01 < 500000) {
                if (A0C[0].length() != 19) {
                    throw new RuntimeException();
                }
                A0C[5] = "qFHleZoIFEsxwUX876jY3pD2SZwF5bQA";
                MV.A07(A02(22, 18, 31), A02(40, 71, 21));
            }
        } else if (c1804Os.A01 >= this.A06 || z2) {
            this.A01 = false;
        }
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1805Ot
    public final boolean ALG(long j, float f, boolean z, boolean z2, long j2) {
        long jA0R = N1.A0R(j, f);
        long jMin = z ? this.A04 : this.A05;
        if (j2 != -9223372036854775807L) {
            jMin = Math.min(j2 / 2, jMin);
        }
        if (jMin > 0 && jA0R < jMin) {
            boolean z3 = this.A09;
            String[] strArr = A0C;
            if (strArr[3].charAt(11) != strArr[7].charAt(11)) {
                A0C[5] = "21qilKx7gAUezU3xgLpSHKKlQKWSAEKe";
                if (!z3) {
                    C1849Qx c1849Qx = this.A08;
                    String[] strArr2 = A0C;
                    if (strArr2[1].charAt(28) != strArr2[6].charAt(28)) {
                        A0C[0] = "VkpHjHCIFEEZQEtz5DH";
                        if (c1849Qx.A00() >= this.A00) {
                        }
                    }
                }
                return false;
            }
            throw new RuntimeException();
        }
        return true;
    }
}
