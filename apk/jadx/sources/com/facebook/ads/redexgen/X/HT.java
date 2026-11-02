package com.facebook.ads.redexgen.X;

import com.facebook.ads.AudienceNetworkAds;
import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class HT extends AbstractRunnableC2979oq {
    public static byte[] A02;
    public final /* synthetic */ AudienceNetworkAds.InitListener A00;
    public final /* synthetic */ AudienceNetworkAds.InitResult A01;

    static {
        A01();
    }

    public HT(AudienceNetworkAds.InitListener initListener, AudienceNetworkAds.InitResult initResult) {
        this.A00 = initListener;
        this.A01 = initResult;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 70);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{Ascii.DLE, Ascii.SYN, Ascii.NAK, 71, Ascii.ESC, 65, Ascii.DC4, Ascii.DC4, 94, 73, 70, 45, 100, 99, 100, 121, 100, 108, 97, 100, 119, 108, 121, 100, 98, 99, 45, 110, 98, 96, 125, 97, 104, 121, 104, 69, 66, 89, 100, 86, 81, 82};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() {
        AbstractC2933o5.A05(A00(35, 7, InterfaceC3669k1.d.b.k), A00(8, 27, 75), A00(0, 8, 100));
        this.A00.onInitialized(this.A01);
    }
}
