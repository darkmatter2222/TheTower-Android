package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1566Fh implements InterfaceC3029ph {
    public static String[] A02 = {"loUGRX1wFwfO8pi8DgxPrGsPJe85sO42", "t9Fx4", "3oarn8HbUVUj6u6EULIVhfy23k9jn", "", "MOoTM", "MayuUyWiOMYLrKJeDUJbe9Zh46", "X9niQtR04keYRbnSLMpJZHmvyyUcrdIf", "5gFPyDfRsmHweMwy7A1yA2IFiPZ"};
    public final /* synthetic */ int A00;
    public final /* synthetic */ AbstractC1565Fg A01;

    public C1566Fh(AbstractC1565Fg abstractC1565Fg, int i) {
        this.A01 = abstractC1565Fg;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3029ph
    public final void AET() {
        this.A01.A05 = false;
        this.A01.A0h();
        this.A01.A0H.setToolbarActionMode(this.A01.getCloseButtonStyle());
        if (this.A01.A09) {
            C2474gV c2474gV = this.A01.A08;
            if (A02[2].length() == 15) {
                throw new RuntimeException();
            }
            String[] strArr = A02;
            strArr[7] = "KtnVXPQG8pyake3V1oVxr2XzOzf";
            strArr[3] = "";
            if (c2474gV != null) {
                this.A01.A08.A06();
                this.A01.A0C.A5C(new FG().A7L());
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3029ph
    public final void AGb(float f) {
        this.A01.A0H.setProgress(100.0f * (1.0f - (f / this.A00)));
    }
}
