package com.facebook.ads.redexgen.X;

import java.io.File;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class NO implements InterfaceC2275dG<File> {
    @Override // com.facebook.ads.redexgen.X.InterfaceC2275dG
    public final C2274dF<File> A4N(File file, InterfaceC2293dY interfaceC2293dY) {
        return file.exists() ? new C2274dF<>(true, file) : new C2274dF<>(false, null);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2275dG
    public final void A5m(File file, InterfaceC2293dY interfaceC2293dY) {
    }
}
