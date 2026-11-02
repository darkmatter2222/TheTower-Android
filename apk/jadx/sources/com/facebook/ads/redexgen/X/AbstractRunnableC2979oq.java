package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.oq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractRunnableC2979oq implements Runnable {
    public static byte[] A01;
    public static final AtomicBoolean A02;
    public static final AtomicBoolean A03;
    public static final AtomicReference<InterfaceC2969og> A04;
    public final C2967oe A00;

    static {
        A03();
        A02 = new AtomicBoolean();
        A03 = new AtomicBoolean(false);
        A04 = new AtomicReference<>();
    }

    public AbstractRunnableC2979oq() {
        if (A03.get()) {
            this.A00 = C2984ov.A01(new C2983ou(A02(0, 26, 90) + Thread.currentThread().getName()));
        } else {
            this.A00 = null;
        }
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 116);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A01 = new byte[]{124, 91, SignedBytes.MAX_POWER_OF_TWO, SignedBytes.MAX_POWER_OF_TWO, 79, 76, 66, 75, Ascii.SO, 77, 92, 75, 79, 90, 75, 74, 0, Ascii.SO, 122, 70, 92, 75, 79, 74, Ascii.DC4, Ascii.SO};
    }

    public static void A04(boolean z) {
        A03.set(z);
    }

    public static void A05(boolean z, InterfaceC2969og interfaceC2969og) {
        A02.set(z);
        A04.set(interfaceC2969og);
    }

    public final C2967oe A06() {
        return this.A00;
    }

    public abstract void A07();

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            if (A03.get()) {
                C2984ov.A03(this);
            }
            try {
                A07();
            } catch (Throwable th) {
                if (!A02.get()) {
                    throw th;
                }
                AbstractC2986ox.A00().ABf(3301, th);
                InterfaceC2969og interfaceC2969og = A04.get();
                if (interfaceC2969og != null) {
                    interfaceC2969og.AJr(th, this);
                }
            }
            if (A03.get()) {
                C2984ov.A04(this);
            }
        } catch (Throwable th2) {
            AbstractC2971oi.A00(th2, this);
        }
    }
}
