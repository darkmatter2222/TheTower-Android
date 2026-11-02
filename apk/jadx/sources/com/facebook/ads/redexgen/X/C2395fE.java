package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import com.unity3d.mediation.LevelPlayAdError;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.fE, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2395fE implements Serializable {
    public static byte[] A0C = null;
    public static String[] A0D = {"R5DeYR6FKIddoQ1tNFb4QO1F3D7YHRG7", "hniB1BSXMiqlCD6U", "jhH7rQZzgqsha0FGspkq8z1DrJIjsBJk", "lw6F7y1SoSoTAEcdzLyYaN1xEC1Q2oWX", "ic1GHkKPsX6vyCRQCqNODZsBJ", "Aw8qdmnq9PbtDTR9ez9n3jUjtBry3vCr", "3as5zHbOptZ96SzIdP7nSqOic", "mvWErpvjRXL0vWcjCyiUNQO7TD5zouZh"};
    public static final long serialVersionUID = 85021702336014823L;
    public C2397fG A00;
    public long A01;
    public C2398fH A02;
    public C2402fL A03;
    public C2406fP A04;
    public C2407fQ A05;
    public String A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;

    static {
        A05();
    }

    public static C2395fE A00(JSONObject jSONObject) {
        int iOptInt;
        C2395fE c2395fE = new C2395fE();
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A01(403, 12, 2));
        C2401fK c2401fKA0M = new C2401fK().A0b(jSONObject.optString(A01(892, 5, 27))).A0a(jSONObject.optString(A01(884, 8, 10))).A0N(jSONObject.optString(A01(136, 4, InterfaceC3669k1.d.b.k))).A0Z(jSONObject.optString(A01(870, 14, 57))).A0X(jSONObject.optString(A01(640, 12, 49))).A0U(jSONObject.optString(A01(600, 12, 124))).A0K(jSONObject.optString(A01(128, 8, 14))).A0P(jSONObject.optString(A01(231, 14, 10))).A0J(jSONObject.optString(A01(93, 16, 103))).A0L(jSONObject.optString(A01(165, 8, 111))).A0O(jSONObject.optString(A01(214, 17, 103))).A0W(A03(jSONObjectOptJSONObject, A01(LevelPlayAdError.ERROR_CODE_LOAD_WHILE_SHOW, 11, 75), A01(76, 6, 88))).A0Q(A03(jSONObjectOptJSONObject, A01(245, 19, 64), A01(8, 9, 45))).A0Y(A03(jSONObjectOptJSONObject, A01(824, 9, 104), A01(89, 4, 9))).A0M(A03(jSONObjectOptJSONObject, A01(173, 13, 76), A01(0, 8, 47)));
        String strA01 = A01(612, 17, 70);
        c2395fE.A09(c2401fKA0M.A0V(A03(jSONObjectOptJSONObject, strA01, A01(82, 7, 2))).A0R(jSONObject.optString(strA01)).A0S(A03(jSONObjectOptJSONObject, A01(376, 27, 125), A01(17, 22, 87))).A0T(A03(jSONObjectOptJSONObject, A01(586, 14, 43), A01(0, 0, 78))).A0c());
        c2395fE.A0C(jSONObject.optString(A01(579, 7, 127)));
        c2395fE.A0A(new C2406fP(jSONObject.optString(A01(364, 12, 15)), jSONObject.optString(A01(151, 14, 19)), jSONObject.optJSONObject(A01(140, 11, 84)), jSONObject.optString(A02(jSONObject)), jSONObject.optString(A01(186, 12, 26))));
        String strA02 = A01(897, 19, 84);
        if (jSONObject.optInt(strA02, -1) == -1) {
            if (A0D[1].length() == 16) {
                A0D[5] = "m0SNHJxvul7tSRvrfYkKg9k0pQQtrIDe";
                iOptInt = jSONObject.optInt(A01(853, 17, 68), -1);
            }
            throw new RuntimeException();
        }
        iOptInt = jSONObject.optInt(strA02, -1);
        C2397fG c2397fGA0K = new C2397fG().A0L(jSONObject.optString(A01(983, 9, 42))).A0J(jSONObject.optLong(A01(959, 24, 32), -1L)).A0F(iOptInt).A0E(jSONObject.optInt(A01(672, 18, 122), Integer.MAX_VALUE)).A0D(jSONObject.optInt(A01(652, 20, 1), -1)).A0K(C2418fb.A02(jSONObject));
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(A01(421, 5, 104));
        if (jSONObjectOptJSONObject2 != null) {
            C2397fG c2397fGA0I = c2397fGA0K.A0M(jSONObjectOptJSONObject2.optString(A01(916, 3, 71))).A0I(jSONObjectOptJSONObject2.optInt(A01(992, 5, 37)));
            if (A0D[1].length() == 16) {
                A0D[5] = "WsiHjZ6Ab9OhwgLQk07kFOW3FmkdrPnz";
                c2397fGA0I.A0H(jSONObjectOptJSONObject2.optInt(A01(415, 6, 58)));
            }
            throw new RuntimeException();
        }
        c2395fE.A07(c2397fGA0K);
        c2395fE.A0G(jSONObject.optBoolean(A01(803, 21, 4)));
        c2395fE.A0B(new C2407fQ(AbstractC3052q4.A04(jSONObject.optJSONArray(A01(332, 15, 14))), jSONObject.optLong(A01(264, 24, 98), 0L), jSONObject.optLong(A01(288, 44, 121), 0L), jSONObject.optBoolean(A01(514, 26, 29)), jSONObject.optBoolean(A01(435, 31, 104), false), jSONObject.optBoolean(A01(466, 34, 61), false), jSONObject.optBoolean(A01(690, 45, 30), false), jSONObject.optBoolean(A01(735, 35, 25), false), A04(jSONObject.optJSONArray(A01(347, 17, 32)))));
        c2395fE.A0D(jSONObject.optBoolean(A01(560, 19, 81)));
        c2395fE.A06(jSONObject.optLong(A01(109, 19, 21), 0L));
        return c2395fE;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 58);
            String[] strArr = A0D;
            if (strArr[3].charAt(22) != strArr[0].charAt(22)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0D;
            strArr2[2] = "LXXQrjhAH5CnLq5fKQjRUnrA3R85ks8i";
            strArr2[7] = "Vzc9rcIkwZ9oA3QEo9fi0aCOPKhgVZjz";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static String A02(JSONObject jSONObject) {
        String strA01 = A01(198, 16, 99);
        String strA02 = A01(39, 37, 78);
        String strOptString = jSONObject.optString(strA01, strA02);
        if (!((String) YQ.A00(strOptString)).equals(strA02)) {
            return strOptString;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A01(403, 12, 2));
        if (jSONObjectOptJSONObject != null) {
            strA02 = jSONObjectOptJSONObject.optString(strA01, strA02);
        }
        return strA02;
    }

    public static String A03(JSONObject jSONObject, String str, String str2) {
        return jSONObject != null ? jSONObject.optString(str, str2) : str2;
    }

    public static List<C2937o9> A04(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    String strOptString = jSONObjectOptJSONObject.optString(A01(892, 5, 27));
                    String strOptString2 = jSONObjectOptJSONObject.optString(A01(884, 8, 10));
                    String strOptString3 = jSONObjectOptJSONObject.optString(A01(426, 9, 58));
                    if (strOptString.isEmpty()) {
                        strOptString = null;
                    }
                    if (strOptString2.isEmpty()) {
                        strOptString2 = null;
                    }
                    arrayList.add(new C2937o9(strOptString, strOptString2, strOptString3.isEmpty() ? null : strOptString3));
                }
            }
        }
        return arrayList;
    }

    public static void A05() {
        A0C = new byte[]{86, 116, 97, 112, 114, 122, 103, 108, 83, 120, 96, 121, 123, 120, 118, 115, 100, 43, Ascii.US, 2, 0, 77, 42, 2, 2, 10, 1, 8, 77, Base64.padSymbol, 1, Ascii.FF, Ascii.DC4, 77, 62, Ascii.EM, 2, Ascii.US, 8, Base64.padSymbol, 0, 84, 3, Ascii.GS, Ascii.CAN, Ascii.CAN, 84, Ascii.NAK, 1, 0, Ascii.ESC, Ascii.EM, Ascii.NAK, 0, Ascii.GS, Ascii.ETB, Ascii.NAK, Ascii.CAN, Ascii.CAN, Ascii.CR, 84, Ascii.ESC, 4, 17, Ascii.SUB, 84, Ascii.GS, Ascii.SUB, 84, 47, 7, 17, Ascii.ETB, 7, 41, 7, 48, 3, Ascii.SYN, Ascii.VT, Ascii.FF, 5, 106, 93, 78, 81, 93, 79, 75, 96, 90, 73, 86, 60, 57, 2, 62, 47, 56, 60, 41, 52, 43, 56, 2, 41, 36, 45, 56, 78, 75, 112, 89, 70, 75, 74, SignedBytes.MAX_POWER_OF_TWO, 112, 67, SignedBytes.MAX_POWER_OF_TWO, SignedBytes.MAX_POWER_OF_TWO, 95, 112, 91, 70, 66, 74, 92, 85, 68, 68, 107, 71, 93, 78, 81, 41, 36, 47, 50, Ascii.FF, Ascii.ESC, Ascii.SUB, Ascii.SUB, 1, 0, 49, 7, Ascii.CR, 1, 0, 74, 72, 69, 69, 118, 93, 70, 118, 72, 74, 93, SignedBytes.MAX_POWER_OF_TWO, 70, 71, 54, 52, 33, 48, 50, 58, 39, 44, Ascii.NAK, Ascii.ETB, 2, 19, 17, Ascii.EM, 4, Ascii.SI, 41, 2, 19, Ascii.SO, 2, 67, 84, 65, 127, 77, 69, 84, 65, 68, 65, 84, 65, Base64.padSymbol, 60, 53, 56, 32, 6, 58, 53, 48, 58, 50, 6, 45, 60, 33, 45, 57, 56, 46, 41, 52, 51, 60, 41, 52, 50, 51, 2, 41, 52, 41, 49, 56, 84, 95, 71, 94, 92, 95, 81, 84, 111, 83, 95, 69, 94, 68, Ascii.RS, Ascii.NAK, Ascii.CR, Ascii.DC4, Ascii.SYN, Ascii.NAK, Ascii.ESC, Ascii.RS, 37, Ascii.EM, Ascii.NAK, Ascii.SI, Ascii.DC4, Ascii.SO, 37, Ascii.SO, Ascii.US, 2, Ascii.SO, Base64.padSymbol, 54, 60, 7, 59, 57, 42, 60, 7, 62, 55, 42, 59, Base64.padSymbol, 7, 46, 49, Base64.padSymbol, 47, 7, 44, 49, 53, Base64.padSymbol, 38, 45, 39, Ascii.FS, 32, 34, 49, 39, Ascii.FS, 37, 44, 49, 32, 38, Ascii.FS, 53, 42, 38, 52, Ascii.FS, 55, 42, 46, 38, Ascii.FS, 37, 44, 49, Ascii.FS, 48, 38, 32, 44, 45, 39, Ascii.FS, 38, 45, 39, Ascii.FS, 32, 34, 49, 39, 81, 90, 80, 107, 87, 85, 70, 80, 107, 93, 89, 85, 83, 81, 71, 127, 116, 126, 69, 121, 123, 104, 126, 69, 119, 127, 110, 123, 126, 123, 110, 123, 83, 87, 84, 81, 106, 86, 90, 88, 88, 84, 91, 81, 33, 53, 40, 42, Ascii.CAN, 32, 40, 40, 32, 43, 34, Ascii.CAN, 55, 43, 38, 62, Ascii.CAN, 52, 51, 40, 53, 34, Ascii.CAN, 51, 34, 63, 51, 95, 93, 86, 93, 74, 81, 91, 103, 76, 93, SignedBytes.MAX_POWER_OF_TWO, 76, 104, 101, 105, 103, 104, 116, 59, 63, 51, 53, 55, 105, 109, 97, 103, 101, 95, 117, 114, 108, 59, 33, Ascii.CR, 55, 60, 54, Ascii.CR, 49, 51, 32, 54, Ascii.CR, 36, 96, Ascii.CR, 32, 55, 54, 55, 33, 59, 53, 60, Ascii.CR, 55, 60, 51, 48, 62, 55, 54, 110, 116, 88, 104, 100, 88, 98, 105, 99, 88, 100, 102, 117, 99, 88, 113, 53, 88, 117, 98, 99, 98, 116, 110, 96, 105, 88, 98, 105, 102, 101, 107, 98, 99, 70, 92, 112, 93, 74, 88, 78, 93, 75, 74, 75, 112, 78, 75, 78, 84, 120, 84, 66, 68, 72, 73, 67, 120, 66, 73, 67, 120, 68, 70, 85, 67, 120, 66, 73, 70, 69, 75, 66, 67, 3, Ascii.EM, 53, Ascii.FS, 3, Ascii.SO, Ascii.SI, 5, 53, Ascii.VT, Ascii.US, Ascii.SO, 3, 5, 53, 7, Ascii.US, Ascii.RS, Ascii.SI, Ascii.SO, 2, Ascii.CAN, 52, Ascii.FS, 10, Ascii.US, 8, 3, 52, 10, 5, Ascii.SI, 52, 9, Ascii.EM, 4, Ascii.FS, Ascii.CAN, Ascii.SO, 53, 36, 38, 46, 36, 34, 32, 97, 112, 99, 101, 127, 116, 99, 98, 121, 120, 97, 78, 112, 117, 52, 39, 50, 47, 40, 33, Ascii.EM, 37, 41, 51, 40, 50, Ascii.SO, Ascii.GS, 8, Ascii.NAK, Ascii.DC2, Ascii.ESC, 35, Ascii.US, 19, 9, Ascii.DC2, 8, 35, 8, Ascii.EM, 4, 8, 3, Ascii.DLE, 5, Ascii.CAN, Ascii.US, Ascii.SYN, 46, 5, Ascii.DC4, 9, 5, 121, 106, 127, 98, 101, 108, 84, 125, 106, 103, 126, 110, 72, 94, 88, 84, 85, 95, 72, 100, 93, 84, 73, 100, 85, 94, 67, 79, 100, 88, 79, 90, 51, 37, 35, 47, 46, 36, 51, Ascii.US, 38, 47, 50, Ascii.US, 50, 37, 55, 33, 50, 36, 87, 76, 75, 81, 72, SignedBytes.MAX_POWER_OF_TWO, 123, 86, 65, 74, SignedBytes.MAX_POWER_OF_TWO, 65, 86, 123, 65, 74, SignedBytes.MAX_POWER_OF_TWO, 71, 69, 86, SignedBytes.MAX_POWER_OF_TWO, 123, 73, 65, 80, 69, SignedBytes.MAX_POWER_OF_TWO, 69, 80, 69, 123, 83, 77, 80, 76, 75, 81, 80, 123, 86, 69, 80, 77, 74, 67, 80, 75, 76, 86, 79, 71, 124, 86, 80, 70, 124, 80, 70, 81, 85, 70, 81, 124, 81, 66, 87, 74, 77, 68, 124, SignedBytes.MAX_POWER_OF_TWO, 76, 86, 77, 87, 124, 87, 70, 91, 87, 75, 80, 87, 79, 103, 93, 86, 92, 103, 91, 89, 74, 92, 126, 101, 98, 122, 82, 104, 117, 100, 121, 82, 121, 127, 108, 99, 126, 100, 121, 100, 98, 99, 77, 86, 81, 73, 97, 87, 80, 74, 76, 81, 97, 74, 76, 95, 80, 77, 87, 74, 87, 81, 80, 33, 59, 40, 55, Ascii.CR, 38, 55, 42, 38, Ascii.VT, 19, 17, 8, 39, Ascii.EM, Ascii.SYN, Ascii.FS, 39, Ascii.DC4, Ascii.ETB, Ascii.VT, Ascii.GS, 39, 10, Ascii.GS, Ascii.SI, Ascii.EM, 10, Ascii.FS, Ascii.CR, Ascii.NAK, Ascii.ETB, Ascii.SO, Ascii.SO, Ascii.US, Ascii.FS, Ascii.DC2, Ascii.ESC, 33, Ascii.CR, Ascii.ESC, Ascii.GS, 17, Ascii.DLE, Ascii.SUB, Ascii.CR, 112, 108, 96, 106, 98, 111, 92, 96, 108, 109, 119, 102, 123, 119, 67, 69, 82, 68, 89, 68, 92, 85, 85, 72, 85, 77, 68, Ascii.ESC, 0, Ascii.GS, 5, 7, Ascii.RS, Ascii.RS, Ascii.SI, Ascii.FF, 2, Ascii.VT, 49, Ascii.GS, Ascii.VT, Ascii.CR, 1, 0, 10, Ascii.GS, 8, Ascii.SI, 17, 123, 100, 105, 104, 98, 82, 108, 120, 121, 98, 125, 97, 108, 116, 82, 104, 99, 108, 111, 97, 104, 105, SignedBytes.MAX_POWER_OF_TWO, 95, 82, 83, 89, 105, 82, 67, 68, 87, 66, 95, 89, 88, 105, 69, 83, 85, 108, 115, 126, 127, 117, 69, 106, 104, 127, 118, 117, 123, 126, 69, 105, 115, 96, 127, 69, 120, 99, 110, 127, 105, 102, 121, 116, 117, 127, 79, 101, 98, 124, 104, 118, 123, 107, 119};
    }

    private final void A06(long j) {
        this.A01 = Math.max(0L, j);
    }

    private void A07(C2397fG c2397fG) {
        this.A00 = c2397fG;
    }

    private final void A08(C2398fH c2398fH) {
        this.A02 = c2398fH;
    }

    private final void A09(C2402fL c2402fL) {
        this.A03 = c2402fL;
    }

    private final void A0A(C2406fP c2406fP) {
        this.A04 = c2406fP;
    }

    private final void A0B(C2407fQ c2407fQ) {
        this.A05 = c2407fQ;
    }

    private final void A0C(String str) {
        this.A06 = str;
    }

    private final void A0D(boolean z) {
        this.A08 = z;
    }

    private final void A0E(boolean z) {
        this.A09 = z;
    }

    private final void A0F(boolean z) {
        this.A0A = z;
    }

    private final void A0G(boolean z) {
        this.A0B = z;
    }

    public final long A0H() {
        return this.A01;
    }

    public final C2398fH A0I() {
        return this.A02;
    }

    public final C2402fL A0J() {
        return this.A03;
    }

    public final C2406fP A0K() {
        return this.A04;
    }

    public final C2407fQ A0L() {
        return this.A05;
    }

    public final String A0M() {
        return this.A06;
    }

    public final void A0N(int i) {
        this.A00.A0D(i);
        A08(this.A00.A0Q());
    }

    public final void A0O(JSONObject jSONObject) {
        A08(this.A00.A0Q());
    }

    public final void A0P(JSONObject jSONObject) {
        this.A00.A0O(jSONObject.optBoolean(A01(919, 22, 55)));
        this.A00.A0N(jSONObject.optBoolean(A01(540, 20, 80), true));
        A08(this.A00.A0Q());
        A0S(jSONObject.optBoolean(A01(500, 14, 21)));
        A0E(jSONObject.optBoolean(A01(770, 13, 2)));
        A0F(jSONObject.optBoolean(A01(783, 20, 55)));
    }

    public final void A0Q(JSONObject jSONObject) {
        this.A00.A0N(jSONObject.optBoolean(A01(540, 20, 80), true));
        A08(this.A00.A0Q());
    }

    public final void A0R(JSONObject jSONObject) {
        this.A00.A0G(jSONObject.optInt(A01(941, 18, 12)));
        this.A00.A0N(jSONObject.optBoolean(A01(540, 20, 80), true));
        this.A00.A0P(jSONObject.optBoolean(A01(833, 20, 66), false));
        A08(this.A00.A0Q());
        A0E(jSONObject.optBoolean(A01(770, 13, 2)));
    }

    public final void A0S(boolean z) {
        this.A07 = z;
    }

    public final boolean A0T() {
        return this.A07;
    }

    public final boolean A0U() {
        return this.A08;
    }

    public final boolean A0V() {
        return this.A01 > 0;
    }

    public final boolean A0W() {
        return this.A09;
    }

    public final boolean A0X() {
        return this.A0B;
    }
}
