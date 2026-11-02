package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Fk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1569Fk implements InterfaceC3111r1 {
    public static String[] A02 = {"9zQQ", "ignw1BD", "Iwiu", "Rj9759ruFeEHfZFHtC0tN77N", "Yw9WW67qBp7nurOongm62UMTZpj72Daq", "XdprQx2", "zMrI2nkZvee1EVY6Hu3DKwgaLEX6aHI5", "7LD9TnQa5MzlVBDCJJS9JW3wW2x"};
    public final /* synthetic */ C2658jY A00;
    public final /* synthetic */ AbstractC1565Fg A01;

    public C1569Fk(AbstractC1565Fg abstractC1565Fg, C2658jY c2658jY) {
        this.A01 = abstractC1565Fg;
        this.A00 = c2658jY;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3111r1
    public final void ADh(AbstractC3112r2 abstractC3112r2) {
        if (abstractC3112r2.getToolbarActionMode() == 8) {
            this.A01.A0i();
            return;
        }
        AbstractC1565Fg abstractC1565Fg = this.A01;
        if (A02[3].length() != 24) {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[5] = "Z2WPGtI";
        strArr[1] = "6EZS9Qp";
        abstractC1565Fg.A0G.A04(EnumC2891nN.A07, null);
        if (this.A01.A0q()) {
            return;
        }
        if (this.A01.A0n()) {
            this.A01.A0m(this.A00);
        } else {
            this.A01.A0E.A0F().ABl();
            this.A00.finish(1);
        }
    }
}
