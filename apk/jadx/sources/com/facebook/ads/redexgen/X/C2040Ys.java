package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ys, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2040Ys {
    public static byte[] A03;
    public static String[] A04 = {"7VvaHwX3tfphwfCLWQfrQKIRAGdyloOa", "8J30auRI6e038TEwYpLi3vH7bvlxUiQ6", "hSwdMRFRGycphylBAB70n5Da", "mznulLX5Ll5NodqEsyQUwgMWUzAXgmUY", "cmJhU1MVkapOcnBOb7oIhNV01KwpAY2D", "s5j3KKDYzXZlMJmqYI2ZAxCcnpSFLDi0", "BZcBgqNXmD5jA968wQAMFNVVLX5zvNJl", "HgNUdEvTYIarvHFndhWfWmSF8F1sTAhB"};
    public final int A00;
    public final int A01;
    public final String A02;

    static {
        A02();
    }

    public C2040Ys(int i, int i2, String str) {
        this.A01 = i;
        this.A00 = i2;
        this.A02 = str;
    }

    public static C2040Ys A00(C1744Mk c1744Mk) {
        String strA01;
        c1744Mk.A0g(2);
        int iA0I = c1744Mk.A0I();
        int i = iA0I >> 1;
        int iA0I2 = ((iA0I & 1) << 5) | ((c1744Mk.A0I() >> 3) & 31);
        if (i == 4 || i == 5 || i == 7) {
            strA01 = A01(7, 4, 18);
        } else if (i == 8) {
            strA01 = A01(11, 4, 64);
        } else {
            if (i != 9) {
                return null;
            }
            strA01 = A01(3, 4, 52);
        }
        StringBuilder sbAppend = new StringBuilder().append(strA01);
        String strA02 = A01(1, 2, 49);
        StringBuilder sbAppend2 = sbAppend.append(strA02).append(i);
        if (iA0I2 >= 10) {
            strA02 = A01(0, 1, 123);
        }
        return new C2040Ys(i, iA0I2, sbAppend2.append(strA02).append(iA0I2).toString());
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] - i3) - 12);
            if (A04[7].charAt(21) != 'm') {
                throw new RuntimeException();
            }
            String[] strArr = A04;
            strArr[5] = "dFWB2soWDPbDDNVpSYw8EbvcmaZh5iMl";
            strArr[0] = "6qvQDYI8gJoFkmQKclqU8TmUGkIK5sJJ";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A03 = new byte[]{-75, 107, 109, -95, -74, -93, 115, -126, -108, -122, -125, -76, -79, -62, 125};
    }
}
