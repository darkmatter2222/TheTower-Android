package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Oe, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1790Oe implements InterfaceC2166bV {
    public final List<Long> A00;
    public final List<List<C1911Th>> A01;

    public C1790Oe(List<List<C1911Th>> list, List<Long> list2) {
        this.A01 = list;
        this.A00 = list2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2166bV
    public final List<C1911Th> A88(long j) {
        int iA0H = N1.A0H(this.A00, Long.valueOf(j), true, false);
        return iA0H == -1 ? Collections.emptyList() : this.A01.get(iA0H);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2166bV
    public final long A8e(int i) {
        AbstractC1722Ln.A07(i >= 0);
        AbstractC1722Ln.A07(i < this.A00.size());
        return this.A00.get(i).longValue();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2166bV
    public final int A8f() {
        return this.A00.size();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2166bV
    public final int A9D(long j) {
        int iA0G = N1.A0G(this.A00, Long.valueOf(j), false, false);
        if (iA0G < this.A00.size()) {
            return iA0G;
        }
        return -1;
    }
}
