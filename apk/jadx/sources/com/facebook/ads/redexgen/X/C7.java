package com.facebook.ads.redexgen.X;

import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C7 implements InterfaceC3277th {
    public final WeakReference<AbstractC13235h> A00;

    public C7(AbstractC13235h abstractC13235h) {
        this.A00 = new WeakReference<>(abstractC13235h);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3277th
    public final void AFA(C3276tg c3276tg) {
        AbstractC13235h abstractC13235h = this.A00.get();
        if (abstractC13235h != null) {
            abstractC13235h.A1r();
        }
    }
}
