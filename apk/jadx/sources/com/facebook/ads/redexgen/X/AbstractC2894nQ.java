package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.View;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.nQ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2894nQ {
    public static byte[] A00;
    public static final Map<String, String> A01;
    public static final Map<String, List<String>> A02;

    static {
        A03();
        A02 = new HashMap();
        A01 = new HashMap();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 27);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A01(String str) {
        return A01.get(str);
    }

    public static List<String> A02(C1618Hi c1618Hi, JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                arrayList.add(jSONArray.getString(i));
            } catch (JSONException e) {
                c1618Hi.A08().ABz(A00(39, 17, 1), AbstractC2786lf.A1C, new C2787lg(e));
            }
        }
        return arrayList;
    }

    public static void A03() {
        A00 = new byte[]{-68, -51, -49, -52, -33, -52, -42, -27, -34, -34, -43, -36, -3, 0, -14, -11, -16, 5, -6, -2, -10, -16, -2, 4, -68, -81, -69, -65, -81, -67, -66, -87, -66, -77, -73, -81, -87, -73, -67, -111, -108, 123, -126, -111, -118, -118, -127, -120, 123, -120, -117, -125, -125, -123, -118, -125};
    }

    public static void A04(View view, C2892nO c2892nO, EnumC2891nN enumC2891nN) {
        view.addOnAttachStateChangeListener(new ViewOnAttachStateChangeListenerC2893nP(c2892nO, enumC2891nN));
    }

    public static void A05(C1618Hi c1618Hi, String str, long j) {
        C2892nO c2892nO = new C2892nO(str, c1618Hi.A0A());
        HashMap map = new HashMap();
        map.put(A00(24, 15, 47), C3076qS.A07(j));
        map.put(A00(12, 12, 118), C3076qS.A05(j));
        c2892nO.A04(EnumC2891nN.A0D, map);
    }

    public static void A06(C1618Hi c1618Hi, JSONObject jSONObject, long j, String str) {
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(A00(2, 4, 80));
        if (jSONObjectOptJSONObject == null) {
            return;
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(A00(6, 6, 85));
        if (TextUtils.isEmpty(str) && jSONArrayOptJSONArray != null) {
            A07(c1618Hi, jSONObjectOptJSONObject, A02(c1618Hi, jSONArrayOptJSONArray), j, null);
        } else {
            if (TextUtils.isEmpty(str) || !A02.containsKey(str)) {
                return;
            }
            A07(c1618Hi, jSONObjectOptJSONObject, A02.get(str), j, str);
        }
    }

    public static void A07(C1618Hi c1618Hi, JSONObject jSONObject, List<String> list, long j, String str) {
        String strA00 = A00(0, 2, 62);
        if (jSONObject.has(strA00)) {
            String strOptString = jSONObject.optString(strA00);
            A08(strOptString, str);
            A09(strOptString, list);
            A05(c1618Hi, strOptString, j);
        }
    }

    public static void A08(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        A01.put(str, str2);
    }

    public static void A09(String str, List<String> list) {
        if (TextUtils.isEmpty(str) || list.isEmpty()) {
            return;
        }
        A02.put(str, list);
    }

    public static boolean A0A(String str, EnumC2891nN enumC2891nN) {
        return A0B(str, enumC2891nN.A03());
    }

    public static boolean A0B(String str, String str2) {
        return A02.containsKey(str) && A02.get(str).contains(str2);
    }
}
