package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Cn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1494Cn extends AbstractRunnableC2979oq {
    public static byte[] A01;
    public final /* synthetic */ C13315p A00;

    static {
        A01();
    }

    public C1494Cn(C13315p c13315p) {
        this.A00 = c13315p;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 73);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{53, 10, 7, 6, Ascii.FF, 67, Ascii.CR, 6, Ascii.NAK, 6, 17, 67, Ascii.DLE, Ascii.ETB, 2, 17, Ascii.ETB, 6, 7, 67, 19, Ascii.SI, 2, Ascii.SUB, 10, Ascii.CR, 4};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() {
        if (this.A00.A0J) {
            return;
        }
        this.A00.A0S(A00(0, 27, 42));
    }
}
