package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class MD extends AbstractRunnableC2979oq {
    public static byte[] A02;
    public final /* synthetic */ C2375eu A00;
    public final /* synthetic */ JSONObject A01;

    static {
        A01();
    }

    public MD(C2375eu c2375eu, JSONObject jSONObject) {
        this.A00 = c2375eu;
        this.A01 = jSONObject;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 21);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{7, 19, 4, Ascii.DLE, Ascii.DC4, 4, Ascii.SI, 2, Ascii.CAN, 62, 2, 0, 17, 17, 8, Ascii.SI, 6};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() {
        try {
            this.A00.A05.await();
            synchronized (this.A00.A02) {
                try {
                    this.A00.A02.A0B(this.A01);
                    this.A00.A06.countDown();
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (InterruptedException e) {
            this.A00.A03.A08().ABz(A00(0, 17, 116), AbstractC2786lf.A1B, new C2787lg(e));
        } catch (JSONException e2) {
            this.A00.A0M();
            this.A00.A03.A08().ABz(A00(0, 17, 116), AbstractC2786lf.A1A, new C2787lg(e2));
        }
    }
}
