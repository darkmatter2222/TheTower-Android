package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class MF extends AbstractC2361ef {
    public static byte[] A01;
    public static final String A02;
    public final Uri A00;

    static {
        A01();
        A02 = MF.class.getSimpleName();
    }

    public MF(C1618Hi c1618Hi, InterfaceC2884nG interfaceC2884nG, String str, Uri uri) {
        super(c1618Hi, interfaceC2884nG, str);
        this.A00 = uri;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 1);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{88, 115, 123, 126, 119, 118, 50, -122, -127, 50, -127, -126, 119, -128, 50, 126, 123, -128, 125, 50, -121, -124, 126, 76, 50};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2361ef
    public final EnumC2358ec A0G(String str) {
        try {
            C3007pK.A0E(new C3007pK(), this.A01, this.A00, this.A03);
        } catch (Exception unused) {
            String str2 = A00(0, 25, 17) + this.A00.toString();
        }
        return EnumC2358ec.A08;
    }
}
