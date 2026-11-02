package com.facebook.ads.redexgen.X;

import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.gJ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2462gJ {

    @Nullable
    public static HandlerC2461gI A00;
    public static final AtomicBoolean A01 = new AtomicBoolean();

    public static HandlerC2461gI A00(C1617Hh c1617Hh) {
        if (A00 == null) {
            A00 = new HandlerC2461gI(c1617Hh);
        }
        return A00;
    }

    public static void A01(C1617Hh c1617Hh) {
        if (AbstractC2866my.A0M(c1617Hh)) {
            A03(c1617Hh);
        }
    }

    public static void A02(C1617Hh c1617Hh) {
        if (AbstractC2866my.A0L(c1617Hh)) {
            A03(c1617Hh);
        }
    }

    public static void A03(C1617Hh c1617Hh) {
        if (A01.compareAndSet(false, true)) {
            ExecutorC3079qV.A01.execute(new C1665Je(c1617Hh));
        }
    }
}
