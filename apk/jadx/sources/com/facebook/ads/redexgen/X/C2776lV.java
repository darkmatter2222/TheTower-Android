package com.facebook.ads.redexgen.X;

import android.os.Process;
import android.text.TextUtils;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.lV, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2776lV implements Thread.UncaughtExceptionHandler {
    public static byte[] A04;
    public final C1617Hh A00;
    public final InterfaceC2783lc A01;
    public final Thread.UncaughtExceptionHandler A02;
    public final Map<String, String> A03;

    static {
        A01();
    }

    public C2776lV(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, C1617Hh c1617Hh, InterfaceC2775lU interfaceC2775lU) {
        this(uncaughtExceptionHandler, c1617Hh, interfaceC2775lU, AbstractC2784ld.A00());
    }

    public C2776lV(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, C1617Hh c1617Hh, InterfaceC2775lU interfaceC2775lU, InterfaceC2783lc interfaceC2783lc) {
        this.A02 = uncaughtExceptionHandler;
        if (c1617Hh == null) {
            throw new IllegalArgumentException(A00(2, 15, 82));
        }
        this.A00 = c1617Hh;
        this.A03 = interfaceC2775lU.A9k(c1617Hh);
        this.A01 = interfaceC2783lc;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 65);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{42, Ascii.FS, 94, 122, 96, 96, 122, 125, 116, 51, 80, 124, 125, 103, 118, 107, 103, Ascii.VT, 7, 5, 70, Ascii.SO, 9, Ascii.VT, Ascii.CR, 10, 7, 7, 3, 70, 9, Ascii.FF, Ascii.ESC, 71, 86, 69, 87, 76, Ascii.DC4, Ascii.DC2, 5, 19, Ascii.RS, Ascii.ETB, 2, 80, 86, 65, 87, 90, 83, 70, 124, SignedBytes.MAX_POWER_OF_TWO, 76, 71, 70};
    }

    public static void A02() {
        try {
            Process.killProcess(Process.myPid());
        } catch (Throwable unused) {
        }
        try {
            System.exit(10);
        } catch (Throwable unused2) {
        }
    }

    private void A03(Thread thread, Throwable th) {
        if (this.A02 != null) {
            this.A02.uncaughtException(thread, th);
        } else {
            A02();
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            String strA03 = AbstractC3068qK.A03(this.A00, th);
            if (!TextUtils.isEmpty(strA03) && strA03.contains(A00(17, 16, 41))) {
                Map<String, String> mapA02 = new C2774lT(strA03, this.A03).A02();
                mapA02.put(A00(38, 7, 38), A00(33, 5, 101));
                Throwable thA00 = AbstractRunnableC2966od.A00();
                String strA00 = A00(45, 12, 98);
                if (thA00 == th) {
                    mapA02.put(strA00, A00(1, 1, 108));
                } else {
                    mapA02.put(strA00, A00(0, 1, 91));
                }
                this.A01.AMR(new C2790lj(this.A00.A09().A01(), this.A00.A09().A02(), mapA02), this.A00);
                if (C2863mv.A2A(this.A00)) {
                    C2863mv.A0c(this.A00);
                }
            }
        } catch (Exception unused) {
        }
        A03(thread, th);
    }
}
