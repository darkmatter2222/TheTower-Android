package com.facebook.ads.redexgen.X;

import android.content.Intent;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.internal.api.AudienceNetworkActivityApi;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ji, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2668ji {
    public static byte[] A07;
    public static String[] A08 = {"XH1nM", "M0ankU3RYMrdrj1Us3p7qULr3mpg4pO5", "Dw7K55t6soSKzqOeZ743B9f8IBqvV1DS", "s7G", "N", "Mxlo3HwT2z9Ee0UJhHgw07ZR", "58Sw0E1W92Rv7nBY91W7Ry4mCTu6w2My", "1a89emvHyGNg9bMuKpFFJrallY17ElFt"};
    public boolean A00;
    public boolean A01;
    public boolean A02;
    public boolean A03;
    public final AudienceNetworkActivity A04;
    public final AudienceNetworkActivityApi A05;
    public final C1618Hi A06;

    static {
        A01();
    }

    public C2668ji(AudienceNetworkActivityApi audienceNetworkActivityApi, C1618Hi c1618Hi, AudienceNetworkActivity audienceNetworkActivity) {
        this.A05 = audienceNetworkActivityApi;
        this.A06 = c1618Hi;
        this.A04 = audienceNetworkActivity;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 14);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A07 = new byte[]{47, 3, Ascii.SI, Ascii.CR, 78, 6, 1, 3, 5, 2, Ascii.SI, Ascii.SI, Ascii.VT, 78, 1, 4, 19, 78, 1, 4, Ascii.DC2, 5, Ascii.DLE, Ascii.SI, Ascii.DC2, Ascii.DC4, 9, Ascii.SO, 7, 78, 38, 41, 46, 41, 51, 40, 63, 33, 36, 63, 50, 37, 48, 47, 50, 52, 41, 46, 39, 63, 38, 44, 47, 55, 117, 121, 123, 56, 112, 119, 117, 115, 116, 121, 121, 125, 56, 119, 114, 101, 56, 127, 120, 98, 115, 100, 101, 98, 127, 98, 127, 119, 122, 56, 119, 117, 98, 127, 96, 127, 98, 111, 73, 114, 115, 101, 98, 100, 121, 111, 115, 114, 83, 95, 93, Ascii.RS, 86, 81, 83, 85, 82, 95, 95, 91, Ascii.RS, 81, 84, 67, Ascii.RS, 89, 94, 68, 85, 66, 67, 68, 89, 68, 89, 81, 92, Ascii.RS, 84, 89, 67, 93, 89, 67, 67, 85, 84, 84, 88, 90, Ascii.EM, 81, 86, 84, 82, 85, 88, 88, 92, Ascii.EM, 86, 83, 68, Ascii.EM, 94, 89, 67, 82, 69, 68, 67, 94, 67, 94, 86, 91, Ascii.EM, 82, 69, 69, 88, 69, 90, 86, 84, Ascii.ETB, 95, 88, 90, 92, 91, 86, 86, 82, Ascii.ETB, 88, 93, 74, Ascii.ETB, 80, 87, 77, 92, 75, 74, 77, 80, 77, 80, 88, 85, Ascii.ETB, 95, 80, 87, 80, 74, 81, 102, 88, 90, 77, 80, 79, 80, 77, SignedBytes.MAX_POWER_OF_TWO, 114, 126, 124, 63, 119, 112, 114, 116, 115, 126, 126, 122, 63, 112, 117, 98, 63, 120, 127, 101, 116, 99, 98, 101, 120, 101, 120, 112, 125, 63, 120, 124, 97, 99, 116, 98, 98, 120, 126, 127, 63, 125, 126, 118, 118, 116, 117, 111, 124, 111, 100, 126};
    }

    private final void A02(boolean z) {
        this.A03 = z;
    }

    private final boolean A03(EnumC2955oR enumC2955oR) {
        if (enumC2955oR != EnumC2955oR.A0K && enumC2955oR != EnumC2955oR.A0J && enumC2955oR != EnumC2955oR.A09 && enumC2955oR != EnumC2955oR.A06 && enumC2955oR != EnumC2955oR.A0H) {
            EnumC2955oR enumC2955oR2 = EnumC2955oR.A0L;
            String[] strArr = A08;
            if (strArr[0].length() == strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A08;
            strArr2[6] = "FGUNQ6qcLs6RDIqlgO5xyG1y2uU5IpD5";
            strArr2[2] = "KgNUwxDdB1c1lHJonivIfFXKpYBX3VEU";
            if (enumC2955oR != enumC2955oR2) {
                return false;
            }
        }
        return true;
    }

    public final void A04(EnumC2955oR enumC2955oR, String str) {
        boolean z = !this.A03 || C2863mv.A23(this.A06);
        if (this.A02 || !z) {
            return;
        }
        if (A03(enumC2955oR)) {
            A09(EnumC2318dy.A03.A03(), str);
        } else {
            A09(A00(54, 48, 24), str);
        }
        this.A02 = true;
    }

    public final void A05(EnumC2955oR enumC2955oR, String str) {
        if (A03(enumC2955oR)) {
            A09(EnumC2318dy.A09.A03(), str);
        } else {
            A09(A00(141, 35, 57), str);
        }
    }

    public final void A06(EnumC2955oR enumC2955oR, String str) {
        if (A03(enumC2955oR)) {
            A09(EnumC2318dy.A05.A03(), str);
        } else {
            A09(A00(102, 39, 62), str);
        }
        A02(true);
        A04(enumC2955oR, str);
    }

    public final void A07(EnumC2955oR enumC2955oR, String str) {
        if (!C2863mv.A1x(this.A06) || this.A01 || this.A00) {
            return;
        }
        this.A06.A0F().ADU();
        String[] strArr = A08;
        if (strArr[6].charAt(21) == strArr[2].charAt(21)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A08;
        strArr2[1] = "b4x3McMksK7HY4HIHPc61kASUX9xDx5l";
        strArr2[7] = "6od6j09MwT35SfgpLDazU7DHAYlIaL8o";
        A05(enumC2955oR, str);
    }

    public final void A08(String str, C2830mO c2830mO, String str2) {
        Intent intent = new Intent(str + A00(0, 1, 27) + str2);
        if (c2830mO != null) {
            intent.putExtra(A00(268, 5, 4), c2830mO);
        }
        C2500gw.A00(this.A04).A07(intent);
    }

    public final void A09(String str, String str2) {
        if (A00(221, 47, 31).equals(str) || EnumC2318dy.A0A.A03().equals(str)) {
            this.A01 = true;
        }
        boolean zEquals = A00(141, 35, 57).equals(str);
        String[] strArr = A08;
        if (strArr[1].charAt(21) != strArr[7].charAt(21)) {
            A08[3] = "lCLWoBssT1DE3iatQdqVM";
            if (zEquals || EnumC2318dy.A09.A03().equals(str)) {
                this.A00 = true;
            }
            String[] strArr2 = A08;
            if (strArr2[0].length() != strArr2[4].length()) {
                A08[5] = "yptSXZ0a2h3otP7nUfRtW4me";
                if (A00(1, 53, 110).equals(str)) {
                    this.A05.finish(9);
                    return;
                } else if (A00(176, 45, 55).equals(str)) {
                    this.A05.finish(10);
                    return;
                } else {
                    A08(str, null, str2);
                    return;
                }
            }
        }
        throw new RuntimeException();
    }
}
