package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class AK implements InterfaceC2081a7 {
    public static byte[] A05;
    public static String[] A06 = {"yJwczGSbba5UrkwzZOW60Je1LUoZxQIl", "oZp", "SLRT1bjVboXCxkvYGWPu27FVIHxKKecJ", "WHpvXVjPup", "", "gRWAa43vtpEz38T6Kt4HiTmitjJp6SmI", "", "QpBNbg2dQWhW"};
    public JSONObject A00;
    public JSONObject A01;
    public final EnumC2067Zt A03;
    public final List<InterfaceC2064Zq> A04 = new ArrayList();
    public boolean A02 = false;

    static {
        A01();
    }

    public AK(EnumC2067Zt enumC2067Zt) {
        this.A03 = enumC2067Zt;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 27);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        if (A06[7].length() != 12) {
            throw new RuntimeException();
        }
        A06[3] = "GbTE4j9vTw";
        A05 = new byte[]{58, Ascii.CR, Ascii.SYN, Ascii.FS, Ascii.DC4, Ascii.GS, 88, 93, Ascii.VT, 88, Ascii.FS, Ascii.EM, Ascii.FF, Ascii.EM, 88, Ascii.CR, 8, Ascii.FS, Ascii.EM, Ascii.FF, Ascii.GS, 66, 114, 82, 82, 88, Ascii.FS, Ascii.EM, Ascii.FF, Ascii.EM, 88, 82, 82, 114, 93, Ascii.VT, 114, 82, 82, 88, Ascii.RS, 17, Ascii.SYN, Ascii.US, Ascii.GS, 10, 8, 10, 17, Ascii.SYN, Ascii.FF, 88, 82, 82, 114, 93, Ascii.VT, 89, 110, 117, 127, 119, 126, 59, 115, 122, 104, 59, 117, 116, 59, 125, 114, 117, 124, 126, 105, 107, 105, 114, 117, 111, 32, Ascii.ETB, Ascii.FF, 6, Ascii.SO, 7, 66, Ascii.VT, 17, 66, Ascii.FF, Ascii.CR, Ascii.SYN, 66, Ascii.DLE, 7, 3, 6, Ascii.ESC, 43, 46, 59, 46, 111, 114, 114, 111, 33, 58, 35, 35, 107, 100, 99, 106, 104, 127, 125, 127, 100, 99, 121, 45, 44, 48, 45, 99, 120, 97, 97, 125, 114, 117, 124, 126, 105, 107, 105, 114, 117, 111, 59, 38, 38, 59, 117, 110, 119, 119, 77, 86, 79, 79};
    }

    private boolean A02(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject == null && jSONObject2 == null) {
            return false;
        }
        if (jSONObject == null || jSONObject2 == null) {
            return true;
        }
        boolean zA02 = AbstractC2088aF.A02(jSONObject, jSONObject2);
        String[] strArr = A06;
        if (strArr[0].charAt(8) != strArr[2].charAt(8)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A06;
        strArr2[4] = "";
        strArr2[6] = "";
        return true ^ zA02;
    }

    public final synchronized boolean A03(JSONObject jSONObject, JSONObject jSONObject2) {
        try {
            if (jSONObject == null) {
                throw new IllegalArgumentException(A00(101, 12, 84));
            }
            if (jSONObject2 == null && this.A03.A05()) {
                throw new IllegalArgumentException(A00(132, 19, 0));
            }
            if (jSONObject2 != null && !this.A03.A05()) {
                throw new IllegalArgumentException(A00(InterfaceC3669k1.d.b.k, 19, 22));
            }
            if (!A02(this.A01, jSONObject2) && !A02(this.A00, jSONObject)) {
                return false;
            }
            this.A00 = jSONObject;
            this.A01 = jSONObject2;
            this.A02 = true;
            Iterator<InterfaceC2064Zq> it = this.A04.iterator();
            while (it.hasNext()) {
                it.next().A5I();
            }
            try {
                String.format(Locale.US, A00(0, 57, 99), this.A03, this.A00 == null ? A00(151, 4, 56) : this.A00.toString(2), this.A01 == null ? A00(151, 4, 56) : this.A01.toString(2));
            } catch (JSONException unused) {
            }
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2081a7
    public final synchronized void A4R(InterfaceC2064Zq interfaceC2064Zq) {
        this.A04.add(interfaceC2064Zq);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2081a7
    public final synchronized JSONObject A8J() {
        if (this.A00 == null) {
            throw new IllegalStateException(A00(82, 19, 121));
        }
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2081a7
    public final synchronized JSONObject A8j() {
        if (!this.A03.A05()) {
            throw new IllegalStateException(A00(57, 25, 0));
        }
        if (this.A01 == null) {
            throw new IllegalStateException(A00(82, 19, 121));
        }
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2081a7
    public final EnumC2067Zt A8r() {
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2081a7
    public final synchronized boolean ABM() {
        return this.A02;
    }
}
