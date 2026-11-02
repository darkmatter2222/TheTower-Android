package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.lang.reflect.Constructor;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Yr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2039Yr {
    public static byte[] A02;
    public final InterfaceC2038Yq A00;
    public final AtomicBoolean A01 = new AtomicBoolean(false);

    static {
        A02();
    }

    public C2039Yr(InterfaceC2038Yq interfaceC2038Yq) {
        this.A00 = interfaceC2038Yq;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 54);
        }
        return new String(bArrCopyOfRange);
    }

    private Constructor<? extends InterfaceC2043Yv> A01() {
        synchronized (this.A01) {
            if (this.A01.get()) {
                return null;
            }
            try {
                return this.A00.A82();
            } catch (ClassNotFoundException unused) {
                this.A01.set(true);
                return null;
            } catch (Exception e) {
                throw new RuntimeException(A00(0, 29, 86), e);
            }
        }
    }

    public static void A02() {
        A02 = new byte[]{37, Ascii.DC2, Ascii.DC2, Ascii.SI, Ascii.DC2, SignedBytes.MAX_POWER_OF_TWO, 9, Ascii.SO, 19, Ascii.DC4, 1, Ascii.SO, Ascii.DC4, 9, 1, Ascii.DC4, 9, Ascii.SO, 7, SignedBytes.MAX_POWER_OF_TWO, 5, Ascii.CAN, Ascii.DC4, 5, Ascii.SO, 19, 9, Ascii.SI, Ascii.SO, 38, Ascii.GS, Ascii.SYN, Ascii.VT, 3, Ascii.SYN, Ascii.DLE, 7, Ascii.SYN, Ascii.ETB, 83, Ascii.SYN, 1, 1, Ascii.FS, 1, 83, Ascii.DLE, 1, Ascii.SYN, Ascii.DC2, 7, Ascii.SUB, Ascii.GS, Ascii.DC4, 83, Ascii.SYN, Ascii.VT, 7, 1, Ascii.DC2, Ascii.DLE, 7, Ascii.FS, 1};
    }

    public final InterfaceC2043Yv A03(Object... objArr) {
        Constructor<? extends InterfaceC2043Yv> constructorA01 = A01();
        if (constructorA01 == null) {
            return null;
        }
        try {
            return constructorA01.newInstance(objArr);
        } catch (Exception e) {
            throw new IllegalStateException(A00(29, 35, 69), e);
        }
    }
}
