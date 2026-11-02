package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ci, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1489Ci implements InterfaceC3069qL {
    public final /* synthetic */ C13315p A00;

    public C1489Ci(C13315p c13315p) {
        this.A00 = c13315p;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3069qL
    public final void AAP() {
        if (this.A00.A02 instanceof C13476f) {
            ((C13476f) this.A00.A02).A1q();
            C2892nO.A02(EnumC2891nN.A0o, null, ((D8) this.A00).A03.A37(), ((D8) this.A00).A05.A0A());
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3069qL
    public final void ALH() {
        if (this.A00.A02 instanceof C13476f) {
            ((C13476f) this.A00.A02).A1u(this.A00.A0Q);
            C2892nO.A02(EnumC2891nN.A0o, null, ((D8) this.A00).A03.A37(), ((D8) this.A00).A05.A0A());
        }
        this.A00.A0v();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3069qL
    public final void ALX() {
        this.A00.A0n();
        if (this.A00.A02 instanceof C13476f) {
            ((C13476f) this.A00.A02).getAdDetailsView().setVisibility(8);
        }
    }
}
