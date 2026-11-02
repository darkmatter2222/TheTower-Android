package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.l2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2749l2 {
    public static int A00;
    public static int A01;
    public static int A02;
    public static int A03;
    public static int A04;
    public static int A05;
    public static int A06;
    public static int A07;
    public static byte[] A08;
    public static final String A09;

    static {
        A01();
        A09 = C2749l2.class.getSimpleName();
        A05 = AbstractC2786lf.A0o;
        A06 = AbstractC2786lf.A0s;
        A02 = AbstractC2786lf.A0l;
        A01 = AbstractC2786lf.A0k;
        A03 = AbstractC2786lf.A0m;
        A00 = AbstractC2786lf.A0i;
        A04 = AbstractC2786lf.A0n;
        A07 = AbstractC2786lf.A0t;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 62);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A08 = new byte[]{-120, -90, -88, -83, -86, 101, -87, -82, -72, -80, 101, -85, -90, -82, -79, -70, -73, -86, 115, -63, -33, -31, -26, -29, -98, -30, -25, -15, -23, -98, -15, -13, -31, -31, -29, -15, -15, -84, -63, -33, -31, -26, -29, -98, -30, -19, -11, -20, -22, -19, -33, -30, -98, -28, -33, -25, -22, -13, -16, -29, -84, -127, -97, -95, -90, -93, 94, -90, -89, -78, 108, -72, -42, -40, -35, -38, -107, -30, -34, -24, -24, -93, -83, -80, -85, -81, -66, -79, -83, -64, -75, -62, -79, -85, -65, -75, -58, -79, -85, -82, -59, -64, -79, -65, -55, -52, -57, -53, -38, -51, -55, -36, -47, -34, -51, -57, -36, -31, -40, -51, -95, -92, -97, -90, -81, -78, -83, -95, -76, -97, -76, -71, -80, -91, Ascii.NAK, Ascii.CAN, 19, 38, Ascii.EM, 37, 41, Ascii.EM, 39, 40, 19, Ascii.GS, Ascii.CAN, -79, -60, -60, -75, -67, -64, -60, -78, -80, -78, -73, -76, Ascii.CAN, Ascii.SYN, Ascii.CAN, Ascii.GS, Ascii.SUB, Ascii.DC4, Ascii.CAN, 36, 35, 41, Ascii.SUB, 45, 41, -50, -55, -47, -44, -35, -38, -51, -57, -38, -51, -55, -37, -41, -42, Ascii.SYN, Ascii.SUB, Ascii.SO, Ascii.DC4, Ascii.DC2, Ascii.VT, Ascii.SO, 0, 3, -2, 19, 8, Ascii.FF, 4, 5, 2, -4};
    }

    public static void A02(C2755lA c2755lA, C2739ks c2739ks, int i, String str, long j) {
        if (A06(c2755lA)) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(A00(120, 14, 2), c2739ks.A01);
                jSONObject.put(A00(134, 13, 118), c2739ks.A02);
                if (j > 0) {
                    jSONObject.put(A00(191, 9, 97), C3076qS.A07(System.currentTimeMillis() - j));
                }
                C2787lg c2787lg = new C2787lg(str);
                c2787lg.A07(jSONObject);
                c2787lg.A05(1);
                c2755lA.A08().AC0(A00(154, 5, 17), i, c2787lg);
            } catch (Throwable th) {
                c2755lA.A08().A4j(th);
            }
        }
    }

    public static void A03(C2755lA c2755lA, C2744kx c2744kx, String str, int i, String str2, Long l, Long l2) {
        if (A06(c2755lA)) {
            A05(c2755lA, c2744kx.A06, c2744kx.A07, c2744kx.A08, A00(186, 5, 111), str, i, str2, l, l2, null);
        }
    }

    public static void A04(C2755lA c2755lA, C2748l1 c2748l1, boolean z) {
        if (A06(c2755lA)) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(A00(120, 14, 2), c2748l1.A01);
                jSONObject.put(A00(134, 13, 118), c2748l1.A03);
                jSONObject.put(A00(104, 16, 42), c2748l1.A02);
                jSONObject.put(A00(159, 13, 119), c2748l1.A00);
                if (C2863mv.A2U(c2755lA)) {
                    jSONObject.put(A00(200, 3, 82), c2748l1.A04);
                }
                String strA00 = z ? A00(61, 10, 0) : A00(71, 11, 55);
                int i = z ? A05 : A06;
                C2787lg c2787lg = new C2787lg(strA00);
                c2787lg.A07(jSONObject);
                c2787lg.A05(1);
                c2755lA.A08().AC0(A00(154, 5, 17), i, c2787lg);
            } catch (Throwable th) {
                c2755lA.A08().A4j(th);
            }
        }
    }

    public static void A05(C2755lA c2755lA, String str, String str2, String str3, String str4, String str5, int i, String str6, Long l, Long l2, Integer num) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(A00(120, 14, 2), str);
            jSONObject.put(A00(134, 13, 118), str2);
            jSONObject.put(A00(104, 16, 42), str4);
            if (str6 != null) {
                jSONObject.put(A00(172, 14, 42), str6);
            }
            if (l != null) {
                jSONObject.put(A00(82, 22, 14), String.valueOf(l));
            }
            if (l2 != null) {
                jSONObject.put(A00(191, 9, 97), String.valueOf(l2));
            }
            if (num != null) {
                jSONObject.put(A00(147, 7, 18), String.valueOf(num));
            }
            jSONObject.put(A00(159, 13, 119), str5);
            if (C2863mv.A2U(c2755lA)) {
                jSONObject.put(A00(200, 3, 82), str3);
            }
            String strA00 = A00(19, 19, 64);
            if (i == A03) {
                strA00 = A00(38, 23, 64);
            } else if (i == A01) {
                strA00 = A00(0, 19, 7);
            }
            C2787lg c2787lg = new C2787lg(strA00);
            c2787lg.A07(jSONObject);
            c2787lg.A05(1);
            c2755lA.A08().AC0(A00(154, 5, 17), i, c2787lg);
        } catch (Throwable th) {
            c2755lA.A08().A4j(th);
        }
    }

    public static boolean A06(C2755lA c2755lA) {
        int iA06 = c2755lA.A05().AB6() ? 1 : AbstractC2865mx.A06(c2755lA);
        if (iA06 == 0) {
            return false;
        }
        return iA06 <= 0 || c2755lA.A09().A00() <= 1.0d / ((double) iA06);
    }
}
