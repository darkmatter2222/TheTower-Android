package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class HL implements InterfaceC2301dg {
    public static byte[] A01;
    public static String[] A02 = {"EcOoOPxvgIM5VM8gU5MNIX90mja3CaI7", "nhJ", "HCYDUCxXnFbS3htlRPDiG7BoiyzyMxIV", "Fv3YAwH75PiBj9X6AN971g", "yIx", "", "9xkhFmOksAfwag3lVFNPfz", "xjMRz"};
    public final C2755lA A00;

    static {
        A01();
    }

    public HL(C2755lA c2755lA) {
        this.A00 = c2755lA;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 90);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        String[] strArr = A02;
        if (strArr[1].length() != strArr[4].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[0] = "mKsg4hxQhHaV0fiKABuoeRg1A6SJU8YP";
        strArr2[2] = "TgUrCFxQKf96ICwhyLjRHk1rYV6JKdAm";
        A01 = new byte[]{-91, -111, -94, -120, -18, Ascii.GS, Ascii.SYN, Ascii.SYN, Ascii.CR, Ascii.DC4, -12, 35, Ascii.FS, Ascii.FS, 19, Ascii.SUB, -24, -50, -3, Ascii.FF, 34, -16, 33, Ascii.DLE, Ascii.EM, Ascii.US, 10, -37, -22, -29, -29, -38, -31, 57, 72, 65, 65, 56, 63, 50, 63, 66, 58, 58, 56, 55, Ascii.ETB, 38, Ascii.US, Ascii.US, Ascii.SYN, Ascii.GS, Ascii.DLE, Ascii.GS, 32, Ascii.CAN, Ascii.CAN, Ascii.SUB, Ascii.US, Ascii.CAN, Ascii.DLE, Ascii.RS, 32, Ascii.NAK, Ascii.SYN};
    }

    private void A02(int i, String str, JSONObject jSONObject, boolean z, int i2) {
        C2787lg c2787lg = new C2787lg(A00(4, 6, 78));
        c2787lg.A07(jSONObject);
        c2787lg.A05(1);
        c2787lg.A09(z);
        c2787lg.A04(i2);
        try {
            jSONObject.put(A00(33, 13, 121), C2780lZ.A0H(this.A00));
        } catch (JSONException unused) {
        }
        try {
            jSONObject.put(A00(46, 19, 87), i2);
        } catch (JSONException unused2) {
        }
        this.A00.A08().AC0(A00(27, 6, 27), i + 4000, c2787lg);
        C2755lA c2755lA = this.A00;
        String[] strArr = A02;
        if (strArr[1].length() != strArr[4].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[5] = "";
        strArr2[7] = "Bzrm1";
        if (c2755lA.A05().AB6()) {
            String str2 = A00(10, 8, 84) + str + A00(0, 1, 35) + i + A00(1, 3, 14) + jSONObject.toString();
        }
    }

    public static boolean A03(EnumC2303di enumC2303di) {
        for (EnumC2303di enumC2303di2 : HD.A06) {
            if (enumC2303di2.equals(enumC2303di)) {
                String[] strArr = A02;
                if (strArr[5].length() == strArr[7].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A02;
                strArr2[0] = "Wnbl1SxbPUMoFXuq6aB18pNeXqZWWzDi";
                strArr2[2] = "Lc0ARXxjXBXBpMD71LOao0gY4EKFysHu";
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2301dg
    public final void AC1(EnumC2303di enumC2303di, JSONObject jSONObject, int i) {
        A02(enumC2303di.A03(), enumC2303di.toString(), jSONObject, A03(enumC2303di), i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2301dg
    public final void ACh(int i, JSONObject jSONObject, int i2) {
        A02(i, A00(18, 9, 81) + i, jSONObject, false, i2);
    }
}
