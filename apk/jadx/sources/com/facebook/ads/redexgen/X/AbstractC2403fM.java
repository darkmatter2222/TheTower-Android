package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.fM, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2403fM {
    public static byte[] A00;

    static {
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 74);
        }
        return new String(bArrCopyOfRange);
    }

    public static List<C2395fE> A01(JSONArray jSONArray, JSONObject jSONObject, C1618Hi c1618Hi, InterfaceC2408fR interfaceC2408fR) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                if (i == 0) {
                    A03(jSONObject2, jSONObject);
                }
                C2395fE c2395fEA00 = C2395fE.A00(jSONObject2);
                interfaceC2408fR.A4O(c2395fEA00, jSONObject2);
                arrayList.add(c2395fEA00);
            } catch (JSONException e) {
                c1618Hi.A08().ABz(A00(8, 7, 31), AbstractC2786lf.A2B, new C2787lg(e));
            }
        }
        return arrayList;
    }

    public static void A02() {
        A00 = new byte[]{43, 41, 58, 55, Base64.padSymbol, 59, 45, 52, -39, -54, -37, -36, -46, -41, -48, 46, 33, Ascii.FS, Ascii.GS, 39, Ascii.ETB, 45, 42, 36};
    }

    public static void A03(JSONObject jSONObject, JSONObject jSONObject2) throws JSONException {
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!next.equals(A00(15, 9, 110)) && !next.equals(A00(0, 8, 126)) && !jSONObject.has(next)) {
                jSONObject.put(next, jSONObject2.opt(next));
            }
        }
    }
}
