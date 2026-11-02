package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ec, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public enum EnumC2358ec {
    A08,
    A03,
    A04,
    A09,
    A02,
    A07,
    A06,
    A05;

    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 101);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{-27, -12, -12, 3, -9, -8, -13, -10, -23, -6, -8, 5, 5, 6, Ascii.VT, Ascii.SYN, 6, 7, -4, 5, -7, -9, 4, 4, 5, 10, Ascii.NAK, 10, 8, -9, -7, 1, -60, -46, -49, -48, -48, -59, -60, 7, Ascii.SUB, Ascii.SYN, 7, Ascii.DC4, Ascii.DLE, 3, Ascii.SO, 33, 4, Ascii.DC4, 17, Ascii.EM, Ascii.NAK, 7, Ascii.DC4, Ascii.DLE, 8, 9, 5, 6, 5, -4, -56, -69, -70, -65, -56, -69, -71, -54, -43, -54, -59, -43, -73, -58, -58};
    }

    public static boolean A02(EnumC2358ec enumC2358ec) {
        return A03.equals(enumC2358ec) || A04.equals(enumC2358ec);
    }
}
