package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ɜ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0172 extends AbstractC1031 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C3494s f913;

    public C0172(C3494s c3494s) {
        this.f913 = c3494s;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        C3494s c3494s = this.f913;
        C3494s c3494s2 = ((C0172) obj).f913;
        if (c3494s != null) {
            return c3494s.equals(c3494s2);
        }
        return c3494s2 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    public final int hashCode() {
        int iHashCode = C0172.class.hashCode() * 31;
        C3494s c3494s = this.f913;
        return iHashCode + (c3494s != null ? c3494s.hashCode() : 0);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC1031
    /* JADX INFO: renamed from: ﾒ */
    public final C0248 mo1873(C0983 c0983, C0116 c0116) {
        C0248 c0248M2420 = this.f913.m2420(c0983, c0116);
        c0983.m2384(this.f913.f380, Integer.valueOf(c0248M2420.m1986().intValue() - 1));
        return c0248M2420;
    }
}
