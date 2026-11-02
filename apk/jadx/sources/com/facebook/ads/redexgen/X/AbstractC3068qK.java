package com.facebook.ads.redexgen.X;

import android.content.Context;
import com.google.common.base.Ascii;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.qK, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3068qK {
    public static byte[] A00;
    public static final Pattern A01;

    static {
        A07();
        A01 = Pattern.compile(A02(0, 24, 13));
    }

    public static String A00() {
        return A06(new Exception(A02(24, 19, 71)), -1, -1, false);
    }

    public static String A01(int i) {
        if (i > 0 && new Random().nextFloat() < 1.0f / i) {
            return A00();
        }
        return null;
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 124);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A03(Context context, Throwable th) {
        return A06(th, C2863mv.A0K(context), C2863mv.A01(context), C2863mv.A1h(context));
    }

    public static String A04(String str) {
        Matcher matcher = A01.matcher(str);
        return matcher.matches() ? matcher.group(1) : str;
    }

    public static String A06(Throwable th, int i, int i2, boolean z) {
        String strA02 = A02(0, 0, 122);
        if (th == null) {
            return strA02;
        }
        try {
            G8 g8 = new G8();
            InterfaceC3066qI g7 = g8;
            if (i2 >= 0) {
                g7 = new G6(g7, i2);
            }
            if (i >= 0) {
                g7 = new G5(g7, i, i);
            }
            if (z) {
                g7 = new G7(g7);
            }
            G9 g9 = new G9(g8, 1, g7);
            th.printStackTrace(new PrintWriter(new C3067qJ(g9)));
            g9.flush();
            return g8.toString();
        } catch (Exception unused) {
            return strA02;
        }
    }

    public static void A07() {
        A00 = new byte[]{89, 45, 2, 90, Ascii.DLE, 5, 45, 2, 90, 42, Ascii.DLE, 92, Ascii.VT, 95, 44, 90, 88, 42, 48, 92, 43, 44, 95, 91, 120, 78, 73, 73, 94, 85, 79, Ascii.ESC, 72, 79, 90, 88, 80, Ascii.ESC, 79, 73, 90, 88, 94, 33, 45, 47, 108, 36, 35, 33, 39, 32, 45, 45, 41, 108, 35, 38, 49};
    }

    public static boolean A08(C3065qH c3065qH) {
        String strA02 = c3065qH.A02();
        if (strA02 == null) {
            return false;
        }
        if (A0A(strA02)) {
            return true;
        }
        Iterator<String> it = c3065qH.A01().iterator();
        while (it.hasNext()) {
            if (A0A(it.next())) {
                return true;
            }
        }
        Iterator<String> it2 = c3065qH.A00().iterator();
        while (it2.hasNext()) {
            if (A0A(it2.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean A0A(String str) {
        return str.contains(A02(43, 16, 62));
    }
}
