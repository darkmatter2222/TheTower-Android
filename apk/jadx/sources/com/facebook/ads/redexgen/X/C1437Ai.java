package com.facebook.ads.redexgen.X;

import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ai, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1437Ai implements InterfaceC2296db {
    public int A00;
    public ValueAnimator A01;
    public EnumC2297dc A02 = EnumC2297dc.A05;
    public final int A03;
    public final int A04;
    public final View A05;

    public C1437Ai(View view, int i, int i2, int i3) {
        this.A05 = view;
        this.A03 = i;
        this.A00 = i2;
        this.A04 = i3;
    }

    private ValueAnimator A00(int i, int i2, View view) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i, i2);
        valueAnimatorOfInt.setDuration(this.A03);
        valueAnimatorOfInt.addUpdateListener(new C2276dH(this, view));
        return valueAnimatorOfInt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07(boolean z) {
        if (z) {
            this.A02 = EnumC2297dc.A06;
            this.A01 = A00(this.A00, this.A04, this.A05);
            this.A01.addListener(new C2277dI(this));
            this.A01.start();
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.A05.getLayoutParams();
        layoutParams.height = this.A04;
        this.A05.setLayoutParams(layoutParams);
        AbstractC3086qc.A0I(this.A05);
        this.A02 = EnumC2297dc.A05;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A08(boolean z) {
        AbstractC3086qc.A0M(this.A05);
        if (z) {
            this.A02 = EnumC2297dc.A04;
            this.A01 = A00(this.A04, this.A00, this.A05);
            this.A01.addListener(new C2288dT(this));
            this.A01.start();
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.A05.getLayoutParams();
        layoutParams.height = this.A00;
        this.A05.setLayoutParams(layoutParams);
        this.A02 = EnumC2297dc.A03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2296db
    public final void A4b(boolean z, boolean z2) {
        if (z2) {
            A07(z);
        } else {
            A08(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2296db
    public final EnumC2297dc A9o() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2296db
    public final void cancel() {
        if (this.A01 != null) {
            this.A01.cancel();
        }
    }
}
