package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.exoplayer.offline.DownloadRequest;
import java.io.IOException;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class S0 extends Thread implements U2 {
    public long A00;
    public Exception A01;
    public final int A02;
    public final C1922Ts A03;
    public final DownloadRequest A04;
    public final U3 A05;
    public final boolean A06;
    public volatile HandlerC1918To A07;
    public volatile boolean A08;

    public S0(DownloadRequest downloadRequest, U3 u3, C1922Ts c1922Ts, boolean z, int i, HandlerC1918To handlerC1918To) {
        this.A04 = downloadRequest;
        this.A05 = u3;
        this.A03 = c1922Ts;
        this.A06 = z;
        this.A02 = i;
        this.A07 = handlerC1918To;
        this.A00 = -1L;
    }

    public static int A00(int i) {
        return Math.min((i - 1) * 1000, 5000);
    }

    public final void A05(boolean z) {
        if (z) {
            this.A07 = null;
        }
        if (this.A08) {
            return;
        }
        this.A08 = true;
        this.A05.cancel();
        interrupt();
    }

    @Override // com.facebook.ads.redexgen.X.U2
    public final void AGd(long j, long j2, float f) {
        this.A03.A01 = j2;
        this.A03.A00 = f;
        if (j != this.A00) {
            this.A00 = j;
            HandlerC1918To handlerC1918To = this.A07;
            if (handlerC1918To != null) {
                handlerC1918To.obtainMessage(10, (int) (j >> 32), (int) j, this).sendToTarget();
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            try {
                if (this.A06) {
                    this.A05.remove();
                } else {
                    int i = 0;
                    long j = -1;
                    while (!this.A08) {
                        try {
                            this.A05.A6c(this);
                            break;
                        } catch (IOException e) {
                            if (!this.A08) {
                                long j2 = this.A03.A01;
                                if (j2 != j) {
                                    j = j2;
                                    i = 0;
                                }
                                i++;
                                if (i > this.A02) {
                                    throw e;
                                }
                                Thread.sleep(A00(i));
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                AbstractC2971oi.A00(th, this);
                return;
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        } catch (Exception e2) {
            this.A01 = e2;
        }
        HandlerC1918To handlerC1918To = this.A07;
        if (handlerC1918To != null) {
            handlerC1918To.obtainMessage(9, this).sendToTarget();
        }
    }
}
