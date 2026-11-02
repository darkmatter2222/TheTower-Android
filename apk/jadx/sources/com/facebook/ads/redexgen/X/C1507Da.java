package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Da, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1507Da implements InterfaceC3029ph {
    public final /* synthetic */ C6C A00;

    public C1507Da(C6C c6c) {
        this.A00 = c6c;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3029ph
    public final void AET() {
        this.A00.A0U.AEd(this.A00.A0K);
        this.A00.A0U.AE6();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3029ph
    public final void AGb(float f) {
        this.A00.A0U.ALx(((this.A00.A0K - f) + (this.A00.A0i ? 0 : this.A00.A0X.getDuration())) / (this.A00.A0i ? this.A00.A0K : this.A00.A0J));
    }
}
