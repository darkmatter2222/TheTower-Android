package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class PD implements InterfaceC2118aj {
    public static byte[] A03;
    public final int A00;
    public final int A01;
    public final C1744Mk A02;

    static {
        A01();
    }

    public PD(PE pe, VC vc) {
        this.A02 = pe.A00;
        this.A02.A0f(12);
        int iA0L = this.A02.A0L();
        if (A00(77, 9, 13).equals(vc.A0W)) {
            int iA06 = N1.A06(vc.A0C, vc.A06);
            if (iA0L == 0 || iA0L % iA06 != 0) {
                MV.A07(A00(20, 11, 78), A00(31, 46, 16) + iA06 + A00(0, 20, 47) + iA0L);
                iA0L = iA06;
            }
        }
        this.A00 = iA0L == 0 ? -1 : iA0L;
        this.A01 = this.A02.A0L();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 65);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{66, 78, Ascii.GS, Ascii.SUB, Ascii.GS, Ascii.DC4, 78, Ascii.GS, Ascii.SI, 3, Ascii.RS, 2, Ascii.VT, 78, Ascii.GS, 7, Ascii.DC4, Ascii.VT, 84, 78, 78, 123, 96, 98, 95, 110, 125, 124, 106, 125, 124, Ascii.DLE, 36, 53, 56, 62, 113, 34, 48, 60, 33, Base64.padSymbol, 52, 113, 34, 56, 43, 52, 113, 60, 56, 34, 60, 48, 37, 50, 57, 127, 113, 34, 37, 34, 53, 113, 34, 48, 60, 33, Base64.padSymbol, 52, 113, 34, 56, 43, 52, 107, 113, 45, 57, 40, 37, 35, 99, 62, 45, 59};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2118aj
    public final int A8l() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2118aj
    public final int A9Y() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2118aj
    public final int AIf() {
        return this.A00 == -1 ? this.A02.A0L() : this.A00;
    }
}
