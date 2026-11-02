package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.দ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0454 extends AbstractC1031 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final AbstractC1031 f2014;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C3494s f2015;

    public C0454(C3494s c3494s, AbstractC1031 abstractC1031) {
        this.f2015 = c3494s;
        this.f2014 = abstractC1031;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        C0454 c0454 = (C0454) obj;
        C3494s c3494s = this.f2015;
        if (c3494s == null ? c0454.f2015 != null : !c3494s.equals(c0454.f2015)) {
            return false;
        }
        AbstractC1031 abstractC1031 = this.f2014;
        AbstractC1031 abstractC1032 = c0454.f2014;
        if (abstractC1031 != null) {
            return abstractC1031.equals(abstractC1032);
        }
        return abstractC1032 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final int hashCode() {
        C3494s c3494s = this.f2015;
        int iHashCode = (c3494s != null ? c3494s.hashCode() : 0) * 31;
        AbstractC1031 abstractC1031 = this.f2014;
        return iHashCode + (abstractC1031 != null ? abstractC1031.hashCode() : 0);
    }

    public final String toString() {
        return this.f2015 + StringFog.decrypt("OYED\n", "GbwjZCV5Jc4=\n") + this.f2014;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    /* JADX INFO: renamed from: ﾒ */
    public final C0248 mo1873(C0983 c0983, C0116 c0116) {
        C0248 c0248M2420 = this.f2014.m2420(c0983, c0116);
        c0983.m2384(this.f2015.f380, c0248M2420.f1193);
        return c0248M2420;
    }
}
