package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class TK extends Exception {
    public static byte[] A00;

    static {
        A01();
    }

    public TK(Throwable th) {
        super(A00(0, 39, 95), th);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 49);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{40, Ascii.SI, 7, 2, Ascii.VT, 10, 78, Ascii.SUB, 1, 78, Ascii.US, Ascii.ESC, Ascii.VT, Ascii.FS, Ascii.ETB, 78, Ascii.ESC, 0, 10, Ascii.VT, Ascii.FS, 2, Ascii.ETB, 7, 0, 9, 78, 3, Ascii.VT, 10, 7, Ascii.SI, 78, Ascii.CR, 1, 10, Ascii.VT, Ascii.CR, Ascii.GS};
    }
}
