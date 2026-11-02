package com.facebook.ads.redexgen.X;

import android.content.SharedPreferences;
import android.os.SystemClock;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.mM, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2828mM {
    public static String A00;
    public static byte[] A01;
    public static String[] A02 = {"Qr1EFu0kx1tI01867m6ODqfSZ9SwtWDI", "3TYgkAWbIjP9kMvunjr7VwfmqgOZ7ZQ4", "kyx9q1x7DLL5BxK3faNs604Sw4dxbCMr", "cJW9lkVABx2P1Kp63XktrUnlRFV2zQAL", "nhxLXaLaMxGTsXNVJcvnwyCHZZV2RS3H", "y9xLyKazRl3zNBUnfIZmAOMjGK0AXhl4", "DTEqb4TbXnNBCaxA5atVnYK0pSb9DMUi", "fZvghiN"};
    public static final AtomicReference<String> A03;
    public static final AtomicBoolean A04;

    static {
        A07();
        A00 = A00(80, 7, 82);
        A04 = new AtomicBoolean();
        A03 = new AtomicReference<>();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 19);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A01(C2755lA c2755lA) {
        return WebSettings.getDefaultUserAgent(c2755lA);
    }

    public static String A02(C2755lA c2755lA) {
        FutureTask futureTask = new FutureTask(new CallableC2827mL(c2755lA));
        for (int i = 0; i < 3; i++) {
            ExecutorC3079qV.A00(futureTask);
            try {
                return (String) futureTask.get();
            } catch (Throwable th) {
                A08(c2755lA, th);
                SystemClock.sleep(500L);
            }
        }
        return null;
    }

    public static String A03(C2755lA c2755lA, C2797lq c2797lq) {
        String strA07 = c2797lq.A07();
        if (TextUtils.isEmpty(strA07)) {
            boolean andSet = A04.getAndSet(true);
            String[] strArr = A02;
            if (strArr[4].charAt(26) != strArr[3].charAt(26)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[1] = "SlGltdwaGCQXXY2U2bjZ1NfeES9SOW6r";
            strArr2[0] = "AnJMWH4pc3dV3Xqon1tLsffrk7nZCcYt";
            if (!andSet) {
                c2755lA.A08().ABz(A00(116, 7, 65), AbstractC2786lf.A1Z, new C2787lg(A00(73, 7, 29)));
            }
        }
        return strA07;
    }

    public static String A04(C2755lA c2755lA, boolean z) {
        if (c2755lA == null) {
            return A00;
        }
        if (z) {
            return System.getProperty(A00(123, 10, 74));
        }
        String str = A03.get();
        if (str != null) {
            return str;
        }
        long jA01 = AbstractC2861mt.A01(c2755lA);
        String strA00 = A00(143, 23, 90);
        String strA01 = A00(133, 10, 64);
        String strA02 = A00(88, 28, 104);
        if (jA01 > 0) {
            SharedPreferences sharedPreferences = c2755lA.getSharedPreferences(ProcessUtils.getProcessSpecificName(strA02, c2755lA), 0);
            String string = sharedPreferences.getString(strA01, null);
            long j = sharedPreferences.getLong(strA00, 0L);
            if (!TextUtils.isEmpty(string) && System.currentTimeMillis() - j < jA01) {
                A03.set(string);
                return string;
            }
        }
        String strA03 = null;
        try {
            strA03 = A01(c2755lA);
            A03.set(strA03);
        } catch (Throwable th) {
            A08(c2755lA, th);
        }
        if (strA03 == null) {
            strA03 = A02(c2755lA);
        }
        if (strA03 == null) {
            return A00;
        }
        String[] strArr = A02;
        if (strArr[4].charAt(26) != strArr[3].charAt(26)) {
            throw new RuntimeException();
        }
        A02[7] = "Kvz6zSF";
        if (jA01 > 0) {
            SharedPreferences sharedPreferences2 = c2755lA.getSharedPreferences(ProcessUtils.getProcessSpecificName(strA02, c2755lA), 0);
            sharedPreferences2.edit().putString(strA01, A03.get()).apply();
            sharedPreferences2.edit().putLong(strA00, System.currentTimeMillis()).apply();
        }
        return strA03;
    }

    public static String A05(C2797lq c2797lq, C2755lA c2755lA) {
        return AbstractC2861mt.A04(c2755lA) ? A00(63, 5, 117) + A03(c2755lA, c2797lq) + A00(39, 6, 127) + c2797lq.A06() + A00(45, 6, 121) + c2797lq.A04() + A00(38, 1, 111) : A00(0, 0, 40);
    }

    public static String A06(C2797lq c2797lq, C2755lA c2755lA, boolean z) {
        return A04(c2755lA, z) + A00(0, 38, 127) + c2755lA.A05().AA5() + A00(57, 6, 54) + C2797lq.A04 + A00(38, 1, 111) + A05(c2797lq, c2755lA) + A00(68, 5, 69) + c2755lA.A05().AA6() + A00(51, 6, 77) + Locale.getDefault().toString() + A00(87, 1, 79);
    }

    public static void A07() {
        A01 = new byte[]{76, 55, 42, 46, 45, 34, 67, 45, Ascii.EM, 8, 5, 9, 2, Ascii.SI, 9, 34, 9, Ascii.CAN, Ascii.ESC, 3, Ascii.RS, 7, 42, 3, Ascii.RS, 45, 2, 8, Ascii.RS, 3, 5, 8, 87, 42, 46, 63, 34, 67, 71, 87, 42, 46, 45, 58, 67, 81, 44, 40, 40, 60, 69, 101, Ascii.CAN, Ascii.FS, Ascii.DC2, Ascii.GS, 113, Ascii.RS, 99, 103, 118, 115, 10, 32, 36, 39, 36, 73, Ascii.DLE, Ascii.DC4, 0, 5, 121, 94, 71, 81, SignedBytes.MAX_POWER_OF_TWO, 91, 66, 66, Ascii.DC4, 47, 42, 47, 46, 54, 47, 1, Ascii.CAN, Ascii.DC4, Ascii.SYN, 85, Ascii.GS, Ascii.SUB, Ascii.CAN, Ascii.RS, Ascii.EM, Ascii.DC4, Ascii.DC4, Ascii.DLE, 85, Ascii.SUB, Ascii.US, 8, 85, Ascii.DC2, Ascii.NAK, Ascii.SI, Ascii.RS, 9, Ascii.NAK, Ascii.SUB, Ascii.ETB, 85, Ascii.SO, Ascii.SUB, 53, 55, 60, 55, 32, 59, 49, 49, 45, 45, 41, 119, 56, 62, 60, 55, 45, 38, 32, 54, 33, Ascii.FF, 50, 52, 54, Base64.padSymbol, 39, 60, 58, 44, 59, Ascii.SYN, 40, 46, 44, 39, Base64.padSymbol, Ascii.SYN, 37, 40, 58, Base64.padSymbol, Ascii.SYN, 59, 44, 47, 59, 44, 58, 33, 48, 34, 37, Ascii.CAN, 49, 46, 34, 48};
    }

    public static void A08(C2755lA c2755lA, Throwable th) {
        c2755lA.A08().ABz(A00(166, 8, 84), AbstractC2786lf.A2i, new C2787lg(th));
    }
}
