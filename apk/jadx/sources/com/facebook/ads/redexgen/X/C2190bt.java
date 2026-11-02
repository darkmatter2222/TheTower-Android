package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.bt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2190bt {
    public static byte[] A05;
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;

    static {
        A02();
    }

    public C2190bt(int i, int i2, int i3, int i4, int i5) {
        this.A02 = i;
        this.A00 = i2;
        this.A03 = i3;
        this.A04 = i4;
        this.A01 = i5;
    }

    public static C2190bt A00(String str) {
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        String strA01 = A01(1, 7, 105);
        AbstractC1722Ln.A07(str.startsWith(strA01));
        String[] strArrSplit = TextUtils.split(str.substring(strA01.length()), A01(0, 1, 55));
        int i5 = 0;
        while (true) {
            byte b = -1;
            if (i5 >= strArrSplit.length) {
                if (i == -1 || i2 == -1 || i4 == -1) {
                    return null;
                }
                return new C2190bt(i, i2, i3, i4, strArrSplit.length);
            }
            String strA02 = XC.A01(strArrSplit[i5].trim());
            switch (strA02.hashCode()) {
                case 100571:
                    if (strA02.equals(A01(8, 3, 90))) {
                        b = 1;
                    }
                    break;
                case 3556653:
                    if (strA02.equals(A01(21, 4, 86))) {
                        b = 3;
                    }
                    break;
                case 109757538:
                    if (strA02.equals(A01(11, 5, 82))) {
                        b = 0;
                    }
                    break;
                case 109780401:
                    if (strA02.equals(A01(16, 5, 75))) {
                        b = 2;
                    }
                    break;
            }
            switch (b) {
                case 0:
                    i = i5;
                    break;
                case 1:
                    i2 = i5;
                    break;
                case 2:
                    i3 = i5;
                    break;
                case 3:
                    i4 = i5;
                    break;
            }
            i5++;
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 8);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A05 = new byte[]{19, 39, Ascii.SO, 19, Ascii.FF, 0, Ascii.NAK, 91, 55, 60, 54, 41, 46, 59, 40, 46, 48, 55, 58, 47, 38, 42, 59, 38, 42};
    }
}
