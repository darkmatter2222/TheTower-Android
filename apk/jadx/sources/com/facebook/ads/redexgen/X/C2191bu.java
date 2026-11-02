package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2191bu {
    public static byte[] A0B;
    public static String[] A0C = {"bI1FkpMS8ttx5Qc2z7PNdYbYq1lskw3h", "emEZoHxrdf91xYO63rMPobMcQBLiEU8Z", "uwo9FflM3qvjW75MAdaO8QgjgIRMQo81", "hISMqAD33mCcON02hUOctCPVUh6WSNoh", "0Ehzq8AJjNf7V22kE1xcmNZ1dJe4b4WB", "zA", "6cqGC", "t7LNPWxkIbfOmswmdmFJSLFnQfGgICKG"};
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final int A07;
    public final int A08;
    public final int A09;
    public final int A0A;

    static {
        A02();
    }

    public C2191bu(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
        this.A06 = i;
        this.A00 = i2;
        this.A08 = i3;
        this.A07 = i4;
        this.A03 = i5;
        this.A01 = i6;
        this.A04 = i7;
        this.A0A = i8;
        this.A09 = i9;
        this.A02 = i10;
        this.A05 = i11;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:56:0x0165  */
    public static C2191bu A00(String str) {
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        int i8 = -1;
        int i9 = -1;
        int i10 = -1;
        String[] strArrSplit = TextUtils.split(str.substring(A01(1, 7, 38).length()), A01(0, 1, 126));
        int i11 = 0;
        while (true) {
            byte b = -1;
            if (i11 >= strArrSplit.length) {
                if (i != -1) {
                    return new C2191bu(i, i2, i3, i4, i5, i6, i7, i8, i9, i10, strArrSplit.length);
                }
                return null;
            }
            String strA01 = XC.A01(strArrSplit[i11].trim());
            switch (strA01.hashCode()) {
                case -1178781136:
                    if (strA01.equals(A01(40, 6, 19))) {
                        b = 6;
                    }
                    break;
                case -1026963764:
                    String[] strArr = A0C;
                    if (strArr[2].charAt(30) == strArr[1].charAt(30)) {
                        A0C[3] = "l3P4qW1zUFY2e3aicCUSeDb316n9ukkh";
                        if (strA01.equals(A01(85, 9, 57))) {
                            b = 7;
                        }
                    } else {
                        String[] strArr2 = A0C;
                        strArr2[2] = "UGPaJMsfBG53J9268KtcwGECzwZjxg8w";
                        strArr2[1] = "1lPDy8zKIP9GomZz9qYepHnSBHgBAw8d";
                        if (strA01.equals(A01(85, 4, 4))) {
                            b = 7;
                        }
                    }
                    break;
                case -192095652:
                    if (strA01.equals(A01(76, 9, 17))) {
                        b = 8;
                    }
                    break;
                case -70925746:
                    if (strA01.equals(A01(63, 13, 122))) {
                        b = 2;
                    }
                    break;
                case 3029637:
                    if (strA01.equals(A01(17, 4, 98))) {
                        b = 5;
                    }
                    break;
                case 3373707:
                    if (strA01.equals(A01(46, 4, 103))) {
                        b = 0;
                    }
                    break;
                case 366554320:
                    if (A0C[3].charAt(31) == 'h') {
                        A0C[3] = "EkGhkMjmSFkS4j3jZOxNQupkHX6n5Rwh";
                        if (strA01.equals(A01(32, 8, 8))) {
                            b = 4;
                        }
                    } else if (strA01.equals(A01(32, 8, 8))) {
                        b = 4;
                    }
                    break;
                case 767321349:
                    if (strA01.equals(A01(21, 11, 43))) {
                        b = 9;
                    }
                    break;
                case 1767875043:
                    if (strA01.equals(A01(8, 9, 116))) {
                        b = 1;
                    }
                    break;
                case 1988365454:
                    if (A0C[3].charAt(31) != 'h') {
                        throw new RuntimeException();
                    }
                    String[] strArr3 = A0C;
                    strArr3[5] = "tC";
                    strArr3[6] = "1bcTU";
                    if (strA01.equals(A01(50, 13, 66))) {
                        b = 3;
                    }
                    break;
            }
            switch (b) {
                case 0:
                    i = i11;
                    break;
                case 1:
                    i2 = i11;
                    break;
                case 2:
                    i3 = i11;
                    break;
                case 3:
                    i4 = i11;
                    break;
                case 4:
                    i5 = i11;
                    break;
                case 5:
                    i6 = i11;
                    break;
                case 6:
                    i7 = i11;
                    break;
                case 7:
                    i8 = i11;
                    break;
                case 8:
                    i9 = i11;
                    break;
                case 9:
                    i10 = i11;
                    break;
            }
            i11++;
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 86);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A0B = new byte[]{4, 54, Ascii.US, 2, Ascii.GS, 17, 4, 74, 67, 78, 75, 69, 76, 79, 71, 76, 86, 86, 91, 88, 80, Ascii.US, Ascii.DC2, Ascii.SI, Ascii.EM, Ascii.CAN, Ascii.SI, Ascii.SO, 9, 4, 17, Ascii.CAN, 56, 49, 48, 42, 45, 55, 36, 59, 44, 49, 36, 41, 44, 38, 95, 80, 92, 84, 123, 97, 96, 120, 125, 122, 113, 119, 123, 120, 123, 97, 102, 92, 94, 69, 65, 77, 94, 85, 79, 67, SignedBytes.MAX_POWER_OF_TWO, 67, 89, 94, 52, 51, 53, 46, 44, 34, 40, 50, 51, Ascii.SUB, 1, Ascii.VT, 10, Ascii.GS, 3, 6, 1, 10};
    }
}
