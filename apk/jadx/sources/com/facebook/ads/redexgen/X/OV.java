package com.facebook.ads.redexgen.X;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class OV implements InterfaceC2166bV {
    public final C2205c8 A00;
    public final Map<String, C2212cF> A01;
    public final Map<String, String> A02;
    public final Map<String, C2206c9> A03;
    public final long[] A04;

    public OV(C2205c8 c2205c8, Map<String, C2212cF> map, Map<String, C2206c9> map2, Map<String, String> map3) {
        this.A00 = c2205c8;
        this.A03 = map2;
        this.A02 = map3;
        this.A01 = map != null ? Collections.unmodifiableMap(map) : Collections.emptyMap();
        this.A04 = c2205c8.A0G();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2166bV
    public final List<C1911Th> A88(long j) {
        return this.A00.A0E(j, this.A01, this.A03, this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2166bV
    public final long A8e(int i) {
        return this.A04[i];
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2166bV
    public final int A8f() {
        return this.A04.length;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2166bV
    public final int A9D(long j) {
        int iA0K = N1.A0K(this.A04, j, false, false);
        if (iA0K < this.A04.length) {
            return iA0K;
        }
        return -1;
    }
}
