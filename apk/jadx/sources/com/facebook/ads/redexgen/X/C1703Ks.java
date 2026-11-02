package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import java.util.EnumSet;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ks, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1703Ks implements InterfaceC2427fk {
    public final /* synthetic */ int A00;
    public final /* synthetic */ LA A01;
    public final /* synthetic */ C1708Kz A02;
    public final /* synthetic */ InterfaceC2427fk A03;
    public final /* synthetic */ C2428fl A04;
    public final /* synthetic */ C1618Hi A05;
    public final /* synthetic */ EnumSet A06;

    public C1703Ks(C2428fl c2428fl, C1618Hi c1618Hi, LA la, C1708Kz c1708Kz, int i, InterfaceC2427fk interfaceC2427fk, EnumSet enumSet) {
        this.A04 = c2428fl;
        this.A05 = c1618Hi;
        this.A01 = la;
        this.A02 = c1708Kz;
        this.A00 = i;
        this.A03 = interfaceC2427fk;
        this.A06 = enumSet;
    }

    private final void A00() {
        if (this.A00 + 1 >= this.A02.A2v()) {
            return;
        }
        this.A04.A0A(this.A05, this.A06, this.A02, this.A02.A2z(this.A00 + 1), this.A00 + 1, this.A03);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2427fk
    public final void ADk(AdError adError) {
        if (this.A00 == 0) {
            this.A03.ADk(adError);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2427fk
    public final void ADl() {
        this.A05.A01().AKW(this.A01.A37(), this.A02.A30());
        if (this.A00 == this.A02.A2x()) {
            this.A03.ADl();
        }
        A00();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2427fk
    public final void AIm() {
        if (this.A00 == 0) {
            this.A03.AIm();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2427fk
    public final void ALr() {
        if (this.A00 == 0) {
            this.A03.ALr();
        }
    }
}
