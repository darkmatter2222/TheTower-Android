package com.facebook.ads.redexgen.X;

import com.google.common.primitives.SignedBytes;
import java.io.IOException;
import java.util.Arrays;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Rx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1875Rx implements U3 {
    public static byte[] A08;
    public static String[] A09 = {"Fuil6XcSvZoh5YEMbQexBfhaYnT", "aKI99LTRdQMjuQIS2y0YE3llhY5iAGor", "RvzI3qPdJuM0Xwf7WGfouIjGnaW1Fm8L", "J9tQuroy9SgA9qN5c5GTV3TEyVpbTCNY", "YKcNpXh8M7GbVkOJPQwPgzjg6nqLI4Dz", "KGrV31SYbiCORkSjiGtYy39LV2I", "84AjlOOCFCJr7F92ZY8I1M2ugPfxieP3", "dgJs6qMmh"};
    public U2 A00;
    public final LS A01;
    public final NX A02;
    public final C13927y A03;
    public final C2346eQ A04;
    public final Executor A05;
    public volatile AbstractRunnableFutureC1747Mn<Void, IOException> A06;
    public volatile boolean A07;

    static {
        A02();
    }

    public C1875Rx(C1933Ug c1933Ug, C1746Mm c1746Mm, Executor executor) {
        this.A05 = (Executor) AbstractC1722Ln.A01(executor);
        AbstractC1722Ln.A01(c1933Ug.A03);
        this.A02 = new NU().A06(c1933Ug.A03.A00).A08(c1933Ug.A03.A04).A02(4).A09();
        this.A03 = c1746Mm.A07();
        this.A04 = new C2346eQ(this.A03, this.A02, null, new InterfaceC2345eP() { // from class: com.facebook.ads.redexgen.X.Rz
            @Override // com.facebook.ads.redexgen.X.InterfaceC2345eP
            public final void AGe(long j, long j2, long j3) {
                this.A00.A03(j, j2, j3);
            }
        });
        this.A01 = c1746Mm.A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = bArrCopyOfRange[i4];
            if (A09[4].charAt(15) == 'I') {
                throw new RuntimeException();
            }
            A09[6] = "Slz5Tcujx1hXAiSUBd8t0Pptghtdi2To";
            bArrCopyOfRange[i4] = (byte) ((b ^ i3) ^ 1);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A08 = new byte[]{57, 60, 60, 72, 74, 87, 91, 93, 93, 92, 87, SignedBytes.MAX_POWER_OF_TWO, 72, 74, 83, SignedBytes.MAX_POWER_OF_TWO};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A03(long j, long j2, long j3) {
        if (this.A00 == null) {
            return;
        }
        this.A00.AGd(j, j2, (j == -1 || j == 0) ? -1.0f : (j2 * 100.0f) / j);
    }

    @Override // com.facebook.ads.redexgen.X.U3
    public final void A6c(U2 u2) throws InterruptedException, IOException {
        this.A00 = u2;
        if (0 != 0) {
            throw new NullPointerException(A01(0, 3, 89));
        }
        boolean z = false;
        while (!z) {
            try {
                if (this.A07) {
                    break;
                }
                this.A06 = new C1876Ry(this);
                if (0 != 0) {
                    throw new NullPointerException(A01(3, 7, 57));
                }
                this.A05.execute(this.A06);
                try {
                    this.A06.get();
                    z = true;
                } catch (ExecutionException e) {
                    Throwable th = (Throwable) AbstractC1722Ln.A01(e.getCause());
                    if (0 == 0) {
                        if (th instanceof IOException) {
                            throw ((IOException) th);
                        }
                        N1.A11(th);
                        throw null;
                    }
                }
            } catch (Throwable th2) {
                ((AbstractRunnableFutureC1747Mn) AbstractC1722Ln.A01(this.A06)).A02();
                if (0 == 0) {
                    throw th2;
                }
                throw new NullPointerException(A01(10, 6, 36));
            }
        }
        ((AbstractRunnableFutureC1747Mn) AbstractC1722Ln.A01(this.A06)).A02();
        if (0 != 0) {
            throw new NullPointerException(A01(10, 6, 36));
        }
    }

    @Override // com.facebook.ads.redexgen.X.U3
    public final void cancel() {
        this.A07 = true;
        AbstractRunnableFutureC1747Mn<Void, IOException> abstractRunnableFutureC1747Mn = this.A06;
        if (abstractRunnableFutureC1747Mn != null) {
            abstractRunnableFutureC1747Mn.cancel(true);
        }
    }

    @Override // com.facebook.ads.redexgen.X.U3
    public final void remove() {
        this.A03.A0E().AJl(this.A03.A0F().A5H(this.A02));
    }
}
