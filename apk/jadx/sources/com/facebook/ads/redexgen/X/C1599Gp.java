package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Gp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1599Gp implements InterfaceC2187bq {
    public static byte[] A01;
    public final /* synthetic */ C2755lA A00;

    static {
        A01();
    }

    public C1599Gp(C2755lA c2755lA) {
        this.A00 = c2755lA;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 96);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{109, 79, SignedBytes.MAX_POWER_OF_TWO, 9, 90, Ascii.SO, 74, 71, 93, 94, 79, 90, 77, 70, Ascii.SO, 77, 65, 91, SignedBytes.MAX_POWER_OF_TWO, 90, 75, 92, 93, 0, 6, 43, 49, 50, 35, 54, 33, 42, 39, 38, 98, 33, 45, 55, 44, 54, 39, 48, 49, 108, 98, Ascii.DLE, 39, 49, 50, 45, 44, 49, 39, 120, 98};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2187bq
    public final void AES(InterfaceC2193bw interfaceC2193bw) {
        if (!this.A00.A05().AB6() || interfaceC2193bw == null) {
            return;
        }
        String str = A00(24, 31, 34) + interfaceC2193bw.A7d();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2187bq
    public final void AEs(Exception exc) {
        if (this.A00.A05().AB6()) {
            Log.e(C2895nR.A00(), A00(0, 24, 78), exc);
        }
    }
}
