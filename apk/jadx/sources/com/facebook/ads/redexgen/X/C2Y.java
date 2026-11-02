package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.2Y, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract /* synthetic */ class C2Y {
    public static byte[] A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 101);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{43, Ascii.CR, 8, Ascii.GS, 10, 88, Ascii.ESC, Ascii.EM, Ascii.DC4, Ascii.DC4, Ascii.VT, 88, Ascii.SI, 17, Ascii.FF, Ascii.DLE, 88, Ascii.FS, Ascii.GS, Ascii.RS, Ascii.EM, Ascii.CR, Ascii.DC4, Ascii.FF, 88, Ascii.EM, 10, Ascii.US, Ascii.CR, Ascii.NAK, Ascii.GS, Ascii.SYN, Ascii.FF, Ascii.VT, 88, Ascii.SYN, Ascii.ETB, Ascii.FF, 88, Ascii.VT, Ascii.CR, 8, 8, Ascii.ETB, 10, Ascii.FF, Ascii.GS, Ascii.FS, 88, 17, Ascii.SYN, 88, Ascii.FF, Ascii.DLE, 17, Ascii.VT, 88, Ascii.FF, Ascii.EM, 10, Ascii.US, Ascii.GS, Ascii.FF, 84, 88, Ascii.RS, Ascii.CR, Ascii.SYN, Ascii.ESC, Ascii.FF, 17, Ascii.ETB, Ascii.SYN, 66, 88, Ascii.SUB, Ascii.GS, Ascii.US, 17, Ascii.SYN, 45, 8, Ascii.FS, Ascii.EM, Ascii.FF, Ascii.GS};
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void A02(AnonymousClass12 anonymousClass12, long j, List list, Map map, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException(A00(0, 86, 29));
        }
        if ((i & 4) != 0) {
            map = C0X.A02();
        }
        anonymousClass12.A58(j, list, map);
    }
}
