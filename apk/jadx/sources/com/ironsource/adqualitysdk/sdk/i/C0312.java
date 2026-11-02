package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ҁ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0312 extends AbstractC1061 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final AbstractC0747 f1558;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final AbstractC0747 f1559;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final AbstractC1031 f1560;

    public C0312(AbstractC1031 abstractC1031, AbstractC0747 abstractC0747, AbstractC0747 abstractC0748, byte b) {
        super(b);
        this.f1560 = abstractC1031;
        this.f1559 = abstractC0747;
        this.f1558 = abstractC0748;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!super.equals(obj)) {
            return false;
        }
        C0312 c0312 = (C0312) obj;
        AbstractC1031 abstractC1031 = this.f1560;
        if (abstractC1031 == null ? c0312.f1560 != null : !abstractC1031.equals(c0312.f1560)) {
            return false;
        }
        AbstractC0747 abstractC0747 = this.f1559;
        if (abstractC0747 == null ? c0312.f1559 != null : !abstractC0747.equals(c0312.f1559)) {
            return false;
        }
        AbstractC0747 abstractC0748 = this.f1558;
        AbstractC0747 abstractC0749 = c0312.f1558;
        if (abstractC0748 != null) {
            return abstractC0748.equals(abstractC0749);
        }
        return abstractC0749 == null;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    public final int hashCode() {
        AbstractC1031 abstractC1031 = this.f1560;
        int iHashCode = (abstractC1031 != null ? abstractC1031.hashCode() : 0) * 31;
        AbstractC0747 abstractC0747 = this.f1559;
        int iHashCode2 = (iHashCode + (abstractC0747 != null ? abstractC0747.hashCode() : 0)) * 31;
        AbstractC0747 abstractC0748 = this.f1558;
        return iHashCode2 + (abstractC0748 != null ? abstractC0748.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(StringFog.decrypt("PFdxEA==\n", "VTFRON8vZF4=\n"));
        sb.append(this.f1560);
        sb.append(StringFog.decrypt("Al0=\n", "K314zdK0xBc=\n"));
        sb.append(this.f1559);
        if (this.f1558 != null) {
            if (this.f1559 instanceof C0694) {
                sb.append(" ");
            } else {
                sb.append("\n");
                byte b = this.f3787;
                for (int i = 0; i < b; i++) {
                    sb.append("  ");
                }
            }
            sb.append(StringFog.decrypt("7EKlH/A=\n", "iS7WetDixZA=\n"));
            sb.append(this.f1558);
        }
        return sb.toString();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    /* JADX INFO: renamed from: ﾒ */
    public final int mo1891() {
        int iMo1891 = this.f1559.mo1891();
        AbstractC0747 abstractC0747 = this.f1558;
        if (abstractC0747 == null) {
            return iMo1891;
        }
        int iMo1892 = abstractC0747.mo1891() + iMo1891;
        return this.f1559 instanceof C0694 ? iMo1892 - 1 : iMo1892;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    /* JADX INFO: renamed from: ﾒ */
    public final int mo1892(C0983 c0983) {
        if (!c0983.f3491.contains(this)) {
            return 0;
        }
        int iMo1891 = this.f1559.mo1891();
        return this.f1559 instanceof C0694 ? iMo1891 - 1 : iMo1891;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0747
    /* JADX INFO: renamed from: ﾒ */
    public final C0248 mo1874(C0983 c0983, C0116 c0116) {
        if (this.f1560.m2420(c0983, c0116).m1987()) {
            return this.f1559.m2261(c0983, c0116);
        }
        if (this.f1558 == null) {
            return new C0248(Boolean.FALSE);
        }
        c0983.f3491.add(this);
        return this.f1558.m2261(c0983, c0116);
    }
}
