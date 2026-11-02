package com.facebook.ads.redexgen.X;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class DC implements InterfaceC3029ph {
    public static String[] A05 = {"4fLWU9tbi95pCx3nPro7KHerG3MiEBjR", "73X4LJOS", "jDwv2", "V2jw96nkvx9K5GuWHdkzHABCNJ", "gmvDihmXFBWG84ggvmbjQS00S5CIE8uV", "EQQ9K2HOcRV0ikONePlXOLiNTOnUyKS6", "N0memcNAl18Rs2NftyKCGmLRqegm8Fay", "b7G4TYxTV15RcZP6x1WsV6RG4voJK8bx"};
    public final /* synthetic */ int A00;
    public final /* synthetic */ AbstractRunnableC2979oq A01;
    public final /* synthetic */ InterfaceC3187sF A02;
    public final /* synthetic */ D8 A03;
    public final /* synthetic */ C1441Am A04;

    public DC(D8 d8, int i, C1441Am c1441Am, InterfaceC3187sF interfaceC3187sF, AbstractRunnableC2979oq abstractRunnableC2979oq) {
        this.A03 = d8;
        this.A00 = i;
        this.A04 = c1441Am;
        this.A02 = interfaceC3187sF;
        this.A01 = abstractRunnableC2979oq;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3029ph
    public final void AET() throws Throwable {
        this.A01.run();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3029ph
    public final void AGb(float f) {
        this.A03.A09.setProgress(100.0f * (1.0f - (f / this.A00)));
        if (this.A04 != null) {
            this.A04.A09((int) ((this.A00 - f) * 1000.0f));
        }
        InterfaceC3187sF interfaceC3187sF = this.A02;
        String[] strArr = A05;
        if (strArr[1].length() == strArr[2].length()) {
            throw new RuntimeException();
        }
        A05[3] = "SkwjCSp5c0up35l3DC8U7AZP";
        if (interfaceC3187sF != null) {
            this.A02.AHH((int) (this.A00 - f));
        }
    }
}
