package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.facebook.ads.androidx.media3.exoplayer.video.DummySurface;
import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class XU extends HandlerThread implements Handler.Callback {
    public static byte[] A05;
    public Handler A00;
    public M5 A01;
    public DummySurface A02;
    public Error A03;
    public RuntimeException A04;

    static {
        A02();
    }

    public XU() {
        super(A00(77, 12, 34));
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 99);
        }
        return new String(bArrCopyOfRange);
    }

    private void A01() {
        AbstractC1722Ln.A01(this.A01);
        this.A01.A08();
    }

    public static void A02() {
        A05 = new byte[]{6, 55, 47, 47, 59, 17, 55, 48, 36, 35, 33, 39, 34, 5, Ascii.CR, 8, 1, 0, 68, Ascii.DLE, Ascii.VT, 68, Ascii.CR, 10, Ascii.CR, Ascii.DLE, Ascii.CR, 5, 8, Ascii.CR, Ascii.RS, 1, 68, 0, 17, 9, 9, Ascii.GS, 68, Ascii.ETB, 17, Ascii.SYN, 2, 5, 7, 1, 100, 67, 75, 78, 71, 70, 2, 86, 77, 2, 80, 71, 78, 71, 67, 81, 71, 2, 70, 87, 79, 79, 91, 2, 81, 87, 80, 68, 67, 65, 71, 37, 52, 44, 44, 56, Ascii.DC2, 52, 51, 39, 32, 34, 36};
    }

    private void A03(int i) {
        AbstractC1722Ln.A01(this.A01);
        this.A01.A09(i);
        this.A02 = new DummySurface(this, this.A01.A07(), i != 0);
    }

    public final DummySurface A04(int i) {
        start();
        this.A00 = new Handler(getLooper(), this);
        this.A01 = new M5(this.A00);
        boolean z = false;
        synchronized (this) {
            this.A00.obtainMessage(1, i, 0).sendToTarget();
            while (this.A02 == null && this.A04 == null && this.A03 == null) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                    z = true;
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        if (this.A04 != null) {
            throw this.A04;
        }
        if (this.A03 == null) {
            return (DummySurface) AbstractC1722Ln.A01(this.A02);
        }
        throw this.A03;
    }

    public final void A05() {
        AbstractC1722Ln.A01(this.A00);
        this.A00.sendEmptyMessage(2);
    }

    /* JADX WARN: Code duplicated, block: B:47:0x007d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        try {
            switch (message.what) {
                case 1:
                    try {
                        A03(message.arg1);
                        synchronized (this) {
                            notify();
                            break;
                        }
                    } catch (Error e) {
                        MV.A08(A00(0, 12, 33), A00(12, 34, 7), e);
                        this.A03 = e;
                        synchronized (this) {
                            notify();
                        }
                    } catch (RuntimeException e2) {
                        MV.A08(A00(0, 12, 33), A00(12, 34, 7), e2);
                        this.A04 = e2;
                        synchronized (this) {
                            notify();
                            break;
                        }
                    }
                    return true;
                case 2:
                    try {
                        A01();
                        break;
                    } catch (Throwable th) {
                        try {
                            MV.A08(A00(0, 12, 33), A00(46, 31, 65), th);
                        } finally {
                            quit();
                        }
                        break;
                    }
                    return true;
                default:
                    return true;
            }
        } catch (Throwable th2) {
            synchronized (this) {
                notify();
                throw th2;
            }
        }
        synchronized (this) {
            notify();
            throw th2;
        }
    }
}
