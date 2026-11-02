package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﻛ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1025 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0933 f3628;

    public C1025(C0933 c0933) {
        this.f3628 = c0933;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        try {
            C0933 c0933 = this.f3628;
            c0933.f3336 = Class.forName(c0933.f3331.f3359);
            AbstractC0340.m2053(new C1092(this));
        } catch (ClassNotFoundException e) {
            AbstractC0250.m1990(StringFog.decrypt("3Ht4+u+YWMLcfETy95VA3u8=\n", "nRgMk5nxLLs=\n"), StringFog.decrypt("aWRs+LV65yNfYnv5rjTsalh5PvKxP+U+XzZx8ec=\n", "LBYel8dai0o=\n") + this.f3628.f3331.f3359 + StringFog.decrypt("S2A=\n", "cUAem+Qp9c0=\n") + e.getLocalizedMessage());
        }
    }
}
