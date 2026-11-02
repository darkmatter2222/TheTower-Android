package com.facebook.ads.redexgen.X;

import android.content.SharedPreferences;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.google.common.base.Ascii;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.kp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2736kp {
    public static byte[] A00;

    static {
        A02();
    }

    public static SharedPreferences A00(C2755lA c2755lA) {
        return c2755lA.getSharedPreferences(ProcessUtils.getProcessSpecificName(A01(9, 34, 105), c2755lA), 0);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 33);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{45, 59, Ascii.DLE, 42, 55, 59, Base64.padSymbol, 46, 60, 43, 39, 37, 102, 46, 41, 43, 45, 42, 39, 39, 35, 102, 41, 44, 59, 102, 33, 38, 60, 45, 58, 38, 41, 36, 102, 42, 60, 45, 48, 60, 58, 41, 59};
    }

    public final String A03(C2755lA c2755lA) {
        return A00(c2755lA).getString(A01(0, 9, 110), null);
    }

    public final void A04(C2755lA c2755lA, String str) {
        A00(c2755lA).edit().putString(A01(0, 9, 110), str).apply();
    }
}
