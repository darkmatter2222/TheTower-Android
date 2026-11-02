package com.facebook.ads.redexgen.X;

import android.os.PowerManager;
import android.util.Log;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.qw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3106qw {
    public static byte[] A00;
    public static final String A01;

    static {
        A01();
        A01 = C3106qw.class.getSimpleName();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 23);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A00 = new byte[]{100, -105, -126, -124, -113, -109, -120, -114, -115, 63, -120, -115, 63, -110, -126, -111, -124, -124, -115, 63, -120, -115, -109, -124, -111, -128, -126, -109, -120, -107, -124, 63, -126, -121, -124, -126, -118, 75, 63, -128, -110, -110, -108, -116, -120, -115, -122, 63, -120, -115, -109, -124, -111, -128, -126, -109, -120, -107, -124, 77, -103, -104, -96, -114, -101, -46, -55, -45, -53, -39};
    }

    public static boolean A02(C1618Hi c1618Hi) {
        return A03(c1618Hi) && C3107qx.A03(c1618Hi);
    }

    public static boolean A03(C1618Hi c1618Hi) {
        if (c1618Hi == null) {
            return true;
        }
        try {
            return ((PowerManager) c1618Hi.getSystemService(A00(60, 5, 18))).isInteractive();
        } catch (Exception e) {
            Log.e(A01, A00(0, 60, 8), e);
            c1618Hi.A08().ABz(A00(65, 5, 73), AbstractC2786lf.A2S, new C2787lg(e));
            return true;
        }
    }
}
