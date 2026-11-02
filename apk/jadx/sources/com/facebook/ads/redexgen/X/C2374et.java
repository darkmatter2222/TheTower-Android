package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.et, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2374et {
    public static byte[] A03;
    public final LinkedHashSet<String> A01 = new LinkedHashSet<>();
    public JSONObject A00 = new JSONObject();
    public final AtomicReference<String> A02 = new AtomicReference<>(A01(0, 2, 25));

    static {
        A02();
    }

    private final synchronized C2409fS A00(String str, JSONObject jSONObject) throws JSONException, C2787lg {
        C2409fS c2409fS;
        if (!str.equals(jSONObject.optString(A01(29, 12, 116), null))) {
            C2787lg c2787lg = new C2787lg(new IllegalArgumentException());
            jSONObject.put(A01(5, 24, 96), str);
            c2787lg.A07(jSONObject);
            c2787lg.A05(1);
            throw c2787lg;
        }
        c2409fS = new C2409fS(str);
        A03(c2409fS, jSONObject);
        return c2409fS;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 79);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A03 = new byte[]{Ascii.CR, Ascii.VT, 56, 58, 43, 74, 65, 76, 93, 86, 95, 91, 74, 75, 112, 78, 75, 112, 70, 75, 112, SignedBytes.MAX_POWER_OF_TWO, 93, 70, 72, 70, 65, 78, 67, 94, 85, 88, 73, 66, 75, 79, 94, 95, 100, 82, 95, 114, 126, 103, SignedBytes.MAX_POWER_OF_TWO, 124, 126, 111, 111, 122, 123, SignedBytes.MAX_POWER_OF_TWO, 126, 109, 109, 126, 102, SignedBytes.MAX_POWER_OF_TWO, 115, 122, 113, 120, 107, 119, Ascii.FF, 0, 0, Ascii.SYN, 17, 17, 6, Ascii.CR, 0, 6, Ascii.DLE, Ascii.RS, Ascii.VT, Ascii.FS, 7, 1, 10, 97, 118, 108, 109, 70, 118, 122, 122, 108, 107, 107, 124, 119, 122, 124, 70, 106, 124, 122, 106, 108, 123, 97, 96, 75, 100, 113, 102, 125, 123, 112};
    }

    private void A03(C2409fS c2409fS, JSONObject jSONObject) throws JSONException {
        int iOptInt = jSONObject.optInt(A01(75, 6, 33));
        int iOptInt2 = jSONObject.optInt(A01(101, 11, 91));
        int iOptInt3 = jSONObject.optInt(A01(41, 23, 80), 50);
        long jOptLong = jSONObject.optLong(A01(2, 3, 20));
        String strA01 = A01(64, 11, 44);
        if (jSONObject.has(strA01)) {
            c2409fS.A06((JSONArray) jSONObject.get(strA01));
        }
        String strA02 = A01(81, 20, 86);
        if (jSONObject.has(strA02)) {
            c2409fS.A04(jSONObject.optInt(strA02));
        }
        c2409fS.A05(iOptInt, iOptInt2, jOptLong, iOptInt3);
    }

    public final String A04() {
        String str = this.A02.get();
        return str == null ? A01(0, 2, 25) : str;
    }

    public final synchronized JSONObject A05() {
        return this.A00;
    }

    public final synchronized void A06() {
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = this.A01.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next());
        }
        this.A02.set(jSONArray.toString());
    }

    public final synchronized void A07(String str) {
        if (this.A01.size() >= C2409fS.A00()) {
            Iterator<String> it = this.A01.iterator();
            if (it.hasNext()) {
                this.A01.remove(it.next());
            }
        }
        this.A01.add(str);
        C2737kq.A03();
    }

    public final synchronized void A08(@Nullable String str) throws JSONException {
        if (str != null) {
            if (!str.trim().isEmpty()) {
                JSONArray jSONArray = new JSONArray(str);
                for (int i = 0; i < jSONArray.length() && i < C2409fS.A00(); i++) {
                    this.A01.add(jSONArray.getString(i));
                }
            }
        }
    }

    public final synchronized void A09(String str) {
        this.A01.remove(str);
        C2737kq.A03();
    }

    public final synchronized void A0A(@Nullable String str) throws JSONException, C2787lg {
        if (str != null) {
            if (!str.trim().isEmpty()) {
                this.A00 = new JSONObject(str);
                HashMap map = new HashMap();
                Iterator<String> itKeys = this.A00.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (this.A00.get(next) instanceof String) {
                        map.put(next, A00(next, new JSONObject((String) this.A00.get(next))));
                    }
                }
                for (Map.Entry entry : map.entrySet()) {
                    this.A00.put((String) entry.getKey(), entry.getValue());
                }
            }
        }
    }

    public final synchronized void A0B(JSONObject jSONObject) throws JSONException {
        String strOptString = jSONObject.optString(A01(29, 12, 116), null);
        if (strOptString == null) {
            return;
        }
        C2409fS c2409fS = (this.A00.has(strOptString) && (this.A00.get(strOptString) instanceof C2409fS)) ? (C2409fS) this.A00.get(strOptString) : new C2409fS(strOptString);
        A03(c2409fS, jSONObject);
        this.A00.put(strOptString, c2409fS);
    }
}
