package com.facebook.ads.redexgen.X;

import android.provider.Settings;
import android.text.TextUtils;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import com.unity3d.services.UnityAdsConstants;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.af, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2114af {
    public static InterfaceC2194bx A00;
    public static byte[] A01;
    public static String[] A02 = {"b", "jWWIi2TrnHAAyoG5itvaKpzBpE6rwsKb", "4piz2zd6PBPCOA5LKuru6huyc0Gk9hmI", "ThWxRwfxtMClt6xxWNEGrvPqHoOGiBgN", "VC0ltrZe3ujZ5yBmE9F34w5pTHRf8GMT", "g0Z7XyqsbnnTrD4DkPgr08gcmreNHhpx", "VVYGWntGozQ2sTcwE1XxLnyTeGzWkyyX", "XVqTwdXEkxL4UUDwn3dakWK60VTsxJd5"};
    public static final Set<String> A03;
    public static final Set<String> A04;
    public static final AtomicBoolean A05;

    static {
        A07();
        A03 = new HashSet();
        A04 = new HashSet();
        A03.add(A05(6, 29, 2));
        A04.add(A05(168, 29, 95));
        A04.add(A05(35, 29, 116));
        A04.add(A05(64, 29, 119));
        A04.add(A05(116, 29, 17));
        A05 = new AtomicBoolean();
    }

    public static InterfaceC2189bs A00(C2755lA c2755lA) {
        return A03(true, c2755lA);
    }

    public static InterfaceC2189bs A01(C2755lA c2755lA) {
        return A02(true, c2755lA);
    }

    public static InterfaceC2189bs A02(boolean z, C2755lA c2755lA) {
        C2167bW c2167bW = new C2167bW();
        C2162bR c2162bRA04 = A04(c2755lA);
        if (A0B(c2755lA)) {
            c2167bW.A05(true);
        } else {
            c2167bW.A02(A04);
            c2167bW.A01(A03);
        }
        if (C3013pR.A04()) {
            Map<String, String> mapA02 = C3013pR.A02();
            String[] strArr = A02;
            if (strArr[2].charAt(7) == strArr[1].charAt(7)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[5] = "6CjO7LbqJIONUadrRHmx0RuGBypxStir";
            strArr2[3] = "VKsjD9ddp6JrHwn0FL0Df9QGs7RhJ4JT";
            c2162bRA04.A08(mapA02);
        }
        return AbstractC2186bp.A00().A00(c2167bW.A00(c2162bRA04.A09()).A03(z).A04(c2755lA.A05().AB6()).A06(), c2755lA.A08(), ExecutorC3091qh.A01());
    }

    public static InterfaceC2189bs A03(boolean z, C2755lA c2755lA) {
        return AbstractC2186bp.A00().A00(new C2167bW().A03(z).A00(A04(c2755lA).A09()).A04(c2755lA.A05().AB6()).A06(), c2755lA.A08(), ExecutorC3091qh.A01());
    }

    public static C2162bR A04(C2755lA c2755lA) {
        A08(c2755lA);
        C2162bR c2162bR = new C2162bR();
        if (A0B(c2755lA) || C3013pR.A04()) {
            c2162bR.A02(360000).A04(UnityAdsConstants.RequestPolicy.RETRY_MAX_DURATION);
        } else {
            c2162bR.A02(C2863mv.A07(c2755lA)).A04(C2863mv.A09(c2755lA));
        }
        c2162bR.A03(C2863mv.A08(c2755lA)).A05(C2863mv.A0A(c2755lA)).A06(C2863mv.A0B(c2755lA));
        synchronized (C2114af.class) {
            if (A00 != null && (A00 instanceof InterfaceC2194bx)) {
                c2162bR.A07(A00);
            }
        }
        return c2162bR;
    }

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 56);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A05.set(true);
    }

    public static void A07() {
        A01 = new byte[]{36, 101, 110, 8, 85, 68, Ascii.VT, 77, 77, 2, 127, 10, 123, 99, 73, 104, 8, 85, 98, Ascii.SI, 86, 84, 94, 81, 8, 82, 77, 74, 8, 111, 85, 73, 81, 7, 48, 127, 32, 7, 58, 38, 2, 63, 42, 33, 62, 34, 103, Ascii.ESC, 33, 42, 8, 36, 58, 62, 126, 37, Ascii.SUB, 36, 99, 53, Ascii.RS, 63, 113, 70, Ascii.CR, 127, 119, Ascii.RS, 59, 10, 123, 54, 3, Ascii.FF, 43, 35, 38, 123, Base64.padSymbol, 63, 59, 54, 62, Ascii.SO, 10, 44, 53, Ascii.ETB, 0, 42, Ascii.SO, 114, 69, 107, SignedBytes.MAX_POWER_OF_TWO, 81, 82, 74, 87, 78, 76, 75, 66, 5, 71, SignedBytes.MAX_POWER_OF_TWO, 67, 74, 87, SignedBytes.MAX_POWER_OF_TWO, 5, 76, 75, 76, 81, 4, 113, 115, 113, 96, Ascii.US, 72, 71, 115, 75, 77, 98, 79, 2, 93, 72, 124, 123, 77, 71, 80, 124, 97, Ascii.FS, SignedBytes.MAX_POWER_OF_TWO, 89, 78, 100, Ascii.DC4, 35, 54, 62, 37, 39, 59, 54, 57, 50, 8, 58, 56, 51, 50, 8, 56, 57, 7, Ascii.FF, Ascii.GS, Ascii.RS, 6, Ascii.ESC, 2, 19, 8, Base64.padSymbol, 85, 32, 53, 9, 53, Ascii.CR, 36, 94, 55, 82, 49, 49, 50, 3, 36, Ascii.ETB, 40, Ascii.NAK, 33, 47, 95, Ascii.VT, 1, 54, 90, 109};
    }

    public static void A08(C2755lA c2755lA) {
        if (A05.get()) {
            return;
        }
        c2755lA.A08().ABz(A05(161, 7, 81), AbstractC2786lf.A21, new C2787lg(A05(93, 23, 29)));
    }

    public static synchronized void A09(InterfaceC2194bx interfaceC2194bx) {
        A00 = interfaceC2194bx;
    }

    public static boolean A0A(C2755lA c2755lA) {
        return Settings.Global.getInt(c2755lA.getContentResolver(), A05(145, 16, 111), 0) != 0;
    }

    public static boolean A0B(C2755lA c2755lA) {
        String strAA3 = c2755lA.A05().AA3();
        return !TextUtils.isEmpty(strAA3) && (strAA3.endsWith(A05(3, 3, 30)) || strAA3.endsWith(A05(0, 3, 50)));
    }
}
