package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ex, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1556Ex extends AbstractRunnableC2979oq {
    public final WeakReference<C2199c2> A00;

    public C1556Ex(C2199c2 c2199c2) {
        this.A00 = new WeakReference<>(c2199c2);
    }

    public C1556Ex(WeakReference<C2199c2> weakReference) {
        this.A00 = weakReference;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() {
        C2199c2 c2199c2 = this.A00.get();
        if (c2199c2 != null) {
            c2199c2.A0U();
        }
    }
}
