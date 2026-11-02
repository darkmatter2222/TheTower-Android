package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Nh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1767Nh implements InterfaceC2253cu {
    public final C1743Mj A00 = new C1743Mj(new byte[4]);
    public final /* synthetic */ C1765Nf A01;

    public C1767Nh(C1765Nf c1765Nf) {
        this.A01 = c1765Nf;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2253cu
    public final void A5j(C1744Mk c1744Mk) {
        if (c1744Mk.A0I() == 0 && (c1744Mk.A0I() & 128) != 0) {
            c1744Mk.A0g(6);
            int iA07 = c1744Mk.A07() / 4;
            for (int i = 0; i < iA07; i++) {
                c1744Mk.A0h(this.A00, 4);
                int iA04 = this.A00.A04(16);
                this.A00.A09(3);
                if (iA04 == 0) {
                    this.A00.A09(13);
                } else {
                    int iA05 = this.A00.A04(13);
                    if (this.A01.A0B.get(iA05) == null) {
                        this.A01.A0B.put(iA05, new C1782Nw(new C1766Ng(this.A01, iA05)));
                        C1765Nf.A02(this.A01);
                    }
                }
            }
            if (this.A01.A09 != 2) {
                this.A01.A0B.remove(0);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2253cu
    public final void AAo(C1752Ms c1752Ms, InterfaceC2044Yw interfaceC2044Yw, C2261d2 c2261d2) {
    }
}
