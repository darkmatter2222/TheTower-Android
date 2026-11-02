package com.facebook.ads.redexgen.X;

import android.media.MediaFormat;
import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;
import java.util.Random;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Xx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2020Xx {
    public static String A00;
    public static String A01;
    public static byte[] A02;
    public static String[] A03 = {"xp5Wj", "GehrftXkjUqldHyaKWqhVP0RoL5s97Vx", "6euHN6uZlwkrSLcvG", "8KRH2FVHutNKERp7KTStOWFeAEA2hq7i", "EyttUuimKFSVW81nRtergFMTXOzaUkeq", "sj5BhB81HTTwpSzD0mo0UW5uRhldLlnD", "z8sSMx2S87HDSgU1L3ZYQbYVAy6K9dLe", "lnZDHYOkr1x0AKfoPwqOSemY99EERDSn"};
    public static final Random A04;

    static {
        A02();
        A00 = A01(41, 12, 51);
        A01 = A01(139, 37, 36);
        A04 = new Random();
    }

    public static int A00(int i, int i2) {
        return i2 != 0 ? (int) ((Math.pow(2.0d, i - 1) * ((double) i2) * 1000.0d) + ((double) A04.nextInt(2000))) : (int) Math.min((((long) (i - 1)) * 1000) + 500, 5000L);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A03[2].length() != 17) {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[5] = "tRipBKfLxfcOAbp5jY85J69CUK5P6qug";
            strArr[6] = "XS93st5xmSZCDsoFoWroRwEKvJDMxisd";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 86);
            i4++;
        }
    }

    public static void A02() {
        A02 = new byte[]{-17, 10, Ascii.DC2, Ascii.NAK, Ascii.SO, Ascii.CR, -55, Ascii.GS, Ascii.CAN, -55, Ascii.ESC, Ascii.SO, Ascii.GS, Ascii.ESC, Ascii.DC2, Ascii.SO, Ascii.US, Ascii.SO, -55, -10, Ascii.SO, Ascii.CR, Ascii.DC2, 10, -17, Ascii.CAN, Ascii.ESC, Ascii.SYN, 10, Ascii.GS, -7, Ascii.SYN, 35, 32, -10, 41, 32, 6, 37, Ascii.SUB, Ascii.GS, -39, -5, -8, 1, 2, -74, -36, -3, -22, -3, -2, -4, -77, -59, -44, -128, -95, -87, -128, -90, -78, -93, -128, -79, -90, -92, -128, -52, -59, -42, -59, -52, -128, -44, -49, -128, -123, -60, 7, Ascii.EM, 40, -44, -11, -3, -44, -6, 6, -9, -44, 38, Ascii.EM, 37, 41, Ascii.EM, 39, 40, -44, 40, 35, -44, -27, -65, -47, -32, -116, -83, -75, -116, -78, -66, -81, -116, -30, -43, -48, -47, -37, -116, -48, -31, -34, -51, -32, -43, -37, -38, -116, -32, -37, -116, -111, -48, 47, 44, 48, 46, 47, 59, -18, -29, -25, -33, -23, -17, -18, -39, -18, -20, -13, -29, -24, -31, -39, -18, -23, -39, -32, -29, -24, -34, -39, -19, -33, -31, -25, -33, -24, -18, -39, -29, -24, -39, -23, -29, -26, 44, Ascii.ESC, 36, Ascii.SUB, 37, 40, -28, 41, Ascii.ESC, Ascii.EM, -29, Ascii.ETB, Ascii.US, Ascii.FS, 40, Ascii.EM, -29, 42, 40, Ascii.ETB, 36, 41, Ascii.FS, Ascii.ESC, 40, -29, 40, Ascii.ESC, 39, 43, Ascii.ESC, 41, 42, -28, 44, Ascii.ETB, 34, 43, Ascii.ESC, 58, 41, 50, 40, 51, 54, -14, 55, 41, 39, -15, 37, 45, 42, 54, 39, -15, 58, 45, 40, 41, 51, -15, 40, 57, 54, 37, 56, 45, 51, 50, -14, 58, 37, 48, 57, 41, -24, -41, -32, -42, -31, -28, -96, -27, -41, -43, -97, -45, -37, -40, -28, -43, -97, -24, -37, -42, -41, -31, -97, -29, -40, -42, -97, -34, -41, -24, -41, -34, -96, -24, -45, -34, -25, -41, 55, 41, 36, 52, 40};
    }

    public static void A03(C2001Xc c2001Xc, MediaFormat mediaFormat) {
        String strA01 = A01(30, 11, 91);
        if (c2001Xc.A01) {
            try {
                if (Y0.A02()) {
                    if (!c2001Xc.A0V || Y0.A03(mediaFormat.getInteger(A01(290, 5, kotlin.fh.g1)), mediaFormat.getInteger(A01(133, 6, InterfaceC3669k1.d.b.k)))) {
                        long j = c2001Xc.A00;
                        if (j > 0) {
                            mediaFormat.setLong(A01(215, 37, 110), j);
                            YN.A01(strA01, A01(102, 31, 22), Long.valueOf(j));
                        }
                        mediaFormat.setInteger(A01(252, 38, 28), c2001Xc.A02);
                        YN.A01(strA01, A01(53, 26, 10), Integer.valueOf(c2001Xc.A02));
                        mediaFormat.setInteger(A01(176, 39, 96), 1);
                        YN.A00(strA01, A01(79, 23, 94));
                    }
                }
            } catch (ClassCastException | NullPointerException e) {
                YN.A02(strA01, A01(0, 30, 83), e);
            }
        }
    }

    public static boolean A04(C2001Xc c2001Xc, int i, int i2, int i3, int i4) {
        return c2001Xc.A01 && c2001Xc.A0V && Y0.A03(i, i2) != Y0.A03(i3, i4);
    }
}
