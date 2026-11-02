package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import org.json.JSONException;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class H4 implements InterfaceC2064Zq {
    public static byte[] A02;
    public final /* synthetic */ C1617Hh A00;
    public final /* synthetic */ InterfaceC2081a7 A01;

    static {
        A01();
    }

    public H4(InterfaceC2081a7 interfaceC2081a7, C1617Hh c1617Hh) {
        this.A01 = interfaceC2081a7;
        this.A00 = c1617Hh;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 32);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-120, -121, -125, -106, -105, -108, -121, -127, -123, -111, -112, -120, -117, -119};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2064Zq
    public final void A5I() {
        try {
            C2863mv.A0T(this.A00).A3A(this.A01.A8J().optJSONObject(A00(0, 14, 2)));
        } catch (JSONException e) {
            this.A00.A08().A4j(e);
        }
    }
}
