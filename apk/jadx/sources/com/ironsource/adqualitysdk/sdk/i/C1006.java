package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺘ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1006 implements InterfaceC0972 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0950 f3546;

    public C1006(C0950 c0950) {
        this.f3546 = c0950;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0972
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo2378(List list) {
        AbstractC1031 abstractC1031M2321 = this.f3546.m2321(list);
        if ((abstractC1031M2321 instanceof C3494s) || (abstractC1031M2321 instanceof C0454)) {
            return abstractC1031M2321;
        }
        this.f3546.m2330(StringFog.decrypt("FkKOqbpUcDhzTJ++sEF3MDYanLmtAGc5MF+XurxENQ==\n", "Uzr+zNkgFVw=\n") + abstractC1031M2321);
        throw null;
    }
}
