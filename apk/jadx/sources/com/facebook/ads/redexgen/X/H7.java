package com.facebook.ads.redexgen.X;

import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class H7 implements InterfaceC2882nE {
    public static byte[] A02;
    public static String[] A03 = {"T62Ry0cHQcXSDxKL7NhTV4RGJa1EK", "DJGQMadZkB17LVbr", "iOkG4K13Hjl0NUqXuJlVUejicjlk1nzW", "33srKXABt3KwFUuhEJwkq3ZAZBzDwUgt", "PLu8UfSRSTd2rcgSm6FUEhoaf9WcktnC", "1tfjOobuNxYUsDgE6aIuCnswgchDbiIE", "3cN0JgpVgSdwOhRQcWnO1AlK5DQJr2L6", "ilEunU5aQdATmqkKFrVV7R1hAU4VbdID"};
    public static final String A04;
    public C1617Hh A00;
    public H8 A01;

    static {
        A01();
        A04 = H7.class.getSimpleName();
    }

    public H7(C1617Hh c1617Hh, H8 h8) {
        this.A00 = c1617Hh;
        this.A01 = h8;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 72);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{86, Ascii.DLE, Ascii.EM, 4, 86, 19, 0, 19, Ascii.CAN, 2, 63, Ascii.DC2, 86, 115, 32, 38, 48, 48, 54, 32, 32, 53, 38, 63, 63, 42, 125, 32, 34, 3, 10, 3, Ascii.DC2, 3, 2, 70, 3, Ascii.DLE, 3, 8, Ascii.DC2, Ascii.NAK, 70, 3, Ascii.RS, 5, 3, 3, 2, 3, 2, 70, Ascii.DC4, 3, Ascii.DC2, Ascii.DC4, Ascii.US, 70, 10, Ascii.SI, Ascii.VT, Ascii.SI, Ascii.DC2, 72, 70, 37, 9, 19, 8, Ascii.DC2, 92, 70, 65, 102, 110, 107, 98, 99, 39, 115, 104, 39, 119, 102, 117, 116, 98, 39, 102, 105, 39, 98, 113, 98, 105, 115, 39, 110, 105, 39, 98, 113, 98, 105, 115, 116, 39, 102, 117, 117, 102, 126, 39, 97, 104, 117, 39, 99, 110, 116, 119, 102, 115, 100, 111, 39, 97, 102, 110, 107, 114, 117, 98, 41, 112, 87, 95, 90, 83, 82, Ascii.SYN, 66, 89, Ascii.SYN, 70, 87, 68, 69, 83, Ascii.SYN, 87, 88, Ascii.SYN, 83, SignedBytes.MAX_POWER_OF_TWO, 83, 88, 66, Ascii.SYN, 95, 88, Ascii.SYN, 83, SignedBytes.MAX_POWER_OF_TWO, 83, 88, 66, 69, Ascii.SYN, 90, 95, 69, 66, Ascii.SYN, 65, 94, 83, 88, Ascii.SYN, 70, 68, 83, 70, 87, 68, 95, 88, 81, Ascii.SYN, 82, 95, 69, 70, 87, 66, 85, 94, Ascii.SYN, 70, 87, 79, 90, 89, 87, 82, Ascii.CAN, 7, 49, 38, 34, 49, 38, 116, 36, 38, 59, 55, 49, 39, 39, 49, 48, 116, 49, 34, 49, 58, 32, Ascii.GS, 48, 116, 17, 39, 48, 52, 39, 48, 98, 48, 39, 54, 55, 48, 44, 39, 38, 98, 44, 45, 44, 111, 48, 39, 54, 48, 59, 35, 32, 46, 39, 98, 39, 48, 48, 45, 48, 98, 33, 45, 38, 39, 98, 88, 110, 121, 125, 110, 121, 43, 121, 110, 127, 126, 121, 101, 110, 111, 43, 121, 110, 127, 121, 114, 106, 105, 103, 110, 43, 110, 121, 121, 100, 121, 43, 104, 100, 111, 110, 43, 68, 127, 112, 115, 125, 116, 49, 101, 126, 49, 97, 112, 99, 98, 116, 49, 98, 116, 99, 103, 116, 99, 49, 99, 116, 98, 97, 126, 127, 98, 116, 49, 112, 101, 49, 97, 126, 98, 120, 101, 120, 126, 127, 49, 117, 121, 114, 115, Ascii.CR, Ascii.RS, Ascii.CR, 6, Ascii.FS, Ascii.ESC, 56, 59, 63, 42, 43, 44, 59, 115, Base64.padSymbol, 49, 48, 56, 55, 57, 115, 59, 40, 59, 48, 42, 115, 51, 63, 57, 55, Base64.padSymbol, 95, 92, 88, 77, 76, 75, 92, 102, 90, 86, 87, 95, 80, 94, 116, 121, 117, 98, 100, 104, 117, 99, 88, 99, 102, 115, 102, 101, 102, 116, 98, 60, 39, 35, 45, 38, 58, 33, 37, 43, 32, 17, 39, 42, 32, 59, 63, 49, 58, 39};
    }

    private void A02(Set<String> set, Set<String> set2) {
        int iA0B = this.A01.A0B(AbstractC2865mx.A0G(this.A00), set, set2);
        if (iA0B > 0) {
            this.A00.A08().ABz(A00(InterfaceC3669k1.a.b.e, 15, 79), AbstractC2786lf.A10, new C2787lg(A00(28, 44, 46) + iA0B));
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2882nE
    public final JSONObject A5u() {
        int iA0F = AbstractC2865mx.A0F(this.A00);
        List<JSONObject> listA0C = this.A01.A0C(iA0F);
        JSONObject jSONObject = new JSONObject();
        for (JSONObject jSONObject2 : listA0C) {
            try {
                String strOptString = jSONObject2.optString(A00(TypedValues.CycleType.TYPE_EASING, 5, 0));
                String string = UUID.randomUUID().toString();
                jSONObject.put(string, strOptString);
                jSONObject2.put(A00(TypedValues.CycleType.TYPE_WAVE_PHASE, 8, 6), string);
            } catch (JSONException e) {
                InterfaceC2760lF interfaceC2760lFA05 = this.A00.A05();
                if (A03[2].charAt(22) != 'j') {
                    throw new RuntimeException();
                }
                A03[7] = "eMFgGe3BwzjIEwfr0eq56CqWHHfmSWyD";
                if (interfaceC2760lFA05.AB6()) {
                    Log.e(A04, A00(134, 72, 126), e);
                }
            }
        }
        JSONArray jSONArray = new JSONArray((Collection) listA0C);
        if (AbstractC2865mx.A0P(this.A00)) {
            int iA08 = AbstractC2865mx.A08(this.A00);
            JSONArray jSONArrayA04 = C2788lh.A04(this.A00, iA08);
            if (A03[7].charAt(31) == 'D') {
                String[] strArr = A03;
                strArr[3] = "31pn7rS79XEbH8v4aDva0zyRbLn9ex8z";
                strArr[6] = "3BqVDGT4msLu1Rtl2iVh8DraLvTqVCKW";
                if (jSONArrayA04 != null && jSONArrayA04.length() > 0) {
                    jSONArray = C1602Gs.A02(this.A00, jSONArrayA04, jSONArray, iA0F + iA08);
                }
            }
            throw new RuntimeException();
        }
        JSONObject jSONObject3 = null;
        try {
            if (jSONArray.length() > 0) {
                jSONObject3 = new JSONObject();
                if (jSONObject.length() > 0) {
                    jSONObject3.put(A00(433, 6, 28), jSONObject);
                }
                jSONObject3.put(A00(357, 6, 32), jSONArray);
            }
            return jSONObject3;
        } catch (JSONException unused) {
            return null;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2882nE
    public final boolean ABJ() {
        return this.A01.A0A() > 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2882nE
    public final void ADq() {
        C2788lh.A0F(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2882nE
    public final void AEf(JSONArray jSONArray) {
        int length = jSONArray.length();
        HashSet hashSet = new HashSet(length);
        for (int i = 0; i < length; i++) {
            try {
                String string = jSONArray.getJSONObject(i).getString(A00(403, 2, 85));
                if (C2788lh.A0I(string)) {
                    C2788lh.A0B(this.A00, string);
                } else {
                    hashSet.add(string);
                }
            } catch (JSONException e) {
                if (this.A00.A05().AB6()) {
                    Log.e(A04, A00(72, 62, 79), e);
                }
            }
        }
        A02(hashSet, new HashSet());
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2882nE
    public final boolean AEh(JSONArray jSONArray) {
        String strA00 = A00(27, 1, 70);
        boolean z = true;
        boolean zA0P = AbstractC2865mx.A0P(this.A00);
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                String string = jSONObject.getString(A00(403, 2, 85));
                if (A00(363, 26, 22).equals(string)) {
                    C2863mv.A0T(this.A00).A39(jSONObject.getString(A00(389, 14, InterfaceC3669k1.d.b.k)));
                    this.A00.A04().ADG();
                } else {
                    int i2 = jSONObject.getInt(A00(353, 4, 94));
                    if (i2 == 1) {
                        if (this.A00.A05().AB6()) {
                            String str = A00(InterfaceC3669k1.c.b.g, 25, 28) + string + A00(13, 14, 27);
                        }
                        if (zA0P) {
                            C2788lh.A0D(string);
                        }
                        hashSet.add(string);
                    } else {
                        String strA01 = A00(0, 13, 62);
                        if (i2 >= 1000 && i2 < 2000) {
                            if (this.A00.A05().AB6()) {
                                Log.e(A04, A00(272, 37, 67) + i2 + strA01 + string + strA00);
                            }
                            if (C2788lh.A0I(string)) {
                                C2788lh.A0B(this.A00, string);
                            } else {
                                hashSet2.add(string);
                            }
                            z = false;
                        } else if (i2 >= 2000 && i2 < 3000) {
                            if (this.A00.A05().AB6()) {
                                Log.e(A04, A00(231, 41, 10) + i2 + strA01 + string + strA00);
                            }
                            hashSet.add(string);
                            if (zA0P) {
                                C2788lh.A0D(string);
                            }
                        }
                    }
                }
            } catch (JSONException e) {
                if (this.A00.A05().AB6()) {
                    Log.e(A04, A00(309, 44, 89) + i + strA00, e);
                }
                z = false;
            }
        }
        A02(hashSet2, hashSet);
        return z;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2882nE
    public final void AGg() {
        this.A01.A5a();
        C2788lh.A07(this.A00);
    }
}
