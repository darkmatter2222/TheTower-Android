package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class OA {
    public final int A00;
    public final int A01;
    public final VC A02;
    public final VC A03;
    public final String A04;

    public OA(String str, VC vc, VC vc2, int i, int i2) {
        AbstractC1722Ln.A07(i == 0 || i2 == 0);
        this.A04 = AbstractC1722Ln.A05(str);
        this.A03 = (VC) AbstractC1722Ln.A01(vc);
        this.A02 = (VC) AbstractC1722Ln.A01(vc2);
        this.A01 = i;
        this.A00 = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        OA oa = (OA) obj;
        return this.A01 == oa.A01 && this.A00 == oa.A00 && this.A04.equals(oa.A04) && this.A03.equals(oa.A03) && this.A02.equals(oa.A02);
    }

    public final int hashCode() {
        return (((((((((17 * 31) + this.A01) * 31) + this.A00) * 31) + this.A04.hashCode()) * 31) + this.A03.hashCode()) * 31) + this.A02.hashCode();
    }
}
