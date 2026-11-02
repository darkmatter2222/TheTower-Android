package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.cv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2254cv {
    public static byte[] A02;
    public final List<VC> A00;
    public final ZP[] A01;

    static {
        A01();
    }

    public C2254cv(List<VC> list) {
        this.A00 = list;
        this.A01 = new ZP[list.size()];
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 74);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-2, 35, 43, Ascii.SYN, 33, Ascii.RS, Ascii.EM, -43, Ascii.CAN, 33, 36, 40, Ascii.SUB, Ascii.EM, -43, Ascii.CAN, Ascii.SYN, 37, 41, Ascii.RS, 36, 35, -43, 34, Ascii.RS, 34, Ascii.SUB, -43, 41, 46, 37, Ascii.SUB, -43, 37, 39, 36, 43, Ascii.RS, Ascii.EM, Ascii.SUB, Ascii.EM, -17, -43, -68, -53, -53, -57, -60, -66, -68, -49, -60, -54, -55, -118, -66, -64, -68, -120, -111, -117, -109, -50, -35, -35, -39, -42, -48, -50, -31, -42, -36, -37, -100, -48, -46, -50, -102, -92, -99, -91};
    }

    public final void A02(long j, C1744Mk c1744Mk) {
        AbstractC2037Yp.A03(j, c1744Mk, this.A01);
    }

    public final void A03(InterfaceC2044Yw interfaceC2044Yw, C2261d2 c2261d2) {
        for (int i = 0; i < this.A01.length; i++) {
            c2261d2.A05();
            ZP zpALm = interfaceC2044Yw.ALm(c2261d2.A03(), 3);
            VC vc = this.A00.get(i);
            String str = vc.A0W;
            AbstractC1722Ln.A09(A00(43, 19, 17).equals(str) || A00(62, 19, 35).equals(str), A00(0, 43, kotlin.fh.h1) + str);
            zpALm.A7E(new C1689Ke().A0y(vc.A0T != null ? vc.A0T : c2261d2.A04()).A11(str).A0n(vc.A0H).A10(vc.A0V).A0Z(vc.A03).A12(vc.A0X).A14());
            this.A01[i] = zpALm;
        }
    }
}
