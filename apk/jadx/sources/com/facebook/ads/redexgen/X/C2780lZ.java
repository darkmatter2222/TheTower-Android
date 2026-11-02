package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.base.Ascii;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.ironsource.InterfaceC3669k1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.lZ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2780lZ {
    public static SparseIntArray A00;
    public static Executor A01;
    public static boolean A02;
    public static boolean A03;
    public static byte[] A04;
    public static String[] A05 = {"lfqbOpCQc8eNVWWSF0ti", "aQ5ZOD0I", "7f7up0GBGRCd1p0enpCjG4lcj76", "dHBYXWbpLBdqteinvxBO5bOixoP3oT04", "DPNUUQYEctncegz3shse9IBb8Vdl47", "4q0rwT09y0cbatV7Yp", "6l64E9SK9p5G", "edaEIeRSccYYgTnyelVwcwdzoe4C2sfO"};
    public static final List<Integer> A06;
    public static final List<C2781la> A07;
    public static final AtomicBoolean A08;
    public static final AtomicInteger A09;
    public static final AtomicReference<InterfaceC2778lX> A0A;
    public static final AtomicReference<InterfaceC2779lY> A0B;
    public static final AtomicReference<Boolean> A0C;

    static {
        A04();
        A00 = new SparseIntArray();
        A03 = false;
        A0B = new AtomicReference<>();
        A0A = new AtomicReference<>();
        A01 = Executors.newSingleThreadExecutor();
        A06 = Arrays.asList(10, 50, 100, 1000);
        A07 = Collections.synchronizedList(new ArrayList());
        A09 = new AtomicInteger();
        A08 = new AtomicBoolean();
        A0C = new AtomicReference<>(false);
        A02 = false;
    }

    public static int A00(String str, int i, C2755lA c2755lA) {
        if ((A01(462, 7, kotlin.fh.h1).equals(str) && AbstractC2786lf.A20 == i) || A01(TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE, 5, 56).equals(str) || A01(442, 6, 63).equals(str)) {
            return 200;
        }
        if (A01(386, 36, 98).equals(str)) {
            return 50;
        }
        if (A01(371, 15, 18).equals(str)) {
            return AbstractC2865mx.A05(c2755lA);
        }
        if (A05[3].charAt(3) != 'Y') {
            throw new RuntimeException();
        }
        A05[7] = "MSKlPe4okWTggpeViHGlBF3nlCraGBz9";
        return -1;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 39);
        }
        return new String(bArrCopyOfRange);
    }

    public static /* synthetic */ List A02() {
        List<C2781la> list = A07;
        String[] strArr = A05;
        if (strArr[4].length() == strArr[0].length()) {
            throw new RuntimeException();
        }
        A05[1] = "TV2BvPAOYvnRV0R5I88rwwfNZOOU8";
        return list;
    }

    public static void A04() {
        A04 = new byte[]{-93, -105, -40, -37, -37, -32, -21, -32, -26, -27, -40, -29, -64, -27, -35, -26, -105, -76, -105, -110, -122, -45, -53, -39, -39, -57, -51, -53, -122, -93, -122, 91, 79, -94, -92, -111, -93, -88, -97, -108, 114, -98, -109, -108, 79, 108, 79, 116, -66, -36, -23, -94, -17, -101, -25, -22, -30, -101, -65, -32, -35, -16, -30, -101, -64, -15, -32, -23, -17, -87, -101, -66, -22, -23, -17, -32, -13, -17, -101, -28, -18, -101, -23, -16, -25, -25, -87, 119, -93, -87, -94, -88, -103, -90, 110, 84, -79, -46, -49, -30, -44, -115, -48, -33, -50, -32, -43, -115, -49, -46, -48, -50, -30, -32, -46, -115, -36, -45, -115, -46, -29, -46, -37, -31, -115, -28, -42, -31, -43, -115, -32, -30, -49, -31, -26, -35, -46, -115, -86, -115, 108, -97, -118, -116, -116, -117, -116, -117, 71, -112, -107, 84, -108, -116, -108, -106, -103, -96, 71, -109, -106, -114, 71, -109, -112, -108, -112, -101, 72, 71, 115, -120, -102, -101, 71, -116, -99, -116, -107, -101, 97, 71, -108, -57, -78, -76, -65, -61, -72, -66, -67, 111, -109, -76, -79, -60, -74, 111, -108, -59, -76, -67, -61, 111, -58, -72, -61, -73, 111, -62, -60, -79, -61, -56, -65, -76, 111, -116, 111, -97, -46, -67, -65, -54, -50, -61, -55, -56, 122, -66, -49, -52, -61, -56, -63, 122, -58, -55, -63, -63, -61, -56, -63, 122, -66, -65, -68, -49, -63, 122, -65, -48, -65, -56, -50, -120, -27, Ascii.CAN, 3, 5, Ascii.DLE, Ascii.DC4, 9, Ascii.SI, Ascii.SO, -64, 19, 8, Ascii.SI, Ascii.NAK, Ascii.FF, 4, -64, Ascii.SO, Ascii.SI, Ascii.DC4, -64, 8, 1, Ascii.DLE, Ascii.DLE, 5, Ascii.SO, -64, 8, 5, Ascii.DC2, 5, -50, -101, -105, -106, -54, -71, -66, -70, -61, -72, -70, -93, -70, -55, -52, -60, -57, -64, -28, 9, 1, 10, -69, -33, 0, -3, Ascii.DLE, 2, -69, -32, 17, 0, 9, Ascii.SI, -69, Ascii.DC2, 4, Ascii.SI, 3, -69, Ascii.SO, Ascii.DLE, -3, Ascii.SI, Ascii.DC4, Ascii.VT, 0, -69, -40, -69, -53, -26, -26, -105, -28, -40, -27, -16, -105, -36, -19, -36, -27, -21, -22, -105, -26, -35, -105, -22, -20, -39, -21, -16, -25, -36, -105, -38, -26, -37, -36, -79, -105, -101, -99, -104, -99, -102, -83, -102, -104, -91, -88, -96, -96, -94, -89, -96, -21, -8, -3, -24, -19, -18, -3, -18, -20, -3, -14, -8, -9, -24, 0, -8, -24, -4, -14, -16, -9, -22, -11, -24, -19, -22, -3, -22, -24, -11, -8, -16, -16, -14, -9, -16, -62, -64, -62, -57, -60, -57, -56, -62, -49, -46, -54, -54, -52, -47, -54, -2, 4, -7, Ascii.VT, 0, -52, -37, -44, -44, -53, -46, -41, -34, -47, -51, -28, -49, -38, -41, -46, -49, -30, -41, -35, -36, 0, -9, 6, 9, 1, 4, -3};
    }

    public static void A05(C2755lA c2755lA, int i, int i2) {
        c2755lA.A08().ABz(A01(427, 10, 60), AbstractC2786lf.A2Z, new C2787lg(A01(338, 33, 80) + i, A01(87, 9, 13) + i2));
    }

    @Deprecated
    public static void A06(C2755lA c2755lA, String str, int i, C2787lg c2787lg) {
        if (c2755lA == null) {
            A0F(new RuntimeException(A01(48, 39, 84)));
            return;
        }
        AbstractC2754l9.A01(c2755lA.A02());
        if (A02 && c2787lg.A01() == 0) {
            A0D(new RuntimeException(A01(96, 44, 70) + str + A01(31, 16, 8) + i, c2787lg));
        }
        try {
            if (A0J(c2755lA, str, i, Math.random(), c2787lg)) {
                A09(c2755lA, str, i, c2787lg);
            }
        } catch (Throwable th) {
            A0F(th);
        }
    }

    @Deprecated
    public static void A07(C2755lA c2755lA, String str, int i, C2787lg c2787lg) {
        try {
            c2787lg.A05(2);
            c2787lg.A0A(false);
            c2787lg.A06(1);
            if (AbstractC2865mx.A0Q(c2755lA)) {
                c2787lg.A08(true);
            } else {
                c2787lg.A08(false);
            }
            A06(c2755lA, str, i, c2787lg);
        } catch (Throwable th) {
            A0F(th);
        }
    }

    @Deprecated
    public static void A08(C2755lA c2755lA, String str, int i, C2787lg c2787lg) {
        try {
            c2787lg.A05(2);
            c2787lg.A08(false);
            A06(c2755lA, str, i, c2787lg);
        } catch (Throwable th) {
            A0F(th);
        }
    }

    public static void A09(C2755lA c2755lA, String str, int i, C2787lg c2787lg) {
        synchronized (C2780lZ.class) {
            if (A03) {
                A0A(c2755lA, str, i, c2787lg, true);
            } else {
                int iA01 = AbstractC2865mx.A01(c2755lA);
                if (A09.getAndIncrement() < iA01 - 1) {
                    A07.add(new C2781la(str, i, c2787lg));
                } else if (A09.get() == iA01) {
                    A07.add(new C2781la(A01(427, 10, 60), AbstractC2786lf.A2W, new C2787lg(A01(140, 42, 0) + str + A01(47, 1, 19) + i)));
                }
            }
        }
    }

    public static void A0A(C2755lA c2755lA, String str, int i, C2787lg c2787lg, boolean z) throws Throwable {
        InterfaceC2779lY interfaceC2779lY = A0B.get();
        boolean z2 = interfaceC2779lY != null && interfaceC2779lY.ABQ();
        if (A08.get() || z2) {
            int iA01 = c2787lg.A01();
            String strA01 = A01(289, 17, 46);
            String strA02 = A01(31, 16, 8);
            if (iA01 == 0) {
                Log.e(strA01, A01(182, 37, 40) + str + strA02 + i, c2787lg);
            } else {
                Log.i(strA01, A01(306, 32, 116) + str + strA02 + i + A01(19, 12, 63) + c2787lg.getMessage() + A01(0, 19, 80) + c2787lg.A03());
            }
        }
        HZ hz = new HZ(c2755lA, str, i, c2787lg, interfaceC2779lY);
        if (z) {
            A01.execute(hz);
        } else {
            hz.run();
        }
    }

    public static void A0C(C1617Hh c1617Hh, InterfaceC2779lY interfaceC2779lY, InterfaceC2778lX interfaceC2778lX, boolean z) {
        A0A.set(interfaceC2778lX);
        A0B.set(interfaceC2779lY);
        A08.set(z);
        synchronized (C2780lZ.class) {
            if (!A03) {
                A03 = true;
                A01.execute(new C1610Ha(c1617Hh));
            }
        }
    }

    public static void A0D(RuntimeException runtimeException) {
        if (A02) {
            new Handler(Looper.getMainLooper()).post(new RunnableC2777lW(runtimeException));
        }
    }

    @Deprecated
    public static void A0E(Throwable th) {
        if (A02) {
            A0D(new RuntimeException(A01(256, 33, 121), th));
        }
    }

    public static void A0F(Throwable th) {
        Log.e(A01(289, 17, 46), A01(219, 37, 51), th);
        if (A02) {
            A0D(new RuntimeException(th));
        }
    }

    public static boolean A0H(C2755lA c2755lA) {
        Boolean bool = A0C.get();
        return (bool == null || !bool.booleanValue()) && AbstractC2865mx.A0A(c2755lA) != 0;
    }

    public static boolean A0I(C2755lA c2755lA) {
        Boolean bool = A0C.get();
        if (bool == null || !bool.booleanValue()) {
            return c2755lA.A09().A00() <= 1.0d / ((double) AbstractC2865mx.A0A(c2755lA));
        }
        return false;
    }

    public static boolean A0J(C2755lA c2755lA, String str, int i, double d, C2787lg c2787lg) {
        double d2;
        boolean z;
        try {
            int iA04 = AbstractC2865mx.A04(c2755lA);
            if (iA04 < 1) {
                return false;
            }
            HashMap<String, Integer> mapA0M = AbstractC2865mx.A0M(c2755lA);
            Set<String> setKeySet = mapA0M.keySet();
            String str2 = str + A01(47, 1, 19) + i;
            boolean zContains = setKeySet.contains(str2);
            if (zContains) {
                Integer num = mapA0M.get(str2);
                int iIntValue = num != null ? num.intValue() : -1;
                if (iIntValue == 0) {
                    return false;
                }
                if (iIntValue > 0) {
                    return d <= 1.0d / ((double) iIntValue);
                }
                int iA03 = AbstractC2865mx.A03(c2755lA);
                if (iA03 < 1) {
                    return false;
                }
                d2 = ((double) (iA04 * iA03)) / 10000.0d;
            } else {
                d2 = !c2787lg.A0B() ? FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE : ((double) iA04) / 100.0d;
            }
            double dA00 = c2755lA.A09().A00();
            if (A01(TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE, 5, 56).equals(str)) {
                if (c2755lA.A05().AB6()) {
                    return true;
                }
                int iA06 = AbstractC2865mx.A06(c2755lA);
                if (iA06 == 0) {
                    return false;
                }
                if (iA06 > 0) {
                    double d3 = 1.0d / ((double) iA06);
                    if (zContains) {
                        return dA00 <= d3 * d2;
                    }
                    return dA00 <= d3;
                }
            }
            if (A01(462, 7, kotlin.fh.h1).equals(str) && AbstractC2786lf.A20 == i) {
                int iA0E = A08.get() ? 1 : AbstractC2865mx.A0E(c2755lA);
                if (iA0E == 0) {
                    return false;
                }
                if (iA0E > 0) {
                    double d4 = 1.0d / ((double) iA0E);
                    if (zContains) {
                        return dA00 <= d4 * d2;
                    }
                    return dA00 <= d4;
                }
            }
            if (A01(437, 5, InterfaceC3669k1.d.b.k).equals(str)) {
                return true;
            }
            if (A01(442, 6, 63).equals(str)) {
                if ((!AbstractC2865mx.A0S(c2755lA) || !c2787lg.A0C()) && c2787lg.A00() != 1) {
                    if (c2787lg.A00() == 2) {
                        return false;
                    }
                    Boolean bool = A0C.get();
                    if (bool != null && bool.booleanValue()) {
                        return false;
                    }
                    int iA0A = AbstractC2865mx.A0A(c2755lA);
                    if (iA0A == 0) {
                        A0C.set(true);
                        return false;
                    }
                    if (iA0A > 0) {
                        double d5 = iA0A;
                        if (A05[7].charAt(14) == 'T') {
                            throw new RuntimeException();
                        }
                        A05[1] = "";
                        double d6 = 1.0d / d5;
                        if (zContains) {
                            return dA00 <= d6 * d2;
                        }
                        return dA00 <= d6;
                    }
                }
                if (zContains) {
                    return d >= 1.0d - d2;
                }
                if (A05[3].charAt(3) != 'Y') {
                    throw new RuntimeException();
                }
                String[] strArr = A05;
                strArr[4] = "KJjq974XMuOG6VE2UuXyW1KY5FJsZ9";
                strArr[0] = "oDF6i4FckldRw4UZ8099";
                return true;
            }
            if (!A01(448, 14, 71).equals(str)) {
                z = true;
            } else {
                if (c2755lA.A05().AB6()) {
                    return true;
                }
                z = true;
                int iA0B = AbstractC2865mx.A0B(c2755lA);
                if (iA0B == 0) {
                    return false;
                }
                if (iA0B > 0) {
                    double d7 = 1.0d / ((double) iA0B);
                    if (zContains) {
                        return dA00 <= d7 * d2;
                    }
                    return dA00 <= d7;
                }
            }
            if (d >= 1.0d - d2) {
                return z;
            }
            return false;
        } catch (Throwable th) {
            A0F(th);
            return false;
        }
    }

    public static boolean A0K(C2755lA c2755lA, String str, int i, C2787lg c2787lg) {
        if (!AbstractC2865mx.A0P(c2755lA)) {
            return true;
        }
        int i2 = A00.get(i);
        int iA00 = AbstractC2865mx.A00(c2755lA);
        if (c2787lg.A02() != -1) {
            iA00 = c2787lg.A02();
        } else {
            int iA01 = A00(str, i, c2755lA);
            if (iA00 < iA01) {
                iA00 = iA01;
            }
        }
        if (i2 < iA00) {
            A00.put(i, i2 + 1);
            return false;
        }
        if (A06.contains(Integer.valueOf(i2))) {
            boolean zA0D = c2787lg.A0D();
            if (A05[3].charAt(3) != 'Y') {
                throw new RuntimeException();
            }
            String[] strArr = A05;
            strArr[5] = "DtDXz8TrFQQZw1pkgy";
            strArr[2] = "wKGFu6BM2pQR03pr0dyvmA98nTz";
            if (zA0D) {
                A05(c2755lA, i, i2);
            }
        }
        A00.put(i, i2 + 1);
        return true;
    }
}
