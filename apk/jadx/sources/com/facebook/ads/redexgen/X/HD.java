package com.facebook.ads.redexgen.X;

import android.content.pm.PackageInfo;
import android.text.TextUtils;
import android.util.Base64OutputStream;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdError;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.zip.DeflaterOutputStream;
import org.json.JSONObject;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class HD implements InterfaceC2824mI {
    public static PackageInfo A02;
    public static boolean A03;
    public static byte[] A04;
    public static String[] A05 = {"rjWu3o3XUIKJimpXtRLH", "N3hUjd9gC1zTrolrzHWDwio6K0KaeF7v", "V8BOZxTrBek9nlJry76rEN1tEiA1lgnf", "2kaCuDD1e44XjFqxj97oS3bW7Y4jUXps", "VcJxC1jbHxk7XwGyeCWvHwY9E4qRcx1x", "dO6RHNbAuKw0kDbwpnJR", "8jPNINbp0cYAxxIn", "ugIdyp1aSJPFHYCiUHctz2XPYC5YD6Ud"};
    public static final EnumC2303di[] A06;
    public final C2736kp A00;
    public final C2755lA A01;

    static {
        A02();
        A03 = false;
        A06 = new EnumC2303di[]{EnumC2303di.A1S, EnumC2303di.A14, EnumC2303di.A1T, EnumC2303di.A1e, EnumC2303di.A1N, EnumC2303di.A19, EnumC2303di.A0x, EnumC2303di.A1c, EnumC2303di.A1P, EnumC2303di.A34, EnumC2303di.A35, EnumC2303di.A36};
    }

    public HD(C2755lA c2755lA, boolean z, C2736kp c2736kp) {
        this.A01 = c2755lA;
        this.A00 = c2736kp;
        C2820mE.A08(c2755lA, z, null);
    }

    public static synchronized PackageInfo A00(C2755lA c2755lA) {
        if (!A03) {
            A02 = AbstractC3057q9.A00(c2755lA);
            A03 = true;
        }
        return A02;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A05[6].length() == 9) {
                throw new RuntimeException();
            }
            String[] strArr = A05;
            strArr[1] = "AJGqtkftO03LFXDJsHlFXR4ujVWNfKsn";
            strArr[7] = "0weTThgY8dzMPuXGgH30KJvXs1017h9U";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 73);
            i4++;
        }
    }

    public static void A02() {
        A04 = new byte[]{40, Ascii.CR, Ascii.NAK, Ascii.ETB, Ascii.ETB, 17, 7, 7, Ascii.GS, Ascii.SYN, Ascii.GS, Ascii.CAN, Ascii.GS, 0, Ascii.CR, Ascii.VT, 17, Ascii.SUB, Ascii.NAK, Ascii.SYN, Ascii.CAN, 17, Ascii.DLE, 41, 38, 41, 36, 39, 47, 45, 60, 60, 51, 33, 37, 34, 51, 63, 40, 39, 51, 58, 41, 62, 63, 37, 35, 34, 98, 112, 107, 98, 112, 85, 71, 93, 80, 78, 91, 91, 93, 70, 77, 90, 91, 70, SignedBytes.MAX_POWER_OF_TWO, 65, 80, 70, 75, 47, 36, 41, 41, 40, 63, 50, 57, 34, 38, 40, 35, 50, 40, 53, 57, 63, 44, 62, 85, 94, 83, 83, 82, 69, 72, 67, 88, 92, 82, 89, 72, 67, 68, 72, 90, 68, 106, 125, 102, 108, 100, 109, 63, Base64.padSymbol, 63, 52, 57, 79, 77, 92, 92, 73, 72, 83, 69, 72, 95, Ascii.NAK, Ascii.ETB, 4, 4, Ascii.US, 19, 4, 68, 68, 83, 88, 70, 81, 70, 78, 75, 70, 69, 78, 75, 78, 83, 94, 88, 84, 83, 70, 83, 82, 84, 92, 89, 76, 89, 71, 72, 74, 87, 91, 93, 75, 75, 81, 86, 95, 71, 87, 72, 76, 81, 87, 86, 75, 111, 106, 127, 106, 116, 123, 121, 100, 104, 110, 120, 120, 98, 101, 108, 116, 100, 123, 127, 98, 100, 101, 120, 116, 104, 100, 126, 101, 127, 121, 114, Ascii.FS, Ascii.EM, Ascii.FF, Ascii.EM, 7, 8, 10, Ascii.ETB, Ascii.ESC, Ascii.GS, Ascii.VT, Ascii.VT, 17, Ascii.SYN, Ascii.US, 7, Ascii.ETB, 8, Ascii.FF, 17, Ascii.ETB, Ascii.SYN, Ascii.VT, 7, Ascii.VT, Ascii.FF, Ascii.EM, Ascii.FF, Ascii.GS, Ascii.SI, Ascii.SO, 5, Ascii.CAN, 2, Ascii.US, Ascii.DC2, 48, 35, 56, 56, 51, 58, 41, 53, 57, 36, 51, 41, 51, 32, 51, 56, 34, 37, Ascii.RS, Ascii.CR, Ascii.SYN, Ascii.SYN, Ascii.GS, Ascii.DC4, 7, Ascii.DC4, Ascii.ETB, Ascii.US, Ascii.US, Ascii.GS, Ascii.FS, 81, 118, 126, 123, 114, 115, 55, 99, 120, 55, 117, 98, 126, 123, 115, 55, 98, 100, 114, 101, 55, 99, 120, 124, 114, 121, 53, 60, 46, 34, 56, 37, 50, 45, 49, 60, 36, 56, 47, 48, Base64.padSymbol, 63, 56, 37, 40, 51, 47, 45, 47, 36, 41, 51, 56, 63, 51, 33, 63, 47, 34, 57, 53, 41, 51, 52, 37, 35, 78, 73, 84, 83, 70, 75, 75, 66, 85, 108, 111, 99, 97, 108, 101, 5, 9, 3, Ascii.CR, 75, 67, 66, 79, 71, 82, 79, 73, 72, 89, 85, 67, 84, 80, 79, 69, 67, 65, 74, 91, 88, SignedBytes.MAX_POWER_OF_TWO, 93, 68, 80, 91, 86, 95, 74, Ascii.DC2, Ascii.RS, 8, 17, 8, Ascii.SO, 2, 8, Ascii.SO, Ascii.CAN, Ascii.SI, 2, Ascii.DC4, Ascii.EM, 96, 125, 125, 102, 119, 118, 96, 96, 109, 113, 126, 123, 119, 124, 102, 109, 97, 118, 121, 109, 100, 119, 96, 97, 123, 125, 124, 62, 62, 51, 47, 35, 34, 42, 37, 43, 51, 56, 63, 51, 33, 63, 126, 126, 115, 105, 116, 120, 126, 109, 127, 52, 52, 57, 47, 53, 57, 32, 52, 41, 43, 57, 53, 35, 52, 48, 47, 37, 35, Ascii.GS, Ascii.GS, Ascii.DLE, Ascii.FS, 10, Ascii.GS, Ascii.EM, 6, Ascii.FF, 10, Ascii.DLE, Ascii.FS, Ascii.VT, 4, Ascii.DLE, Ascii.EM, 10, Ascii.GS, Ascii.FS, 6, 0, 1, 65, 71, 85, 76, 85, 81, 76, 82, 67, 67, 76, 90, 93, SignedBytes.MAX_POWER_OF_TWO, 71, 82, 95, 95, 86, 87, 37, 35, 49, 40, 49, 53, 40, 54, 39, 39, 40, 33, 50, 37, 36, 62, 56, 57, 71, 87, 70, 81, 81, 90, 75, 92, 81, 93, 83, 92, SignedBytes.MAX_POWER_OF_TWO, 75, 91, 74, 93, 93, 86, 71, 79, 81, 92, 76, 80, 8, Ascii.US, Ascii.DLE, 4, Ascii.CAN, Ascii.SUB, Ascii.VT, Ascii.SUB, Ascii.EM, Ascii.DC2, Ascii.ETB, Ascii.DC2, Ascii.SI, 2, 66, 85, 90, 78, 92, 80, 95, 80, 86, 84, 85, 78, 82, 80, 82, 89, 84, 0, Ascii.SYN, 0, 0, Ascii.SUB, Ascii.FS, Ascii.GS, Ascii.FF, 7, Ascii.SUB, Ascii.RS, Ascii.SYN, Ascii.RS, 5, 2, Ascii.US, Ascii.DC2, 98, 100, 114, 101, 104, 118, 112, 114, 121, 99, 35, 52, 57, 37, 52, 39, 52, 56, 38, 73, 82, 75, 75};
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00e3  */
    private void A03(InterfaceC2811m5 interfaceC2811m5, Map<String, String> map) {
        C2755lA c2755lA;
        String[] strArr;
        String strA01;
        if (interfaceC2811m5 != null && interfaceC2811m5.ABO()) {
            map.put(A01(459, 18, 47), Boolean.TRUE.toString());
            if (interfaceC2811m5.A7y() != null) {
                map.put(A01(414, 21, 123), interfaceC2811m5.A7y());
            }
        }
        if (AbstractC2866my.A0F(this.A01)) {
            String strA03 = AbstractC2813m7.A03(this.A01.A02());
            if (strA03 != null) {
                String[] strArr2 = A05;
                if (strArr2[4].charAt(13) != strArr2[3].charAt(13)) {
                    String[] strArr3 = A05;
                    strArr3[4] = "nMAZfFxVFGZl3aophdQR19PiPIOzBlCQ";
                    strArr3[3] = "anlPQAe7IyslUJVuQWSDFk7bdlGE3zec";
                    map.put(A01(477, 22, 6), strA03);
                }
            }
            String strA02 = AbstractC2813m7.A02(this.A01.A02());
            String[] strArr4 = A05;
            if (strArr4[4].charAt(13) == strArr4[3].charAt(13)) {
                throw new RuntimeException();
            }
            A05[2] = "GNPAuRma4t7RjFMsFXmIoJg8EaFACVo3";
            if (strA03 != null) {
                map.put(A01(450, 9, 101), strA02);
            }
            if (AbstractC2866my.A0K(this.A01)) {
                String strA04 = AbstractC2813m7.A01(this.A01.A02());
                if (strA03 != null) {
                    map.put(A01(435, 15, 37), strA04);
                }
            }
            c2755lA = this.A01;
            strArr = A05;
            if (strArr[1].charAt(17) == strArr[7].charAt(17)) {
                A05[6] = "7SFNCCJJaBvzY70DbmGNzcELyF";
                if (C2863mv.A0w(c2755lA)) {
                    return;
                } else {
                    return;
                }
            }
        } else {
            c2755lA = this.A01;
            strArr = A05;
            if (strArr[1].charAt(17) == strArr[7].charAt(17)) {
                A05[6] = "7SFNCCJJaBvzY70DbmGNzcELyF";
                if (C2863mv.A0w(c2755lA) || (strA01 = AbstractC2815m9.A01(this.A01.A02())) == null) {
                    return;
                }
                map.put(A01(114, 5, 53), strA01);
                return;
            }
        }
        throw new RuntimeException();
    }

    public final String A04() {
        return A05(C2823mH.A00());
    }

    /* JADX WARN: Code duplicated, block: B:25:0x00f3 A[Catch: IOException -> 0x00fb, TryCatch #3 {IOException -> 0x00fb, blocks: (B:23:0x00ee, B:25:0x00f3, B:27:0x00f8), top: B:36:0x00ee }] */
    /* JADX WARN: Code duplicated, block: B:27:0x00f8 A[Catch: IOException -> 0x00fb, TRY_LEAVE, TryCatch #3 {IOException -> 0x00fb, blocks: (B:23:0x00ee, B:25:0x00f3, B:27:0x00f8), top: B:36:0x00ee }] */
    public final String A05(InterfaceC2822mG interfaceC2822mG) {
        C2820mE.A08(this.A01, true, null);
        ByteArrayOutputStream byteArrayOutputStream = null;
        Base64OutputStream base64OutputStream = null;
        DeflaterOutputStream deflaterOutputStream = null;
        try {
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                base64OutputStream = new Base64OutputStream(byteArrayOutputStream, 0);
                deflaterOutputStream = new DeflaterOutputStream(base64OutputStream);
                Map mapA06 = A06();
                if (TextUtils.isEmpty(AbstractC2723kb.A00().A03())) {
                    AbstractC2723kb.A07(this.A01);
                }
                mapA06.put(A01(319, 4, 48), AbstractC2723kb.A00().A03());
                mapA06.put(A01(610, 10, 126), AbstractC2828mM.A06(new C2797lq(this.A01), this.A01, false));
                if (C2863mv.A21(this.A01)) {
                    mapA06.put(A01(119, 10, 69), C2375eu.A01(this.A01).A0K());
                }
                Iterator it = mapA06.entrySet().iterator();
                while (it.hasNext()) {
                    if (!interfaceC2822mG.A3W((String) ((Map.Entry) it.next()).getKey())) {
                        it.remove();
                    }
                }
                deflaterOutputStream.write(new JSONObject(mapA06).toString().getBytes());
                deflaterOutputStream.close();
                String strReplaceAll = byteArrayOutputStream.toString().replaceAll(A01(0, 1, kotlin.fh.h1), A01(0, 0, 37));
                try {
                    deflaterOutputStream.close();
                    base64OutputStream.close();
                    byteArrayOutputStream.close();
                } catch (IOException unused) {
                }
                return strReplaceAll;
            } catch (IOException e) {
                throw new RuntimeException(A01(280, 26, 94), e);
            }
        } catch (Throwable th) {
            if (deflaterOutputStream != null) {
                try {
                    deflaterOutputStream.close();
                    if (base64OutputStream != null) {
                        base64OutputStream.close();
                    }
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                } catch (IOException unused2) {
                    throw th;
                }
            } else {
                if (base64OutputStream != null) {
                    base64OutputStream.close();
                }
                if (byteArrayOutputStream != null) {
                    byteArrayOutputStream.close();
                }
            }
            throw th;
        }
    }

    public final /* synthetic */ Map A06() {
        return AbstractC2821mF.A00(this);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2824mI
    public final Map<String, String> A8Z(InterfaceC2811m5 interfaceC2811m5) {
        String strA98;
        Map<String, String> mapA02;
        String strA8i;
        String strA7j = interfaceC2811m5 != null ? interfaceC2811m5.A7j() : null;
        String packageName = strA7j != null ? strA7j : this.A01.getPackageName();
        C2820mE.A08(this.A01, ProcessUtils.isRemoteRenderingProcess() ? true : C2863mv.A0l(this.A01), strA7j);
        C2796lp.A0B(this.A01);
        C2796lp.A08(this.A01);
        HashMap map = new HashMap();
        C2817mB.A03(this.A01, map, strA7j);
        map.put(A01(355, 6, 105), Locale.getDefault().toString());
        float f = AbstractC3045px.A02;
        int i = this.A01.getResources().getDisplayMetrics().widthPixels;
        int i2 = this.A01.getResources().getDisplayMetrics().heightPixels;
        map.put(A01(242, 7, 2), String.valueOf(f));
        map.put(A01(550, 12, 81), String.valueOf((int) (i / f)));
        map.put(A01(537, 13, 93), String.valueOf((int) (i2 / f)));
        map.put(A01(57, 14, 70), AbstractC2723kb.A03());
        map.put(A01(337, 9, 47), AbstractC2723kb.A00().A02().name());
        map.put(A01(323, 14, 37), String.valueOf(AbstractC2723kb.A00().A01()));
        C2797lq c2797lq = new C2797lq(this.A01, strA7j);
        map.put(A01(108, 6, 97), AbstractC2828mM.A03(this.A01, c2797lq));
        map.put(A01(129, 7, 31), c2797lq.A08());
        map.put(A01(361, 4, 1), c2797lq.A09());
        map.put(A01(InterfaceC3669k1.a.b.h, 6, 123), String.valueOf(C2820mE.A00(this.A01).A00));
        map.put(A01(346, 9, 78), c2797lq.A0B());
        map.put(A01(562, 14, 18), EnumC3015pT.A01());
        map.put(A01(382, 12, 70), String.valueOf(AbstractC3074qQ.A00(this.A01).A00));
        map.put(A01(593, 12, 26), C3076qS.A03(this.A01.A09().A01()));
        C2820mE.A06(this.A01, packageName, map);
        String strA03 = AbstractC3042pu.A03(this.A01, packageName);
        if (strA03 != null) {
            map.put(A01(48, 5, kotlin.fh.g1), strA03);
        }
        String strA01 = A01(605, 5, 2);
        if (interfaceC2811m5 == null || interfaceC2811m5.ABS() == null) {
            String strValueOf = String.valueOf(C3046py.A05(this.A01));
            String[] strArr = A05;
            if (strArr[4].charAt(13) != strArr[3].charAt(13)) {
                A05[6] = "Zb8WUk4PegG";
                map.put(strA01, strValueOf);
            } else {
                String[] strArr2 = A05;
                strArr2[1] = "oLHhXlB62bCaMkySGHCUgkWekrcOpgKL";
                strArr2[7] = "0PWUKw3A3hgP3SH06Hl8sj4daQuXon2g";
                map.put(strA01, strValueOf);
            }
        } else {
            map.put(strA01, String.valueOf(interfaceC2811m5.ABS()));
        }
        if (interfaceC2811m5 == null || interfaceC2811m5.A99() == null) {
            InterfaceC2760lF interfaceC2760lFA05 = this.A01.A05();
            String[] strArr3 = A05;
            if (strArr3[0].length() == strArr3[5].length()) {
                A05[6] = "E";
                strA98 = interfaceC2760lFA05.A98();
            }
            throw new RuntimeException();
        }
        strA98 = interfaceC2811m5.A99();
        if (strA98 != null) {
            map.put(A01(365, 17, 79), strA98);
        }
        map.put(A01(2, 21, 29), String.valueOf(c2797lq.A0C()));
        if (c2797lq.A03() != -1) {
            map.put(A01(29, 19, 37), String.valueOf(c2797lq.A03()));
        }
        map.put(A01(IronSourceError.ERROR_DO_BN_LOAD_DURING_SHOW, 9, 60), C2812m6.A05(this.A01, packageName));
        map.put(A01(23, 6, 33), AbstractC3052q4.A01(C2796lp.A02()));
        if (AbstractC2861mt.A05(this.A01) && (strA8i = this.A01.A05().A8i()) != null) {
            map.put(A01(53, 4, 93), strA8i);
        }
        InterfaceC2760lF interfaceC2760lFA06 = this.A01.A05();
        if (A05[2].charAt(4) != '1') {
            A05[2] = "Wn31NZtM2oeCISpfWM8NBUgIFylswktz";
            String strA9F = interfaceC2760lFA06.A9F();
            if (!TextUtils.isEmpty(strA9F)) {
                map.put(A01(394, 14, 20), strA9F);
            }
            C2769lO c2769lOA8L = null;
            if (interfaceC2811m5 != null) {
                C2755lA c2755lA = this.A01;
                if (A05[2].charAt(4) == '1') {
                    throw new RuntimeException();
                }
                A05[2] = "UkbZyMMn6UWteLCB6DOs48k1ItwI1bgo";
                c2769lOA8L = interfaceC2811m5.A8N(c2755lA);
            }
            if (c2769lOA8L == null) {
                c2769lOA8L = this.A01.A07().A8L();
            }
            String strA02 = A01(213, 29, 17);
            String strA04 = A01(182, 31, 98);
            String strA05 = A01(159, 23, 81);
            if (c2769lOA8L != null) {
                map.put(strA05, c2769lOA8L.A08());
                map.put(strA04, String.valueOf(c2769lOA8L.A05()));
                map.put(strA02, String.valueOf(c2769lOA8L.A06()));
            } else if (A05[6].length() != 9) {
                A05[2] = "g3pWjJ2zM3bUV7lxKGYwiP6FmOHB7jmG";
                String strA06 = A01(LevelPlayAdError.ERROR_CODE_LOAD_WHILE_SHOW, 4, 110);
                map.put(strA05, strA06);
                map.put(strA04, strA06);
                map.put(strA02, strA06);
            }
            map.put(A01(119, 10, 69), C2375eu.A01(this.A01).A0K());
            String strA07 = this.A00.A03(this.A01);
            if (strA07 != null && !TextUtils.isEmpty(strA07)) {
                map.put(A01(71, 19, 36), strA07);
            }
            if (AbstractC2866my.A0K(this.A01)) {
                map.put(A01(90, 18, 94), C3076qS.A07(C3076qS.A00()));
            }
            map.put(A01(306, 13, 52), String.valueOf(this.A01.A04().AAQ()));
            map.put(A01(136, 23, 78), String.valueOf(IO.A00(this.A01)));
            map.put(A01(267, 13, 17), String.valueOf(C2780lZ.A0H(this.A01)));
            StringBuilder sb = new StringBuilder();
            EnumC2303di[] enumC2303diArr = A06;
            int i3 = 0;
            while (true) {
                if (i3 >= enumC2303diArr.length) {
                    map.put(A01(249, 18, 63), sb.toString());
                    PackageInfo packageInfoA00 = A00(this.A01);
                    map.put(A01(499, 20, 90), String.valueOf(packageInfoA00 != null));
                    if (packageInfoA00 != null) {
                        String strValueOf2 = String.valueOf(packageInfoA00.versionCode);
                        String[] strArr4 = A05;
                        if (strArr4[0].length() != strArr4[5].length()) {
                            throw new RuntimeException();
                        }
                        A05[2] = "SeIr9qpL8kjQBn7PkeftHMsbW6mQwwUT";
                        map.put(A01(519, 18, 62), strValueOf2);
                    }
                    A03(interfaceC2811m5, map);
                    if (C2863mv.A0x(this.A01) && (mapA02 = AbstractC2815m9.A02(this.A01.A02())) != null) {
                        String strA08 = A01(576, 17, 88);
                        if (A05[2].charAt(4) != '1') {
                            String[] strArr5 = A05;
                            strArr5[1] = "t1OpcWxl3twlXN6hcH32QL1LEyfC5G5E";
                            strArr5[7] = "T3ndYdKUgfLx0OtI3HozzaxA8UrNJzfx";
                            map.put(strA08, AbstractC3052q4.A01(mapA02));
                        } else {
                            map.put(strA08, AbstractC3052q4.A01(mapA02));
                        }
                    }
                    return map;
                }
                int iA03 = enumC2303diArr[i3].A03() + 4000;
                if (A05[2].charAt(4) != '1') {
                    String[] strArr6 = A05;
                    strArr6[4] = "OyzqediniT4WaaMJtrcq3vkVjRUgBtN4";
                    strArr6[3] = "c7fMeQjWbpZqZJFnOkDqqT2mFjLLt7Z5";
                    sb.append(iA03);
                    if (i3 != enumC2303diArr.length - 1) {
                        sb.append(A01(1, 1, 104));
                    }
                    i3++;
                }
            }
        }
        throw new RuntimeException();
    }
}
