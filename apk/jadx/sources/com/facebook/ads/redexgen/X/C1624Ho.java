package com.facebook.ads.redexgen.X;

import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ho, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1624Ho extends AbstractRunnableC2979oq {
    public static byte[] A02;
    public final /* synthetic */ C1623Hn A00;
    public final /* synthetic */ AtomicBoolean A01;

    static {
        A01();
    }

    public C1624Ho(C1623Hn c1623Hn, AtomicBoolean atomicBoolean) {
        this.A00 = c1623Hn;
        this.A01 = atomicBoolean;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 31);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{117, 87, 85, 94, 83, Ascii.SYN, 80, 87, 95, 90, Ascii.CAN, 77, 111, 109, 102, 107, 46, 125, 123, 109, 109, 107, 125, 125, 32};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() {
        if (this.A00.A00 != null) {
            if (this.A01.get()) {
                this.A00.A02.A0I(EnumC2891nN.A0H);
                C2749l2.A02(this.A00.A02.A04, this.A00.A01, C2749l2.A00, A00(11, 14, 17), this.A00.A02.A00);
                this.A00.A02.A0U();
                this.A00.A00.AEU();
                return;
            }
            this.A00.A02.A0I(EnumC2891nN.A0G);
            C2749l2.A02(this.A00.A02.A04, this.A00.A01, C2749l2.A04, A00(0, 11, 41), this.A00.A02.A00);
            this.A00.A02.A0V();
            this.A00.A00.AEJ();
        }
    }
}
