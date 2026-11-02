package com.facebook.ads.redexgen.X;

import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import com.facebook.ads.internal.api.BuildConfigApi;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.jO, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2648jO extends Thread {
    public static byte[] A07;
    public static String[] A08 = {"22scehDHoaCOvZMprlsBZA8XDImDmfKB", "weKghC0VptQmI5ngiGaEXX", "Hf9H6", "FJiPG4ANJnN6", "MZm2fX9OE1lWAQp9g7i9e16yKVjr6LaO", "qv5p39sFFmKE2Upe5HhwzyNbLjT31UC6", "BSHanWyHkNGNXcGKwO9o06mFf", "6OihQTIk4xH7HyNYKpu4LMiaEL1fh7ec"};
    public static final String A09;
    public final int A00;
    public final Handler A01;
    public final C2650jQ A02;
    public final C1618Hi A03;
    public final Runnable A04;
    public volatile long A05;
    public volatile boolean A06;

    static {
        A02();
        A09 = C2648jO.class.getName();
    }

    public C2648jO(C1618Hi c1618Hi, C2650jQ c2650jQ) {
        this(c1618Hi, c2650jQ, C2863mv.A06(c1618Hi));
    }

    public C2648jO(C1618Hi c1618Hi, C2650jQ c2650jQ, int i) {
        this.A01 = new Handler(Looper.getMainLooper());
        this.A04 = new RunnableC2647jN(this);
        this.A05 = 0L;
        this.A06 = false;
        setName(A01(0, 15, 83));
        this.A00 = i;
        this.A03 = c1618Hi;
        this.A02 = c2650jQ;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 116);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A07 = new byte[]{97, 101, 10, 102, 105, 117, 10, 99, 66, 83, 66, 68, 83, 72, 85, 103, 101, 110, 101, 114, 105, 99};
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            long j = this.A00;
            while (!isInterrupted()) {
                long j2 = this.A05;
                String[] strArr = A08;
                if (strArr[1].length() == strArr[2].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A08;
                strArr2[3] = "QDJRY7exkP3l";
                strArr2[6] = "zyOVtGNErBmKt3HrtbWcAlOC0";
                boolean z = j2 == 0;
                this.A05 = j;
                if (z) {
                    this.A01.post(this.A04);
                }
                try {
                    Thread.sleep(j);
                    if (this.A05 != 0 && !this.A06 && !Debug.isDebuggerConnected()) {
                        String strA03 = this.A02.A03();
                        if (strA03 != null) {
                            this.A03.A08().ABz(A01(15, 7, 116), AbstractC2786lf.A1D, new C2787lg(this.A02.A04(strA03)));
                        }
                        this.A06 = true;
                    }
                } catch (InterruptedException unused) {
                    BuildConfigApi.isDebug();
                    return;
                }
            }
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
