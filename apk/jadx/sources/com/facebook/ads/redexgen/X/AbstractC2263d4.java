package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.d4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2263d4 {
    public static String[] A00 = {"q", "", "cPr4W3", "kHXWkKmkRb2eUHnaHguQys1Si10FXsIA", "uZFKxIG3z3l5tcvE1Z6QufsEmHWnbqe6", "qN4HGXOIb", "YM48h", "AHYaa4vORgLBjrBGzfRTL0sqCQyhHS18"};

    public static int A00(byte[] bArr, int i, int i2) {
        while (i < i2) {
            byte b = bArr[i];
            String[] strArr = A00;
            if (strArr[3].charAt(6) == strArr[7].charAt(6)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A00;
            strArr2[0] = "U";
            strArr2[6] = "9vOO0";
            if (b == 71) {
                break;
            }
            i++;
        }
        return i;
    }

    public static long A01(C1744Mk c1744Mk, int i, int i2) {
        c1744Mk.A0f(i);
        if (c1744Mk.A07() < 5) {
            return -9223372036854775807L;
        }
        int iA0C = c1744Mk.A0C();
        if ((8388608 & iA0C) != 0 || ((2096896 & iA0C) >> 8) != i2) {
            return -9223372036854775807L;
        }
        if (((iA0C & 32) != 0) && c1744Mk.A0I() >= 7) {
            int iA07 = c1744Mk.A07();
            if (A00[4].charAt(29) == 'Z') {
                throw new RuntimeException();
            }
            A00[5] = "kSPQfSkaSYbD7hJ";
            if (iA07 >= 7) {
                if ((c1744Mk.A0I() & 16) == 16) {
                    String[] strArr = A00;
                    if (strArr[3].charAt(6) == strArr[7].charAt(6)) {
                        byte[] bArr = new byte[6];
                        c1744Mk.A0k(bArr, 0, bArr.length);
                        return A02(bArr);
                    }
                    String[] strArr2 = A00;
                    strArr2[2] = "1UwvFb";
                    strArr2[1] = "";
                    byte[] bArr2 = new byte[6];
                    c1744Mk.A0k(bArr2, 0, bArr2.length);
                    return A02(bArr2);
                }
            }
        }
        return -9223372036854775807L;
    }

    public static long A02(byte[] bArr) {
        return ((((long) bArr[0]) & 255) << 25) | ((((long) bArr[1]) & 255) << 17) | ((((long) bArr[2]) & 255) << 9) | ((((long) bArr[3]) & 255) << 1) | ((255 & ((long) bArr[4])) >> 7);
    }

    public static boolean A03(byte[] bArr, int i, int i2, int i3) {
        int i4 = 0;
        for (int i5 = -4; i5 <= 4; i5++) {
            int i6 = (i5 * 188) + i3;
            String[] strArr = A00;
            if (strArr[3].charAt(6) != strArr[7].charAt(6)) {
                A00[5] = "yLEdlsl7C97OfRYEy8LQZix7JYsmYm";
                if (i6 < i || i6 >= i2 || bArr[i6] != 71) {
                    i4 = 0;
                } else {
                    i4++;
                    if (i4 == 5) {
                        if (A00[5].length() != 29) {
                            String[] strArr2 = A00;
                            strArr2[0] = "8";
                            strArr2[6] = "tDl2F";
                            return true;
                        }
                    }
                }
            }
            throw new RuntimeException();
        }
        return false;
    }
}
