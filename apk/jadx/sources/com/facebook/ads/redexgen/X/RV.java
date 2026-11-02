package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class RV implements InterfaceC2166bV {
    public final long A00;
    public final AbstractC14149l<C1911Th> A01;

    public RV(long j, AbstractC14149l<C1911Th> abstractC14149l) {
        this.A00 = j;
        this.A01 = abstractC14149l;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2166bV
    public final List<C1911Th> A88(long j) {
        return j >= this.A00 ? this.A01 : Collections.emptyList();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2166bV
    public final long A8e(int i) {
        AbstractC1722Ln.A07(i == 0);
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2166bV
    public final int A8f() {
        return 1;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2166bV
    public final int A9D(long j) {
        return this.A00 > j ? 0 : -1;
    }
}
