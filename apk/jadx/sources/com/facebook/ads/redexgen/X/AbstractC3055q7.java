package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.Locale;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.q7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3055q7 {
    public static byte[] A00;
    public static String[] A01 = {"ALJ1zZNxKg2cm5XBVz8Qvan3LdINNR", "FrhJoP4b8S8XNnYs", "E80rxgNI", "IclNy8kieg3vtyicoO1BFqMxHvI1x8Xz", "VOW9zI4C5aAHlLrFYMkK7GkI5vE3pxLD", "HFbodM1TM", "8DinB8eMfdaXiJmxwNrU", "5q4sG9SLRv9vF1YhmTWFZWswNdogaztK"};

    static {
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 126);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A01(long j) {
        String str;
        String strA00 = A00(0, 0, 86);
        if (j < 1000) {
            str = j + strA00;
        } else {
            String strA01 = A00(0, 4, 102);
            if (j < 1000000) {
                str = String.format(Locale.US, strA01, Double.valueOf(j / 1000.0d)) + A00(8, 1, 50);
            } else {
                if (A01[1].length() != 16) {
                    throw new RuntimeException();
                }
                A01[1] = "6iqYU8dOs8cCB24l";
                str = j < 1000000000 ? String.format(Locale.US, strA01, Double.valueOf(j / 1000000.0d)) + A00(9, 1, 35) : String.format(Locale.US, strA01, Double.valueOf(j / 1.0E9d)) + A00(7, 1, 125);
            }
        }
        String strA02 = A00(4, 3, 55);
        return str.contains(strA02) ? str.replace(strA02, strA00) : str;
    }

    public static void A02() {
        A00 = new byte[]{9, Ascii.DC2, Ascii.SYN, 74, -29, -27, -27, Base64.padSymbol, -5, -18};
    }
}
