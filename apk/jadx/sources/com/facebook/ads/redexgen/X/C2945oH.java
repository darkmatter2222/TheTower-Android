package com.facebook.ads.redexgen.X;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.google.android.gms.ads.AdSize;
import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.oH, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2945oH {
    public static byte[] A0C;
    public static String[] A0D = {"D9utVieqpHmzq", "1reJ20tywIkt8c03XFg68iFkPgUpcQh9", "1hiVgm3FzyAWthqubctijKn7iSl8t7OZ", "2MGbhVYWK6vnLzanQZMPK5FLJbU6N2Mg", "tHlP6Jv5sj70nCQXOaNATx3kiWqPf1Tp", "kSrICwDX6P2QTtBsWrInLj9wi3Ca9feR", "Z5GcmA6HHHf7tKUPWv2sbOMAsuTj15Gl", "CZogAanemwBaq"};
    public int A00;
    public C2755lA A01;
    public EnumC2925nx A02;
    public C3062qE A03;
    public String A04;
    public String A05;
    public String A06;
    public String A07;
    public boolean A08;
    public final InterfaceC2811m5 A09;
    public final AdPlacementType A0A;
    public final C2929o1 A0B;

    static {
        A02();
    }

    public C2945oH(C2755lA c2755lA, String str, C3062qE c3062qE, EnumC2925nx enumC2925nx, int i, C2929o1 c2929o1, String str2, String str3, String str4, InterfaceC2811m5 interfaceC2811m5) {
        this.A01 = c2755lA;
        this.A06 = str;
        this.A03 = c3062qE;
        this.A02 = enumC2925nx;
        this.A00 = i;
        this.A0B = c2929o1;
        this.A0A = enumC2925nx.A05(this.A01);
        this.A07 = str2;
        this.A05 = str3;
        this.A04 = str4;
        this.A09 = interfaceC2811m5;
    }

    private long A00() {
        SharedPreferences sharedPreferencesA00 = AbstractC2957oU.A00(this.A01);
        String strA01 = A01(0, 0, 83);
        String strA02 = A01(173, 17, 50);
        String string = sharedPreferencesA00.getString(strA02, strA01);
        if (string == null) {
            return 0L;
        }
        String string2 = Locale.getDefault().toString();
        if (A0D[5].length() != 32) {
            throw new RuntimeException();
        }
        String[] strArr = A0D;
        strArr[7] = "UbRIo10SAcnK0";
        strArr[0] = "rMKDtS17rDD7f";
        if (string.equals(string2)) {
            return AbstractC2480gb.A00(this.A01.A02()).A09();
        }
        sharedPreferencesA00.edit().putString(strA02, Locale.getDefault().toString()).apply();
        return 0L;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 87);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A0C = new byte[]{-69, -68, -91, -88, -61, -87, -68, -76, -87, -74, -83, -87, -78, -89, -87, -61, -72, -67, -76, -87, Ascii.DC2, Ascii.NAK, 48, 35, Ascii.SYN, 33, 32, 35, 37, Ascii.SUB, Ascii.US, Ascii.CAN, 48, Ascii.DC4, 32, Ascii.US, Ascii.ETB, Ascii.SUB, Ascii.CAN, 48, Ascii.GS, Ascii.DC2, 36, 37, 48, 38, 33, Ascii.NAK, Ascii.DC2, 37, Ascii.SYN, 48, 37, Ascii.SUB, Ascii.RS, Ascii.SYN, 10, 17, Ascii.FF, 39, 17, Ascii.FF, -32, -25, -30, -3, -14, -25, -21, -29, -3, -14, -19, -23, -29, -20, -29, -20, -23, -27, -18, -12, -1, -14, -27, -15, -11, -27, -13, -12, -1, -23, -28, -73, -61, -60, -60, -75, -50, -49, -41, -39, -23, -53, -50, -23, -45, -50, Ascii.VT, Ascii.RS, Ascii.SUB, Ascii.CAN, 7, 37, Ascii.SO, Ascii.SI, Ascii.DC4, Ascii.SUB, Ascii.EM, -16, -19, -15, -17, -16, -4, -5, -10, -8, -13, -65, -70, -68, -73, -43, -68, -62, -73, -67, -4, 6, Ascii.DC2, 0, 8, -1, 7, -4, Ascii.DC2, -12, -9, Ascii.DC2, -8, Ascii.VT, 3, -8, 5, -4, -8, 1, -10, -8, -14, -18, 6, -7, -20, -6, -5, -7, -16, -22, -5, -20, -21, -43, -54, -36, -35, -24, -36, -54, -33, -50, -51, -24, -43, -40, -52, -54, -43, -50, Ascii.SYN, Ascii.GS, Ascii.NAK, 39, 9, Ascii.FF, Ascii.ESC, 39, Ascii.SUB, Ascii.CR, Ascii.EM, Ascii.GS, Ascii.CR, Ascii.ESC, Ascii.FS, Ascii.CR, Ascii.FF, -86, -90, -101, -99, -97, -89, -97, -88, -82, -71, -93, -98, -59, -63, -74, -72, -70, -62, -70, -61, -55, -44, -55, -50, -59, -70, 39, Ascii.SUB, 38, 42, Ascii.SUB, 40, 41, 52, 41, Ascii.RS, 34, Ascii.SUB, Ascii.FS, Ascii.GS, 10, Ascii.FF, Ascii.DC4, 40, Ascii.GS, Ascii.ESC, 10, Ascii.FF, Ascii.SO, -49, -64, -56, -53, -57, -68, -49, -64, -38, -60, -65, Ascii.SO, -1, Ascii.CR, Ascii.SO, Ascii.EM, 7, 9, -2, -1, -30, -44, -49, -33, -45};
    }

    private void A03(Map<String, String> map, String str, String str2) {
        map.put(str, str2);
    }

    public final int A04() {
        return this.A00;
    }

    public final InterfaceC2811m5 A05() {
        return this.A09;
    }

    public final AdPlacementType A06() {
        return this.A0A;
    }

    public final EnumC2925nx A07() {
        return this.A02;
    }

    public final C3062qE A08() {
        return this.A03;
    }

    public final String A09() {
        return this.A06;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x012b  */
    /* JADX WARN: Code duplicated, block: B:29:0x0142  */
    /* JADX WARN: Code duplicated, block: B:32:0x0159  */
    /* JADX WARN: Code duplicated, block: B:40:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:43:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:46:0x0214  */
    /* JADX WARN: Code duplicated, block: B:49:0x0227  */
    /* JADX WARN: Code duplicated, block: B:53:0x0245  */
    public final Map<String, String> A0A(Map<String, String> map) {
        String strA05;
        HashMap map2 = new HashMap(map);
        A03(map2, A01(125, 4, 91), AbstractC2723kb.A00().A03());
        A03(map2, A01(129, 9, 31), AbstractC2723kb.A00().A04() ? A01(0, 1, 52) : A01(1, 1, 52));
        A03(map2, A01(93, 5, 29), String.valueOf(this.A09.ABI()));
        A03(map2, A01(InterfaceC3669k1.c.b.h, 12, 3), this.A06);
        if (this.A0A != AdPlacementType.UNKNOWN) {
            A03(map2, A01(219, 14, 30), this.A0A.toString().toLowerCase());
        }
        if (this.A03 != null) {
            A03(map2, A01(276, 5, 52), String.valueOf(this.A03.A01()));
            A03(map2, A01(119, 6, 81), String.valueOf(this.A03.A00()));
        }
        if (this.A02 != null) {
            A03(map2, A01(256, 11, 36), String.valueOf(this.A02.A04()));
        }
        InterfaceC2811m5 interfaceC2811m5 = this.A09;
        C2755lA c2755lA = this.A01;
        String[] strArr = A0D;
        if (strArr[1].charAt(22) == strArr[3].charAt(22)) {
            String[] strArr2 = A0D;
            strArr2[1] = "IzDezfH0vo2hFBj3g0HaogFvU1PF9PgW";
            strArr2[3] = "07eFZyxYDfzIdCogAj5SagFmNdTPnXPY";
            if (!interfaceC2811m5.isTestMode(c2755lA)) {
                if (this.A09.A9t() != null) {
                    A03(map2, A01(98, 10, 51), this.A09.A9t());
                }
                if (this.A00 != 0) {
                    A03(map2, A01(190, 17, InterfaceC3669k1.d.b.k), String.valueOf(this.A00));
                }
                if (this.A08) {
                    A03(map2, A01(138, 22, 92), String.valueOf(this.A08));
                }
                A03(map2, A01(AdSize.WIDE_SKYSCRAPER_WIDTH, 13, 80), String.valueOf(C3087qd.A02(this.A01)));
                A03(map2, A01(233, 12, 126), C3076qS.A06(System.currentTimeMillis()));
                if (this.A0B.A06()) {
                    A03(map2, A01(56, 6, InterfaceC3669k1.d.b.k), this.A0B.A04());
                }
                strA05 = this.A0B.A05();
                if (!TextUtils.isEmpty(strA05)) {
                    A03(map2, A01(62, 14, 71), strA05);
                }
                if (this.A07 != null) {
                    A03(map2, A01(245, 11, 114), this.A07);
                }
                A03(map2, A01(76, 17, 73), UUID.randomUUID().toString());
                A03(map2, A01(20, 36, 122), C3076qS.A07(A00()));
                if (this.A05 != null) {
                    A03(map2, A01(108, 11, 111), this.A05);
                }
                if (this.A04 != null) {
                    if (A0D[5].length() == 32) {
                        String[] strArr3 = A0D;
                        strArr3[1] = "oug9irQjulGDcN1zjjec1oFwPujMP8yb";
                        strArr3[3] = "P1fPvVUp9X55Q5Xl2H8DBdFxzWSw3WjN";
                        A03(map2, A01(2, 18, 13), this.A04);
                    }
                }
                return map2;
            }
            String strA01 = A01(267, 9, 99);
            String strA02 = A01(1, 1, 52);
            String[] strArr4 = A0D;
            if (strArr4[7].length() == strArr4[0].length()) {
                A0D[5] = "fhkQkDUQCs0vTSuMh05aUEfBswduYuq5";
                A03(map2, strA01, strA02);
                if (this.A09.A9t() != null) {
                    A03(map2, A01(98, 10, 51), this.A09.A9t());
                }
                if (this.A00 != 0) {
                    A03(map2, A01(190, 17, InterfaceC3669k1.d.b.k), String.valueOf(this.A00));
                }
                if (this.A08) {
                    A03(map2, A01(138, 22, 92), String.valueOf(this.A08));
                }
                A03(map2, A01(AdSize.WIDE_SKYSCRAPER_WIDTH, 13, 80), String.valueOf(C3087qd.A02(this.A01)));
                A03(map2, A01(233, 12, 126), C3076qS.A06(System.currentTimeMillis()));
                if (this.A0B.A06() && this.A0B.A04() != null) {
                    A03(map2, A01(56, 6, InterfaceC3669k1.d.b.k), this.A0B.A04());
                }
                strA05 = this.A0B.A05();
                if (!TextUtils.isEmpty(strA05)) {
                    A03(map2, A01(62, 14, 71), strA05);
                }
                if (this.A07 != null) {
                    A03(map2, A01(245, 11, 114), this.A07);
                }
                A03(map2, A01(76, 17, 73), UUID.randomUUID().toString());
                A03(map2, A01(20, 36, 122), C3076qS.A07(A00()));
                if (this.A05 != null) {
                    A03(map2, A01(108, 11, 111), this.A05);
                }
                if (this.A04 != null) {
                    if (A0D[5].length() == 32) {
                        String[] strArr5 = A0D;
                        strArr5[1] = "oug9irQjulGDcN1zjjec1oFwPujMP8yb";
                        strArr5[3] = "P1fPvVUp9X55Q5Xl2H8DBdFxzWSw3WjN";
                        A03(map2, A01(2, 18, 13), this.A04);
                    }
                }
                return map2;
            }
        }
        throw new RuntimeException();
    }
}
