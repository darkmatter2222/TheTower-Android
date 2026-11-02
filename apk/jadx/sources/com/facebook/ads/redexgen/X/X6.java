package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.facebook.ads.redexgen.X.X7;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.common.base.Ascii;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class X6<T extends X7> extends Handler implements Runnable {
    public static byte[] A0B;
    public static String[] A0C = {"BBKUisyXzhvUO55VIGD4jtjPB1nnzchc", "WPDO1Zodp6MEGTCx8kNrs49f", "HmLjjzasNjjtQc5EQHMVXrqj3dGPxOzo", "ab2ep9frCMUoZJYCr2b17C9lNcStPa7s", "IL5kivsLTos5o95Afdj7ogQ", "OrtIg2gTUbcJI9VnhkSxYICgFjhL8Woa", "WpIt9F80DUA4cbBfskhz5JbxPBEJeJcZ", "4XkZCoLSAzPOPqGq7SqAgold1QPRArHQ"};
    public boolean A00;
    public int A01;
    public X4<T> A02;
    public IOException A03;
    public Thread A04;
    public boolean A05;
    public final int A06;
    public final long A07;
    public final T A08;
    public volatile boolean A09;
    public final /* synthetic */ C1837Ql A0A;

    static {
        A04();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public X6(C1837Ql c1837Ql, Looper looper, T t, X4<T> x4, int i, long j) {
        super(looper);
        this.A0A = c1837Ql;
        this.A08 = t;
        this.A02 = x4;
        this.A06 = i;
        this.A07 = j;
    }

    @MetaExoPlayerCustomization
    private long A00() {
        return AbstractC2020Xx.A00(this.A01, 0);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 50);
        }
        return new String(bArrCopyOfRange);
    }

    @MetaExoPlayerCustomization
    private void A02() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.A02.AFl(this.A08, jElapsedRealtime, jElapsedRealtime - this.A07, this.A01);
        this.A03 = null;
        this.A0A.A02.execute((Runnable) AbstractC1722Ln.A01(this.A0A.A00));
    }

    private void A03() {
        this.A0A.A00 = null;
    }

    public static void A04() {
        A0B = new byte[]{-128, -93, -107, -104, -120, -107, -89, -97, -28, 10, 9, -28, -5, -30, -6, 2, 4, 7, Ascii.SO, -75, -6, 7, 7, 4, 7, -75, 1, 4, -10, -7, -2, 3, -4, -75, 8, 9, 7, -6, -10, 2, -61, -36, -45, -26, -34, -45, -47, -30, -45, -46, -114, -45, -32, -32, -35, -32, -114, -38, -35, -49, -46, -41, -36, -43, -114, -31, -30, -32, -45, -49, -37, -29, -4, -13, 6, -2, -13, -15, 2, -13, -14, -82, -13, 6, -15, -13, -2, 2, -9, -3, -4, -82, -10, -17, -4, -14, -6, -9, -4, -11, -82, -6, -3, -17, -14, -82, -15, -3, -5, -2, -6, -13, 2, -13, -14, -69, -44, -53, -34, -42, -53, -55, -38, -53, -54, -122, -53, -34, -55, -53, -42, -38, -49, -43, -44, -122, -46, -43, -57, -54, -49, -44, -51, -122, -39, -38, -40, -53, -57, -45, -5, -2, -16, -13, -55};
    }

    public final void A05(int i) throws IOException {
        if (this.A03 != null && this.A01 > i) {
            throw this.A03;
        }
    }

    public final void A06(long j) {
        AbstractC1722Ln.A08(this.A0A.A00 == null);
        this.A0A.A00 = this;
        if (j > 0) {
            sendEmptyMessageDelayed(0, j);
        } else {
            A02();
        }
    }

    public final void A07(boolean z) {
        this.A09 = z;
        this.A03 = null;
        if (hasMessages(0)) {
            this.A05 = true;
            removeMessages(0);
            if (!z) {
                sendEmptyMessage(1);
            }
        } else {
            synchronized (this) {
                this.A05 = true;
                this.A08.A5N();
                Thread thread = this.A04;
                if (thread != null) {
                    thread.interrupt();
                }
            }
        }
        if (z) {
            A03();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            ((X4) AbstractC1722Ln.A01(this.A02)).AFf(this.A08, jElapsedRealtime, jElapsedRealtime - this.A07, true);
            this.A02 = null;
        }
    }

    @Override // android.os.Handler
    @MetaExoPlayerCustomization
    public final void handleMessage(Message message) throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            if (this.A09) {
                return;
            }
            if (message.what == 0) {
                A02();
                this.A00 = false;
                return;
            }
            if (message.what == 3) {
                throw ((Error) message.obj);
            }
            A03();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j = jElapsedRealtime - this.A07;
            X4 x4 = (X4) AbstractC1722Ln.A01(this.A02);
            if (this.A05) {
                x4.AFf(this.A08, jElapsedRealtime, j, false);
                return;
            }
            switch (message.what) {
                case 1:
                    try {
                        x4.AFh(this.A08, jElapsedRealtime, j);
                        return;
                    } catch (RuntimeException e) {
                        MV.A08(A01(0, 8, 2), A01(71, 44, 92), e);
                        this.A0A.A01 = new XB(e);
                        return;
                    }
                case 2:
                    this.A03 = (IOException) message.obj;
                    this.A01++;
                    X5 x5AFi = x4.AFi(this.A08, jElapsedRealtime, j, this.A03, this.A01);
                    if (x5AFi.A00 == 3) {
                        this.A0A.A01 = this.A03;
                        return;
                    }
                    if (x5AFi.A00 != 2) {
                        int i = x5AFi.A00;
                        if (A0C[0].charAt(0) != 'B') {
                            throw new RuntimeException();
                        }
                        A0C[3] = "pGixaBcHRYsS2LogDdpQsFMu53vEjFXJ";
                        if (i == 1) {
                            this.A01 = 1;
                        }
                        this.A00 = true;
                        A06(x5AFi.A01 != -9223372036854775807L ? x5AFi.A01 : A00());
                        return;
                    }
                    return;
                default:
                    return;
            }
            AbstractC2971oi.A00(th, this);
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        boolean z;
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            try {
                try {
                    try {
                        synchronized (this) {
                            z = !this.A05;
                            this.A04 = Thread.currentThread();
                        }
                        if (z) {
                            AbstractC1753Mt.A02(A01(150, 5, 93) + this.A08.getClass().getSimpleName());
                            try {
                                this.A08.ABZ();
                                AbstractC1753Mt.A00();
                            } catch (Throwable th) {
                                AbstractC1753Mt.A00();
                                throw th;
                            }
                        }
                        synchronized (this) {
                            this.A04 = null;
                            Thread.interrupted();
                        }
                        if (this.A09) {
                            return;
                        }
                        sendEmptyMessage(1);
                    } catch (Throwable th2) {
                        AbstractC2971oi.A00(th2, this);
                    }
                } catch (Error e) {
                    if (!this.A09) {
                        MV.A08(A01(0, 8, 2), A01(40, 31, 60), e);
                        obtainMessage(3, e).sendToTarget();
                    }
                    throw e;
                }
            } catch (Exception e2) {
                if (this.A09) {
                    return;
                }
                MV.A08(A01(0, 8, 2), A01(115, 35, 52), e2);
                obtainMessage(2, new XB(e2)).sendToTarget();
            }
        } catch (IOException e3) {
            if (this.A09) {
                return;
            }
            obtainMessage(2, e3).sendToTarget();
        } catch (OutOfMemoryError e4) {
            if (this.A09) {
                return;
            }
            MV.A08(A01(0, 8, 2), A01(8, 32, 99), e4);
            obtainMessage(2, new XB(e4)).sendToTarget();
        }
    }
}
