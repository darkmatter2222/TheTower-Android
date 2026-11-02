package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3161rp {
    public String A02;
    public String A03;
    public final C2402fL A06;
    public final C2416fZ A07;
    public final C1618Hi A08;
    public C2404fN A01 = C2404fN.A01(null);
    public int A00 = 1000;
    public boolean A05 = false;
    public String A04 = "";

    public C3161rp(C1618Hi c1618Hi, C2402fL c2402fL, C2416fZ c2416fZ) {
        this.A08 = c1618Hi;
        this.A06 = c2402fL;
        this.A07 = c2416fZ;
    }

    public final C3161rp A09(int i) {
        this.A00 = i;
        return this;
    }

    public final C3161rp A0A(C2404fN c2404fN) {
        this.A01 = c2404fN;
        return this;
    }

    public final C3161rp A0B(String str) {
        this.A04 = str;
        return this;
    }

    public final C3161rp A0C(String str) {
        this.A02 = str;
        return this;
    }

    public final C3161rp A0D(String str) {
        this.A03 = str;
        return this;
    }

    public final C3161rp A0E(boolean z) {
        this.A05 = z;
        return this;
    }

    public final C3159rn A0F() {
        return new C3159rn(this, null);
    }
}
