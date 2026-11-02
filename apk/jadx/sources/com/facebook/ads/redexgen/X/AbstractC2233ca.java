package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.regex.Pattern;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ca, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2233ca {
    public static byte[] A00;
    public static final Pattern A01;

    static {
        A03();
        A01 = Pattern.compile(A02(58, 15, 4));
    }

    public static float A00(String str) throws NumberFormatException {
        if (str.endsWith(A02(0, 1, 127))) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException(A02(23, 27, 70));
    }

    public static long A01(String str) throws NumberFormatException {
        long j = 0;
        String[] strArrA1P = N1.A1P(str, A02(56, 2, 65));
        for (String str2 : N1.A1O(strArrA1P[0], A02(1, 1, 119))) {
            j = (60 * j) + Long.parseLong(str2);
        }
        long j2 = j * 1000;
        if (strArrA1P.length == 2) {
            j2 += Long.parseLong(strArrA1P[1]);
        }
        return 1000 * j2;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 104);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{Ascii.FF, Ascii.EM, 43, 94, 86, 75, 73, 90, 75, 74, 6, Base64.padSymbol, 43, 40, 60, 58, 58, Ascii.DC4, 6, 45, 85, 90, 6, -2, 19, 32, 17, 19, Ascii.FS, 34, Ascii.SI, Ascii.NAK, 19, 33, -50, Ascii.ESC, 35, 33, 34, -50, 19, Ascii.FS, Ascii.DC2, -50, 37, Ascii.ETB, 34, Ascii.SYN, -50, -45, -11, -29, -32, -12, -14, -14, 5, -41, -54, -70, -69, -64, -79, -108, -57, -116, 117, -55, -102, -106, -107, -85, -112};
    }

    public static void A04(C1744Mk c1744Mk) throws L9 {
        int iA09 = c1744Mk.A09();
        if (A05(c1744Mk)) {
            return;
        }
        c1744Mk.A0f(iA09);
        throw L9.A01(A02(2, 21, 126) + c1744Mk.A0T(), null);
    }

    public static boolean A05(C1744Mk c1744Mk) {
        String strA0T = c1744Mk.A0T();
        return strA0T != null && strA0T.startsWith(A02(50, 6, 54));
    }
}
