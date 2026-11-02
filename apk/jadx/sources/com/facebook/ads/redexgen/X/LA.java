package com.facebook.ads.redexgen.X;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class LA extends AbstractC2394fD implements Serializable {
    public static JSONObject A0W = null;
    public static byte[] A0X = null;
    public static String[] A0Y = {"1gqRR9im7tmNjhPy8NnQpjCX4rd8Ielc", "ZkOx7RNEMabKvQ7fgN15WIbWDw11JZFu", "ifeh8sROmLFDdOYqa0sy0eFfj5RHH1gU", "fnDzwAhU6GMUs0cCq2fTQuWEzv5lBJki", "OVtNfYqIZ80xqW4zrHdkYxbTKYgYXHc", "chIpxbYwiAOd1RIHlv8aEwW7ihQHRwI", "GnSiEcQE", "uApEYGhuY9oy1RN675k2bDQ9FUD4oA7y"};
    public static final LinkedHashMap<String, String> A0Z;
    public static final long serialVersionUID = -5352540727250859603L;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public C2391fA A07;
    public C2410fT A08;
    public C2413fW A09;
    public C2416fZ A0A;
    public C2425fi A0B;
    public String A0C;
    public String A0D;
    public boolean A0G;
    public final List<C2395fE> A0U;
    public boolean A0E = false;
    public boolean A0H = false;
    public boolean A0Q = false;
    public boolean A0P = false;
    public boolean A0M = false;
    public boolean A0N = false;
    public boolean A0O = false;
    public final Map<String, String> A0V = new HashMap();
    public boolean A0F = false;
    public int A06 = 1;
    public boolean A0J = false;
    public boolean A0I = false;
    public boolean A0K = true;
    public boolean A0L = false;
    public int A05 = 5000;
    public boolean A0T = false;
    public boolean A0S = false;
    public boolean A0R = false;

    static {
        A08();
        A0Z = new LinkedHashMap<>(10, 0.75f, false);
    }

    public LA(List<C2395fE> list) {
        this.A0U = list;
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0X, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 60);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A05(String str) {
        return A0Z.get(str);
    }

    private HashMap<String, String> A06(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A04(232, 18, 95));
        HashMap<String, String> map = new HashMap<>();
        if (jSONObjectOptJSONObject == null) {
            return map;
        }
        Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
        while (itKeys.hasNext()) {
            try {
                String next = itKeys.next();
                map.put(next, jSONObjectOptJSONObject.getString(next));
            } catch (JSONException unused) {
            }
        }
        return map;
    }

    public static List<C2395fE> A07(JSONObject jSONObject, C1618Hi c1618Hi, InterfaceC2408fR interfaceC2408fR) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(A04(137, 8, 86));
        if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
            return AbstractC2403fM.A01(jSONArrayOptJSONArray, jSONObject, c1618Hi, interfaceC2408fR);
        }
        ArrayList arrayList = new ArrayList();
        C2395fE c2395fEA00 = C2395fE.A00(jSONObject);
        interfaceC2408fR.A4O(c2395fEA00, jSONObject);
        arrayList.add(c2395fEA00);
        return arrayList;
    }

    public static void A08() {
        String[] strArr = A0Y;
        if (strArr[2].charAt(14) == strArr[1].charAt(14)) {
            throw new RuntimeException();
        }
        A0Y[5] = "bfB1pGz3pHLReaUGKuLSmGsyYLYBAtW";
        A0X = new byte[]{40, 45, Ascii.SYN, 42, 33, 38, 32, 42, 44, 58, Ascii.SYN, 37, 32, 39, 34, Ascii.SYN, 60, 59, 37, 118, 121, 72, 123, 120, 112, 120, 72, 99, 110, 103, 114, 81, 94, 89, 93, 81, 68, 85, 111, 83, 66, 85, 84, 89, 68, 111, 92, 89, 94, 85, 111, 81, 69, 68, 95, 111, 83, 92, 95, 67, 85, 111, 93, 89, 92, 92, 89, 89, 77, 76, 87, 91, 84, 81, 91, 83, 103, 91, 87, 77, 86, 76, 92, 87, 79, 86, 103, 76, 81, 85, 93, 37, 49, 48, 43, 39, 40, 45, 39, 47, Ascii.ESC, 39, 48, 37, Ascii.ESC, 48, 45, 41, 33, 2, Ascii.SYN, Ascii.ETB, Ascii.FF, 0, Ascii.SI, 10, 0, 8, 60, 5, Ascii.SI, 2, Ascii.NAK, Ascii.FF, 17, 34, 32, 34, 41, 36, Ascii.RS, 32, 50, 50, 36, 53, 50, 9, Ascii.VT, Ascii.CAN, 5, Ascii.US, Ascii.EM, Ascii.SI, 6, 102, 109, 100, 108, 107, 90, 100, 97, 118, 90, 99, 119, 96, 116, 112, 96, 107, 102, 124, 81, 93, 95, Ascii.FS, 84, 83, 81, 87, 80, 93, 93, 89, Ascii.FS, 83, 86, 65, Ascii.FS, 91, 92, 70, 87, SignedBytes.MAX_POWER_OF_TWO, 65, 70, 91, 70, 91, 83, 94, Ascii.FS, 84, 91, 92, 91, 65, 90, 109, 83, 81, 70, 91, 68, 91, 70, 75, 36, 53, 34, 35, 46, 51, Ascii.CAN, 43, 46, 41, 34, Ascii.CAN, 46, 41, 33, 40, Ascii.CAN, 51, 34, 63, 51, 87, SignedBytes.MAX_POWER_OF_TWO, 7, Ascii.DLE, Ascii.SI, 60, 2, 19, 19, 60, 1, Ascii.FF, Ascii.SYN, Ascii.CR, 7, 60, Ascii.SYN, 17, Ascii.SI, Ascii.DLE, 34, 38, 112, 37, Ascii.ESC, 35, 52, Ascii.ESC, 43, 50, 33, 54, 40, 37, Base64.padSymbol, Ascii.ESC, 55, 33, 39, 49, 54, 33, Ascii.ESC, 48, 43, 47, 33, 42, 84, 93, SignedBytes.MAX_POWER_OF_TWO, 81, 87, 86, 109, 92, 70, 86, 109, 68, 0, 109, 87, 92, 83, 80, 94, 87, 86, 75, 65, 77, 76, 76, 75, 86, 81, 68, 73, 73, 122, 87, SignedBytes.MAX_POWER_OF_TWO, 67, SignedBytes.MAX_POWER_OF_TWO, 87, 87, SignedBytes.MAX_POWER_OF_TWO, 87, 117, 114, 104, 121, 110, 111, 104, 117, 104, 117, 125, 112, 43, 37, 37, 48, Ascii.US, 46, 37, 56, 52, Ascii.US, 52, 47, Ascii.US, 36, 37, 51, 52, 41, 46, 33, 52, 41, 47, 46, Ascii.US, 47, 46, 35, 44, 41, 35, 43, 36, 41, 38, 44, 59, 43, 41, 56, 45, 104, 101, 125, 107, 113, 112, 2, Ascii.CAN, 8, 51, Ascii.SO, Ascii.CR, Ascii.SI, 7, 51, Ascii.FS, Ascii.RS, 9, Ascii.US, Ascii.US, 51, Ascii.US, Ascii.EM, Ascii.FS, Ascii.FS, Ascii.RS, 9, Ascii.US, Ascii.US, 5, 3, 2, 51, 9, 2, Ascii.CR, Ascii.SO, 0, 9, 8, 8, Ascii.DC2, 2, 57, 5, 10, Ascii.SI, 5, Ascii.CR, 57, 0, Ascii.SI, 10, Ascii.DC2, 3, Ascii.DC4, Ascii.SI, 8, 1, 57, 3, 8, 7, 4, 10, 3, 2, 116, 110, 126, 69, 114, 115, 126, 127, 69, 117, 116, 69, 123, 116, 99, 69, 121, 118, 115, 121, 113, 69, 127, 116, 123, 120, 118, 127, 126, 39, 50, 37, 36, 62, 36, 35, 50, 57, 35, 8, 49, 56, 37, 52, 50, 51, 8, 57, 35, 51, 8, 39, 59, 54, 46, 36, 54, 41, 52, 50, 52, 39, 47, 50, 3, Ascii.DC4, 2, Ascii.DC4, 5, 46, Ascii.DC2, 3, Ascii.DC4, Ascii.DLE, 5, Ascii.CAN, 7, Ascii.DC4, 46, Ascii.DC2, 5, Ascii.DLE, 46, Ascii.GS, Ascii.CAN, 2, 5, Ascii.DC4, Ascii.US, Ascii.DC4, 3, 46, Ascii.RS, Ascii.US, 46, Ascii.DC2, Ascii.GS, Ascii.CAN, Ascii.DC2, Ascii.SUB, 46, Ascii.DC4, Ascii.US, Ascii.DLE, 19, Ascii.GS, Ascii.DC4, Ascii.NAK, 9, Ascii.RS, Ascii.FF, Ascii.SUB, 9, Ascii.US, Ascii.RS, Ascii.US, 36, Ascii.CR, Ascii.DC2, Ascii.US, Ascii.RS, Ascii.DC4, 54, 45, 42, 48, 41, 33, Ascii.SUB, 41, 42, 34, Ascii.SUB, 36, 43, 60, Ascii.SUB, 44, 36, 39, Ascii.SUB, 38, 41, 44, 38, 46, Ascii.SUB, 42, 43, 38, 32, 19, 8, Ascii.SI, Ascii.ETB, 63, 1, 4, 63, 3, 8, Ascii.SI, 9, 3, 5, 63, Ascii.SYN, 82, 89, 66, 69, 93, 117, 73, 88, 79, 78, 67, 94, 117, 70, 67, 68, 79, 125, 102, 97, 121, 81, 109, 124, 107, 106, 103, 122, 81, 98, 103, 96, 107, 81, 97, 96, 81, 124, 109, 81, 125, 123, 109, 109, 107, 125, 125, 81, 125, 109, 124, 107, 107, 96, Ascii.US, 4, 3, Ascii.ESC, 51, Ascii.SI, Ascii.RS, 9, 8, 5, Ascii.CAN, 51, 0, 5, 2, 9, 51, Ascii.SUB, 94, 51, Ascii.CR, 2, 5, 1, Ascii.CR, Ascii.CAN, 5, 3, 2, 77, 86, 81, 73, 97, 93, 76, 91, 90, 87, 74, 97, 82, 87, 80, 91, 97, 72, Ascii.FF, 97, 77, 74, 95, 74, 87, 93, 119, 108, 107, 115, 91, 104, 107, 101, 96, 97, 118, 91, 106, 112, 96, 106, 113, 118, 110, 70, 119, 124, 97, 109, 70, 122, 109, 120, 70, 118, 119, 70, 124, 119, 125, 122, 120, 107, 125, 107, 118, 107, 115, 122, 43, 48, 48, 51, Base64.padSymbol, 62, 45, 0, 62, 60, 43, 0, 62, 44, 0, 60, 43, 62, 60, 59, 37};
    }

    private void A09(int i) {
        this.A00 = i;
    }

    private final void A0A(int i) {
        this.A04 = i;
    }

    private void A0B(C2391fA c2391fA) {
        this.A07 = c2391fA;
    }

    private final void A0C(C2410fT c2410fT) {
        this.A08 = c2410fT;
    }

    private void A0D(C2413fW c2413fW) {
        this.A09 = c2413fW;
    }

    private final void A0E(C2416fZ c2416fZ) {
        this.A0A = c2416fZ;
    }

    private void A0F(C2425fi c2425fi) {
        this.A0B = c2425fi;
    }

    private void A0G(String str) {
        this.A0C = str;
    }

    public final int A2u() {
        return this.A00;
    }

    public final int A2v() {
        return this.A01;
    }

    public final int A2w() {
        return this.A02;
    }

    public final int A2x() {
        return this.A03;
    }

    public final int A2y() {
        return this.A04;
    }

    public final int A2z() {
        return this.A05;
    }

    public final int A30() {
        return this.A06;
    }

    public final C2391fA A31() {
        return this.A07;
    }

    public final C2395fE A32() {
        return this.A0U.get(0);
    }

    public final C2410fT A33() {
        return this.A08;
    }

    public final C2413fW A34() {
        return this.A09;
    }

    public final C2416fZ A35() {
        return this.A0A;
    }

    public final C2425fi A36() {
        return this.A0B;
    }

    public final String A37() {
        return this.A0C;
    }

    public final String A38(String str) {
        return this.A0V.get(str);
    }

    public final List<C2395fE> A39() {
        return Collections.unmodifiableList(this.A0U);
    }

    /* JADX WARN: Code duplicated, block: B:6:0x000f A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0010  */
    public final void A3A(InterfaceC3119r9 interfaceC3119r9) {
        byte b;
        String strA1c = A1c();
        switch (strA1c.hashCode()) {
            case -1364000502:
                String[] strArr = A0Y;
                if (strArr[2].charAt(14) == strArr[1].charAt(14)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0Y;
                strArr2[3] = "ynfghRupyY8lJ5WDqUPqAC0JO3E4ojqs";
                strArr2[0] = "OEwRxUcpVPGJQFz3LRrAkRkf0LWdVsmf";
                if (strA1c.equals(A04(547, 14, 71))) {
                    b = 1;
                }
                switch (b) {
                    case 0:
                        interfaceC3119r9.A5C(A04(164, 45, 14));
                        break;
                    case 1:
                        break;
                    default:
                        return;
                }
                interfaceC3119r9.A5C(EnumC2318dy.A08.A03());
            case 604727084:
                if (strA1c.equals(A04(319, 12, 32))) {
                    b = 0;
                }
                switch (b) {
                    case 0:
                        interfaceC3119r9.A5C(A04(164, 45, 14));
                        break;
                    case 1:
                        break;
                    default:
                        return;
                }
                interfaceC3119r9.A5C(EnumC2318dy.A08.A03());
        }
        b = -1;
        switch (b) {
            case 0:
                interfaceC3119r9.A5C(A04(164, 45, 14));
                break;
            case 1:
                break;
            default:
                return;
        }
        interfaceC3119r9.A5C(EnumC2318dy.A08.A03());
    }

    public final void A3B(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        A0C(C2410fT.A00(jSONObject.optJSONObject(A04(303, 16, 25))));
        A0W = jSONObject.optJSONObject(A04(125, 12, 125));
        C2415fY c2415fYA06 = new C2415fY().A06(jSONObject.optString(A04(754, 5, 35)));
        String strA04 = A04(299, 4, 30);
        A0E(c2415fYA06.A05(jSONObject.optJSONObject(strA04) != null ? jSONObject.optJSONObject(strA04).optString(A04(777, 3, 117)) : A04(0, 0, 70)).A04(jSONObject.optString(A04(0, 19, 117))).A07(AbstractC2417fa.A03(jSONObject)).A08());
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(A04(372, 6, 56));
        if (jSONObjectOptJSONObject2 != null) {
            String strA05 = A04(495, 8, 122);
            if (A0Y[5].length() != 31) {
                throw new RuntimeException();
            }
            String[] strArr = A0Y;
            strArr[2] = "L9OC0yGJthGch16tOTqUcqcE9MnsMaz6";
            strArr[1] = "n6CgIEssquLp46jPM2UWfBhL1rINMjIc";
            jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject(strA05);
        } else {
            jSONObjectOptJSONObject = null;
        }
        A0B(new C2391fA(C2404fN.A01(jSONObjectOptJSONObject), C2404fN.A01(jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optJSONObject(A04(363, 9, 116)) : null)));
        A0F(AbstractC2417fa.A01(jSONObject));
        A0D(AbstractC2417fa.A00(jSONObject));
        A09(jSONObject.optInt(A04(19, 12, 43), 0));
        A0A(jSONObject.optInt(A04(145, 19, 57), -1));
        this.A0V.putAll(A06(jSONObject));
        this.A03 = jSONObject.optInt(A04(91, 18, 120), 0);
        this.A01 = jSONObject.optInt(A04(109, 16, 95), 1);
        this.A0Q = jSONObject.optBoolean(A04(759, 18, 99), false);
        this.A0P = jSONObject.optBoolean(A04(IronSourceError.ERROR_NT_LOAD_NO_CONFIG, 15, 56), false);
        this.A0M = jSONObject.optBoolean(A04(730, 24, 37), false);
        this.A0N = jSONObject.optBoolean(A04(607, 16, 22), false);
        this.A05 = jSONObject.optInt(A04(31, 36, 12), 5000);
        this.A0D = jSONObject.optString(A04(209, 21, 123));
        this.A0O = jSONObject.optBoolean(A04(IronSourceError.ERROR_BN_BINDING_SKIP_INVISIBLE, 37, 50), false);
        this.A0H = jSONObject.optBoolean(A04(561, 29, 121), false);
        this.A0G = jSONObject.optBoolean(A04(331, 32, 124), false);
        this.A0F = jSONObject.optBoolean(A04(278, 21, 14), false);
        this.A06 = Math.max(1, jSONObject.optInt(A04(468, 27, kotlin.fh.h1), 1));
        this.A0J = jSONObject.optBoolean(A04(412, 27, 90), false);
        this.A0I = jSONObject.optBoolean(A04(378, 34, 80), false);
        this.A0K = jSONObject.optBoolean(A04(439, 29, 38), true);
        this.A0L = jSONObject.optBoolean(A04(TypedValues.PositionType.TYPE_PERCENT_WIDTH, 44, 77), false);
        this.A02 = jSONObject.optInt(A04(67, 24, 4), this.A03);
        String strOptString = jSONObject.optString(A04(230, 2, 8));
        A0G(strOptString);
        A0Z.put(strOptString, jSONObject.optString(A04(250, 28, 120)));
        this.A0T = jSONObject.optBoolean(A04(689, 26, 2), false);
        this.A0S = jSONObject.optBoolean(A04(660, 29, 80), false);
        this.A0R = jSONObject.optBoolean(A04(590, 17, 92), false);
        AbstractC2422ff.A04(jSONObject, this.A0A);
        A25(jSONObject);
    }

    public final void A3C(boolean z) {
        this.A0E = z;
    }

    public final void A3D(boolean z) {
        this.A0M = z;
    }

    public final boolean A3E() {
        return this.A0E;
    }

    public final boolean A3F() {
        return A3O() || A3S();
    }

    public final boolean A3G() {
        return this.A0F;
    }

    public final boolean A3H() {
        return this.A0G;
    }

    public final boolean A3I() {
        return this.A0H;
    }

    public final boolean A3J() {
        return this.A0I;
    }

    public final boolean A3K() {
        return this.A0J;
    }

    public final boolean A3L() {
        return this.A0K;
    }

    public final boolean A3M() {
        return this.A0L;
    }

    public final boolean A3N() {
        return this.A0M;
    }

    public final boolean A3O() {
        return this.A0N;
    }

    public final boolean A3P() {
        return this.A0O;
    }

    public final boolean A3Q() {
        return this.A0P;
    }

    public final boolean A3R() {
        return this.A0Q;
    }

    public final boolean A3S() {
        return this.A0R;
    }

    public final boolean A3T() {
        return this.A0S;
    }

    public final boolean A3U() {
        return this.A0T;
    }
}
