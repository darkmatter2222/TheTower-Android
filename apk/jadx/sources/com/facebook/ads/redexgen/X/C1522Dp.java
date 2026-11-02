package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Dp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1522Dp extends AbstractC2200c3 {
    public static byte[] A01;
    public final /* synthetic */ AbstractC1521Do A00;

    static {
        A01();
    }

    public C1522Dp(AbstractC1521Do abstractC1521Do) {
        this.A00 = abstractC1521Do;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 51);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{90, 88, 75, 86, 76, 74, 92, 85, 102, 79, Ascii.VT, SignedBytes.MAX_POWER_OF_TWO, 75, 66, 74, 77, 70, 71, 124, 66, 71, 124, 74, 77, 71, 70, 91, Ascii.ESC, Ascii.DC2, Ascii.SI, Ascii.DLE, Ascii.FS, 9, 75, 77, 74, 90, Ascii.ESC, 4, 9, 8, 2, 50, 9, Ascii.CAN, Ascii.US, Ascii.FF, Ascii.EM, 4, 2, 3, 6, Ascii.EM, Ascii.NAK, 7, 47, 4, 9, 0, Ascii.NAK};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2200c3
    public final void A03() {
        if (this.A00.A0C.A07()) {
            return;
        }
        this.A00.A0C.A05();
        if (TextUtils.isEmpty(this.A00.A08.A37())) {
            return;
        }
        Map<String, String> mapA07 = new C3278ti().A05(this.A00.A0F).A04(this.A00.A0C).A06(this.A00.A08.A1b()).A07();
        mapA07.put(A00(27, 6, 78), this.A00.A08.A1c());
        mapA07.put(A00(37, 14, 94), String.valueOf(this.A00.A08.A1I()));
        if (this.A00.A01) {
            mapA07.put(A00(11, 16, 16), A00(0, 0, 11) + this.A00.A07);
        }
        if (this.A00.A09.A0F().AA8() != null) {
            mapA07.put(A00(51, 9, 67), this.A00.A09.A0F().AA8().name());
        }
        if (this.A00.A08.A39().size() > 1 && this.A00.A08.A2K()) {
            mapA07.put(A00(0, 11, 10), A00(33, 4, 12));
        }
        this.A00.A0A.AC7(this.A00.A08.A37(), mapA07);
        C2988oz.A00(this.A00.A09).A0E(this.A00.A0E.A9O(), this.A00.A08.A37());
        C2410fT.A07(this.A00.A08.A33(), this.A00.A09);
        this.A00.A09.A0F().A3h();
        if (!this.A00.A04) {
            AbstractC2473gU.A02(this.A00.A08.A1Z(), AbstractC3061qD.A00(this.A00.A08.A1c()));
        }
        if (this.A00.A05) {
            return;
        }
        this.A00.A0D.A5C(this.A00.A0E.A8s());
    }
}
