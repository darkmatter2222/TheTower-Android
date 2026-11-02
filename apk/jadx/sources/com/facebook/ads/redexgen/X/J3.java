package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class J3 extends AbstractC2604ig {
    public J3(AbstractC2620iw abstractC2620iw) {
        super(abstractC2620iw, null);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2604ig
    public final int A06() {
        return this.A02.A1U();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2604ig
    public final int A07() {
        return this.A02.A1U() - this.A02.A1a();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2604ig
    public final int A08() {
        return this.A02.A1a();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2604ig
    public final int A09() {
        return this.A02.A1V();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2604ig
    public final int A0A() {
        return this.A02.A1f();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2604ig
    public final int A0B() {
        return this.A02.A1d();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2604ig
    public final int A0C() {
        return (this.A02.A1U() - this.A02.A1d()) - this.A02.A1a();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2604ig
    public final int A0D(View view) {
        return this.A02.A1i(view) + ((C2621ix) view.getLayoutParams()).bottomMargin;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2604ig
    public final int A0E(View view) {
        C2621ix c2621ix = (C2621ix) view.getLayoutParams();
        return this.A02.A1k(view) + c2621ix.topMargin + c2621ix.bottomMargin;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2604ig
    public final int A0F(View view) {
        C2621ix c2621ix = (C2621ix) view.getLayoutParams();
        return this.A02.A1l(view) + c2621ix.leftMargin + c2621ix.rightMargin;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2604ig
    public final int A0G(View view) {
        return this.A02.A1n(view) - ((C2621ix) view.getLayoutParams()).topMargin;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2604ig
    public final int A0H(View view) {
        this.A02.A2T(view, true, this.A01);
        return this.A01.bottom;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2604ig
    public final int A0I(View view) {
        this.A02.A2T(view, true, this.A01);
        return this.A01.top;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2604ig
    public final void A0K(int i) {
        this.A02.A2A(i);
    }
}
