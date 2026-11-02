package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺫ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1015 extends AbstractC1031 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AbstractC1031 f3587;

    public C1015(AbstractC1031 abstractC1031) {
        this.f3587 = abstractC1031;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        AbstractC1031 abstractC1031 = this.f3587;
        AbstractC1031 abstractC1032 = ((C1015) obj).f3587;
        if (abstractC1031 != null) {
            return abstractC1031.equals(abstractC1032);
        }
        return abstractC1032 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final int hashCode() {
        AbstractC1031 abstractC1031 = this.f3587;
        if (abstractC1031 != null) {
            return abstractC1031.hashCode();
        }
        return 0;
    }

    public final String toString() {
        return AbstractC0897.m2299("rg==\n", "h219SOqFte0=\n", new StringBuilder().append(StringFog.decrypt("mw==\n", "s24mqGjU38g=\n")).append(this.f3587));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    /* JADX INFO: renamed from: ﾒ */
    public final C0248 mo1873(C0983 c0983, C0116 c0116) {
        return this.f3587.m2420(c0983, c0116);
    }
}
