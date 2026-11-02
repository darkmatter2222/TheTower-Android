package com.facebook.ads.redexgen.X;

import android.view.Surface;
import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Xp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2014Xp {
    public static byte[] A00;
    public static String[] A01 = {"B9TJqklarPRFtfXsOo6I58cUd9q9Kscm", "6UePzNsgB1ds96rs0ndO", "DTygtfV4bhaTAO5ZiHdZxQ27teMVSSX9", "rXjWUYna41IY7pcXCJJndleKYuaPVeYl", "DNwhpvkHSCgdUOCUEQDdrRjWuet3YdvQ", "kqess2NDGK", "qown7fUHytRGu6mVFVqi7Yf48PkFWs5k", "OhNFnmzff46Kq9n7rk"};

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A01[5].length() != 10) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[7] = "urIJOIyy4aevi5vEN5";
            strArr[1] = "JLkAHhTV3YENb2sywu8n";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 86);
            i4++;
        }
    }

    public static void A01() {
        A00 = new byte[]{90, 125, 117, 112, 121, 120, 60, 104, 115, 60, 127, 125, 112, 112, 60, 79, 105, 110, 122, 125, 127, 121, 50, 111, 121, 104, 90, 110, 125, 113, 121, 78, 125, 104, 121, 52, Ascii.VT, 6, 7, Ascii.CR, 36, Ascii.DLE, 3, Ascii.SI, 7, 48, 7, Ascii.SO, 7, 3, 17, 7, 42, 7, Ascii.SO, Ascii.DC2, 7, Ascii.DLE};
    }

    public static void A02(Surface surface, float f) {
        try {
            surface.setFrameRate(f, f == 0.0f ? 0 : 1);
        } catch (IllegalStateException e) {
            MV.A08(A00(35, 23, 52), A00(0, 35, 74), e);
        }
    }
}
