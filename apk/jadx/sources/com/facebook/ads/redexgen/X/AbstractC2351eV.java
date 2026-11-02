package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.eV, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract /* synthetic */ class AbstractC2351eV {
    public static byte[] A00;

    static {
        A03();
    }

    public static long A00(InterfaceC2352eW interfaceC2352eW) {
        return interfaceC2352eW.A7H(A02(0, 7, 126), -1L);
    }

    public static Uri A01(InterfaceC2352eW interfaceC2352eW) {
        String strA7J = interfaceC2352eW.A7J(A02(7, 9, InterfaceC3669k1.d.b.k), null);
        if (strA7J == null) {
            return null;
        }
        return Uri.parse(strA7J);
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 4);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{Ascii.US, 2, Ascii.NAK, 37, Ascii.SYN, Ascii.US, Ascii.DC4, Ascii.DLE, Ascii.CR, Ascii.SUB, 42, 7, Ascii.DLE, 17, Ascii.FS, 7};
    }
}
