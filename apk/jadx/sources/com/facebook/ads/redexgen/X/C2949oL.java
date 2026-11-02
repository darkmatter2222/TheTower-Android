package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.oL, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2949oL {
    public static byte[] A00;
    public static final C2949oL A01;

    static {
        A05();
        A01 = new C2949oL();
    }

    public static synchronized C2949oL A00() {
        return A01;
    }

    private GG A01(C1618Hi c1618Hi, JSONObject jSONObject, long j) throws JSONException {
        JSONObject jSONObject2 = jSONObject.getJSONArray(A04(178, 10, 70)).getJSONObject(0);
        C2806lz c2806lzA00 = C2806lz.A00(jSONObject2.getJSONObject(A04(124, 10, 88)));
        String strOptString = jSONObject2.optString(A04(139, 14, 21));
        String strA04 = A04(47, 5, 116);
        String str = null;
        String strOptString2 = jSONObject2.has(strA04) ? jSONObject2.optString(strA04) : null;
        String strA05 = A04(188, 9, 46);
        C2805ly c2805ly = new C2805ly(c2806lzA00, strOptString, jSONObject2.optString(A04(0, 19, 98)), strOptString2, jSONObject2.has(strA05) ? jSONObject2.optString(strA05) : null, A06(jSONObject2));
        String strA06 = A04(26, 3, 57);
        if (jSONObject2.has(strA06)) {
            JSONArray jSONArray = jSONObject2.getJSONArray(strA06);
            int i = 0;
            while (i < jSONArray.length()) {
                JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                AbstractC2894nQ.A06(c1618Hi, jSONObject3, j, str);
                String strOptString3 = jSONObject3.optString(A04(19, 7, 39));
                String strOptString4 = jSONObject3.optString(A04(90, 15, 87));
                JSONObject jSONObjectOptJSONObject = jSONObject3.optJSONObject(A04(68, 4, 82));
                JSONArray jSONArrayOptJSONArray = jSONObject3.optJSONArray(A04(197, 8, 64));
                if (jSONObjectOptJSONObject != null) {
                    c2805ly.A0E(new C2803lw(strOptString3, strOptString4, jSONObjectOptJSONObject, jSONArrayOptJSONArray));
                } else {
                    c1618Hi.A0F().A6F(AdErrorType.UNKNOWN_ERROR.getErrorCode(), A04(72, 18, 63));
                }
                i++;
                str = null;
            }
        }
        String strA07 = A04(52, 12, 3);
        if (jSONObject2.has(strA07)) {
            c2805ly.A0F(jSONObject2.getJSONObject(strA07));
        }
        return new GG(c2805ly, jSONObject.optString(A04(29, 18, 1)));
    }

    private GF A02(JSONObject jSONObject) {
        return new GF(jSONObject.optString(A04(171, 7, 90), A04(0, 0, 87)), jSONObject.optInt(A04(64, 4, 116), 0), null);
    }

    private GF A03(JSONObject jSONObject) {
        String strA04 = A04(188, 9, 46);
        String strA05 = A04(47, 5, 116);
        try {
            JSONObject jSONObject2 = jSONObject.getJSONArray(A04(178, 10, 70)).getJSONObject(0);
            return new GF(jSONObject.optString(A04(171, 7, 90), A04(0, 0, 87)), jSONObject.optInt(A04(64, 4, 116), 0), new C2805ly(C2806lz.A00(jSONObject2.getJSONObject(A04(124, 10, 88))), jSONObject2.optString(A04(139, 14, 21)), jSONObject2.optString(A04(0, 19, 98)), jSONObject2.has(strA05) ? jSONObject2.optString(strA05) : null, jSONObject2.has(strA04) ? jSONObject2.optString(strA04) : null, A06(jSONObject2)));
        } catch (JSONException unused) {
            return A02(jSONObject);
        }
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 119);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A00 = new byte[]{116, 113, 74, 103, 112, 101, 122, 103, 97, 124, 123, 114, 74, 118, 122, 123, 115, 124, 114, 49, 52, 49, 32, 36, 53, 34, 47, 42, Base64.padSymbol, Ascii.ETB, Ascii.CAN, 41, 0, Ascii.ETB, Ascii.SUB, Ascii.US, Ascii.DC2, Ascii.ETB, 2, Ascii.US, Ascii.EM, Ascii.CAN, 41, 3, 3, Ascii.US, Ascii.DC2, 96, 98, 96, 107, 102, Ascii.ETB, Ascii.FS, Ascii.NAK, Ascii.GS, Ascii.SUB, 43, 4, Ascii.NAK, 6, Ascii.NAK, Ascii.EM, 7, 96, 108, 103, 102, 65, 68, 81, 68, 44, 41, 60, 41, 7, 42, 34, 45, 43, 60, 104, 33, 59, 104, 38, Base64.padSymbol, 36, 36, 68, 65, 84, 65, 127, 77, 79, 68, 69, 76, 127, 84, 89, 80, 69, 85, 84, 83, 68, 86, 110, 87, 68, 95, 95, 84, 93, 110, 82, 94, 95, 87, 88, 86, 75, 74, 73, 70, 65, 70, 91, 70, SignedBytes.MAX_POWER_OF_TWO, 65, 0, Ascii.ETB, Ascii.ETB, 10, Ascii.ETB, 4, 7, 3, Ascii.SYN, Ascii.ETB, Ascii.DLE, 7, Base64.padSymbol, 1, Ascii.CR, Ascii.FF, 4, Ascii.VT, 5, 85, 86, 94, 102, 90, 76, 75, 75, 92, 87, 77, 102, 95, 76, 87, 87, 92, 85, SignedBytes.MAX_POWER_OF_TWO, 72, 94, 94, 76, 74, 72, 65, 93, 80, 82, 84, 92, 84, 95, 69, 66, 42, Base64.padSymbol, 50, 6, 58, 56, 58, 49, 60, 67, 69, 86, 84, 92, 82, 69, 68, 71, 74, 67, 86};
    }

    public static boolean A06(JSONObject jSONObject) throws JSONException {
        String strA04 = A04(105, 19, 70);
        if (jSONObject.has(strA04)) {
            return jSONObject.getJSONObject(strA04).optBoolean(A04(153, 18, 78), false);
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:6:0x0028  */
    public final C2951oN A07(C1618Hi c1618Hi, String str, long j) throws JSONException {
        byte b;
        if (!TextUtils.isEmpty(str)) {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString(A04(InterfaceC3669k1.c.b.f, 4, 68));
            int iHashCode = strOptString.hashCode();
            String strA04 = A04(134, 5, 18);
            switch (iHashCode) {
                case 96432:
                    if (!strOptString.equals(A04(26, 3, 57))) {
                        b = -1;
                    } else {
                        b = 0;
                    }
                    break;
                case 96784904:
                    if (!strOptString.equals(strA04)) {
                        b = -1;
                    } else {
                        b = 1;
                    }
                    break;
                default:
                    b = -1;
                    break;
            }
            switch (b) {
                case 0:
                    return A01(c1618Hi, jSONObject, j);
                case 1:
                    return A03(jSONObject);
                default:
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(strA04);
                    if (jSONObjectOptJSONObject != null) {
                        return A02(jSONObjectOptJSONObject);
                    }
                    break;
            }
        }
        return new C2951oN(EnumC2950oM.A05);
    }
}
