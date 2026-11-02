package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Od, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1789Od implements InterfaceC2166bV {
    public final long[] A00;
    public final C1911Th[] A01;

    public C1789Od(C1911Th[] c1911ThArr, long[] jArr) {
        this.A01 = c1911ThArr;
        this.A00 = jArr;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2166bV
    public final List<C1911Th> A88(long j) {
        int iA0L = N1.A0L(this.A00, j, true, false);
        return (iA0L == -1 || this.A01[iA0L] == C1911Th.A0J) ? Collections.emptyList() : Collections.singletonList(this.A01[iA0L]);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2166bV
    public final long A8e(int i) {
        AbstractC1722Ln.A07(i >= 0);
        AbstractC1722Ln.A07(i < this.A00.length);
        return this.A00[i];
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2166bV
    public final int A8f() {
        return this.A00.length;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2166bV
    public final int A9D(long j) {
        int iA0K = N1.A0K(this.A00, j, false, false);
        if (iA0K < this.A00.length) {
            return iA0K;
        }
        return -1;
    }
}
