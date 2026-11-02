package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import com.facebook.ads.AdExperienceType;
import com.facebook.ads.AdSettings;
import com.facebook.ads.RewardData;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.facebook.ads.internal.settings.MultithreadedBundleWrapper;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.gR, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2470gR {
    public static byte[] A00;
    public static String[] A01 = {"WrFk0SRZaWHihd", "fPy0mByJ8yx934956QGB", "g2w1uQWwIR39u5", "pt5wAdKNxNbYnmh6FhOJDmdyWQTuXEAo", "0oNbDl9YVWCdicBGau", "qNPPB6iFKH", "NnJHVO1vLC9QtN9uNw1SMj1zPFME5Rgx", "8fLtOSF3VBMFUbvjmMamHOHsNTShHA1X"};

    static {
        A07();
    }

    public static Bundle A00(C2755lA c2755lA) {
        Bundle bundle = new Bundle();
        A08(bundle, c2755lA);
        bundle.putBundle(A06(123, 19, 18), A01(c2755lA));
        return bundle;
    }

    public static Bundle A01(C2755lA c2755lA) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(A06(67, 23, 124), AdSettings.isMixedAudience());
        bundle.putBoolean(A06(6, 27, 18), AdInternalSettings.isExplicitTestMode());
        String adTypeString = AdSettings.getTestAdType().getAdTypeString();
        if (adTypeString != null) {
            bundle.putString(A06(272, 20, 111), adTypeString);
        }
        MultithreadedBundleWrapper multithreadedBundleWrapper = AdInternalSettings.sSettingsBundle;
        String strA06 = A06(177, 27, 109);
        String[] stringArray = multithreadedBundleWrapper.getStringArray(strA06);
        if (stringArray != null) {
            bundle.putStringArray(strA06, stringArray);
        }
        MultithreadedBundleWrapper multithreadedBundleWrapper2 = AdInternalSettings.sSettingsBundle;
        String strA07 = A06(142, 35, 39);
        Integer integer = multithreadedBundleWrapper2.getInteger(strA07);
        if (integer != null) {
            bundle.putInt(strA07, integer.intValue());
        }
        MultithreadedBundleWrapper multithreadedBundleWrapper3 = AdInternalSettings.sSettingsBundle;
        String strA08 = A06(204, 33, 11);
        Integer integer2 = multithreadedBundleWrapper3.getInteger(strA08);
        if (integer2 != null) {
            bundle.putInt(strA08, integer2.intValue());
        }
        MultithreadedBundleWrapper multithreadedBundleWrapper4 = AdInternalSettings.sSettingsBundle;
        String strA09 = A06(426, 25, 103);
        String string = multithreadedBundleWrapper4.getString(strA09, null);
        if (string != null) {
            bundle.putString(strA09, string);
        }
        if (A01[3].charAt(31) == 'y') {
            throw new RuntimeException();
        }
        A01[7] = "XpPCLNEmMQwk6Xo71L4f47kqmhAOs7dk";
        bundle.putBoolean(A06(54, 13, 110), C3046py.A05(c2755lA));
        return bundle;
    }

    public static Bundle A02(String str, C1680Jv c1680Jv) {
        Bundle bundle = new Bundle();
        A08(bundle, c1680Jv.A05());
        bundle.putString(A06(451, 17, 39), c1680Jv.A0A());
        bundle.putString(A06(259, 13, 122), str);
        bundle.putString(A06(292, 19, 28), c1680Jv.A07());
        bundle.putString(A06(366, 19, 39), c1680Jv.A08());
        bundle.putString(A06(InterfaceC3669k1.a.b.d, 22, 108), c1680Jv.A09());
        bundle.putString(A06(385, 19, 51), AbstractC2466gN.A01(c1680Jv.A0B()));
        RewardData rewardDataA03 = c1680Jv.A03();
        if (rewardDataA03 != null) {
            AbstractC2471gS.A00(bundle, rewardDataA03);
        }
        bundle.putBundle(A06(123, 19, 18), A01(c1680Jv.A05()));
        return bundle;
    }

    public static Bundle A03(String str, C1663Jc c1663Jc) {
        Bundle bundle = new Bundle();
        A08(bundle, c1663Jc.A0B);
        bundle.putString(A06(451, 17, 39), c1663Jc.A0D);
        bundle.putString(A06(259, 13, 122), str);
        bundle.putString(A06(292, 19, 28), c1663Jc.A05);
        bundle.putString(A06(366, 19, 39), c1663Jc.A06);
        bundle.putString(A06(InterfaceC3669k1.a.b.d, 22, 108), c1663Jc.A07);
        AdExperienceType adExperienceType = c1663Jc.A02;
        if (adExperienceType != null) {
            bundle.putString(A06(237, 22, 37), AbstractC2465gM.A02(adExperienceType));
        }
        bundle.putBoolean(A06(90, 33, 125), c1663Jc.A08);
        RewardData rewardData = c1663Jc.A03;
        if (rewardData != null) {
            AbstractC2471gS.A00(bundle, rewardData);
        }
        Bundle bundleA01 = A01(c1663Jc.A0B);
        if (A01[4].length() == 31) {
            throw new RuntimeException();
        }
        A01[7] = "v58AZGn4yW2MXgAwo8zd1tP5lhmEXT01";
        bundle.putBundle(A06(123, 19, 18), bundleA01);
        return bundle;
    }

    public static C1680Jv A04(C1618Hi c1618Hi, Bundle bundle, String str) {
        String string = bundle.getString(A06(451, 17, 39));
        String string2 = bundle.getString(A06(292, 19, 28));
        String string3 = bundle.getString(A06(366, 19, 39));
        String string4 = bundle.getString(A06(InterfaceC3669k1.a.b.d, 22, 108));
        String string5 = bundle.getString(A06(344, 22, 30));
        Bundle bundle2 = bundle.getBundle(A06(123, 19, 18));
        if (bundle2 == null) {
            bundle2 = new Bundle();
        }
        if (string == null) {
            string = A06(0, 0, 88);
        }
        C1680Jv c1680Jv = new C1680Jv(c1618Hi, null, string, new C1668Jh(str, string5, bundle2));
        c1680Jv.A0I(string3);
        c1680Jv.A0H(string2);
        c1680Jv.A0J(string4);
        c1680Jv.A0K(AbstractC2466gN.A02(bundle.getString(A06(385, 19, 51))));
        RewardData rewardDataA01 = AbstractC2471gS.A01(bundle);
        if (rewardDataA01 != null) {
            c1680Jv.A0F(rewardDataA01);
        }
        return c1680Jv;
    }

    public static C1663Jc A05(C1618Hi c1618Hi, Bundle bundle, String str) {
        String string = bundle.getString(A06(451, 17, 39));
        String string2 = bundle.getString(A06(292, 19, 28));
        boolean z = bundle.getBoolean(A06(90, 33, 125));
        String string3 = bundle.getString(A06(366, 19, 39));
        String string4 = bundle.getString(A06(InterfaceC3669k1.a.b.d, 22, 108));
        String string5 = bundle.getString(A06(237, 22, 37));
        String string6 = bundle.getString(A06(344, 22, 30));
        Bundle bundle2 = bundle.getBundle(A06(123, 19, 18));
        if (bundle2 == null) {
            bundle2 = new Bundle();
        }
        if (string == null) {
            string = A06(0, 0, 88);
        }
        C1663Jc c1663Jc = new C1663Jc(c1618Hi, string, null, new C1668Jh(str, string6, bundle2));
        c1663Jc.A06 = string3;
        c1663Jc.A05 = string2;
        c1663Jc.A08 = z;
        c1663Jc.A02 = AbstractC2465gM.A00(string5);
        c1663Jc.A07 = string4;
        RewardData rewardDataA01 = AbstractC2471gS.A01(bundle);
        if (rewardDataA01 != null) {
            c1663Jc.A03 = rewardDataA01;
        }
        return c1663Jc;
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 122);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A00 = new byte[]{-17, -25, -21, -21, -25, -23, -50, -37, -37, -40, -21, -47, -28, -36, -40, -43, -49, -43, -32, -21, -32, -47, -33, -32, -21, -39, -37, -48, -47, -21, -41, -47, -27, -9, 4, 4, 1, Ascii.DC4, -2, 8, Ascii.DC4, -5, 10, 3, 3, -6, 1, Ascii.DC4, 1, 4, -4, -4, -6, -7, 42, 55, 55, 52, 71, 49, 59, 71, Base64.padSymbol, 54, 49, 60, 65, 56, 69, 69, 66, 85, 67, 63, 78, 59, 58, 85, 55, 75, 58, 63, 59, 68, 57, 59, 85, 65, 59, 79, 57, 70, 70, 67, 86, 73, 77, 86, Base64.padSymbol, 56, SignedBytes.MAX_POWER_OF_TWO, 67, 86, 70, 69, 86, 58, 56, 58, 63, 60, 86, Base64.padSymbol, 56, SignedBytes.MAX_POWER_OF_TWO, 67, 76, 73, 60, 86, 66, 60, 80, -50, -31, -38, -48, -40, -47, -21, -33, -47, -32, -32, -43, -38, -45, -33, -21, -41, -47, -27, -27, -30, -11, -30, 0, -15, -13, -16, -28, -26, -12, -12, -22, -17, -24, 0, -16, -15, -11, -22, -16, -17, -12, 0, -28, -16, -10, -17, -11, -13, -6, 0, -20, -26, -6, 43, 40, 59, 40, 70, 55, 57, 54, 42, 44, 58, 58, 48, 53, 46, 70, 54, 55, 59, 48, 54, 53, 58, 70, 50, 44, SignedBytes.MAX_POWER_OF_TWO, -55, -58, -39, -58, -28, -43, -41, -44, -56, -54, -40, -40, -50, -45, -52, -28, -44, -43, -39, -50, -44, -45, -40, -28, -40, -39, -58, -39, -54, -28, -48, -54, -34, -14, -13, -15, -2, -32, -29, -2, -28, -9, -17, -28, -15, -24, -28, -19, -30, -28, -2, -13, -8, -17, -28, 71, 72, 70, 83, 53, 56, 83, Base64.padSymbol, 56, 83, 63, 57, 77, 60, Base64.padSymbol, 59, 72, 42, 45, 72, Base64.padSymbol, 46, 60, Base64.padSymbol, 72, Base64.padSymbol, 66, 57, 46, 72, 52, 46, 66, -23, -22, -24, -11, -40, -33, -38, -11, -26, -41, -17, -30, -27, -41, -38, -11, -31, -37, -17, 7, 8, 6, 19, -10, 8, 19, 8, 3, -1, -7, 2, 19, -7, Ascii.FF, 8, 6, -11, 7, -43, -42, -44, -31, -60, -41, -48, -58, -50, -57, -31, -51, -57, -37, -21, -20, -22, -9, -37, -28, -31, -35, -26, -20, -9, -21, -36, -29, -9, -18, -35, -22, -21, -31, -25, -26, -12, -11, -13, 0, -26, -7, -11, -13, -30, 0, -23, -22, -17, -11, -12, 0, -20, -26, -6, 0, 1, -1, Ascii.FF, -10, -5, 1, Ascii.FF, -16, -18, -16, -11, -14, Ascii.FF, -13, -7, -18, -12, 0, 57, 58, 56, 69, 51, 43, 42, 47, 39, 58, 47, 53, 52, 69, 42, 39, 58, 39, 69, 49, 43, 63, 52, 53, 51, SignedBytes.MAX_POWER_OF_TWO, 46, 38, 37, 42, 34, 53, 42, 48, 47, SignedBytes.MAX_POWER_OF_TWO, 52, 38, 51, 55, 42, 36, 38, SignedBytes.MAX_POWER_OF_TWO, 44, 38, 58, -12, -11, -13, 0, -15, -19, -30, -28, -26, -18, -26, -17, -11, 0, -20, -26, -6};
    }

    public static void A08(Bundle bundle, C2755lA c2755lA) {
        bundle.putString(A06(344, 22, 30), A06(0, 6, 63));
        bundle.putBoolean(A06(33, 21, 59), C2780lZ.A0I(c2755lA) || (c2755lA instanceof C1618Hi ? ((C1618Hi) c2755lA).A0F().ABB() : false));
        bundle.putString(A06(330, 14, 8), c2755lA.getPackageName());
        if (AbstractC2866my.A0N(c2755lA)) {
            bundle.putString(A06(311, 19, 58), new C2736kp().A03(c2755lA));
        }
    }
}
