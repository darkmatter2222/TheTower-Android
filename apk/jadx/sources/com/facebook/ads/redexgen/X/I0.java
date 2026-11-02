package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class I0 extends AbstractRunnableC2979oq {
    public static byte[] A01;
    public final /* synthetic */ C2711kP A00;

    static {
        A01();
    }

    public I0(C2711kP c2711kP) {
        this.A00 = c2711kP;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 18);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{62, 44, 44, 58, 43, 44};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() {
        try {
            JSONArray jSONArray = this.A00.A05.getJSONArray(A00(0, 6, 77));
            for (int i = 0; i < jSONArray.length(); i++) {
                C2709kN c2709kNA00 = C2709kN.A00(jSONArray.getJSONObject(i));
                this.A00.A09(c2709kNA00.A04, c2709kNA00);
            }
            this.A00.A02.A0X(new I2(this), new C2739ks(this.A00.A04, this.A00.A03));
        } catch (JSONException unused) {
            this.A00.A00.post(new I1(this));
        }
    }
}
