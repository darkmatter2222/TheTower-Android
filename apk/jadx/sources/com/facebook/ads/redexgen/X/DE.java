package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.Map;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class DE extends AbstractC2200c3 {
    public static byte[] A01;
    public final /* synthetic */ D8 A00;

    static {
        A01();
    }

    public DE(D8 d8) {
        this.A00 = d8;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 86);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{47, 56, 59, 54, 42, Base64.padSymbol, Ascii.SO, 1, -4, -3, 7, -9, -4, Ascii.CR, 10, -7, Ascii.FF, 1, 7, 6, 43, Ascii.RS, Ascii.SUB, 44, Ascii.DC4, 41, 46, 37, Ascii.SUB};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2200c3
    public final void A03() {
        if (this.A00.A08.A07()) {
            return;
        }
        this.A00.A08.A05();
        if (TextUtils.isEmpty(this.A00.A03.A37())) {
            return;
        }
        Map<String, String> mapA07 = new C3278ti().A05(this.A00.A0C).A04(this.A00.A08).A06(this.A00.A03.A1b()).A07();
        mapA07.put(A00(0, 6, 115), this.A00.A03.A1c());
        mapA07.put(A00(6, 14, 66), String.valueOf(this.A00.A03.A1I()));
        if (this.A00.A05.A0F().AA8() != null) {
            mapA07.put(A00(20, 9, 95), this.A00.A05.A0F().AA8().name());
        }
        this.A00.A06.AC7(this.A00.A03.A37(), mapA07);
        if (this.A00.A03.A2m()) {
            this.A00.A05.A0F().AFZ();
        }
        C2988oz.A00(this.A00.A05).A0E(this.A00.A0B.A9O(), this.A00.A03.A37());
        C2410fT.A07(this.A00.A03.A33(), this.A00.A05);
        this.A00.A05.A0F().A3h();
        AbstractC2473gU.A02(this.A00.A03.A1Z(), AbstractC3061qD.A00(this.A00.A03.A1c()));
        this.A00.A0A.A5C(this.A00.A0B.A8s());
    }
}
