package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.kk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2731kk {
    public static InterfaceC2732kl A00;
    public static byte[] A01;

    static {
        A02();
        A00 = null;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 25);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        synchronized (C2731kk.class) {
            if (A00 == null) {
                return;
            }
            C2787lg c2787lg = new C2787lg(A00.AJt());
            c2787lg.A05(1);
            C1617Hh c1617HhA00 = AbstractC2754l9.A00();
            if (c1617HhA00 != null) {
                c1617HhA00.A08().ABz(A00(0, 9, 109), 3401, c2787lg);
            }
            A00.reset();
        }
    }

    public static void A02() {
        A01 = new byte[]{-24, -21, -12, -23, -18, -13, -25, -8, -15};
    }

    public static void A03(long j) {
        if (j > 0) {
            A00 = new C1627Hr();
            new C2733km(j);
        }
    }
}
