package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdPlacementType;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Lz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1733Lz extends AbstractC2200c3 {
    public static byte[] A01;
    public static String[] A02 = {"FgbnvaZAo2zgRtU3CN", "YP", "YkV47bdQ42QlJT1tn1x7cz3pH3dqwNv1", "zb1LbTWGtLRgqKOOaslPxENibZiVmFvx", "sBLEzoq931HN9t2OuzTVSqT9STbao9n2", "e2NZEuwsUivMgVi0HFeccuL47PicSvpI", "KfeuMQLHaU5EbEo6nJYtUmaaW2ijmOwJ", "Sl3KQDCtIIr069NMPBnyPAzljAsiyN2h"};
    public final /* synthetic */ C13857r A00;

    static {
        A01();
    }

    public C1733Lz(C13857r c13857r) {
        this.A00 = c13857r;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = (bArrCopyOfRange[i4] ^ i3) ^ 46;
            String[] strArr = A02;
            if (strArr[6].charAt(25) == strArr[5].charAt(25)) {
                throw new RuntimeException();
            }
            A02[4] = "9SrcrYYNLVmZbA63NmfQBwmMn4zOba1D";
            bArrCopyOfRange[i4] = (byte) i5;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{Ascii.RS, Ascii.GS, Ascii.DC2, Ascii.DC2, Ascii.EM, Ascii.SO};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2200c3
    public final void A03() {
        if (this.A00.A0G.A07()) {
            return;
        }
        this.A00.A0G.A05();
        this.A00.A04.A0F().A4r(this.A00.A02 != null);
        this.A00.A04.A0F().A3h();
        if (this.A00.A03 != null) {
            AbstractC2473gU.A02(this.A00.A03.A1Z(), AbstractC3061qD.A00(A00(0, 6, 82)));
        }
        Map<String, String> mapA07 = new C3278ti().A05(this.A00.A0B).A04(this.A00.A0G).A06(this.A00.A03 != null ? this.A00.A03.A1b() : null).A07();
        if (this.A00.A05 != null && this.A00.A03 != null) {
            this.A00.A05.AC7(this.A00.A03.A37(), mapA07);
        }
        if (C2863mv.A19(this.A00.A04)) {
            C13777j c13777j = this.A00.A03;
            if (A02[1].length() == 32) {
                throw new RuntimeException();
            }
            A02[7] = "SZAtxMR6MMekU9BPahg69f1UGEqO5j5S";
            if (c13777j != null) {
                C2988oz.A00(this.A00.A04).A0E(AdPlacementType.BANNER.toString(), this.A00.A03.A37());
            }
        }
        C2410fT.A07(this.A00.A03 != null ? this.A00.A03.A33() : null, this.A00.A04);
        if (this.A00.A0B != null) {
            this.A00.A0B.A0V();
        }
    }
}
