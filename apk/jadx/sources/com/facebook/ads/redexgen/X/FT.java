package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.Map;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class FT implements InterfaceC2547hj {
    public static byte[] A01;
    public final /* synthetic */ FS A00;

    static {
        A01();
    }

    public FT(FS fs) {
        this.A00 = fs;
    }

    public /* synthetic */ FT(FS fs, FZ fz) {
        this(fs);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 95);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{Ascii.SO, 7, Ascii.SUB, 5, 9, Ascii.FS, 1, 7, 17, 6, Ascii.ETB, Ascii.CAN, Ascii.GS, Ascii.ETB, Ascii.US, 106, 117, 120, 121, 115, 67, 120, 105, 110, 125, 104, 117, 115, 114, 46, 49, Base64.padSymbol, 47, 7, 44, 33, 40, Base64.padSymbol};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2547hj
    public final void AEY() {
        this.A00.A0W(true, A00(6, 9, 43));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2547hj
    public final void AFD() {
        if (this.A00.A0f) {
            this.A00.A0R.A0F().AFW();
            return;
        }
        if (!TextUtils.isEmpty(this.A00.A0O.A37())) {
            Map<String, String> mapA07 = new C3278ti().A05(this.A00.A0B.getViewabilityChecker()).A04(this.A00.A0B.getTouchDataRecorder()).A07();
            mapA07.put(A00(0, 6, 55), this.A00.A0O.A1c());
            mapA07.put(A00(15, 14, 67), String.valueOf(this.A00.A0O.A1I()));
            if (this.A00.A0R.A0F().AA8() != null) {
                mapA07.put(A00(29, 9, 7), this.A00.A0R.A0F().AA8().name());
            }
            this.A00.A0S.AC7(this.A00.A0O.A37(), mapA07);
            C2988oz.A00(this.A00.A0R).A0E(this.A00.A0X.A9O(), this.A00.A0O.A37());
            C2410fT.A07(this.A00.A0O.A33(), this.A00.A0R);
            AbstractC2473gU.A02(this.A00.A0O.A1Z(), AbstractC3061qD.A00(this.A00.A0O.A1c()));
            this.A00.A0R.A0F().A3h();
            if (this.A00.A0P.A0h()) {
                this.A00.A0R.A0F().AFV();
            }
        }
        this.A00.A0W.A5C(this.A00.A0X.A8s());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2547hj
    public final void AFk() {
        this.A00.A0W.A5C(this.A00.A0X.A8c());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2547hj
    public final void AFm() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2547hj
    public final void AGV() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2547hj
    public final void AHt() {
        this.A00.A0W.AEH(15);
    }
}
