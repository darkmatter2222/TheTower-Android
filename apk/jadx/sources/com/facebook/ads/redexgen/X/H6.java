package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class H6 implements InterfaceC2848mg {
    public final List<C2853ml> A00 = new ArrayList();
    public final boolean A01;
    public final /* synthetic */ H5 A02;

    public H6(H5 h5, List<C2844mc> list, boolean z) throws IOException {
        this.A02 = h5;
        this.A01 = z;
        for (C2844mc c2844mc : list) {
            C2843mb c2843mbA01 = c2844mc.A01();
            this.A00.add(new C2853ml(new C2841mZ(c2844mc.A00(), c2843mbA01.A01()), c2843mbA01.A00() - c2843mbA01.A01(), c2843mbA01.A00()));
        }
    }

    public final C2853ml A00() {
        return this.A00.get(0);
    }

    public final C2853ml A01() {
        return this.A00.get(this.A00.size() - 1);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2848mg
    public final void A6O() throws C2858mq {
        this.A02.A03(this);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2848mg
    public final synchronized int A76() {
        int i;
        i = 0;
        Iterator<C2853ml> it = this.A00.iterator();
        while (it.hasNext()) {
            i += it.next().A01;
        }
        return i;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2848mg
    public final boolean ADF() {
        return this.A01;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.A02.A06(this);
    }
}
