package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.Locale;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.qf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class ThreadFactoryC3089qf implements ThreadFactory {
    public static byte[] A02;
    public final AtomicLong A01 = new AtomicLong();
    public int A00 = Thread.currentThread().getPriority();

    static {
        A02();
    }

    private final String A00() {
        return String.format(Locale.US, A01(0, 35, 90), Long.valueOf(this.A01.incrementAndGet()), Long.valueOf(System.currentTimeMillis()));
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 103);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{94, 82, 80, 19, 91, 92, 94, 88, 95, 82, 82, 86, 19, 92, 89, 78, Ascii.GS, 73, 85, 79, 88, 92, 89, Ascii.DLE, Ascii.CAN, 89, Ascii.GS, Ascii.CAN, 73, 123, Ascii.GS, Ascii.CAN, 1, 73, 105, 50, 46, 52, 35, 39, 34, 53, Ascii.EM, 37, 41, 51, 40, 50, 35, 52, Ascii.EM, 53, 34, 45, Ascii.EM, 32, 39, 37, 50, 41, 52, 63};
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        AbstractC2792ll.A00(A01(35, 27, 33));
        Thread thread = new Thread(null, runnable, A00(), 0L);
        thread.setPriority(this.A00);
        return thread;
    }
}
