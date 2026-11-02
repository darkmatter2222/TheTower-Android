package com.facebook.ads.internal.protocol;

import android.text.TextUtils;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.Locale;
import kotlin.fh;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public enum AdPlacementType {
    BANNER(A00(74, 6, 17)),
    MEDIUM_RECTANGLE(A00(92, 16, 15)),
    INTERSTITIAL(A00(80, 12, 77)),
    NATIVE(A00(108, 6, 100)),
    NATIVE_BANNER(A00(114, 13, 15)),
    REWARDED_VIDEO(A00(127, 14, fh.h1)),
    UNKNOWN(A00(141, 7, 57));

    public static byte[] A01;
    public String A00;

    static {
        A01();
    }

    AdPlacementType(String str) {
        this.A00 = str;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 99);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{Ascii.DC4, 19, 32, 32, Ascii.ETB, 36, 35, 40, 46, Ascii.US, 44, 45, 46, 35, 46, 35, Ascii.ESC, 38, 37, Ascii.GS, Ascii.FS, 33, 45, 37, 55, 42, Ascii.GS, Ascii.ESC, 44, Ascii.EM, 38, Ascii.US, 36, Ascii.GS, 4, -9, 10, -1, Ascii.FF, -5, -44, -57, -38, -49, -36, -53, -27, -56, -57, -44, -44, -53, -40, 19, 6, Ascii.CAN, 2, 19, 5, 6, 5, 32, Ascii.ETB, 10, 5, 6, Ascii.DLE, -57, -64, -67, -64, -63, -55, -64, -42, -43, -30, -30, -39, -26, Ascii.EM, Ascii.RS, 36, Ascii.NAK, 34, 35, 36, Ascii.EM, 36, Ascii.EM, 17, Ascii.FS, -33, -41, -42, -37, -25, -33, -47, -28, -41, -43, -26, -45, -32, -39, -34, -41, 53, 40, 59, 48, Base64.padSymbol, 44, -32, -45, -26, -37, -24, -41, -47, -44, -45, -32, -32, -41, -28, SignedBytes.MAX_POWER_OF_TWO, 51, 69, 47, SignedBytes.MAX_POWER_OF_TWO, 50, 51, 50, 45, 68, 55, 50, 51, Base64.padSymbol, 17, 10, 7, 10, Ascii.VT, 19, 10};
    }

    public static AdPlacementType fromString(String str) {
        if (TextUtils.isEmpty(str)) {
            return UNKNOWN;
        }
        try {
            return valueOf(str.toUpperCase(Locale.US));
        } catch (Exception unused) {
            return UNKNOWN;
        }
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.A00;
    }
}
