package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public enum EnumC3229sv {
    A03,
    A02,
    A07,
    A06,
    A04,
    A05;

    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 93);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{-56, -47, -57, -30, -58, -60, -43, -57, -39, -36, -27, -26, -25, -14, -42, -44, -27, -41, Ascii.DC2, 10, 9, Ascii.SO, Ascii.SUB, Ascii.DC2, 36, Ascii.ETB, 10, 8, Ascii.EM, 6, 19, Ascii.FF, 17, 10, -62, -75, -56, -67, -54, -71, Ascii.FF, Ascii.SO, 1, Ascii.ESC, Ascii.SO, 1, 19, -3, Ascii.SO, 0, Ascii.ESC, Ascii.SI, -1, Ascii.SO, 1, 1, 10, -70, -83, -65, -87, -70, -84, -57, -69, -67, -85, -85, -83, -69, -69, -57, -69, -85, -70, -83, -83, -74};
    }
}
