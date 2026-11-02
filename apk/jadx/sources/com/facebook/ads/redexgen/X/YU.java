package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public enum YU {
    A03(A01(35, 4, 104)),
    A04(A01(39, 4, InterfaceC3669k1.d.b.k));

    public static byte[] A01;
    public String A00;

    static {
        A02();
    }

    YU(String str) {
        this.A00 = str;
    }

    public static YU A00(String str) {
        for (YU yu : values()) {
            if (yu.A00.equals(str)) {
                return yu;
            }
        }
        throw new IllegalArgumentException(String.format(Locale.US, A01(4, 27, 75), str));
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 86);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{-99, -84, -93, -93, -22, Ascii.SI, Ascii.ETB, 2, Ascii.CR, 10, 5, -63, Ascii.DC4, 6, 19, Ascii.ETB, 6, 19, -63, 19, 6, Ascii.DC4, 17, Ascii.DLE, Ascii.SI, Ascii.DC4, 6, -37, -63, -58, Ascii.DC4, -34, -40, -40, -29, 36, 51, 42, 42, 50, 44, 44, 55};
    }
}
