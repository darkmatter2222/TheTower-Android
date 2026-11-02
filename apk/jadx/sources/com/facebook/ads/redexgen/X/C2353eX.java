package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.eX, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2353eX {
    public static byte[] A02;
    public final Map<String, Object> A01 = new HashMap();
    public final List<String> A00 = new ArrayList();

    static {
        A07();
    }

    public static C2353eX A00(C2353eX c2353eX, long j) {
        return c2353eX.A03(A06(0, 7, 3), j);
    }

    public static C2353eX A01(C2353eX c2353eX, Uri uri) {
        String strA06 = A06(7, 9, 97);
        return uri == null ? c2353eX.A02(strA06) : c2353eX.A05(strA06, uri.toString());
    }

    private final C2353eX A02(String str) {
        this.A00.add(str);
        this.A01.remove(str);
        return this;
    }

    private final C2353eX A03(String str, long j) {
        return A04(str, Long.valueOf(j));
    }

    private C2353eX A04(String str, Object obj) {
        this.A01.put((String) AbstractC1722Ln.A01(str), AbstractC1722Ln.A01(obj));
        this.A00.remove(str);
        return this;
    }

    private final C2353eX A05(String str, String str2) {
        return A04(str, str2);
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 44);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A02 = new byte[]{-108, -89, -98, -114, -101, -108, -99, -14, 5, -4, -20, -1, -14, -15, -10, -1};
    }

    public final List<String> A08() {
        return Collections.unmodifiableList(new ArrayList(this.A00));
    }

    public final Map<String, Object> A09() {
        HashMap map = new HashMap(this.A01);
        for (Map.Entry entry : map.entrySet()) {
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                byte[] bArr = (byte[]) value;
                entry.setValue(Arrays.copyOf(bArr, bArr.length));
            }
        }
        return Collections.unmodifiableMap(map);
    }
}
