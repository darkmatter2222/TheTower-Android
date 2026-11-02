package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﾃ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1080 extends AbstractC1031 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C3494s f3814;

    public C1080(C3494s c3494s) {
        this.f3814 = c3494s;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        C3494s c3494s = this.f3814;
        C3494s c3494s2 = ((C1080) obj).f3814;
        if (c3494s != null) {
            return c3494s.equals(c3494s2);
        }
        return c3494s2 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final int hashCode() {
        int iHashCode = C1080.class.hashCode() * 31;
        C3494s c3494s = this.f3814;
        return iHashCode + (c3494s != null ? c3494s.hashCode() : 0);
    }

    public final String toString() {
        return AbstractC0897.m2299("/HE=\n", "11rqwd8TcfQ=\n", new StringBuilder().append(this.f3814.f380));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    /* JADX INFO: renamed from: ﾒ */
    public final C0248 mo1873(C0983 c0983, C0116 c0116) {
        C0248 c0248M2420 = this.f3814.m2420(c0983, c0116);
        c0983.m2384(this.f3814.f380, Integer.valueOf(c0248M2420.m1986().intValue() + 1));
        return c0248M2420;
    }
}
