package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Kz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1708Kz extends AbstractC2394fD implements Serializable {
    public static byte[] A0F = null;
    public static String[] A0G = {"Y1a5U13ty71QFnyeZB3YxisAAvg7l3fM", "vP", "roZ2Db2w31DgWTY1oGehTdyGNewX8eXS", "I2NTYMYLYsNyCs0logd6ULXXnbjyHCad", "3brQnbpmNBxYuH5lF741sBi9dGi0pOZr", "3fAMLw4w5Yud0wL2utfDbR4mKZlWQuB2", "wSrWvvXZ9ekOd4qM7VWdouqMZx6NVgDc", "r9"};
    public static final long serialVersionUID = 3751287062553772011L;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public boolean A06;
    public boolean A09;
    public boolean A0A;
    public final List<LA> A0E;
    public final ArrayList<Integer> A0D = new ArrayList<>();
    public boolean A0B = false;
    public boolean A08 = false;
    public boolean A07 = false;
    public String A05 = A02(307, 2, 99);
    public final String A0C = UUID.randomUUID().toString();

    static {
        A03();
    }

    public C1708Kz(List<LA> list) {
        this.A0E = list;
    }

    public static C1708Kz A00(JSONObject jSONObject, C1618Hi c1618Hi) throws JSONException {
        return A01(jSONObject, c1618Hi, false);
    }

    public static C1708Kz A01(JSONObject jSONObject, C1618Hi c1618Hi, boolean z) throws JSONException {
        JSONArray jSONArray = jSONObject.getJSONArray(A02(0, 3, 35));
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            if (z) {
                arrayList.add(C13767i.A00(jSONArray.getJSONObject(i), c1618Hi));
            } else {
                arrayList.add(C13747g.A00(jSONArray.getJSONObject(i), c1618Hi));
            }
        }
        C1708Kz c1708Kz = new C1708Kz(arrayList);
        JSONObject jSONObject2 = jSONObject.getJSONObject(A02(3, 12, 43));
        c1708Kz.A05 = jSONObject2.toString();
        c1708Kz.A01 = jSONObject2.optInt(A02(15, 17, 120), arrayList.size());
        c1708Kz.A04 = jSONObject2.optInt(A02(32, 24, 126), 0);
        c1708Kz.A02 = jSONObject2.optInt(A02(100, 24, 109), 0);
        c1708Kz.A03 = jSONObject2.optInt(A02(151, 22, 8), 0);
        c1708Kz.A0A = jSONObject2.optBoolean(A02(253, 38, 75), true);
        c1708Kz.A09 = jSONObject2.optBoolean(A02(223, 30, 122), true);
        c1708Kz.A06 = jSONObject2.optBoolean(A02(124, 27, 9), true);
        c1708Kz.A00 = jSONObject2.optInt(A02(56, 19, 124), 2);
        c1708Kz.A25(jSONObject2);
        c1708Kz.A0B = jSONObject2.optBoolean(A02(291, 16, 73), false);
        c1708Kz.A08 = jSONObject2.optBoolean(A02(195, 28, 85), false);
        c1708Kz.A07 = jSONObject2.optBoolean(A02(173, 22, 45), false);
        JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray(A02(75, 25, 10));
        if (jSONArrayOptJSONArray != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
                c1708Kz.A0D.add(Integer.valueOf(jSONArrayOptJSONArray.optInt(i2, 0)));
            }
        }
        return c1708Kz;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A0G;
            if (strArr[1].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0G;
            strArr2[0] = "ksKrUe0otL7CQDvNz8iG7T5OcxZuVq1Y";
            strArr2[4] = "xaZ8PqWmutKQFInRkVw3BesrM2XhV7TN";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 107);
            i4++;
        }
    }

    public static void A03() {
        A0F = new byte[]{-17, -14, 1, -7, -2, -9, -1, 4, -11, 6, -9, 8, -9, 3, 9, 70, 75, 68, 76, 81, 72, 71, 66, 68, 71, 86, 66, 70, 82, 88, 81, 87, 76, 81, 74, 82, 87, 78, 77, 72, 74, 77, 92, 72, 86, 74, 97, 72, 77, 94, 91, 74, 93, 82, 88, 87, 74, 79, 72, 80, 85, 76, 75, 70, 72, 75, 90, 70, 93, 72, 89, 80, 76, 85, 91, -40, -35, -42, -34, -29, -34, -29, -36, -44, -37, -28, -25, -40, -38, -44, -21, -34, -38, -20, -44, -23, -34, -30, -38, -24, Base64.padSymbol, 70, 60, 55, 59, 57, 74, 60, 55, 57, 77, 76, 71, 55, 59, 68, 71, 75, Base64.padSymbol, 55, 76, 65, 69, Base64.padSymbol, -36, -43, -30, -40, -32, -39, -45, -22, -35, -40, -39, -29, -45, -28, -32, -43, -19, -42, -43, -41, -33, -45, -39, -26, -26, -29, -26, -36, -31, -41, -40, -21, -46, -25, -30, -46, -27, -40, -29, -30, -27, -25, -46, -33, -30, -44, -41, -40, -41, 10, -3, 8, 7, 10, Ascii.FF, -9, -2, 1, 10, Ascii.VT, Ascii.FF, -9, -3, -5, 8, 5, -9, 7, 6, 4, 17, 50, 37, 48, 47, 50, 52, Ascii.US, 38, 41, 50, 51, 52, Ascii.US, 41, 45, 48, 50, 37, 51, 51, 41, 47, 46, Ascii.US, 47, 46, 44, 57, 88, 77, 84, 92, 68, 88, 74, 72, 84, 83, 73, 68, 70, 73, 68, 84, 83, 68, 70, 73, 68, 87, 74, 85, 84, 87, 89, 78, 83, 76, 41, Ascii.RS, 37, 45, Ascii.NAK, 41, Ascii.ESC, Ascii.EM, 37, 36, Ascii.SUB, Ascii.NAK, Ascii.ETB, Ascii.SUB, Ascii.NAK, 37, 36, Ascii.NAK, 44, Ascii.US, Ascii.SUB, Ascii.ESC, 37, Ascii.NAK, 38, 34, Ascii.ETB, 47, Ascii.CAN, Ascii.ETB, Ascii.EM, 33, Ascii.NAK, Ascii.ESC, 40, 40, 37, 40, 39, 36, 32, Ascii.GS, 40, 19, Ascii.SUB, 35, 38, Ascii.ETB, Ascii.EM, 19, 42, Ascii.GS, Ascii.EM, 43, 73, 75};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2394fD
    public final int A1L() {
        return 2;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2394fD
    public final int A1M() {
        return this.A04 + this.A02;
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

    public final LA A2y() {
        if (this.A0E.isEmpty()) {
            return null;
        }
        LA la = this.A0E.get(0);
        if (A0G[3].charAt(30) != 'a') {
            throw new RuntimeException();
        }
        String[] strArr = A0G;
        strArr[0] = "kalcuJUd13OWB3p352R0B2fkOk5TQQvY";
        strArr[4] = "xCP6b54EQCdUXuQWfLaOcoZzurPDdDGU";
        return la;
    }

    public final LA A2z(int i) {
        return this.A0E.get(i);
    }

    public final String A30() {
        return this.A0C;
    }

    public final String A31() {
        return this.A05;
    }

    public final String A32() {
        LA laA2y = A2y();
        if (laA2y != null) {
            return laA2y.A37();
        }
        return null;
    }

    public final ArrayList<Integer> A33() {
        return this.A0D;
    }

    public final void A34(int i) {
        this.A0E.remove(i);
        this.A01--;
    }

    public final boolean A35() {
        return this.A00 == 0;
    }

    public final boolean A36() {
        return this.A06;
    }

    public final boolean A37() {
        return this.A07;
    }

    public final boolean A38() {
        return this.A08;
    }

    public final boolean A39() {
        return this.A09;
    }

    public final boolean A3A() {
        return this.A0A;
    }

    public final boolean A3B() {
        return this.A0B;
    }

    public final boolean A3C(int i) {
        return i >= 0 && i < this.A0E.size();
    }
}
