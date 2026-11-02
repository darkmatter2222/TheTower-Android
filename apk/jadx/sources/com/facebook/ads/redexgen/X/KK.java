package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class KK extends AbstractRunnableC2979oq {
    public static byte[] A03;
    public InterfaceC2368en A00;
    public String A01;
    public final /* synthetic */ C13737f A02;

    static {
        A01();
    }

    public KK(C13737f c13737f, InterfaceC2368en interfaceC2368en, String str) {
        this.A02 = c13737f;
        this.A00 = interfaceC2368en;
        this.A01 = str;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 2);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{105, -116, -119, -104, -100, -115, -102, 72, -100, -111, -107, -115, -105, -99, -100, 86};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() {
        this.A02.A0U(this.A01);
        this.A02.A0P(this.A00);
        this.A02.AEr(new C2922nt(AdErrorType.NETWORK_ERROR, A00(0, 16, 38)));
    }
}
