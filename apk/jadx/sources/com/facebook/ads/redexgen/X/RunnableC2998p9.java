package com.facebook.ads.redexgen.X;

import com.ironsource.InterfaceC3669k1;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.p9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC2998p9 implements Runnable {
    public static byte[] A01;
    public final /* synthetic */ C1618Hi A00;

    static {
        A01();
    }

    public RunnableC2998p9(C1618Hi c1618Hi) {
        this.A00 = c1618Hi;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 118);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{97, 122, 125, 98, 97, 99, 104, 99, 116, 111, 101};
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            C2787lg c2787lg = new C2787lg(A00(0, 4, 88));
            c2787lg.A05(1);
            c2787lg.A06(1);
            c2787lg.A0A(false);
            this.A00.A08().AC0(A00(4, 7, InterfaceC3669k1.d.b.j), AbstractC2786lf.A1Y, c2787lg);
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
