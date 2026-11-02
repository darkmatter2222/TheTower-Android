package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class SB implements InterfaceC1770Nk {
    public static byte[] A00;
    public static final boolean A01;

    /* JADX WARN: Code duplicated, block: B:11:0x0038  */
    static {
        boolean z;
        A01();
        if (A00(8, 6, 8).equals(N1.A05)) {
            if (!A00(4, 4, 116).equals(N1.A06)) {
                if (!A00(0, 4, 56).equals(N1.A06)) {
                    z = false;
                }
            }
            z = true;
        } else {
            z = false;
        }
        A01 = z;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 86);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{47, 40, 58, 44, 99, 100, 118, 111, Ascii.US, 51, 63, 36, 49, 48};
    }
}
