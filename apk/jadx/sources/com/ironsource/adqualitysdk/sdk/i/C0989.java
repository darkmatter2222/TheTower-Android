package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﹹ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0989 implements InterfaceC0972 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0950 f3511;

    public C0989(C0950 c0950) {
        this.f3511 = c0950;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0972
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo2378(List list) {
        AbstractC1031 abstractC1031M2322 = this.f3511.m2322(list);
        if ((abstractC1031M2322 instanceof C0716) || (abstractC1031M2322 instanceof C3494s)) {
            return abstractC1031M2322;
        }
        this.f3511.m2330(StringFog.decrypt("WdlfrnBP4bU8wkOqYEirp33TD6lmT6SjecJKomVe4PE=\n", "HKEvyxM7hNE=\n") + abstractC1031M2322);
        throw null;
    }
}
