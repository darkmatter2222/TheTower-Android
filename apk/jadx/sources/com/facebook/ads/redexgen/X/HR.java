package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class HR implements InterfaceC2985ow {
    public static byte[] A01;
    public final /* synthetic */ C1617Hh A00;

    static {
        A01();
    }

    public HR(C1617Hh c1617Hh) {
        this.A00 = c1617Hh;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 15);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{68, SignedBytes.MAX_POWER_OF_TWO, 67, 119, 102, 107, 103, 108, 97, 103, 76, 103, 118, 117, 109, 112, 105, Ascii.SI, 52, 63, 34, 42, 63, 57, 46, 63, 62, 122, 63, 40, 40, 53, 40, 116, 121, 104, 123, 105, 114, 69, 105, 114, 115, 127, 118, 126};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2985ow
    public final void ABf(int i, Throwable th) {
        Log.e(A00(0, 17, 13), A00(17, 17, 85), th);
        this.A00.A08().ABz(A00(34, 12, 21), i, new C2787lg(th));
    }
}
