package com.facebook.ads.redexgen.X;

import android.content.Context;
import com.google.common.base.Ascii;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class IO {
    public static byte[] A00;
    public static String[] A01 = {"Yw98xlDxu7Gm7uZaUDcZWp9JeQeD", "jhrOklqYIMEykPIlFBHsHQ", "dX4WeuqkLefvu9bhPargj52SflqZn9A", "j2B9Ibdamtz9bzCrP44YwgVQMHmjWZ9a", "e0LuVdKaVts63ti6MkWAqTaToxR3Ckhj", "QbSq94Mn", "0A6imsUVtBduxhrh1ZFWC3", "ft3FYqqLf6oZD7QY58VTV72wWfA1"};
    public static final String[] A02;

    static {
        A02();
        A02 = new String[]{A01(46, 45, 24), A01(0, 46, 84)};
    }

    public static int A00(Context context) {
        if (!A03()) {
            return 2;
        }
        try {
            return AbstractC1650Io.A03(context.getApplicationContext(), null) == null ? 1 : 0;
        } catch (Throwable unused) {
            if (A01[4].charAt(30) != 'h') {
                throw new RuntimeException();
            }
            A01[3] = "QDrSxZzfr55AzKouW5H4NBVnOKvXJaeJ";
            return 3;
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 65);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{116, 123, 113, 103, 122, 124, 113, 59, 102, 96, 101, 101, 122, 103, 97, 59, 118, 96, 102, 97, 122, 120, 97, 116, 119, 102, 59, 92, 86, 96, 102, 97, 122, 120, 65, 116, 119, 102, 86, 116, 121, 121, 119, 116, 118, 126, 56, 55, Base64.padSymbol, 43, 54, 48, Base64.padSymbol, 119, 42, 44, 41, 41, 54, 43, 45, 119, 58, 44, 42, 45, 54, 52, 45, 56, 59, 42, 119, Ascii.DLE, Ascii.SUB, 44, 42, 45, 54, 52, Ascii.CR, 56, 59, 42, 10, 60, 43, 47, 48, 58, 60};
    }

    public static boolean A03() {
        ClassLoader classLoader = IO.class.getClassLoader();
        for (String str : A02) {
            try {
                Class.forName(str, false, classLoader);
            } catch (Throwable unused) {
                return false;
            }
        }
        return true;
    }
}
