package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ne, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC1764Ne {
    public static byte[] A00;
    public static final Pattern A01;
    public static final Pattern A02;

    static {
        A04();
        A02 = Pattern.compile(A02(118, 28, 108));
        A01 = Pattern.compile(A02(88, 30, 48));
    }

    public static long A00(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1L;
        }
        Matcher matcher = A01.matcher(str);
        if (matcher.matches()) {
            return Long.parseLong((String) AbstractC1722Ln.A01(matcher.group(1)));
        }
        return -1L;
    }

    public static long A01(String str, String str2) {
        long jMax = -1;
        boolean zIsEmpty = TextUtils.isEmpty(str);
        String strA02 = A02(84, 1, 70);
        String strA03 = A02(1, 8, 126);
        if (!zIsEmpty) {
            try {
                jMax = Long.parseLong(str);
            } catch (NumberFormatException unused) {
                MV.A05(strA03, A02(31, 27, 82) + str + strA02);
            }
        }
        if (TextUtils.isEmpty(str2)) {
            return jMax;
        }
        Matcher matcher = A02.matcher(str2);
        if (!matcher.matches()) {
            return jMax;
        }
        try {
            long j = (Long.parseLong((String) AbstractC1722Ln.A01(matcher.group(2))) - Long.parseLong((String) AbstractC1722Ln.A01(matcher.group(1)))) + 1;
            if (jMax < 0) {
                return j;
            }
            if (jMax == j) {
                return jMax;
            }
            MV.A07(strA03, A02(9, 22, 100) + str + A02(85, 3, 54) + str2 + strA02);
            jMax = Math.max(jMax, j);
            return jMax;
        } catch (NumberFormatException unused2) {
            MV.A05(strA03, A02(58, 26, 28) + str2 + strA02);
            return jMax;
        }
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 37);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A03(long j, long j2) {
        if (j == 0 && j2 == -1) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(A02(146, 6, 5));
        sb.append(j);
        sb.append(A02(0, 1, 19));
        if (j2 != -1) {
            sb.append((j + j2) - 1);
        }
        return sb.toString();
    }

    public static void A04() {
        A00 = new byte[]{Ascii.ESC, 19, 47, 47, 43, Ascii.SO, 47, 50, 55, 8, 47, 34, 46, 47, 50, 40, 50, 53, 36, 47, 53, 97, 41, 36, 32, 37, 36, 51, 50, 97, Ascii.SUB, 34, Ascii.EM, Ascii.DC2, Ascii.SI, 7, Ascii.DC2, Ascii.DC4, 3, Ascii.DC2, 19, 87, 52, Ascii.CAN, Ascii.EM, 3, Ascii.DC2, Ascii.EM, 3, 90, 59, Ascii.DC2, Ascii.EM, Ascii.DLE, 3, Ascii.US, 87, 44, 108, 87, 92, 65, 73, 92, 90, 77, 92, 93, Ascii.EM, 122, 86, 87, 77, 92, 87, 77, Ascii.DC4, 107, 88, 87, 94, 92, Ascii.EM, 98, 62, 78, 51, 72, 119, 108, 97, 112, 102, 53, Base64.padSymbol, 42, 47, Base64.padSymbol, 42, 47, 73, 113, 62, 56, 73, 113, 62, 60, 105, 73, 63, 60, 58, Base64.padSymbol, 73, 113, 62, 60, 43, 48, Base64.padSymbol, 44, 58, 105, 97, Ascii.NAK, 45, 98, 96, 100, 97, Ascii.NAK, 45, 98, 96, 102, 97, 118, 115, Ascii.NAK, 45, 98, 53, Ascii.NAK, 99, 96, 66, 89, 84, 69, 83, Ascii.GS};
    }
}
