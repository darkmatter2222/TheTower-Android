package com.facebook.ads.redexgen.X;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;
import org.json.JSONObject;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.fa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2417fa {
    public static byte[] A00;
    public static String[] A01 = {"supQtyS8W3onVuHqEhPkAVSqBybkIcHU", "ff4vqjx7fpIi29JjE6r", "RJO08Ilt3bxePyobo0aBvpyFdtgNFIs", "R3lU2DY6GPkOKTyjngiZTwzyGAILDPw1", "PTr0crZaDt8NiWq0Xd4", "se", "v6JOSQzBecuGYHkCCuEqCb8OFKq6lcaT", "KM7IQOG2bb6CTRDJ7wtiRs"};

    static {
        A0J();
    }

    public static C2413fW A00(JSONObject jSONObject) {
        return new C2412fV().A06(A0A(jSONObject)).A07(A09(jSONObject)).A05(A0B(jSONObject)).A04(A06(jSONObject)).A08();
    }

    public static C2425fi A01(JSONObject jSONObject) {
        return new C2424fh().A0H(A0E(jSONObject)).A0N(A0I(jSONObject)).A0M(A0G(jSONObject)).A0L(A0F(jSONObject)).A0G(A08(jSONObject)).A0F(A07(jSONObject)).A0C(jSONObject.optInt(A02(InterfaceC3669k1.a.b.h, 14, 52), 0)).A0J(A0D(jSONObject)).A0K(A0H(jSONObject)).A0I(A0C(jSONObject)).A0E(A05(jSONObject)).A0D(A04(jSONObject)).A0O();
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A01[3].charAt(30) != 'w') {
                break;
            }
            A01[0] = "2ucutjIi0db0Y5lwkQhEiYj5DZ";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 90);
            if (A01[5].length() == 26) {
                break;
            }
            String[] strArr = A01;
            strArr[7] = "yFgBEeCsPvrqNYYpqLUckp";
            strArr[2] = "OqUlVlD6dU1uZ6pPsuYDm2OxFFgTM2s";
            i4++;
        }
        throw new RuntimeException();
    }

    public static String A03(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A02(396, 12, 68));
        String strA02 = A02(240, 9, 121);
        return jSONObjectOptJSONObject == null ? strA02 : jSONObjectOptJSONObject.optString(A02(475, 9, 75), strA02);
    }

    public static String A04(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A02(396, 12, 68));
        String strA02 = A02(164, 18, 90);
        return jSONObjectOptJSONObject == null ? strA02 : jSONObjectOptJSONObject.optString(A02(249, 14, 30), strA02);
    }

    public static String A05(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A02(396, 12, 68));
        String strA02 = A02(182, 13, 91);
        return jSONObjectOptJSONObject == null ? strA02 : jSONObjectOptJSONObject.optString(A02(263, 17, 72), strA02);
    }

    public static String A06(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A02(396, 12, 68));
        String strA02 = A02(0, 8, 110);
        return jSONObjectOptJSONObject == null ? strA02 : jSONObjectOptJSONObject.optString(A02(280, 8, 123), strA02);
    }

    public static String A07(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A02(396, 12, 68));
        String strA02 = A02(25, 27, 97);
        if (jSONObjectOptJSONObject == null) {
            return strA02;
        }
        if (A01[5].length() == 26) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[7] = "LwyamWKC3K9hlcoWuZoKo6";
        strArr[2] = "VhAoacAWwwoYFOOhGU9ofRazLLTpUa3";
        return jSONObjectOptJSONObject.optString(A02(303, 20, 56), strA02);
    }

    public static String A08(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A02(396, 12, 68));
        String strA02 = A02(52, 17, 1);
        return jSONObjectOptJSONObject == null ? strA02 : jSONObjectOptJSONObject.optString(A02(288, 15, 121), strA02);
    }

    public static String A09(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A02(396, 12, 68));
        String strA02 = A02(115, 49, 52);
        return jSONObjectOptJSONObject == null ? strA02 : jSONObjectOptJSONObject.optString(A02(340, 28, 103), strA02);
    }

    public static String A0A(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A02(396, 12, 68));
        String strA02 = A02(69, 46, 77);
        return jSONObjectOptJSONObject == null ? strA02 : jSONObjectOptJSONObject.optString(A02(382, 14, 35), strA02);
    }

    public static String A0B(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A02(396, 12, 68));
        String strA02 = A02(8, 17, 101);
        return jSONObjectOptJSONObject == null ? strA02 : jSONObjectOptJSONObject.optString(A02(323, 17, 45), strA02);
    }

    public static String A0C(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A02(396, 12, 68));
        String strA02 = A02(0, 0, 110);
        if (jSONObjectOptJSONObject == null) {
            return strA02;
        }
        String strA03 = A02(368, 14, 24);
        String[] strArr = A01;
        if (strArr[4].length() != strArr[1].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[7] = "ZcN8W4dTh5W3JMM81ylewi";
        strArr2[2] = "QXkRE4A6KP0sP3p7YPT89OlWlJIBwyt";
        return jSONObjectOptJSONObject.optString(strA03, strA02);
    }

    public static String A0D(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A02(396, 12, 68));
        String strA02 = A02(0, 0, 110);
        if (jSONObjectOptJSONObject == null) {
            return strA02;
        }
        String[] strArr = A01;
        if (strArr[7].length() == strArr[2].length()) {
            throw new RuntimeException();
        }
        A01[3] = "5WHlUY8VBymbK0RSd2YTVbVIn0KKBkwQ";
        return jSONObjectOptJSONObject.optString(A02(TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE, 8, 61), strA02);
    }

    public static String A0E(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A02(396, 12, 68));
        String strA02 = A02(195, 17, 18);
        return jSONObjectOptJSONObject == null ? strA02 : jSONObjectOptJSONObject.optString(A02(430, 11, 111), strA02);
    }

    public static String A0F(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A02(396, 12, 68));
        String strA02 = A02(223, 17, 88);
        return jSONObjectOptJSONObject == null ? strA02 : jSONObjectOptJSONObject.optString(A02(466, 9, 73), strA02);
    }

    public static String A0G(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A02(396, 12, 68));
        String strA02 = A02(216, 7, 62);
        return jSONObjectOptJSONObject == null ? strA02 : jSONObjectOptJSONObject.optString(A02(445, 7, 79), strA02);
    }

    public static String A0H(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A02(396, 12, 68));
        String strA02 = A02(0, 0, 110);
        return jSONObjectOptJSONObject == null ? strA02 : jSONObjectOptJSONObject.optString(A02(452, 14, 111), strA02);
    }

    public static String A0I(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A02(396, 12, 68));
        String strA02 = A02(212, 4, 121);
        if (jSONObjectOptJSONObject == null) {
            return strA02;
        }
        if (A01[5].length() == 26) {
            throw new RuntimeException();
        }
        A01[6] = "TCZjzw6sPrB30puBIiA7RO8MkqmMxMbX";
        return jSONObjectOptJSONObject.optString(A02(441, 4, 0), strA02);
    }

    public static void A0J() {
        A00 = new byte[]{Ascii.VT, 52, 55, 59, 45, -24, 9, 44, 2, 46, 45, 51, 40, 45, 52, 36, -33, Ascii.SYN, 32, 51, 34, 39, 40, 45, 38, -2, 42, 41, 47, 36, 41, 48, 32, -37, 36, 41, -37, Ascii.SYN, 46, 32, Ascii.RS, 46, Ascii.CAN, -37, 47, 42, -37, Ascii.SYN, Ascii.FS, 43, 43, Ascii.CAN, -98, -54, -55, -49, -60, -55, -48, -64, 123, -49, -54, 123, -74, -68, -53, -53, -72, -22, Ascii.SYN, Ascii.NAK, Ascii.ESC, Ascii.DLE, Ascii.NAK, Ascii.FS, Ascii.FF, -57, Ascii.RS, 8, Ascii.ESC, 10, Ascii.SI, Ascii.DLE, Ascii.NAK, Ascii.SO, -57, Ascii.ESC, Ascii.SYN, -57, Ascii.EM, Ascii.FF, 10, Ascii.FF, Ascii.DLE, Ascii.GS, Ascii.FF, -57, 8, Ascii.NAK, -57, Ascii.DLE, Ascii.NAK, -44, Ascii.SO, 8, Ascii.DC4, Ascii.FF, -57, Ascii.EM, Ascii.FF, Ascii.RS, 8, Ascii.EM, Ascii.VT, -47, -3, -4, 2, -9, -4, 3, -13, -82, 5, -17, 2, -15, -10, -9, -4, -11, -82, 2, -3, -82, 0, -13, -15, -13, -9, 4, -13, -82, 9, -1, 3, -17, -4, 2, -9, 2, 7, Ascii.VT, 9, -15, 3, 0, 0, -13, -4, -15, 7, Ascii.VT, 3, 36, Ascii.EM, 34, Ascii.GS, 34, Ascii.ESC, -44, Ascii.GS, 34, -44, Ascii.SI, 39, Ascii.EM, Ascii.ETB, 39, 17, 39, 4, 37, Ascii.SUB, 35, Ascii.RS, 35, Ascii.FS, -43, Ascii.RS, 35, -29, -29, -29, -66, -47, -29, -51, -34, -48, -116, -43, -38, -116, -57, -33, -47, -49, -33, -55, -33, 38, 62, 60, 67, -21, 3, 1, 8, -72, -7, -4, 5, Ascii.GS, Ascii.ESC, 34, -46, 19, Ascii.SYN, -46, Ascii.ESC, 32, -46, Ascii.CR, 37, Ascii.ETB, Ascii.NAK, 37, Ascii.SI, 38, 67, 66, 65, 70, 66, 69, 56, 55, -39, -19, -20, -25, -37, -28, -31, -37, -29, -41, -31, -26, -41, -16, 3, Ascii.ETB, Ascii.SYN, 17, 5, Ascii.SO, Ascii.VT, 5, Ascii.CR, 1, 17, Ascii.DC2, 7, Ascii.DLE, Ascii.VT, Ascii.DLE, 9, 56, 65, 68, 72, 58, 52, 54, 57, 54, 66, 65, 71, 60, 65, 72, 56, 50, 71, 66, 50, 52, 67, 67, -11, 1, 0, 6, -5, 0, 7, -9, -15, 6, 1, -15, -13, 2, 2, -15, -5, 0, -15, 10, -22, -10, -11, -5, -16, -11, -4, -20, -26, -2, -24, -5, -22, -17, -16, -11, -18, 36, 48, 47, 53, 42, 47, 54, 38, 32, 56, 34, 53, 36, 41, 42, 47, 40, 32, 39, 48, 51, 32, 51, 38, 56, 34, 51, 37, -41, -22, -37, -26, -47, -37, -43, -31, -32, -47, -26, -41, -22, -26, -28, -30, -21, -30, -17, -26, -32, -36, -17, -30, -12, -34, -17, -31, 5, 3, Ascii.FF, 3, Ascii.DLE, 7, 1, -3, Ascii.DC2, 3, Ascii.SYN, Ascii.DC2, -4, 2, -14, -19, -9, -15, -3, -4, -19, 1, 2, 7, -6, -13, 5, Ascii.VT, -5, -10, Ascii.VT, -4, Ascii.SI, Ascii.VT, 59, 46, SignedBytes.MAX_POWER_OF_TWO, 42, 59, 45, 40, 50, 55, 40, 65, -51, -59, -61, -54, Ascii.FS, Ascii.DC4, Ascii.DC2, Ascii.EM, 8, 10, Ascii.CR, 60, 52, 50, 57, 40, 50, 44, 56, 55, 40, Base64.padSymbol, 46, 65, Base64.padSymbol, Ascii.SYN, Ascii.SO, Ascii.FF, 19, 2, Ascii.FF, 17, 2, Ascii.ESC, Ascii.CAN, Ascii.NAK, Ascii.DC4, 19, Ascii.CAN, Ascii.DC4, Ascii.ETB, 10, 9};
    }
}
