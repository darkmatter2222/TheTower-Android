package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;
import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Lk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1719Lk implements InterfaceC2738kr {
    public static byte[] A04;
    public final /* synthetic */ InterfaceC2376ev A00;
    public final /* synthetic */ C13847q A01;
    public final /* synthetic */ C7D A02;
    public final /* synthetic */ C3141rV A03;

    static {
        A01();
    }

    public C1719Lk(C13847q c13847q, C3141rV c3141rV, InterfaceC2376ev interfaceC2376ev, C7D c7d) {
        this.A01 = c13847q;
        this.A03 = c3141rV;
        this.A00 = interfaceC2376ev;
        this.A02 = c7d;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 17);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{57, Ascii.RS, Ascii.SYN, 19, Ascii.SUB, Ascii.ESC, 95, Ascii.VT, Ascii.DLE, 95, Ascii.ESC, Ascii.DLE, 8, 17, 19, Ascii.DLE, Ascii.RS, Ascii.ESC, 95, Ascii.RS, 95, Ascii.DC2, Ascii.SUB, Ascii.ESC, Ascii.SYN, Ascii.RS, 81};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2738kr
    public final void AEJ() {
        AdErrorType adErrorType = AdErrorType.CACHE_FAILURE_ERROR;
        String strA00 = A00(0, 27, 110);
        this.A02.A0F().A3j(C3076qS.A01(this.A01.A00), adErrorType.getErrorCode(), strA00);
        this.A00.AFQ(this.A01, C2922nt.A01(adErrorType, strA00));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2738kr
    public final void AEU() {
        this.A03.A0J();
        this.A00.AE9(this.A01, this.A03);
        this.A02.A0F().A4p(this.A01.A01 != null);
    }
}
