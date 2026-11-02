package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.ArrayList;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.21, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AnonymousClass21 {
    public static byte[] A00;
    public static String[] A01 = {"xPMOoUfbkmQ5kvnU3jbgLL47OcFEjU7z", "1dodMLotzUEJucQn2MWgY64F", "Ei0kY7ZOP", "czo3jP2JN", "", "hHdeWCinA2EaAz86iaUgwk6OrkZVXmHI", "CkfkaUvdCRi5J5AIUl6JSr62iIVQ3RiE", "AT3hLPm3hPYjZ73rxoY4ER"};

    static {
        A02();
    }

    public static AnonymousClass26 A00(C1618Hi c1618Hi, JSONObject jSONObject, C2746kz c2746kz, C2892nO c2892nO, C3418vy c3418vy, boolean z) {
        boolean z2;
        String strA0S;
        boolean z3 = z;
        String strA01 = A01(101, 3, kotlin.fh.g1);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        String strOptString = jSONObject.optString(A01(51, 26, 80));
        arrayList3.add(strOptString);
        if (z3) {
            strA0S = c2746kz.A0S(strOptString);
            if (strOptString.equals(strA0S)) {
                z3 = false;
                z2 = false;
            } else {
                z2 = z3;
            }
        } else {
            z2 = z3;
            strA0S = strOptString;
        }
        c2892nO.A04(EnumC2891nN.A0P, null);
        try {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A01(92, 4, 1));
            if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optString(strA01) != null) {
                arrayList.add(jSONObjectOptJSONObject.optString(strA01));
                if (z2) {
                    jSONObjectOptJSONObject.put(strA01, c2746kz.A0R(jSONObjectOptJSONObject.optString(strA01)));
                }
            }
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(A01(77, 15, 126));
            if (jSONArrayOptJSONArray != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    String strOptString2 = jSONArrayOptJSONArray.optString(i);
                    arrayList.add(strOptString2);
                    if (z2) {
                        jSONArrayOptJSONArray.put(i, c2746kz.A0R(strOptString2));
                    }
                }
            }
            JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray(A01(43, 8, 26));
            if (jSONArrayOptJSONArray2 != null) {
                for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                    A03(arrayList, arrayList2, jSONArrayOptJSONArray2.optJSONObject(i2), c2746kz, z2);
                }
            } else {
                A03(arrayList, arrayList2, jSONObject, c2746kz, z2);
            }
        } catch (JSONException unused) {
            c3418vy.A04(AbstractC2786lf.A15, A01(0, 43, 79));
        }
        return new AnonymousClass26(jSONObject, strA0S, arrayList, arrayList2, arrayList3, z3);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 79);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{69, 114, 114, 111, 114, 32, 116, 114, 97, 110, 115, 102, 111, 114, 109, 105, 110, 103, 32, 74, 83, 79, 78, 32, 105, 110, 32, 117, 112, 100, 97, 116, 101, 67, 97, 99, 104, 101, 100, 85, 114, 108, 115, 54, 52, 39, 58, 32, 38, 48, 57, 123, 102, 113, 126, 114, 118, 124, SignedBytes.MAX_POWER_OF_TWO, 108, 123, 116, SignedBytes.MAX_POWER_OF_TWO, 115, 126, 102, 122, 109, SignedBytes.MAX_POWER_OF_TWO, 119, 107, 114, 115, SignedBytes.MAX_POWER_OF_TWO, 106, 109, 115, 84, 95, 85, 110, 82, 80, 67, 85, 110, 88, 92, 80, 86, 84, 66, 39, 45, 33, 32, 2, 6, 10, Ascii.FF, Ascii.SO, 80, 87, 73, 107, 116, 121, 120, 114, 66, 104, 111, 113};
    }

    public static void A03(ArrayList<String> arrayList, ArrayList<String> arrayList2, JSONObject jSONObject, C2746kz c2746kz, boolean z) throws JSONException {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A01(96, 5, 36));
        if (jSONObjectOptJSONObject != null) {
            String strA01 = A01(101, 3, kotlin.fh.g1);
            if (A01[1].length() == 1) {
                throw new RuntimeException();
            }
            A01[7] = "G1neCcMuoIIVUH8A2yIEObncf";
            if (jSONObjectOptJSONObject.optString(strA01) != null) {
                String strOptString = jSONObjectOptJSONObject.optString(strA01);
                arrayList.add(strOptString);
                if (z) {
                    jSONObjectOptJSONObject.put(strA01, c2746kz.A0R(strOptString));
                }
            }
        }
        String strA02 = A01(104, 9, 82);
        if (TextUtils.isEmpty(jSONObject.optString(strA02))) {
            return;
        }
        String strOptString2 = jSONObject.optString(strA02);
        arrayList2.add(strOptString2);
        if (z) {
            jSONObject.put(strA02, c2746kz.A0S(strOptString2));
        }
    }
}
