package com.facebook.ads.redexgen.X;

import android.database.Cursor;
import android.util.Log;
import android.util.Pair;
import com.google.common.base.Ascii;
import java.io.IOException;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.mS, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2834mS {
    public static byte[] A00;

    static {
        A03();
    }

    public static InterfaceC2836mU A00(C1617Hh c1617Hh) {
        try {
            return new H8(c1617Hh);
        } catch (IOException e) {
            c1617Hh.A08().ABz(A02(0, 15, 89), AbstractC2786lf.A2K, new C2787lg(e));
            return new HB();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.facebook.ads.redexgen.X.7A] */
    public static C7A A01(C1617Hh c1617Hh) {
        return new HC(c1617Hh) { // from class: com.facebook.ads.redexgen.X.7A
            public static byte[] A03;
            public static String[] A04 = {"zSqnO64p11LQVC3SPrHTwk7q", "RQQcRArwNRw7pCFobI7zm4AECBhyO", "uX7W3VjoXSZ8mIic8tH9fb17VHeYN2EI", "VdQ4q", "h", "roUcO9bhLUMzgbi0", "6tdL5l5B64y16QievzXwm2hdxMIwTdT2", "M1EyYsdVjnJYnVOvo"};
            public boolean A00 = true;
            public final C1617Hh A01;
            public final C2764lJ A02;

            static {
                A04();
            }

            {
                this.A01 = c1617Hh;
                this.A02 = new C2764lJ(c1617Hh);
            }

            public static String A00(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
                for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 85);
                }
                return new String(bArrCopyOfRange);
            }

            private JSONArray A01(Cursor cursor) throws JSONException {
                JSONArray jSONArray = new JSONArray();
                cursor.moveToPosition(-1);
                while (cursor.moveToNext()) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(A00(54, 2, 44), cursor.getString(C1616Hg.A04.A00));
                    jSONObject.put(A00(82, 8, 53), cursor.getString(C1616Hg.A09.A00));
                    jSONObject.put(A00(90, 4, 94), cursor.getString(C1616Hg.A0A.A00));
                    jSONObject.put(A00(78, 4, 109), C3076qS.A03(cursor.getDouble(C1616Hg.A08.A00)));
                    jSONObject.put(A00(66, 12, 6), C3076qS.A03(cursor.getDouble(C1616Hg.A07.A00)));
                    jSONObject.put(A00(56, 10, 20), cursor.getString(C1616Hg.A06.A00));
                    String string = cursor.getString(C1616Hg.A03.A00);
                    jSONObject.put(A00(50, 4, 78), string != null ? new JSONObject(string) : new JSONObject());
                    jSONObject.put(A00(43, 7, 26), cursor.getString(C1616Hg.A02.A00));
                    jSONObject.put(A00(38, 5, 36), this.A01.A04().A8z());
                    jSONArray.put(jSONObject);
                }
                return jSONArray;
            }

            private JSONArray A02(Cursor cursor) throws JSONException {
                JSONArray jSONArray = new JSONArray();
                cursor.moveToPosition(-1);
                while (cursor.moveToNext()) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(A00(54, 2, 44), cursor.getString(2));
                    jSONObject.put(A00(82, 8, 53), cursor.getString(0));
                    jSONObject.put(A00(90, 4, 94), cursor.getString(4));
                    jSONObject.put(A00(78, 4, 109), C3076qS.A03(cursor.getDouble(5)));
                    jSONObject.put(A00(66, 12, 6), C3076qS.A03(cursor.getDouble(6)));
                    jSONObject.put(A00(56, 10, 20), cursor.getString(7));
                    String string = cursor.getString(8);
                    jSONObject.put(A00(50, 4, 78), string != null ? new JSONObject(string) : new JSONObject());
                    jSONObject.put(A00(43, 7, 26), cursor.getString(9));
                    jSONObject.put(A00(38, 5, 36), this.A01.A04().A8z());
                    jSONArray.put(jSONObject);
                }
                return jSONArray;
            }

            public static JSONObject A03(Cursor cursor) throws JSONException {
                JSONObject jSONObject = new JSONObject();
                while (cursor.moveToNext()) {
                    String string = cursor.getString(C1615Hf.A02.A00);
                    String string2 = cursor.getString(C1615Hf.A01.A00);
                    String[] strArr = A04;
                    if (strArr[6].charAt(14) != strArr[2].charAt(14)) {
                        throw new RuntimeException();
                    }
                    String[] strArr2 = A04;
                    strArr2[7] = "IfQdYzKY6vCyBSxPg";
                    strArr2[5] = "fxZpsWnZoPKbT5Dt";
                    jSONObject.put(string, string2);
                }
                return jSONObject;
            }

            public static void A04() {
                String[] strArr = A04;
                if (strArr[7].length() == strArr[5].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A04;
                strArr2[0] = "GUa5RhIL61d4FW3HWW0RBx9i";
                strArr2[1] = "4nKtohmUbY7tHai9z2t8ojCMJbrZv";
                A03 = new byte[]{62, Ascii.FS, 19, 90, 9, 93, Ascii.EM, Ascii.CAN, 17, Ascii.CAN, 9, Ascii.CAN, 93, Ascii.FS, 9, 9, Ascii.CAN, Ascii.DLE, Ascii.CR, 9, Ascii.SO, 93, Ascii.CAN, 5, Ascii.RS, Ascii.CAN, Ascii.CAN, Ascii.EM, Ascii.CAN, Ascii.EM, 93, Ascii.CAN, Ascii.VT, Ascii.CAN, 19, 9, Ascii.SO, 83, Ascii.DLE, Ascii.NAK, 7, Ascii.CAN, Ascii.NAK, 46, 59, 59, 42, 34, 63, 59, 127, 122, 111, 122, Ascii.DLE, Ascii.GS, 50, 36, 50, 50, 40, 46, 47, Ascii.RS, 40, 37, 32, 54, 32, 32, 58, 60, Base64.padSymbol, Ascii.FF, 39, 58, 62, 54, 76, 81, 85, 93, Ascii.DC4, Ascii.SI, Ascii.VT, 5, Ascii.SO, 63, 9, 4, 127, 114, 123, 110};
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2835mT
            public final int A5Z(int i) {
                int iA08 = 0;
                if (i > -1) {
                    try {
                        iA08 = this.A02.A08(i);
                    } catch (Exception e) {
                        if (this.A01.A05().AB6()) {
                            Log.e(HC.A00, A00(0, 38, 40), e);
                        }
                    }
                }
                this.A02.A0I();
                if (this.A00) {
                    this.A02.A0J();
                }
                return iA08;
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2836mU
            public final void A5a() {
                this.A02.A0H();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2835mT
            public final boolean A6P(String str) {
                return this.A02.A0K(str);
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2835mT
            public final JSONArray A7S() {
                Cursor cursorA0A = null;
                try {
                    cursorA0A = this.A02.A0A();
                    return cursorA0A.getCount() > 0 ? A01(cursorA0A) : null;
                } catch (JSONException unused) {
                } finally {
                    if (cursorA0A != null) {
                        cursorA0A.close();
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2835mT
            public final JSONObject A7T() {
                Cursor cursorA0B = null;
                try {
                    cursorA0B = this.A02.A0B();
                    return cursorA0B.getCount() > 0 ? A03(cursorA0B) : null;
                } catch (JSONException unused) {
                } finally {
                    if (cursorA0B != null) {
                        cursorA0B.close();
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2835mT
            public final int A8d() {
                Cursor cursorA09 = null;
                try {
                    cursorA09 = this.A02.A09();
                    return cursorA09.moveToFirst() ? cursorA09.getInt(0) : 0;
                } finally {
                    if (cursorA09 != null) {
                        cursorA09.close();
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2835mT
            public final String A8g(String str) {
                String string = null;
                Cursor cursorA0D = this.A02.A0D(str);
                if (cursorA0D != null) {
                    if (cursorA0D.moveToNext() && cursorA0D.getCount() > 0) {
                        C2762lH c2762lH = C1616Hg.A0A;
                        String[] strArr = A04;
                        if (strArr[7].length() == strArr[5].length()) {
                            throw new RuntimeException();
                        }
                        String[] strArr2 = A04;
                        strArr2[3] = "VgiME";
                        strArr2[4] = "4";
                        string = cursorA0D.getString(cursorA0D.getColumnIndex(c2762lH.A01));
                    }
                    cursorA0D.close();
                }
                return string;
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2835mT
            public final Pair<JSONObject, JSONArray> A9v(int i) {
                Cursor cursorA0C = null;
                try {
                    cursorA0C = this.A02.A0C(i);
                    JSONArray jSONArrayA02 = null;
                    JSONObject jSONObjectA03 = null;
                    if (cursorA0C.getCount() > 0) {
                        jSONObjectA03 = A03(cursorA0C);
                        jSONArrayA02 = A02(cursorA0C);
                    }
                    return new Pair<>(jSONObjectA03, jSONArrayA02);
                } catch (JSONException unused) {
                    return new Pair<>(null, null);
                } finally {
                    if (cursorA0C != null) {
                        cursorA0C.close();
                    }
                }
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2835mT
            public final boolean AAj(String str) {
                return this.A02.A0L(str);
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2836mU
            public final void AMQ(C2881nD c2881nD, AbstractC2833mR<String> abstractC2833mR) {
                this.A02.A0G(c2881nD.A08(), c2881nD.A05().A00, c2881nD.A06().toString(), c2881nD.A04(), c2881nD.A03(), c2881nD.A07(), c2881nD.A09(), abstractC2833mR);
            }
        };
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 51);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{-2, -15, -17, -5, -2, -16, -21, -16, -19, 0, -19, -18, -19, -1, -15};
    }
}
