package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.LinkedHashMap;
import org.json.JSONObject;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ff, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2422ff {
    public static byte[] A00;
    public static final LinkedHashMap<String, C2420fd> A01;

    static {
        A02();
        A01 = new C2421fe(10, 0.75f, true);
    }

    public static C2420fd A00(String str) {
        C2420fd c2420fd;
        if (str == null) {
            return null;
        }
        synchronized (A01) {
            c2420fd = A01.get(str);
        }
        return c2420fd;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 109);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{-14, 3, 41, 43, 40, 38, 40, Ascii.CAN, Ascii.FS, 40, Ascii.GS, Ascii.RS, 59, Base64.padSymbol, 58, 56, 58, 42, 46, 58, 47, 48, 42, 55, 44, 45, 48, 55, 42, 62, SignedBytes.MAX_POWER_OF_TWO, 45, 63, 52, 63, 55, 48, 3, 5, 2, 0, 2, -14, -10, 2, -9, -8, -14, -1, -12, -11, -8, -1, -14, 7, -4, 7, -1, -8};
    }

    public static void A03(String str, C2420fd c2420fd) {
        if (str.isEmpty()) {
            return;
        }
        synchronized (A01) {
            A01.put(str, c2420fd);
        }
    }

    public static void A04(JSONObject jSONObject, C2416fZ c2416fZ) {
        String strOptString = jSONObject.optString(A01(2, 10, 76));
        if (strOptString.isEmpty()) {
            return;
        }
        String strOptString2 = jSONObject.optString(A01(37, 22, 38));
        String strOptString3 = jSONObject.optString(A01(12, 25, 94));
        String strA02 = c2416fZ != null ? c2416fZ.A02() : null;
        String strA01 = c2416fZ != null ? c2416fZ.A01() : null;
        String strOptString4 = jSONObject.optString(A01(0, 2, 34));
        if (strOptString2.isEmpty()) {
            strOptString2 = null;
        }
        A03(strOptString4, new C2420fd(strOptString, strOptString2, strOptString3.isEmpty() ? null : strOptString3, strA02, strA01));
    }
}
