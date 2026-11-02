package com.facebook.ads.redexgen.X;

import android.graphics.Color;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.gx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2501gx {
    public static byte[] A00;
    public static String[] A01 = {"5xFyhJyAmXwpndJ9EoKqTFqqLI0O0t2g", "XKBE22ujheeLcTYagdBtfv4d5l35c1GL", "dLXeMiu6Rni", "1iBW7", "i8dAz", "3kaHypJVzQjnFbgNDhrnWnyYOdOCg92b", "E8vO87QQkuay4qK7aMyGFQLc0ZjeOzJS", "6MpCOYCclTS"};
    public static final ThreadLocal<double[]> A02;

    static {
        A08();
        A02 = new ThreadLocal<>();
    }

    public static double A00(int i) {
        double[] dArrA0B = A0B();
        A0A(i, dArrA0B);
        return dArrA0B[1] / 100.0d;
    }

    public static double A01(int i, int i2) {
        if (Color.alpha(i2) != 255) {
            throw new IllegalArgumentException(A07(32, 36, 34) + Integer.toHexString(i2));
        }
        if (Color.alpha(i) < 255) {
            i = A04(i, i2);
        }
        double dA00 = A00(i) + 0.05d;
        double dA01 = A00(i2) + 0.05d;
        return Math.max(dA00, dA01) / Math.min(dA00, dA01);
    }

    public static int A02(int i, int i2) {
        if (i2 >= 0) {
            String[] strArr = A01;
            if (strArr[7].length() != strArr[2].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[4] = "QbRpT";
            strArr2[3] = "VTwjf";
            if (i2 <= 255) {
                return (16777215 & i) | (i2 << 24);
            }
        }
        throw new IllegalArgumentException(A07(0, 32, 3));
    }

    public static int A03(int i, int i2) {
        return 255 - (((255 - i2) * (255 - i)) / 255);
    }

    public static int A04(int i, int i2) {
        int iAlpha = Color.alpha(i2);
        int iAlpha2 = Color.alpha(i);
        int iA03 = A03(iAlpha2, iAlpha);
        return Color.argb(iA03, A06(Color.red(i), iAlpha2, Color.red(i2), iAlpha, iA03), A06(Color.green(i), iAlpha2, Color.green(i2), iAlpha, iA03), A06(Color.blue(i), iAlpha2, Color.blue(i2), iAlpha, iA03));
    }

    public static int A05(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.argb((int) ((Color.alpha(i) * f2) + (Color.alpha(i2) * f)), (int) ((Color.red(i) * f2) + (Color.red(i2) * f)), (int) ((Color.green(i) * f2) + (Color.green(i2) * f)), (int) ((Color.blue(i) * f2) + (Color.blue(i2) * f)));
    }

    public static int A06(int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            return 0;
        }
        int i6 = i * 255 * i2;
        if (A01[5].charAt(28) != 'g') {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[6] = "EiJ3SZauLYptPcqesCwpBNypQb2YWqb9";
        strArr[0] = "xFHbgEBZ8DdXBDb1YuxLeCnMJFT4PyYq";
        return (i6 + ((i3 * i4) * (255 - i2))) / (i5 * 255);
    }

    public static String A07(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 52);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A08() {
        A00 = new byte[]{-104, -93, -89, -97, -104, 87, -92, -84, -86, -85, 87, -103, -100, 87, -103, -100, -85, -82, -100, -100, -91, 87, 103, 87, -104, -91, -101, 87, 105, 108, 108, 101, -72, -73, -71, -63, -67, -56, -59, -53, -60, -70, 118, -71, -73, -60, 118, -60, -59, -54, 118, -72, -69, 118, -54, -56, -73, -60, -55, -62, -53, -71, -69, -60, -54, -112, 118, 121, -11, -5, -6, -34, -1, 0, -90, -13, -5, -7, -6, -90, -18, -25, -4, -21, -90, -25, -90, -14, -21, -12, -19, -6, -18, -90, -11, -20, -90, -71, -76};
    }

    public static void A09(int i, int i2, int i3, double[] dArr) {
        if (dArr.length != 3) {
            throw new IllegalArgumentException(A07(68, 31, 82));
        }
        double d = ((double) i) / 255.0d;
        double dPow = d < 0.04045d ? d / 12.92d : Math.pow((d + 0.055d) / 1.055d, 2.4d);
        double d2 = ((double) i2) / 255.0d;
        double dPow2 = d2 < 0.04045d ? d2 / 12.92d : Math.pow((d2 + 0.055d) / 1.055d, 2.4d);
        double d3 = ((double) i3) / 255.0d;
        double dPow3 = d3 < 0.04045d ? d3 / 12.92d : Math.pow((0.055d + d3) / 1.055d, 2.4d);
        dArr[0] = ((0.4124d * dPow) + (0.3576d * dPow2) + (0.1805d * dPow3)) * 100.0d;
        dArr[1] = ((0.2126d * dPow) + (0.7152d * dPow2) + (0.0722d * dPow3)) * 100.0d;
        dArr[2] = ((0.0193d * dPow) + (0.1192d * dPow2) + (0.9505d * dPow3)) * 100.0d;
    }

    public static void A0A(int i, double[] dArr) {
        A09(Color.red(i), Color.green(i), Color.blue(i), dArr);
    }

    public static double[] A0B() {
        double[] dArr = A02.get();
        if (dArr != null) {
            return dArr;
        }
        double[] dArr2 = new double[3];
        A02.set(dArr2);
        return dArr2;
    }
}
