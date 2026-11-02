package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.collect.ElementTypesAreNonnullByDefault;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@ElementTypesAreNonnullByDefault
public abstract class W7 {
    public static byte[] A00;

    static {
        A02();
    }

    public static int A00(int i, String str) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException(str + A01(0, 29, 122) + i);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 63);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{-39, Ascii.FS, Ascii.SUB, 39, 39, 40, 45, -39, Ascii.ESC, Ascii.RS, -39, 39, Ascii.RS, 32, Ascii.SUB, 45, 34, 47, Ascii.RS, -39, Ascii.ESC, 46, 45, -39, 48, Ascii.SUB, 44, -13, -39, -120, -71, -64, -73, -73, 32, 33, -46, Ascii.NAK, 19, Ascii.RS, Ascii.RS, 37, -46, 38, 33, -46, 32, Ascii.ETB, 42, 38, -38, -37, -46, 37, Ascii.ESC, 32, Ascii.NAK, Ascii.ETB, -46, 38, Ascii.SUB, Ascii.ETB, -46, Ascii.RS, 19, 37, 38, -46, Ascii.NAK, 19, Ascii.RS, Ascii.RS, -46, 38, 33, -46, 36, Ascii.ETB, Ascii.US, 33, 40, Ascii.ETB, -38, -37, Ascii.NAK, Ascii.FS, 19, 19, -57, Ascii.DC2, Ascii.FF, 32, -57, Ascii.DLE, Ascii.NAK, -57, Ascii.FF, Ascii.NAK, Ascii.ESC, Ascii.EM, 32, -31, -57, Ascii.NAK, Ascii.FS, 19, 19, -28, -76, -69, -78, -78, 102, -68, -89, -78, -69, -85, 102, -81, -76, 102, -85, -76, -70, -72, -65, -128, 102};
    }

    public static void A03(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException(A01(84, 24, 104) + obj2);
        }
        if (obj2 == null) {
            throw new NullPointerException(A01(108, 21, 7) + obj + A01(29, 5, 12));
        }
    }

    public static void A04(boolean z) {
        AbstractC1995Wu.A0F(z, A01(34, 50, 115));
    }
}
