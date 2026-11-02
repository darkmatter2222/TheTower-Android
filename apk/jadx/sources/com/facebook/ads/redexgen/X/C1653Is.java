package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Is, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1653Is implements InterfaceC2641jH {
    public final /* synthetic */ AbstractC2620iw A00;

    public C1653Is(AbstractC2620iw abstractC2620iw) {
        this.A00 = abstractC2620iw;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2641jH
    public final View A7s(int i) {
        return this.A00.A20(i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2641jH
    public final int A7u(View view) {
        return this.A00.A1i(view) + ((C2621ix) view.getLayoutParams()).bottomMargin;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2641jH
    public final int A7v(View view) {
        return this.A00.A1n(view) - ((C2621ix) view.getLayoutParams()).topMargin;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2641jH
    public final int A9J() {
        return this.A00.A1U() - this.A00.A1a();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2641jH
    public final int A9K() {
        return this.A00.A1d();
    }
}
