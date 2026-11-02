package com.facebook.ads.redexgen.X;

import android.animation.ObjectAnimator;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3291tv implements Runnable {
    public static byte[] A01;
    public final /* synthetic */ C13576p A00;

    static {
        A01();
    }

    public RunnableC3291tv(C13576p c13576p) {
        this.A00 = c13576p;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 67);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-60, -49, -45, -53, -60};
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        String strA00 = A00(0, 5, 32);
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.A0V.A0F().AM2();
            ObjectAnimator.ofFloat(this.A00.A0R, strA00, 1.0f, 0.0f).setDuration(100L).start();
            ObjectAnimator.ofFloat(this.A00.A0Q, strA00, 1.0f, 0.0f).setDuration(100L).start();
            ObjectAnimator duration = ObjectAnimator.ofFloat(((AbstractC3284to) this.A00).A09, strA00, 1.0f, 0.0f).setDuration(100L);
            duration.addListener(new C3290tu(this));
            duration.start();
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
