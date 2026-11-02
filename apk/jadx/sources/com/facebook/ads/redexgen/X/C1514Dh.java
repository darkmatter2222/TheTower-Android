package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Dh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1514Dh implements InterfaceC3029ph {
    public static String[] A01 = {"v5TqnRr", "Bac8SJeQS89CzCq48YhBx9m8Fj", "Jl8Z9vBSh1smTXK44bdg2aF6JZBEe2Qf", "JQLOWTx", "ad4tkxMMpfDCBjFJJszL4QfOwCLTeHd6", "9FM5XvehN0Z4pzK70QA4h179JlbZERfr", "zFXZh", "wA2GayaqtRDZXLaU2TFI2cxRArUWvv1z"};
    public final /* synthetic */ C6K A00;

    public C1514Dh(C6K c6k) {
        this.A00 = c6k;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00b8  */
    @Override // com.facebook.ads.redexgen.X.InterfaceC3029ph
    public final void AET() {
        if (this.A00.A0D() || this.A00.A0C()) {
            this.A00.A08();
            this.A00.A08.AEd(this.A00.A04);
            return;
        }
        if ((this.A00.A02 instanceof C1539Eg) && this.A00.A02.A1d()) {
            this.A00.A08.AH3(true);
            this.A00.A07.setToolbarActionMode(1);
        } else {
            if (this.A00.A02 instanceof EE) {
                AbstractC3345un abstractC3345un = this.A00.A02;
                if (A01[2].charAt(10) != 'K') {
                    A01[7] = "EkLMrdLAWFVYQeIdYLU867Pu0CditOF8";
                    if (abstractC3345un.A1d()) {
                        C6K c6k = this.A00;
                        if (A01[4].charAt(0) == 'a') {
                            A01[2] = "tbZDRYshynrfIkxTcLgItrO6K4ayDPbz";
                            c6k.A08.AH3(true);
                            this.A00.A07.setToolbarActionMode(1);
                        }
                    } else {
                        this.A00.A08.AH3(false);
                    }
                }
                throw new RuntimeException();
            }
            this.A00.A08.AH3(false);
        }
        this.A00.A08.AEd(this.A00.A04);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3029ph
    public final void AGb(float f) {
        this.A00.A08.AEz(this.A00.A04 - f);
        if (this.A00.A03 != null) {
            this.A00.A03.A09((int) (this.A00.A04 - f));
        }
    }
}
