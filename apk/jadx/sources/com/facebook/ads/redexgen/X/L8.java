package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.ironsource.InterfaceC3669k1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class L8 {
    public static byte[] A00;
    public static String[] A01 = {"mtj5AQZYnC8ZYCgNjgiGa", "9O58BTwK8QpcbA3X6JRwP5oJLMZW7S", "iPIls1WSFCVGfJIo7lr2cSH8ysr", "REttTrJRchZ3AtecVlPOO", "ltUsr5pNisVr9fJwLlHjI2fYwYY", "SNC", "c8upypToN0Fp2Q0KPNP0YDydruE1Whq3", "dJqAUyGQwlClrsBpC8sa4cubBo774T"};
    public static final ArrayList<L6> A02;
    public static final Pattern A03;

    static {
        A0B();
        A02 = new ArrayList<>();
        A03 = Pattern.compile(A06(0, 43, 29));
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00ad A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:32:0x00b0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:34:0x00b3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x00b5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:38:0x00b8 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:40:0x00bb A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:41:0x00bc A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:6:0x000e A[RETURN] */
    public static int A00(String str) {
        byte b;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals(A06(InterfaceC3669k1.a.b.j, 14, 62))) {
                    b = 2;
                }
                switch (b) {
                    case 0:
                        return 5;
                    case 1:
                        return 6;
                    case 2:
                        return 18;
                    case 3:
                        return 17;
                    case 4:
                        return 7;
                    case 5:
                        return 8;
                    case 6:
                        return 14;
                    default:
                        return 0;
                }
            case -1095064472:
                if (str.equals(A06(576, 13, 45))) {
                    b = 4;
                }
                switch (b) {
                    case 0:
                        return 5;
                    case 1:
                        return 6;
                    case 2:
                        return 18;
                    case 3:
                        return 17;
                    case 4:
                        return 7;
                    case 5:
                        return 8;
                    case 6:
                        return 14;
                    default:
                        return 0;
                }
            case 187078296:
                if (str.equals(A06(382, 9, 116))) {
                    b = 0;
                }
                switch (b) {
                    case 0:
                        return 5;
                    case 1:
                        return 6;
                    case 2:
                        return 18;
                    case 3:
                        return 17;
                    case 4:
                        return 7;
                    case 5:
                        return 8;
                    case 6:
                        return 14;
                    default:
                        return 0;
                }
            case 187078297:
                if (str.equals(A06(391, 9, 98))) {
                    b = 3;
                }
                switch (b) {
                    case 0:
                        return 5;
                    case 1:
                        return 6;
                    case 2:
                        return 18;
                    case 3:
                        return 17;
                    case 4:
                        return 7;
                    case 5:
                        return 8;
                    case 6:
                        return 14;
                    default:
                        return 0;
                }
            case 1504578661:
                if (str.equals(A06(400, 10, 115))) {
                    b = 1;
                }
                switch (b) {
                    case 0:
                        return 5;
                    case 1:
                        return 6;
                    case 2:
                        return 18;
                    case 3:
                        return 17;
                    case 4:
                        return 7;
                    case 5:
                        return 8;
                    case 6:
                        return 14;
                    default:
                        return 0;
                }
            case 1505942594:
                String strA06 = A06(589, 16, 98);
                String[] strArr = A01;
                if (strArr[4].length() == strArr[7].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A01;
                strArr2[3] = "Sf1cPlfJE5c2Q1J3x93mu";
                strArr2[0] = "2jpk7ugrLSfGS8LACHw9p";
                if (str.equals(strA06)) {
                    b = 5;
                }
                switch (b) {
                    case 0:
                        return 5;
                    case 1:
                        return 6;
                    case 2:
                        return 18;
                    case 3:
                        return 17;
                    case 4:
                        return 7;
                    case 5:
                        return 8;
                    case 6:
                        return 14;
                    default:
                        return 0;
                }
            case 1556697186:
                if (str.equals(A06(563, 13, 120))) {
                    b = 6;
                }
                switch (b) {
                    case 0:
                        return 5;
                    case 1:
                        return 6;
                    case 2:
                        return 18;
                    case 3:
                        return 17;
                    case 4:
                        return 7;
                    case 5:
                        return 8;
                    case 6:
                        return 14;
                    default:
                        return 0;
                }
        }
        b = -1;
        switch (b) {
            case 0:
                return 5;
            case 1:
                return 6;
            case 2:
                return 18;
            case 3:
                return 17;
            case 4:
                return 7;
            case 5:
                return 8;
            case 6:
                return 14;
            default:
                return 0;
        }
    }

    public static int A01(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (A0C(str)) {
            return 1;
        }
        if (A0F(str)) {
            return 2;
        }
        if (A0E(str)) {
            return 3;
        }
        if (A0D(str)) {
            return 4;
        }
        if (A06(108, 15, 119).equals(str) || A06(203, 18, 17).equals(str) || A06(337, 20, 49).equals(str)) {
            return 5;
        }
        if (A06(176, 27, 104).equals(str)) {
            return 6;
        }
        return A02(str);
    }

    public static int A02(String str) {
        if (0 >= A02.size()) {
            return -1;
        }
        A02.get(0);
        throw new NullPointerException(A06(837, 8, 105));
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00d1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:38:0x00d4 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:39:0x00d5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:40:0x00d6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:42:0x00d9 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:44:0x00dc A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:45:0x00dd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:46:0x00de  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e0 A[ADDED_TO_REGION, RETURN] */
    /* JADX WARN: Code duplicated, block: B:48:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:53:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:55:0x0101  */
    /* JADX WARN: Code duplicated, block: B:57:0x010e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:6:0x0011 A[RETURN] */
    public static int A03(String str, String str2) {
        byte b;
        String[] strArr;
        L7 l7A04;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals(A06(InterfaceC3669k1.a.b.j, 14, 62))) {
                    b = 4;
                }
                switch (b) {
                    case 0:
                        strArr = A01;
                        if (strArr[4].length() != strArr[7].length()) {
                            return 9;
                        }
                        String[] strArr2 = A01;
                        strArr2[4] = "eY3eBmxup9dOoHVo6QFsFhi4Q5X";
                        strArr2[7] = "hwZO4wrHydQX87I5KpB0i0PunCMWc7";
                        return 9;
                    case 1:
                        if (str2 == null && (l7A04 = A04(str2)) != null) {
                            return l7A04.A00();
                        }
                        return 0;
                    case 2:
                        return 5;
                    case 3:
                        return 6;
                    case 4:
                        return 18;
                    case 5:
                        return 17;
                    case 6:
                        return 7;
                    case 7:
                        return 8;
                    case 8:
                        return 14;
                    default:
                        return 0;
                }
            case -1095064472:
                String[] strArr3 = A01;
                if (strArr3[1].length() == strArr3[2].length()) {
                    throw new RuntimeException();
                }
                A01[5] = "XfeyPSYT22wI";
                if (str.equals(A06(576, 13, 45))) {
                    b = 6;
                }
                switch (b) {
                    case 0:
                        strArr = A01;
                        if (strArr[4].length() != strArr[7].length()) {
                            return 9;
                        }
                        String[] strArr4 = A01;
                        strArr4[4] = "eY3eBmxup9dOoHVo6QFsFhi4Q5X";
                        strArr4[7] = "hwZO4wrHydQX87I5KpB0i0PunCMWc7";
                        return 9;
                    case 1:
                        if (str2 == null) {
                            return 0;
                        }
                        return l7A04.A00();
                    case 2:
                        return 5;
                    case 3:
                        return 6;
                    case 4:
                        return 18;
                    case 5:
                        return 17;
                    case 6:
                        return 7;
                    case 7:
                        return 8;
                    case 8:
                        return 14;
                    default:
                        return 0;
                }
            case -53558318:
                if (str.equals(A06(493, 15, InterfaceC3669k1.d.b.j))) {
                    b = 1;
                }
                switch (b) {
                    case 0:
                        strArr = A01;
                        if (strArr[4].length() != strArr[7].length()) {
                            return 9;
                        }
                        String[] strArr5 = A01;
                        strArr5[4] = "eY3eBmxup9dOoHVo6QFsFhi4Q5X";
                        strArr5[7] = "hwZO4wrHydQX87I5KpB0i0PunCMWc7";
                        return 9;
                    case 1:
                        if (str2 == null) {
                            return 0;
                        }
                        return l7A04.A00();
                    case 2:
                        return 5;
                    case 3:
                        return 6;
                    case 4:
                        return 18;
                    case 5:
                        return 17;
                    case 6:
                        return 7;
                    case 7:
                        return 8;
                    case 8:
                        return 14;
                    default:
                        return 0;
                }
            case 187078296:
                if (str.equals(A06(382, 9, 116))) {
                    b = 2;
                }
                switch (b) {
                    case 0:
                        strArr = A01;
                        if (strArr[4].length() != strArr[7].length()) {
                            return 9;
                        }
                        String[] strArr6 = A01;
                        strArr6[4] = "eY3eBmxup9dOoHVo6QFsFhi4Q5X";
                        strArr6[7] = "hwZO4wrHydQX87I5KpB0i0PunCMWc7";
                        return 9;
                    case 1:
                        if (str2 == null) {
                            return 0;
                        }
                        return l7A04.A00();
                    case 2:
                        return 5;
                    case 3:
                        return 6;
                    case 4:
                        return 18;
                    case 5:
                        return 17;
                    case 6:
                        return 7;
                    case 7:
                        return 8;
                    case 8:
                        return 14;
                    default:
                        return 0;
                }
            case 187078297:
                if (str.equals(A06(391, 9, 98))) {
                    b = 5;
                }
                switch (b) {
                    case 0:
                        strArr = A01;
                        if (strArr[4].length() != strArr[7].length()) {
                            return 9;
                        }
                        String[] strArr7 = A01;
                        strArr7[4] = "eY3eBmxup9dOoHVo6QFsFhi4Q5X";
                        strArr7[7] = "hwZO4wrHydQX87I5KpB0i0PunCMWc7";
                        return 9;
                    case 1:
                        if (str2 == null) {
                            return 0;
                        }
                        return l7A04.A00();
                    case 2:
                        return 5;
                    case 3:
                        return 6;
                    case 4:
                        return 18;
                    case 5:
                        return 17;
                    case 6:
                        return 7;
                    case 7:
                        return 8;
                    case 8:
                        return 14;
                    default:
                        return 0;
                }
            case 1504578661:
                if (str.equals(A06(400, 10, 115))) {
                    b = 3;
                }
                switch (b) {
                    case 0:
                        strArr = A01;
                        if (strArr[4].length() != strArr[7].length()) {
                            return 9;
                        }
                        String[] strArr8 = A01;
                        strArr8[4] = "eY3eBmxup9dOoHVo6QFsFhi4Q5X";
                        strArr8[7] = "hwZO4wrHydQX87I5KpB0i0PunCMWc7";
                        return 9;
                    case 1:
                        if (str2 == null) {
                            return 0;
                        }
                        return l7A04.A00();
                    case 2:
                        return 5;
                    case 3:
                        return 6;
                    case 4:
                        return 18;
                    case 5:
                        return 17;
                    case 6:
                        return 7;
                    case 7:
                        return 8;
                    case 8:
                        return 14;
                    default:
                        return 0;
                }
            case 1504831518:
                if (str.equals(A06(508, 10, 64))) {
                    b = 0;
                }
                switch (b) {
                    case 0:
                        strArr = A01;
                        if (strArr[4].length() != strArr[7].length()) {
                            return 9;
                        }
                        String[] strArr9 = A01;
                        strArr9[4] = "eY3eBmxup9dOoHVo6QFsFhi4Q5X";
                        strArr9[7] = "hwZO4wrHydQX87I5KpB0i0PunCMWc7";
                        return 9;
                    case 1:
                        if (str2 == null) {
                            return 0;
                        }
                        return l7A04.A00();
                    case 2:
                        return 5;
                    case 3:
                        return 6;
                    case 4:
                        return 18;
                    case 5:
                        return 17;
                    case 6:
                        return 7;
                    case 7:
                        return 8;
                    case 8:
                        return 14;
                    default:
                        return 0;
                }
            case 1505942594:
                if (str.equals(A06(589, 16, 98))) {
                    b = 7;
                }
                switch (b) {
                    case 0:
                        strArr = A01;
                        if (strArr[4].length() != strArr[7].length()) {
                            return 9;
                        }
                        String[] strArr10 = A01;
                        strArr10[4] = "eY3eBmxup9dOoHVo6QFsFhi4Q5X";
                        strArr10[7] = "hwZO4wrHydQX87I5KpB0i0PunCMWc7";
                        return 9;
                    case 1:
                        if (str2 == null) {
                            return 0;
                        }
                        return l7A04.A00();
                    case 2:
                        return 5;
                    case 3:
                        return 6;
                    case 4:
                        return 18;
                    case 5:
                        return 17;
                    case 6:
                        return 7;
                    case 7:
                        return 8;
                    case 8:
                        return 14;
                    default:
                        return 0;
                }
            case 1556697186:
                if (str.equals(A06(563, 13, 120))) {
                    b = 8;
                }
                switch (b) {
                    case 0:
                        strArr = A01;
                        if (strArr[4].length() != strArr[7].length()) {
                            return 9;
                        }
                        String[] strArr11 = A01;
                        strArr11[4] = "eY3eBmxup9dOoHVo6QFsFhi4Q5X";
                        strArr11[7] = "hwZO4wrHydQX87I5KpB0i0PunCMWc7";
                        return 9;
                    case 1:
                        if (str2 == null) {
                            return 0;
                        }
                        return l7A04.A00();
                    case 2:
                        return 5;
                    case 3:
                        return 6;
                    case 4:
                        return 18;
                    case 5:
                        return 17;
                    case 6:
                        return 7;
                    case 7:
                        return 8;
                    case 8:
                        return 14;
                    default:
                        return 0;
                }
        }
        b = -1;
        switch (b) {
            case 0:
                strArr = A01;
                if (strArr[4].length() != strArr[7].length()) {
                    return 9;
                }
                String[] strArr12 = A01;
                strArr12[4] = "eY3eBmxup9dOoHVo6QFsFhi4Q5X";
                strArr12[7] = "hwZO4wrHydQX87I5KpB0i0PunCMWc7";
                return 9;
            case 1:
                if (str2 == null) {
                    return 0;
                }
                return l7A04.A00();
            case 2:
                return 5;
            case 3:
                return 6;
            case 4:
                return 18;
            case 5:
                return 17;
            case 6:
                return 7;
            case 7:
                return 8;
            case 8:
                return 14;
            default:
                return 0;
        }
    }

    public static L7 A04(String str) {
        Matcher matcher = A03.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        String str2 = (String) AbstractC1722Ln.A01(matcher.group(1));
        String strGroup = matcher.group(2);
        try {
            return new L7(Integer.parseInt(str2, 16), strGroup != null ? Integer.parseInt(strGroup) : 0);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static String A05(int i) {
        switch (i) {
            case 32:
                return A06(926, 13, 42);
            case 33:
                return A06(889, 9, 23);
            case 35:
                return A06(916, 10, 120);
            case 64:
            case 102:
            case 103:
            case 104:
                return A06(493, 15, InterfaceC3669k1.d.b.j);
            case kotlin.fh.A0 /* 96 */:
            case kotlin.fh.H0 /* 97 */:
            case kotlin.fh.Q0 /* 98 */:
            case kotlin.fh.R0 /* 99 */:
            case 100:
            case 101:
                String[] strArr = A01;
                if (strArr[4].length() != strArr[7].length()) {
                    String[] strArr2 = A01;
                    strArr2[3] = "LCbKix87SzKcoSBSZWqCz";
                    strArr2[0] = "3ttbU07808CCVPTdtk2R4";
                    return A06(949, 11, 54);
                }
                String[] strArr3 = A01;
                strArr3[3] = "M3sQ8KyfmqZQHEmxjPGDN";
                strArr3[0] = "0hEddkjVzZCjW4rfvbBtt";
                return A06(949, 11, 12);
            case 105:
            case kotlin.fh.h1 /* 107 */:
                String[] strArr4 = A01;
                if (strArr4[3].length() != strArr4[0].length()) {
                    throw new RuntimeException();
                }
                String[] strArr5 = A01;
                strArr5[3] = "B0QBz88rqLzYWNygzkLMX";
                strArr5[0] = "9VWXOakvbi7XiKmY7mlUt";
                return A06(508, 10, 64);
            case kotlin.fh.g1 /* 106 */:
                return A06(939, 10, 17);
            case 108:
                return A06(819, 10, 116);
            case 163:
                return A06(960, 10, 105);
            case 165:
                return A06(382, 9, 116);
            case 166:
                return A06(400, 10, 115);
            case 169:
            case 172:
                return A06(576, 13, 45);
            case 170:
            case 171:
                return A06(589, 16, 98);
            case 173:
                return A06(544, 10, 85);
            case 174:
                return A06(391, 9, 98);
            case 177:
                String[] strArr6 = A01;
                if (strArr6[3].length() != strArr6[0].length()) {
                    throw new RuntimeException();
                }
                A01[5] = "5Qc";
                return A06(989, 19, 76);
            default:
                return null;
        }
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 23);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x02c9, code lost:
    
        if (r3.startsWith(A06(47, 4, 14)) != false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x02d8, code lost:
    
        if (r3.startsWith(A06(744, 4, 63)) == false) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x02e4, code lost:
    
        return A06(391, 9, 98);
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x02f2, code lost:
    
        if (r3.startsWith(A06(752, 4, 34)) == false) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x02fe, code lost:
    
        return A06(576, 13, 45);
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x030c, code lost:
    
        if (r3.startsWith(A06(756, 4, 53)) == false) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0318, code lost:
    
        return A06(605, 28, 36);
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0326, code lost:
    
        if (r3.startsWith(A06(760, 4, 121)) != false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0328, code lost:
    
        r4 = A06(org.chromium.net.telemetry.CronetStatsLog.CRONET_INITIALIZED, 4, 98);
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x033c, code lost:
    
        if (com.facebook.ads.redexgen.X.L8.A01[5].length() == 24) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x033e, code lost:
    
        com.facebook.ads.redexgen.X.L8.A01[5] = "ZzQ5FlcoVEujuGTwVJIJwXLiZ7T";
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0349, code lost:
    
        if (r3.startsWith(r4) == false) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x034b, code lost:
    
        r2 = com.facebook.ads.redexgen.X.L8.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0361, code lost:
    
        if (r2[4].length() == r2[7].length()) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0363, code lost:
    
        com.facebook.ads.redexgen.X.L8.A01[5] = "BKYZ1k7dxzd7aGCBjwQbt";
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x036e, code lost:
    
        return A06(589, 16, 98);
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0374, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0382, code lost:
    
        if (r3.startsWith(A06(com.google.firebase.database.core.ValidationPath.MAX_PATH_LENGTH_BYTES, 4, 25)) == false) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x038e, code lost:
    
        return A06(633, 28, 94);
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x039c, code lost:
    
        if (r3.startsWith(A06(854, 4, 8)) == false) goto L134;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x03a8, code lost:
    
        return A06(544, 10, 85);
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x03b6, code lost:
    
        if (r3.startsWith(A06(1008, 6, 22)) == false) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x03c2, code lost:
    
        return A06(661, 12, 38);
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x03d0, code lost:
    
        if (r3.startsWith(A06(802, 4, com.ironsource.InterfaceC3669k1.d.b.j)) == false) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x03dc, code lost:
    
        return A06(androidx.constraintlayout.core.motion.utils.TypedValues.CycleType.TYPE_WAVE_OFFSET, 10, com.ironsource.InterfaceC3669k1.d.b.j);
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x03ea, code lost:
    
        if (r3.startsWith(A06(858, 4, 61)) == false) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x03f6, code lost:
    
        return A06(138, 20, 59);
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0404, code lost:
    
        if (r3.startsWith(A06(com.ironsource.mediationsdk.logger.IronSourceError.ERROR_RV_LOAD_SUCCESS_UNEXPECTED, 4, 57)) == false) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0414, code lost:
    
        if (com.facebook.ads.redexgen.X.L8.A01[6].charAt(2) == 'u') goto L152;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0416, code lost:
    
        com.facebook.ads.redexgen.X.L8.A01[5] = "mPB1XR6AUS767usBTRbHStbC5kPY";
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0424, code lost:
    
        return A06(866, 3, 19);
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0425, code lost:
    
        r2 = com.facebook.ads.redexgen.X.L8.A01;
        r2[4] = "5mZwtWm4YShUr67lcQDSFt4704s";
        r2[7] = "VeyvGObawMeK3aS0g0WKjsEE6tCgX8";
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0439, code lost:
    
        return A06(866, 8, 51);
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0447, code lost:
    
        if (r3.contains(A06(723, 6, 39)) == false) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0453, code lost:
    
        return A06(70, 19, 50);
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0461, code lost:
    
        if (r3.contains(A06(796, 6, 18)) != false) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0470, code lost:
    
        if (r3.contains(A06(717, 6, 81)) == false) goto L164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x047c, code lost:
    
        return A06(51, 19, 94);
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0481, code lost:
    
        return A09(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:?, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:?, code lost:
    
        return A06(493, 15, com.ironsource.InterfaceC3669k1.d.b.j);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0171, code lost:
    
        if (r4 != false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0173, code lost:
    
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0181, code lost:
    
        if (r3.startsWith(A06(849, 5, 15)) == false) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0183, code lost:
    
        r0 = A04(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0187, code lost:
    
        if (r0 == null) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0189, code lost:
    
        r4 = A05(r0.A01);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x018f, code lost:
    
        if (r4 != null) goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0191, code lost:
    
        r2 = com.facebook.ads.redexgen.X.L8.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01a3, code lost:
    
        if (r2[4].length() == r2[7].length()) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01a5, code lost:
    
        r2 = com.facebook.ads.redexgen.X.L8.A01;
        r2[3] = "l7tGEfnzmmllIHSGPPfQu";
        r2[0] = "WIV4TqNKdAQoUFWvKNwIa";
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01b9, code lost:
    
        return A06(493, 15, com.ironsource.InterfaceC3669k1.d.b.j);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01c3, code lost:
    
        if (r4 != false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01c6, code lost:
    
        r4 = A06(829, 4, 76);
        r2 = com.facebook.ads.redexgen.X.L8.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01df, code lost:
    
        if (r2[1].length() == r2[2].length()) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01e1, code lost:
    
        r2 = com.facebook.ads.redexgen.X.L8.A01;
        r2[3] = "Og3Gw9hequS8vGBl4S8yb";
        r2[0] = "xskopta6QO33EgTkdSwZM";
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01f1, code lost:
    
        if (r3.startsWith(r4) == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0204, code lost:
    
        if (com.facebook.ads.redexgen.X.L8.A01[5].length() == 24) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0206, code lost:
    
        com.facebook.ads.redexgen.X.L8.A01[6] = "pVuuV34hmQL6nK5O10oIs4bY93WikDB2";
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0211, code lost:
    
        return A06(464, 10, 105);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0216, code lost:
    
        return A06(464, 10, 105);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0224, code lost:
    
        if (r3.startsWith(A06(833, 4, 23)) == false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0226, code lost:
    
        r2 = com.facebook.ads.redexgen.X.L8.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0238, code lost:
    
        if (r2[1].length() == r2[2].length()) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x023a, code lost:
    
        com.facebook.ads.redexgen.X.L8.A01[5] = "W06z2xHNvcJuo8mpHHEEpqY21YYtV2";
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0249, code lost:
    
        return A06(474, 10, 49);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x024f, code lost:
    
        throw new java.lang.RuntimeException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x025d, code lost:
    
        if (r3.startsWith(A06(43, 4, 16)) != false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x026c, code lost:
    
        if (r3.startsWith(A06(740, 4, 22)) == false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0278, code lost:
    
        return A06(382, 9, 116);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0286, code lost:
    
        if (r3.startsWith(A06(792, 4, 26)) != false) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0295, code lost:
    
        if (r3.startsWith(A06(748, 4, 125)) == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x02a1, code lost:
    
        return A06(400, 10, 115);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x02af, code lost:
    
        if (r3.startsWith(A06(788, 4, 105)) == false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x02bb, code lost:
    
        return A06(com.ironsource.InterfaceC3669k1.a.b.j, 14, 62);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String A07(java.lang.String r5) {
        /*
            Method dump skipped, instruction units count: 1160
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.L8.A07(java.lang.String):java.lang.String");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:4:0x0007  */
    public static String A08(String str) {
        byte b;
        switch (str.hashCode()) {
            case -1007807498:
                if (!str.equals(A06(682, 12, 84))) {
                    b = -1;
                } else {
                    b = 0;
                }
                break;
            case -586683234:
                if (!str.equals(A06(694, 11, 71))) {
                    b = -1;
                } else {
                    b = 2;
                }
                break;
            case 187090231:
                if (!str.equals(A06(484, 9, 91))) {
                    b = -1;
                } else {
                    b = 1;
                }
                break;
            default:
                b = -1;
                break;
        }
        switch (b) {
            case 0:
                return A06(TypedValues.CycleType.TYPE_WAVE_OFFSET, 10, InterfaceC3669k1.d.b.j);
            case 1:
                String strA06 = A06(508, 10, 64);
                String[] strArr = A01;
                if (strArr[3].length() != strArr[0].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A01;
                strArr2[4] = "gk4oipsXED0NFT32IYp6gjMWT0s";
                strArr2[7] = "2XGwQ2qtdRBiFQDuMOl422X5BWjZVf";
                return strA06;
            case 2:
                return A06(673, 9, 5);
            default:
                return str;
        }
    }

    public static String A09(String str) {
        if (0 >= A02.size()) {
            return null;
        }
        A02.get(0);
        throw new NullPointerException(A06(729, 11, 108));
    }

    public static String A0A(String str) {
        int iIndexOf;
        if (str == null || (iIndexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, iIndexOf);
    }

    public static void A0B() {
        A00 = new byte[]{84, 103, 122, 62, 107, 86, 36, 34, 81, 107, 39, 112, 75, 39, 80, 58, 39, 51, 87, 113, 56, 119, 35, 34, 53, 48, 86, 36, 34, 81, 58, 39, 51, 87, 113, 59, 38, 56, 119, 35, 35, 53, 46, 102, 100, 42, 52, 120, 122, 52, 45, 40, 57, 57, 37, 32, 42, 40, Base64.padSymbol, 32, 38, 39, 102, 42, 44, 40, 100, 127, 121, 113, 68, 85, 85, 73, 76, 70, 68, 81, 76, 74, 75, 10, 70, SignedBytes.MAX_POWER_OF_TWO, 68, 8, Ascii.DC2, Ascii.NAK, Ascii.GS, Ascii.FS, Ascii.CR, Ascii.CR, 17, Ascii.DC4, Ascii.RS, Ascii.FS, 9, Ascii.DC4, Ascii.DC2, 19, 82, Ascii.EM, Ascii.VT, Ascii.US, Ascii.SO, 8, Ascii.US, Ascii.SO, 1, Ascii.DLE, Ascii.DLE, Ascii.FF, 9, 3, 1, Ascii.DC4, 9, Ascii.SI, Ascii.SO, 79, 9, 4, 83, 43, 58, 58, 38, 35, 41, 43, 62, 35, 37, 36, 101, 58, 45, 57, 77, 92, 92, SignedBytes.MAX_POWER_OF_TWO, 69, 79, 77, 88, 69, 67, 66, 3, 88, 88, 65, SignedBytes.MAX_POWER_OF_TWO, 7, 84, 65, SignedBytes.MAX_POWER_OF_TWO, 1, Ascii.DLE, Ascii.DLE, Ascii.FF, 9, 3, 1, Ascii.DC4, 9, Ascii.SI, Ascii.SO, 79, Ascii.SYN, Ascii.SI, 2, 19, Ascii.NAK, 2, Ascii.RS, Ascii.SI, Ascii.SI, 19, Ascii.SYN, Ascii.FS, Ascii.RS, Ascii.VT, Ascii.SYN, Ascii.DLE, 17, 80, 7, 82, Ascii.FS, Ascii.RS, Ascii.DC2, Ascii.SUB, Ascii.CR, Ascii.RS, 82, Ascii.DC2, Ascii.DLE, Ascii.VT, Ascii.SYN, Ascii.DLE, 17, 103, 118, 118, 106, 111, 101, 103, 114, 111, 105, 104, 41, 126, 43, 99, 107, 117, 97, 87, 70, 70, 90, 95, 85, 87, 66, 95, 89, 88, Ascii.EM, 78, Ascii.ESC, 95, 91, 87, 81, 83, Ascii.ESC, 67, 68, 95, 41, 56, 56, 36, 33, 43, 41, 60, 33, 39, 38, 103, 48, 101, 37, 56, 124, 101, 43, 45, 41, 101, 126, 120, 112, 47, 62, 62, 34, 39, 45, 47, 58, 39, 33, 32, 97, 54, 99, 35, 62, 122, 99, 56, 58, 58, 109, 124, 124, 96, 101, 111, 109, 120, 101, 99, 98, 35, 116, 33, 125, 121, 101, 111, 103, 120, 101, 97, 105, 33, 120, 116, 63, 107, 36, 53, 53, 41, 44, 38, 36, 49, 44, 42, 43, 106, Base64.padSymbol, 104, 55, 36, 50, 38, 38, 71, 86, 86, 74, 79, 69, 71, 82, 79, 73, 72, 9, 94, Ascii.VT, 85, 69, 82, 67, Ascii.NAK, 19, 57, 40, 40, 52, 49, 59, 57, 44, 49, 55, 54, 119, 32, 117, 43, 45, 58, 42, 49, 40, 127, 107, 122, 119, 113, 2, Ascii.SYN, 7, 10, Ascii.FF, 76, 2, 0, 80, Ascii.DC4, 0, 17, Ascii.FS, Ascii.SUB, 90, Ascii.DC4, Ascii.SYN, 65, 5, 17, 0, Ascii.CR, Ascii.VT, 75, 1, 5, 7, 87, 72, 92, 77, SignedBytes.MAX_POWER_OF_TWO, 70, 6, 76, 72, 74, Ascii.SUB, 4, 67, 70, 74, 6, Ascii.DC2, 3, Ascii.SO, 8, 72, 1, Ascii.VT, 6, 4, Ascii.ESC, Ascii.SI, Ascii.RS, 19, Ascii.NAK, 85, Ascii.GS, 77, 75, 75, 87, Ascii.ESC, Ascii.SYN, Ascii.ESC, Ascii.CR, 125, 105, 120, 117, 115, 51, 123, 43, 45, 45, 49, 113, 112, 125, 107, Ascii.US, Ascii.VT, Ascii.SUB, Ascii.ETB, 17, 81, 19, Ascii.SYN, Ascii.US, 79, 71, 83, 66, 79, 73, 9, 75, 78, 75, Ascii.ETB, 45, 57, 40, 37, 35, 99, 33, 60, 127, 6, Ascii.DC2, 3, Ascii.SO, 8, 72, 10, Ascii.ETB, 83, 6, 74, Ascii.VT, 6, 19, 10, 54, 34, 51, 62, 56, 120, 58, 39, 50, 48, Ascii.EM, Ascii.CR, Ascii.FS, 17, Ascii.ETB, 87, Ascii.NAK, 8, Ascii.GS, Ascii.US, 85, 52, 73, 101, 113, 96, 109, 107, 43, 105, 116, 97, 99, 41, 72, 54, 35, 55, 38, 43, 45, 109, 45, 50, 55, 49, 81, 69, 84, 89, 95, Ascii.US, 66, 81, 71, Ascii.SO, Ascii.SUB, Ascii.VT, 6, 0, SignedBytes.MAX_POWER_OF_TWO, Ascii.ESC, Ascii.GS, Ascii.SUB, 10, 66, 7, Ascii.VT, 91, 79, 94, 83, 85, Ascii.NAK, 76, 84, 94, Ascii.DC4, 94, 78, 73, Ascii.DC4, 0, 17, Ascii.FS, Ascii.SUB, 90, 3, Ascii.ESC, 17, 91, 17, 1, 6, 91, Ascii.GS, 17, 82, 70, 87, 90, 92, Ascii.FS, 69, 93, 87, Ascii.GS, 87, 71, SignedBytes.MAX_POWER_OF_TWO, Ascii.GS, 91, 87, 8, 67, 65, 92, 85, 90, 95, 86, Ascii.SO, 95, 81, 65, 40, 60, 45, 32, 38, 102, 63, 39, 45, 103, 45, Base64.padSymbol, 58, 103, 60, 33, 45, 114, 57, 59, 38, 47, 32, 37, 44, 116, 57, 123, 80, 68, 85, 88, 94, Ascii.RS, 71, 94, 67, 83, 88, 66, 115, 103, 118, 123, 125, Base64.padSymbol, 101, 115, 100, 34, 54, 39, 42, 44, 108, 59, 110, 37, 47, 34, 32, 49, 37, 52, 57, 63, 127, 40, 125, 39, 49, 38, Ascii.SI, Ascii.CAN, 94, 95, 49, 38, 51, 97, 49, 38, 51, 99, 37, 35, 39, 112, 118, 126, 83, 85, 81, 7, 0, 8, Ascii.CAN, Ascii.DC4, Ascii.US, Ascii.RS, Ascii.CAN, 43, 9, Ascii.RS, Ascii.GS, Ascii.DC2, 3, 101, 96, 98, 50, 76, 73, 75, Ascii.FS, Ascii.SO, Ascii.SI, 9, 89, 81, 65, 70, 86, 70, 86, 81, 71, 10, Ascii.SUB, Ascii.GS, 6, 17, 1, 6, Ascii.EM, 106, 122, 125, 118, 17, 3, Ascii.DC4, 68, Ascii.FS, Ascii.SO, Ascii.EM, Ascii.SO, 2, Ascii.DLE, Ascii.SO, 87, 107, 121, 103, 106, Ascii.ESC, Ascii.GS, 85, 77, 104, 110, 32, 62, 96, 108, 100, 51, 53, Base64.padSymbol, 1, Ascii.VT, 6, 4, 53, 56, 43, 108, 117, 107, 126, 44, 48, 52, 56, 62, 60, 10, Ascii.SO, 2, 4, 6, 76, 9, 19, 6, 4, 54, 51, 58, 106, 109, 104, 109, 49, 19, Ascii.ETB, 19, Ascii.ESC, 42, 7, Ascii.SO, Ascii.ESC, 117, 104, 44, 121, 117, 104, 44, 121, 54, 112, 111, 106, 108, 89, 94, 90, 90, 112, 97, 124, 112, 80, 65, 92, 80, Ascii.VT, 82, 80, 80, 109, 114, 127, 126, 116, 112, 111, 98, 99, 105, 41, 103, 112, 54, 55, 118, 105, 100, 101, 111, 47, 97, 118, 99, 93, 66, 79, 78, 68, 4, 79, 68, 71, 73, 82, 6, 93, 66, 88, 66, 68, 69, Ascii.EM, 6, Ascii.VT, 10, 0, SignedBytes.MAX_POWER_OF_TWO, 7, 10, Ascii.EM, Ascii.FF, 75, 84, 89, 88, 82, Ascii.DC2, 80, 77, 9, 75, Ascii.DLE, 88, 78, 112, 111, 98, 99, 105, 41, 107, 118, 99, 97, 87, 72, 69, 68, 78, Ascii.SO, 76, 81, 68, 70, 19, 8, Ascii.ETB, Ascii.SUB, Ascii.ESC, 17, 81, 9, 8, Ascii.GS, 79, 46, 49, 60, Base64.padSymbol, 55, 119, 32, 117, 46, 54, 60, 118, 55, 54, 106, 118, 46, 40, 96, 45, 50, 63, 62, 52, 116, 35, 118, 45, 53, 63, 
        117, 52, 53, 105, 117, 45, 43, 98, 119, 110, 115, 99, 104, 114, 102, 96, 32, 40, 37, 35, 99, 106, 108, 106, 34, 70, SignedBytes.MAX_POWER_OF_TWO, 9, 89, 88, 90, 90};
    }

    public static boolean A0C(String str) {
        return A06(377, 5, 9).equals(A0A(str));
    }

    public static boolean A0D(String str) {
        return A06(814, 5, 78).equals(A0A(str)) || A06(221, 23, 33).equals(str);
    }

    public static boolean A0E(String str) {
        return A06(862, 4, 19).equals(A0A(str)) || A06(51, 19, 94).equals(str) || A06(70, 19, 50).equals(str) || A06(244, 25, 95).equals(str) || A06(357, 20, 79).equals(str) || A06(138, 20, 59).equals(str) || A06(290, 28, 27).equals(str) || A06(269, 21, 89).equals(str) || A06(TypedValues.AttributesType.TYPE_PIVOT_TARGET, 19, 82).equals(str) || A06(158, 18, 119).equals(str) || A06(123, 15, 93).equals(str) || A06(89, 19, kotlin.fh.g1).equals(str);
    }

    public static boolean A0F(String str) {
        return A06(874, 5, 12).equals(A0A(str));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:45:0x00f9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:46:0x00fb A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:47:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:49:0x0112  */
    /* JADX WARN: Code duplicated, block: B:52:0x0121  */
    /* JADX WARN: Code duplicated, block: B:61:0x0137 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x000c  */
    /* JADX WARN: Code duplicated, block: B:9:0x0010 A[RETURN] */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x011e, code lost:
    
        if (r3 == null) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0120, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0128, code lost:
    
        if (r3 == null) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x012b, code lost:
    
        r1 = r3.A00();
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x012f, code lost:
    
        if (r1 == 0) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0133, code lost:
    
        if (r1 == 16) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0135, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:?, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean A0G(java.lang.String r8, java.lang.String r9) {
        /*
            Method dump skipped, instruction units count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.L8.A0G(java.lang.String, java.lang.String):boolean");
    }
}
