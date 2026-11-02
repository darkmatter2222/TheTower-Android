package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rC, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3122rC implements Runnable {
    public static byte[] A01;
    public final /* synthetic */ AnonymousClass78 A00;

    static {
        A01();
    }

    public RunnableC3122rC(AnonymousClass78 anonymousClass78) {
        this.A00 = anonymousClass78;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 54);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{62, 56, 46, 57, Ascii.DC4, 41, 62, 45, 45, 46, 57, 46, 47, Ascii.DC4, 40, 39, 34, 40, 32, Ascii.DC4, 42, 45, 63, 46, 57, Ascii.DC4, 47, 46, 39, 42, 50};
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.A0K(A00(0, 31, 125));
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
