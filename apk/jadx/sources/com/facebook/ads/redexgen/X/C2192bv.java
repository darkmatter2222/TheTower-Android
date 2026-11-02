package com.facebook.ads.redexgen.X;

import android.graphics.PointF;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2192bv {
    public static byte[] A02;
    public static String[] A03 = {"kW1hDeNUtC10tqWJP3kbzfKlhjVFHikh", "phn6Qh3zA2H9XBtM6W9ZZ8JCFp5sv", "lkpgTxM7MOA4iC9TmWryDFWtGOdOqOFL", "7UyNPDcne8Q0yRa025pCMg2HdCA5Dbez", "3Kx5IGch5tgSdy5M7bYxpCLUwpyZwknX", "z2w3aRxGr2SVMLOZGPUrF1YfiYRiOJHA", "7haUnRF2jWU0H8OvFrVCTPnNTVf2pYkO", "PPb2ojmgml1Rr7V32yKrumDvrKyyOdFK"};
    public static final Pattern A04;
    public static final Pattern A05;
    public static final Pattern A06;
    public static final Pattern A07;
    public final int A00;
    public final PointF A01;

    static {
        A05();
        A05 = Pattern.compile(A03(198, 11, 94));
        String strA03 = A03(179, 19, 74);
        A07 = Pattern.compile(N1.A0n(A03(157, 22, 87), strA03));
        A06 = Pattern.compile(N1.A0n(A03(109, 48, 87), strA03));
        A04 = Pattern.compile(A03(100, 9, 92));
    }

    public C2192bv(int i, PointF pointF) {
        this.A00 = i;
        this.A01 = pointF;
    }

    public static int A00(String str) {
        Matcher matcher = A04.matcher(str);
        if (matcher.find()) {
            return C2195by.A01((String) AbstractC1722Ln.A01(matcher.group(1)));
        }
        return -1;
    }

    public static PointF A01(String str) {
        String strGroup;
        String strGroup2;
        Matcher matcher = A07.matcher(str);
        Matcher matcher2 = A06.matcher(str);
        boolean zFind = matcher.find();
        boolean zFind2 = matcher2.find();
        if (zFind) {
            if (zFind2) {
                MV.A06(A03(82, 18, 34), A03(1, 81, 88) + str + A03(0, 1, 60));
            }
            strGroup = matcher.group(1);
            strGroup2 = matcher.group(2);
        } else {
            if (!zFind2) {
                return null;
            }
            strGroup = matcher2.group(1);
            strGroup2 = matcher2.group(2);
        }
        return new PointF(Float.parseFloat(((String) AbstractC1722Ln.A01(strGroup)).trim()), Float.parseFloat(((String) AbstractC1722Ln.A01(strGroup2)).trim()));
    }

    public static C2192bv A02(String str) {
        int i = -1;
        PointF pointF = null;
        Matcher matcher = A05.matcher(str);
        while (true) {
            boolean zFind = matcher.find();
            if (A03[1].length() == 27) {
                throw new RuntimeException();
            }
            A03[3] = "5j4W49oWo7V2aba71yHq1gnFYjcOXEId";
            if (!zFind) {
                return new C2192bv(i, pointF);
            }
            String str2 = (String) AbstractC1722Ln.A01(matcher.group(1));
            try {
                PointF pointFA01 = A01(str2);
                if (pointFA01 != null) {
                    pointF = pointFA01;
                }
            } catch (RuntimeException unused) {
            }
            try {
                int iA00 = A00(str2);
                if (iA00 != -1) {
                    i = iA00;
                }
            } catch (RuntimeException unused2) {
            }
        }
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 59);
            if (A03[2].charAt(9) == '5') {
                throw new RuntimeException();
            }
            A03[2] = "6qz2bz4OX7RDs3QoRSkwDXP6RYd92hSp";
        }
        return new String(bArrCopyOfRange);
    }

    public static String A04(String str) {
        return A05.matcher(str).replaceAll(A03(0, 0, 71));
    }

    public static void A05() {
        A02 = new byte[]{32, 44, Ascii.NAK, 6, 17, 17, 10, 7, 6, 67, Ascii.VT, 2, Ascii.DLE, 67, 1, Ascii.FF, Ascii.ETB, Ascii.VT, 67, 63, 19, Ascii.FF, Ascii.DLE, 75, Ascii.ESC, 79, Ascii.SUB, 74, 67, 2, Ascii.CR, 7, 67, 63, Ascii.SO, Ascii.FF, Ascii.NAK, 6, 75, Ascii.ESC, 82, 79, Ascii.SUB, 82, 79, Ascii.ESC, 81, 79, Ascii.SUB, 81, 74, 88, 67, Ascii.SYN, Ascii.DLE, 10, Ascii.CR, 4, 67, 63, 19, Ascii.FF, Ascii.DLE, 67, Ascii.NAK, 2, Ascii.SI, Ascii.SYN, 6, Ascii.DLE, 77, 67, Ascii.FF, Ascii.NAK, 6, 17, 17, 10, 7, 6, 94, 68, 74, 106, 120, 74, 109, 96, 117, 124, 55, 86, 111, 124, 107, 107, 112, 125, 124, 106, 59, 59, 6, 9, 79, 59, 3, 76, 78, 48, 48, 1, 3, Ascii.SUB, 9, 48, 68, 73, 93, 72, Ascii.US, SignedBytes.MAX_POWER_OF_TWO, 73, 93, 72, Ascii.US, SignedBytes.MAX_POWER_OF_TWO, 68, 73, 93, 72, Ascii.US, 69, SignedBytes.MAX_POWER_OF_TWO, 68, 73, 93, 72, Ascii.US, 69, 68, 83, 86, SignedBytes.MAX_POWER_OF_TWO, 73, 93, 72, Ascii.US, SignedBytes.MAX_POWER_OF_TWO, 73, 93, 72, Ascii.US, 69, 83, 48, 69, 48, 48, Ascii.FS, 3, Ascii.US, 48, 68, 68, 73, 93, 72, Ascii.US, 69, SignedBytes.MAX_POWER_OF_TWO, 68, 73, 93, 72, Ascii.US, 69, 48, 69, 45, 2, 91, 45, Ascii.NAK, 90, 89, 78, 75, 45, 95, 45, Ascii.NAK, 90, 88, 78, 45, 2, 91, 57, Ascii.RS, 77, 62, 59, Ascii.CAN, 56, 79, 76, 57, Ascii.CAN};
    }
}
