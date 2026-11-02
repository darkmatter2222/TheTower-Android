package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ἰ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0818 extends AbstractC1031 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final AbstractC1031 f3068;

    public C0818(AbstractC1031 abstractC1031) {
        this.f3068 = abstractC1031;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        AbstractC1031 abstractC1031 = this.f3068;
        AbstractC1031 abstractC1032 = ((C0818) obj).f3068;
        if (abstractC1031 != null) {
            return abstractC1031.equals(abstractC1032);
        }
        return abstractC1032 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final int hashCode() {
        int iHashCode = C0818.class.hashCode() * 31;
        AbstractC1031 abstractC1031 = this.f3068;
        return iHashCode + (abstractC1031 != null ? abstractC1031.hashCode() : 0);
    }

    public final String toString() {
        return StringFog.decrypt("4g==\n", "w/ESGDWpRFE=\n") + this.f3068;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    /* JADX INFO: renamed from: ﾒ */
    public final C0248 mo1873(C0983 c0983, C0116 c0116) {
        return new C0248(Boolean.valueOf(!this.f3068.m2420(c0983, c0116).m1987()));
    }
}
