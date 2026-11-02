package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import javax.annotation.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.f4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2385f4 {
    public static byte[] A00;
    public static String[] A01 = {"qHmRz", "buvn2cesYrN8zmkoMAJdpkbnyQRY3iAF", "x7vS8I9TWcDRkC3QyQGWlMzhObF4g2wW", "AIjy2jeTbkREqnWnmOA9dVfWABJZ", "IfUpOWHYsX9n2UOxpamTmBNI3XVXxi7a", "s9Ktc", "3piv7SWQV7vtTtwTZRFeo4G9v1NaSSob", "iW7v8IxehIW1LC67DBoujqNPrB3dw9pM"};

    static {
        A03();
    }

    public static LK A00(C1618Hi c1618Hi, JSONObject jSONObject, String str) {
        return A01(c1618Hi, jSONObject, str, false, -1, 0);
    }

    public static LK A01(@Nullable C1618Hi c1618Hi, JSONObject jSONObject, String str, boolean z, int i, int i2) {
        if (jSONObject == null) {
            return new LK();
        }
        AbstractC3018pW.A04(c1618Hi, A02(0, 23, 77));
        String strOptString = jSONObject.optString(A02(479, 10, 93));
        int iOptInt = jSONObject.optInt(A02(116, 12, 73), 0);
        String strOptString2 = jSONObject.optString(A02(253, 13, 84));
        String strA02 = AbstractC3052q4.A02(jSONObject, A02(266, 12, 117));
        Uri uriA00 = TextUtils.isEmpty(strA02) ? null : AbstractC3011pP.A00(strA02);
        String strA03 = AbstractC3052q4.A02(jSONObject, A02(128, 4, 27));
        String strA01 = AbstractC3070qM.A01(strA03);
        String strA04 = AbstractC3052q4.A02(jSONObject, A02(101, 15, 115));
        String strA05 = AbstractC3052q4.A02(jSONObject, A02(593, 5, 95));
        String strA06 = AbstractC3052q4.A02(jSONObject, A02(585, 8, 77));
        String strA07 = AbstractC3052q4.A02(jSONObject, A02(386, 8, 91));
        String strA08 = AbstractC3052q4.A02(jSONObject, A02(539, 14, 93));
        String strA09 = AbstractC3052q4.A02(jSONObject, A02(403, 16, 77));
        String strA010 = AbstractC3052q4.A02(jSONObject, A02(553, 21, 84));
        String strA011 = AbstractC3052q4.A02(jSONObject, A02(87, 14, 42));
        String strA012 = AbstractC3052q4.A02(jSONObject, A02(459, 20, 38));
        String strA013 = AbstractC3052q4.A02(jSONObject, A02(443, 16, 21));
        String strA014 = AbstractC3052q4.A02(jSONObject, A02(426, 17, InterfaceC3669k1.d.b.j));
        String strA015 = AbstractC3052q4.A02(jSONObject, A02(132, 14, 22));
        C13757h c13757hA00 = C13757h.A00(jSONObject, c1618Hi);
        C2912ni c2912niA00 = C2912ni.A00(jSONObject.optJSONObject(A02(394, 4, 98)));
        C2912ni c2912niA01 = C2912ni.A00(jSONObject.optJSONObject(A02(398, 5, 70)));
        C2913nj c2913njA00 = C2913nj.A00(jSONObject.optJSONObject(A02(574, 11, 61)));
        String strA016 = AbstractC3052q4.A02(jSONObject, A02(598, 15, 56));
        boolean zOptBoolean = jSONObject.optBoolean(A02(238, 15, 6));
        boolean zOptBoolean2 = jSONObject.optBoolean(A02(219, 19, 21));
        int iOptInt2 = jSONObject.optInt(A02(514, 25, 5), 4);
        int iOptInt3 = jSONObject.optInt(A02(489, 25, 125), 0);
        int iOptInt4 = jSONObject.optInt(A02(695, 31, 100), 0);
        int iOptInt5 = jSONObject.optInt(A02(726, 26, 50), 1000);
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A02(53, 15, 6));
        C2912ni c2912niA02 = jSONObjectOptJSONObject != null ? C2912ni.A00(jSONObjectOptJSONObject) : null;
        String strA017 = AbstractC3052q4.A02(jSONObject, A02(68, 19, 17));
        EnumC2363eh enumC2363ehA00 = AbstractC2365ej.A00(jSONObject);
        Collection<String> collectionA03 = AbstractC2365ej.A03(c1618Hi, jSONObject);
        String strA018 = AbstractC3052q4.A02(jSONObject, A02(686, 9, 101));
        int iOptInt6 = jSONObject.optInt(A02(635, 18, 108), 0);
        long jOptLong = jSONObject.optLong(A02(662, 24, 67), -1L);
        String strA019 = AbstractC3052q4.A02(jSONObject, A02(653, 9, 102));
        String strA020 = A02(IronSourceError.ERROR_BN_RELOAD_SKIP_INVISIBLE, 22, 30);
        EnumC2916nm enumC2916nm = jSONObject.has(strA020) ? jSONObject.optBoolean(strA020) ? EnumC2916nm.A05 : EnumC2916nm.A04 : EnumC2916nm.A03;
        boolean zOptBoolean3 = jSONObject.optBoolean(A02(190, 29, 72));
        int iOptInt7 = jSONObject.optInt(A02(154, 36, 110), 100);
        boolean zOptBoolean4 = jSONObject.optBoolean(A02(278, 18, 19), false);
        int iOptInt8 = jSONObject.optInt(A02(296, 26, 64), 10);
        boolean zOptBoolean5 = jSONObject.optBoolean(A02(353, 33, 116), false);
        int iOptInt9 = jSONObject.optInt(A02(322, 31, 93), 1);
        ArrayList arrayList = null;
        try {
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(A02(146, 8, 0));
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                int length = jSONArrayOptJSONArray.length();
                ArrayList arrayList2 = new ArrayList(length);
                for (int i3 = 0; i3 < length; i3++) {
                    try {
                        arrayList2.add(A01(c1618Hi, jSONArrayOptJSONArray.getJSONObject(i3), str, true, i3, length));
                    } catch (JSONException e) {
                        e = e;
                        if (A01[6].charAt(19) != 'e') {
                            throw new RuntimeException();
                        }
                        String[] strArr = A01;
                        strArr[0] = "nA4Cb";
                        strArr[5] = "npWbY";
                        arrayList = arrayList2;
                        c1618Hi.A08().ABz(A02(419, 7, 84), AbstractC2786lf.A2A, new C2787lg(e));
                        Log.e(C1716Lh.A0E, A02(23, 30, 50), e);
                        return new LK(strA017, strA01, strA03, strA04, strA05, strA06, strA07, strA08, strA09, strA010, strA011, strA012, strA013, strA014, strA015, c2912niA02, c13757hA00, c2912niA00, c2912niA01, c2913njA00, strA018, strA019, jOptLong, enumC2916nm, z, i, i2, arrayList, str, strOptString, iOptInt, strOptString2, uriA00, strA016, zOptBoolean, zOptBoolean2, iOptInt3, iOptInt2, iOptInt4, iOptInt5, enumC2363ehA00, collectionA03, iOptInt7, zOptBoolean3, iOptInt6, zOptBoolean4, iOptInt8, zOptBoolean5, iOptInt9);
                    }
                }
                arrayList = arrayList2;
            }
        } catch (JSONException e2) {
            e = e2;
        }
        return new LK(strA017, strA01, strA03, strA04, strA05, strA06, strA07, strA08, strA09, strA010, strA011, strA012, strA013, strA014, strA015, c2912niA02, c13757hA00, c2912niA00, c2912niA01, c2913njA00, strA018, strA019, jOptLong, enumC2916nm, z, i, i2, arrayList, str, strOptString, iOptInt, strOptString2, uriA00, strA016, zOptBoolean, zOptBoolean2, iOptInt3, iOptInt2, iOptInt4, iOptInt5, enumC2363ehA00, collectionA03, iOptInt7, zOptBoolean3, iOptInt6, zOptBoolean4, iOptInt8, zOptBoolean5, iOptInt9);
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 112);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{-2, 50, 33, 38, 34, 43, 32, 34, -35, Ascii.VT, 34, 49, 52, 44, 47, 40, -35, 9, 44, Ascii.RS, 33, 34, 33, -9, Ascii.DLE, 3, 4, Ascii.SO, 7, -62, Ascii.SYN, 17, -62, Ascii.DC2, 3, Ascii.DC4, Ascii.NAK, 7, -62, 5, 3, Ascii.DC4, 17, Ascii.ETB, Ascii.NAK, 7, Ascii.SO, -62, 6, 3, Ascii.SYN, 3, -48, -41, -38, -43, -39, -34, -27, -33, -39, -37, -23, -43, -33, -39, -27, -28, -30, -27, -32, -28, -23, -16, -22, -28, -26, -12, -32, -19, -22, -17, -20, -32, -10, -13, -19, -5, -2, -7, Ascii.SO, Ascii.FF, -5, 8, Ascii.CR, 6, -5, Ascii.SO, 3, 9, 8, 68, 71, 89, 72, 85, 87, 76, 86, 72, 85, 66, 81, 68, 80, 72, Ascii.SUB, 39, Ascii.CAN, 37, 40, 32, 40, Ascii.CAN, 45, 50, 41, Ascii.RS, -19, -6, -17, 4, -23, -25, -14, -14, -27, -6, -11, -27, -25, -23, -6, -17, -11, -12, -45, -47, -30, -33, -27, -29, -43, -36, 65, 77, 76, 82, 63, 71, 76, 67, 80, Base64.padSymbol, 84, 71, 67, 85, 63, SignedBytes.MAX_POWER_OF_TWO, 71, 74, 71, 82, 87, Base64.padSymbol, 65, 70, 67, 65, 73, Base64.padSymbol, 71, 76, 82, 67, 80, 84, 63, 74, Ascii.ESC, 39, 38, 44, Ascii.EM, 33, 38, Ascii.GS, 42, Ascii.ETB, 46, 33, Ascii.GS, 47, Ascii.EM, Ascii.SUB, 33, 36, 33, 44, 49, Ascii.ETB, Ascii.GS, 38, Ascii.EM, Ascii.SUB, 36, Ascii.GS, Ascii.FS, -22, -13, -26, -25, -15, -22, -28, -8, -13, -26, -11, -8, -19, -12, -7, -28, -15, -12, -20, -37, -28, -41, -40, -30, -37, -43, -20, -33, -37, -19, -43, -30, -27, -35, 41, 50, 39, 54, Base64.padSymbol, 52, 56, 41, 40, 35, 39, 52, 49, 75, 71, 70, 73, 68, 72, 84, 82, 82, 70, 83, 73, -21, -24, -30, -26, -14, -8, -15, -9, -24, -11, -30, -24, -15, -28, -27, -17, -24, -25, Ascii.CAN, Ascii.NAK, Ascii.SI, 19, Ascii.US, 37, Ascii.RS, 36, Ascii.NAK, 34, Ascii.SI, 36, Ascii.EM, Ascii.GS, Ascii.NAK, Ascii.SI, Ascii.EM, Ascii.RS, Ascii.SI, 35, Ascii.NAK, 19, Ascii.US, Ascii.RS, Ascii.DC4, 35, 53, 50, 44, 58, 66, 57, 65, 54, 44, 48, 57, 54, 48, 56, 44, 48, 57, 60, SignedBytes.MAX_POWER_OF_TWO, 50, 44, 54, 48, 60, 59, 44, 48, 60, 66, 59, 65, 76, 73, 67, 81, 89, 80, 88, 77, 67, 71, 80, 77, 71, 79, 67, 71, 80, 83, 87, 73, 67, 77, 71, 83, 82, 67, 73, 82, 69, 70, 80, 73, 72, 51, 48, 44, 47, 55, 52, 57, 48, 59, 53, 65, SignedBytes.MAX_POWER_OF_TWO, Ascii.US, 35, Ascii.ETB, Ascii.GS, Ascii.ESC, 41, 38, 43, 40, Ascii.FS, 33, 34, 48, 32, 47, 38, 45, 49, 38, 44, 43, 52, 37, 54, 55, 45, 50, 43, 80, 65, 85, 83, 69, 63, 84, 82, 65, 78, 83, 76, 65, 84, 73, 79, 78, -11, -15, -26, -2, -28, -7, -9, -26, -13, -8, -15, -26, -7, -18, -12, -13, 6, 8, 5, 3, 5, 10, -5, -6, -11, 10, 8, -9, 4, 9, 2, -9, 10, -1, 5, 4, 63, 50, 62, 66, 50, SignedBytes.MAX_POWER_OF_TWO, 65, 44, 54, 49, 96, 91, 78, 93, 96, 85, 92, 97, 76, 80, 92, 90, 93, 95, 82, 96, 96, 76, 94, 98, 78, 89, 86, 97, 102, -24, -29, -42, -27, -24, -35, -28, -23, -44, -31, -28, -36, -44, -39, -38, -31, -42, -18, -44, -24, -38, -40, -28, -29, -39, SignedBytes.MAX_POWER_OF_TWO, 60, 48, 54, 46, 57, 44, 48, 60, 59, 65, 50, 69, 65, 55, 52, 51, 50, 55, 51, 54, 41, 40, 35, 56, 54, 37, 50, 55, 48, 37, 56, 45, 51, 50, 32, 33, Ascii.SO, Ascii.US, Ascii.FF, Ascii.US, Ascii.SO, 33, Ascii.SYN, Ascii.ESC, Ascii.DC4, 48, 50, Ascii.US, 49, 38, 49, 41, 34, 67, 56, 67, 59, 52, Ascii.GS, Ascii.ESC, Ascii.CR, Ascii.FF, 7, Ascii.SUB, Ascii.CR, Ascii.CAN, Ascii.ETB, Ascii.SUB, Ascii.FS, 7, Ascii.GS, Ascii.SUB, Ascii.DC4, 4, -9, -14, -13, -3, -19, -17, 3, 2, -3, -2, -6, -17, 7, -19, -13, -4, -17, -16, -6, -13, -14, 82, 69, SignedBytes.MAX_POWER_OF_TWO, 65, 75, 59, SignedBytes.MAX_POWER_OF_TWO, 81, 78, Base64.padSymbol, 80, 69, 75, 74, 59, 79, 65, 63, 76, 63, 58, 59, 69, 53, 67, 70, 58, 41, Ascii.FS, Ascii.ETB, Ascii.CAN, 34, Ascii.DC2, 35, 37, Ascii.CAN, Ascii.US, 34, Ascii.DC4, Ascii.ETB, Ascii.DC2, 38, Ascii.FS, 45, Ascii.CAN, Ascii.DC2, Ascii.NAK, 44, 39, Ascii.CAN, 38, 75, 62, 57, 58, 68, 52, 74, 71, 65, 74, Base64.padSymbol, 57, 75, 53, 54, Base64.padSymbol, SignedBytes.MAX_POWER_OF_TWO, Base64.padSymbol, 72, 77, 51, 55, 60, 57, 55, 63, 51, Base64.padSymbol, 66, Base64.padSymbol, 72, Base64.padSymbol, 53, SignedBytes.MAX_POWER_OF_TWO, 51, 56, 57, SignedBytes.MAX_POWER_OF_TWO, 53, 77, Ascii.CAN, Ascii.VT, 7, Ascii.EM, 3, 4, Ascii.VT, Ascii.SO, Ascii.VT, Ascii.SYN, Ascii.ESC, 1, 5, 10, 7, 5, Ascii.CR, 1, Ascii.VT, Ascii.DLE, Ascii.SYN, 7, Ascii.DC4, Ascii.CAN, 3, Ascii.SO};
        String[] strArr = A01;
        if (strArr[1].charAt(29) != strArr[4].charAt(29)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[0] = "aYUm7";
        strArr2[5] = "aSssW";
    }
}
