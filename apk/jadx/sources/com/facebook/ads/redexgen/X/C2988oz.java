package com.facebook.ads.redexgen.X;

import android.util.Pair;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.oz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2988oz {
    public static C2988oz A03;
    public static byte[] A04;
    public static String[] A05 = {"NTbRRXzyO1pHj9h9SB1l6scZPb0Q7Nog", "bmOnvW2Dftn9PXphT1BSb1gLyD784HEs", "xXlun2aBYv5AwTNxDDBZ1ozaVoLHmKwC", "fgEap69kh5IQNkCVg2HH2z0FKRiyYkaW", "bjKXkeYdnqU1b06FMW9zlYBuvr", "tlX5oNQdXvFNtUI3yzsY3k1Z5P3Khlzk", "fsVn4bpRmJatZLWZJrcTevSj2nASpmzL", "gGN3n"};
    public final C2755lA A00;
    public final Map<String, Set<String>> A02 = new HashMap();
    public final C2987oy A01 = new C2987oy();

    static {
        A04();
    }

    public C2988oz(C2755lA c2755lA) {
        this.A00 = c2755lA;
    }

    public static C2988oz A00(C2755lA c2755lA) {
        if (A03 == null) {
            A03 = new C2988oz(c2755lA);
        }
        return A03;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 51);
        }
        return new String(bArrCopyOfRange);
    }

    private final String A02(String str) {
        return this.A01.A04(this.A00, str, A01(181, 2, 101));
    }

    private String A03(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A01(30, 8, 14));
        if (jSONObjectOptJSONObject != null && !jSONObjectOptJSONObject.optString(A01(2, 9, 73)).equals(A01(0, 2, 6))) {
            return AdPlacementType.MEDIUM_RECTANGLE.toString();
        }
        return AdPlacementType.BANNER.toString();
    }

    public static void A04() {
        A04 = new byte[]{0, 5, Ascii.ESC, Ascii.RS, 37, Ascii.DC2, Ascii.US, 19, Ascii.GS, Ascii.DC2, Ascii.SO, 35, 38, 49, 92, 75, 0, 5, Ascii.DLE, 5, 38, 39, 36, 43, 44, 43, 54, 43, 45, 44, 80, 88, 73, 92, 89, 92, 73, 92, 33, Base64.padSymbol, 48, 50, 52, 60, 52, 63, 37, 34, 40, 47, 52, 41, 62, 63, Ascii.EM, 58, 53, 53, 62, 41, Ascii.CAN, 52, 46, 53, 47, 97, 102, 125, 96, 119, 118, 91, 124, 102, 119, 96, 97, 102, 123, 102, 123, 115, 126, 81, 125, 103, 124, 102, Ascii.US, Ascii.CAN, 3, Ascii.RS, 9, 8, 33, 9, 8, 5, Ascii.EM, 1, 62, 9, Ascii.SI, Ascii.CAN, Ascii.CR, 2, Ascii.VT, 0, 9, 47, 3, Ascii.EM, 2, Ascii.CAN, Ascii.SYN, 17, 10, Ascii.ETB, 0, 1, 43, 4, 17, Ascii.FF, 19, 0, 39, 4, Ascii.VT, Ascii.VT, 0, Ascii.ETB, 38, 10, Ascii.DLE, Ascii.VT, 17, 9, Ascii.SO, Ascii.NAK, 8, Ascii.US, Ascii.RS, 52, Ascii.ESC, Ascii.SO, 19, Ascii.FF, Ascii.US, 57, Ascii.NAK, Ascii.SI, Ascii.DC4, Ascii.SO, 87, 80, 75, 86, 65, SignedBytes.MAX_POWER_OF_TWO, 118, 114, 103, 75, 81, 74, 80, 33, 60, 56, 48, 10, 38, 33, 52, 56, 37, 118, 123, 114, 103, 45, 43};
    }

    private void A05(String str) {
        A06(str, 0);
        this.A01.A06(this.A00, str, A01(181, 2, 101));
    }

    private void A06(String str, int i) {
        if (str.equals(AdPlacementType.REWARDED_VIDEO.toString())) {
            this.A01.A05(this.A00, A01(154, 13, 23), i);
            return;
        }
        String string = AdPlacementType.INTERSTITIAL.toString();
        if (A05[3].charAt(23) != 'F') {
            throw new RuntimeException();
        }
        A05[3] = "RDLtdD6SrjB0fykZQgyL0TKFAa418ZWI";
        if (str.equals(string)) {
            this.A01.A05(this.A00, A01(65, 23, 33), i);
            return;
        }
        if (str.equals(AdPlacementType.BANNER.toString())) {
            this.A01.A05(this.A00, A01(48, 17, 104), i);
            return;
        }
        if (str.equals(AdPlacementType.MEDIUM_RECTANGLE.toString())) {
            this.A01.A05(this.A00, A01(88, 26, 95), i);
        } else if (str.equals(AdPlacementType.NATIVE.toString())) {
            this.A01.A05(this.A00, A01(137, 17, 73), i);
        } else if (str.equals(AdPlacementType.NATIVE_BANNER.toString())) {
            this.A01.A05(this.A00, A01(114, 23, 86), i);
        }
    }

    private final void A07(String str, String str2) {
        if (this.A02.get(str) == null) {
            this.A02.put(str, new HashSet());
        }
        Set<String> set = this.A02.get(str);
        String[] strArr = A05;
        if (strArr[1].charAt(18) != strArr[2].charAt(18)) {
            throw new RuntimeException();
        }
        A05[0] = "bAvocrMCUlgMfTD7gFcUWEV0GbSc72em";
        set.add(str2);
    }

    private boolean A08(String str, String str2) {
        int iA0H = C2863mv.A0H(this.A00);
        if (str.equals(AdPlacementType.INTERSTITIAL.toString()) || str.equals(AdPlacementType.REWARDED_VIDEO.toString())) {
            iA0H *= 2;
        }
        return this.A02.get(str) != null && A09(str) <= iA0H && this.A02.get(str).contains(str2);
    }

    public final int A09(String str) {
        if (this.A02.get(str) == null) {
            return 0;
        }
        return this.A02.get(str).size();
    }

    public final int A0A(String str) {
        if (str.equals(AdPlacementType.REWARDED_VIDEO.toString())) {
            return this.A01.A03(this.A00, A01(154, 13, 23), 0);
        }
        if (str.equals(AdPlacementType.INTERSTITIAL.toString())) {
            return this.A01.A03(this.A00, A01(65, 23, 33), 0);
        }
        if (str.equals(AdPlacementType.BANNER.toString())) {
            return this.A01.A03(this.A00, A01(48, 17, 104), 0);
        }
        if (str.equals(AdPlacementType.MEDIUM_RECTANGLE.toString())) {
            return this.A01.A03(this.A00, A01(88, 26, 95), 0);
        }
        if (str.equals(AdPlacementType.NATIVE.toString())) {
            return this.A01.A03(this.A00, A01(137, 17, 73), 0);
        }
        if (str.equals(AdPlacementType.NATIVE_BANNER.toString())) {
            return this.A01.A03(this.A00, A01(114, 23, 86), 0);
        }
        return 0;
    }

    public final Pair<String, String> A0B(String str) {
        String strA01 = A01(167, 10, 102);
        String strA02 = A02(str);
        if (strA02 == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(strA02);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                try {
                    String next = itKeys.next();
                    if (!A08(str, next)) {
                        JSONObject jSONObject2 = new JSONObject((String) jSONObject.get(next));
                        if (!jSONObject2.has(strA01)) {
                            continue;
                        } else {
                            if (System.currentTimeMillis() - jSONObject2.getLong(strA01) < C2863mv.A00(this.A00)) {
                                Pair<String, String> pair = new Pair<>(next, (String) jSONObject.get(next));
                                A07(str, next);
                                return pair;
                            }
                            A0E(str, next);
                        }
                    }
                } catch (JSONException unused) {
                    A05(str);
                    return null;
                }
            }
            return null;
        } catch (JSONException unused2) {
            A05(str);
            return null;
        }
    }

    public final void A0C(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            JSONArray jSONArray = jSONObject.getJSONArray(A01(38, 10, 98));
            JSONArray jSONArray2 = jSONArray.getJSONObject(0).getJSONArray(A01(11, 3, InterfaceC3669k1.d.b.k));
            if (jSONArray2.length() == 0) {
                return;
            }
            JSONObject jSONObject2 = jSONArray2.getJSONObject(0).getJSONObject(A01(16, 4, 87));
            String string = jSONObject2.getString(A01(14, 2, 12));
            String string2 = jSONArray.getJSONObject(0).getJSONObject(A01(20, 10, InterfaceC3669k1.d.b.k)).getString(A01(177, 4, 49));
            if (A00(this.A00).A0F(string2)) {
                return;
            }
            if (string2.equals(AdPlacementType.BANNER.toString())) {
                string2 = A03(jSONObject2);
            }
            String strA02 = A02(string2);
            if (strA02 == null) {
                return;
            }
            JSONObject jSONObject3 = new JSONObject(strA02);
            jSONObject.put(A01(167, 10, 102), System.currentTimeMillis());
            jSONObject3.put(string, jSONObject.toString());
            this.A01.A06(this.A00, string2, jSONObject3.toString());
            A06(string2, A0A(string2) + 1);
            A07(string2, string);
        } catch (JSONException unused) {
        }
    }

    public final void A0D(String str, String str2) {
        if (str == null || str2 == null || this.A02.get(str) == null) {
            return;
        }
        this.A02.get(str).remove(str2);
    }

    public final void A0E(String str, String str2) {
        if (C2863mv.A00(this.A00) <= 0) {
            return;
        }
        int iA0A = A0A(str) - 1;
        if (iA0A < 0) {
            iA0A = 0;
        }
        A06(str, iA0A);
        String strA02 = A02(str);
        if (strA02 == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(strA02);
            jSONObject.remove(str2);
            this.A01.A06(this.A00, str, jSONObject.toString());
            A0D(str, str2);
        } catch (JSONException unused) {
        }
    }

    public final boolean A0F(String str) {
        return !C2863mv.A19(this.A00) && (str.equals(AdPlacementType.BANNER.toString()) || str.equals(AdPlacementType.MEDIUM_RECTANGLE.toString()));
    }
}
