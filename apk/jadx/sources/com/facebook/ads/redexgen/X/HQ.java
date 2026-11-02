package com.facebook.ads.redexgen.X;

import com.google.android.gms.nearby.uwb.RangingPosition;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class HQ implements InterfaceC2194bx {
    public static byte[] A01;
    public final C1617Hh A00;

    static {
        A01();
    }

    public HQ(C1617Hh c1617Hh) {
        this.A00 = c1617Hh;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + RangingPosition.RSSI_MIN);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-2, -45, -20, -24, -45, -10, Ascii.NAK, Ascii.NAK, Ascii.DC2, -45, -8, Ascii.NAK, Ascii.ESC, Ascii.SUB, Ascii.SI, Ascii.DC4, Ascii.CR, -45, -6, Ascii.NAK, 17, Ascii.VT, Ascii.DC4, 102, 100, 86, 99, Ascii.RS, 82, 88, 86, 95, 101};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2194bx
    public final Map<String, String> A7G(boolean z) {
        HashMap map = new HashMap();
        if (!AbstractC2723kb.A00().A04()) {
            map.put(A00(0, 23, 39), C2825mJ.A00().A01(this.A00, true).A04());
        }
        map.put(A00(23, 10, 114), AbstractC2828mM.A06(new C2797lq(this.A00), this.A00, z));
        return map;
    }
}
