package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Yp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2037Yp {
    public static byte[] A00;
    public static String[] A01 = {"JKm0JUAjQEUHOkcp6hO5rnWr8MwHHkDW", "TUTC0kMJz1fV", "ctliOTGP2wkkCylecXDLY", "7yUThtqIf", "AJVWBaJPAROkxsDLWVyTf9VXCdLa0S3R", "l9NKwaE5DphjYVOjujGINoU8XccIVo6S", "LcQIihvayP3Cbpd3FHlBSzSyBU3Sxvoc", "huNpIJsJ2h6PoPtozajWK"};

    static {
        A02();
    }

    public static int A00(C1744Mk c1744Mk) {
        int i = 0;
        while (c1744Mk.A07() != 0) {
            int iA0I = c1744Mk.A0I();
            i += iA0I;
            if (iA0I != 255) {
                return i;
            }
        }
        return -1;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 83);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{7, 33, 37, 17, 48, 45, 40, Ascii.DC4, 44, 46, 55, 55, 46, 41, 32, 103, 53, 34, 42, 38, 46, 41, 35, 34, 53, 103, 40, 33, 103, 42, 38, 43, 33, 40, 53, 42, 34, 35, 103, Ascii.DC4, 2, Ascii.SO, 103, 9, 6, Ascii.VT, 103, 50, 41, 46, 51, 105};
    }

    public static void A03(long j, C1744Mk c1744Mk, ZP[] zpArr) {
        while (true) {
            int iA07 = c1744Mk.A07();
            String[] strArr = A01;
            if (strArr[0].charAt(12) == strArr[6].charAt(12)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[0] = "QuwVt3McBrRQsTYg5HbYJlPhURdGltNk";
            strArr2[6] = "E2RIVQJLzAlCF03p6JKrmJJT1m8evFc3";
            if (iA07 <= 1) {
                return;
            }
            int iA00 = A00(c1744Mk);
            int iA01 = A00(c1744Mk);
            int iA09 = c1744Mk.A09() + iA01;
            if (iA01 == -1 || iA01 > c1744Mk.A07()) {
                MV.A07(A01(0, 7, 23), A01(7, 45, 20));
                iA09 = c1744Mk.A0A();
            } else if (iA00 == 4 && iA01 >= 8) {
                int iA0I = c1744Mk.A0I();
                int iA0M = c1744Mk.A0M();
                int iA0C = iA0M == 49 ? c1744Mk.A0C() : 0;
                int iA0I2 = c1744Mk.A0I();
                if (iA0M == 47) {
                    c1744Mk.A0g(1);
                }
                boolean z = iA0I == 181 && (iA0M == 49 || iA0M == 47) && iA0I2 == 3;
                if (iA0M == 49) {
                    z &= iA0C == 1195456820;
                }
                if (z) {
                    A04(j, c1744Mk, zpArr);
                }
            }
            c1744Mk.A0f(iA09);
        }
    }

    public static void A04(long j, C1744Mk c1744Mk, ZP[] zpArr) {
        int iA0I = c1744Mk.A0I();
        if ((iA0I & 64) != 0) {
            c1744Mk.A0g(1);
            int i = (iA0I & 31) * 3;
            int iA09 = c1744Mk.A09();
            for (ZP zp : zpArr) {
                c1744Mk.A0f(iA09);
                zp.AK9(c1744Mk, i);
                if (j != -9223372036854775807L) {
                    String[] strArr = A01;
                    if (strArr[0].charAt(12) == strArr[6].charAt(12)) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A01;
                    strArr2[0] = "lwAucefG6GoIk2MFZH0nph40fdR061wg";
                    strArr2[6] = "Yi999lFOlA7299JVgsHEsxtW0HZbsSnk";
                    zp.AKC(j, 1, i, 0, null);
                }
            }
        }
    }
}
