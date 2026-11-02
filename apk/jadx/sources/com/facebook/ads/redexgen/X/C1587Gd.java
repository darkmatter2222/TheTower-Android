package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Gd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1587Gd extends AbstractC2369eo {
    public static byte[] A01;
    public final /* synthetic */ GT A00;

    static {
        A01();
    }

    public C1587Gd(GT gt) {
        this.A00 = gt;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 109);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{Ascii.ETB, 42, Base64.padSymbol, 50, 63, 46, -23, 42, 45, 60, -23, 54, 42, 55, 42, 48, 46, 59, -23, Base64.padSymbol, 49, 46, 50, 59, -23, 56, SignedBytes.MAX_POWER_OF_TWO, 55, -23, 50, 54, 57, 59, 46, 60, 60, 50, 56, 55, 60, -9};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A0B(C1716Lh c1716Lh) {
        this.A00.A1d(c1716Lh);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A0C() {
        if (this.A00.A0J != null) {
            this.A00.A0J.ADi();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A0D() {
        throw new IllegalStateException(A00(0, 41, 92));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A0F(InterfaceC2368en interfaceC2368en) {
        if (this.A00.A0C != null) {
            this.A00.A0C.A0L();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2369eo
    public final void A0G(C2922nt c2922nt) {
        this.A00.A16().A0F().A3j(C3076qS.A01(this.A00.A00), c2922nt.A03().getErrorCode(), c2922nt.A04());
        if (this.A00.A0J != null) {
            this.A00.A0J.AEr(c2922nt);
        }
    }
}
