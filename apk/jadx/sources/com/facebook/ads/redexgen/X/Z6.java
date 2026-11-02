package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.CommentFrame;
import com.facebook.ads.androidx.media3.extractor.metadata.id3.InternalFrame;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class Z6 {
    public static byte[] A02;
    public static String[] A03 = {"5C5MgsIa9PpNkbmDIOckXdgN8bNWJu40", "UoSf8BkyJ0is9eJHeJEEd25Yl88Narbs", "cndQmvJK2lbpUHLfTcCybvfaX46x7zx3", "sYzIfM2eIqwRkrW1UDPLJXBmSSC7kLky", "igX8V", "Hcb8m", "5WRfL2xfAQB1OLK5rOEaW3DejC4H2cv3", "zXEKiGH5LBoh71LUM1AArx8kb80jLzb7"};
    public static final Pattern A04;
    public int A00 = -1;
    public int A01 = -1;

    static {
        A01();
        A04 = Pattern.compile(A00(0, 50, 61));
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A03;
            if (strArr[2].charAt(14) != strArr[7].charAt(14)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[5] = "kHcW9";
            strArr2[4] = "jyKl2";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 3);
            i4++;
        }
    }

    public static void A01() {
        A02 = new byte[]{96, Ascii.RS, 101, Ascii.SO, 19, 7, 95, 19, 88, 127, 19, 120, 99, 69, 6, 67, Ascii.RS, Ascii.SYN, 101, Ascii.SO, 19, 7, 95, 19, 88, 127, 19, 120, 99, 69, 6, 67, Ascii.ETB, Ascii.RS, Ascii.SYN, 101, Ascii.SO, 19, 7, 95, 19, 88, 127, 19, 120, 99, 69, 6, 67, Ascii.ETB, 34, 46, 44, 111, 32, 49, 49, 45, 36, 111, 40, Ascii.NAK, 52, 47, 36, 50, 3, 62, Ascii.US, 4, 57, 39, 58, 40};
    }

    private boolean A02(String str) {
        Matcher matcher = A04.matcher(str);
        if (!matcher.find()) {
            return false;
        }
        try {
            int i = Integer.parseInt((String) N1.A0f(matcher.group(1)), 16);
            int i2 = Integer.parseInt((String) N1.A0f(matcher.group(2)), 16);
            if (i <= 0 && i2 <= 0) {
                return false;
            }
            this.A00 = i;
            this.A01 = i2;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public final boolean A03() {
        return (this.A00 == -1 || this.A01 == -1) ? false : true;
    }

    public final boolean A04(int i) {
        int i2 = i >> 12;
        int i3 = i & 4095;
        if (i2 <= 0 && i3 <= 0) {
            String[] strArr = A03;
            if (strArr[6].charAt(17) != strArr[0].charAt(17)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[5] = "Zznty";
            strArr2[4] = "hZ8yw";
            return false;
        }
        this.A00 = i2;
        String[] strArr3 = A03;
        if (strArr3[6].charAt(17) != strArr3[0].charAt(17)) {
            throw new RuntimeException();
        }
        String[] strArr4 = A03;
        strArr4[2] = "UO2hDT3GmEt5f6LVg4xc25G07U0Y3fAG";
        strArr4[7] = "BFJ1sfZUnD4e94LvLJfDF6QEMH59jnIu";
        this.A01 = i3;
        return true;
    }

    public final boolean A05(Metadata metadata) {
        for (int i = 0; i < metadata.A02(); i++) {
            Metadata.Entry entryA03 = metadata.A03(i);
            boolean z = entryA03 instanceof CommentFrame;
            String strA00 = A00(66, 8, 105);
            if (z) {
                CommentFrame commentFrame = (CommentFrame) entryA03;
                if (strA00.equals(commentFrame.A00) && A02(commentFrame.A02)) {
                    return true;
                }
            } else if (entryA03 instanceof InternalFrame) {
                InternalFrame internalFrame = (InternalFrame) entryA03;
                String[] strArr = A03;
                if (strArr[5].length() != strArr[4].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A03;
                strArr2[3] = "9yJoaawEqghSPuG10gvCiNjmpMUaC0Ey";
                strArr2[1] = "nsXKN93UFUIcnPwZtFdEmqmRUMe5x5wO";
                if (A00(50, 16, 66).equals(internalFrame.A01) && strA00.equals(internalFrame.A00)) {
                    String str = internalFrame.A02;
                    String[] strArr3 = A03;
                    if (strArr3[6].charAt(17) != strArr3[0].charAt(17)) {
                        throw new RuntimeException();
                    }
                    String[] strArr4 = A03;
                    strArr4[3] = "YjLtRPolmFhOysJQrTvDO5L2b6I2Jmqf";
                    strArr4[1] = "jBXyBewQrGO9SibG340hsBi5pNaZeqyL";
                    if (A02(str)) {
                        return true;
                    }
                }
            } else {
                continue;
            }
        }
        String[] strArr5 = A03;
        if (strArr5[2].charAt(14) != strArr5[7].charAt(14)) {
            throw new RuntimeException();
        }
        String[] strArr6 = A03;
        strArr6[3] = "8wPmvPRk4HC1zIjowmroFW1Z47pu4nv1";
        strArr6[1] = "wEbgiPywVnyiTKafS8gJZxGNVogztgOX";
        return false;
    }
}
