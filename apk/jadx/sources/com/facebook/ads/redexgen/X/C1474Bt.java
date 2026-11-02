package com.facebook.ads.redexgen.X;

import android.view.ViewGroup;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Bt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1474Bt extends AbstractC2608ik<C1472Br> {
    public final int A00;
    public final C1618Hi A01;
    public final ViewOnClickListenerC1544El A02;
    public final List<String> A03;

    public C1474Bt(C1618Hi c1618Hi, List<String> list, int i, ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        this.A03 = list;
        this.A00 = i;
        this.A01 = c1618Hi;
        this.A02 = viewOnClickListenerC1544El;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2608ik
    /* JADX INFO: renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final C1472Br A0F(ViewGroup viewGroup, int i) {
        C1473Bs c1473Bs = new C1473Bs(this.A01);
        if (C2863mv.A1C(this.A01)) {
            c1473Bs.setOnClickListener(new ViewOnClickListenerC2487gi(this));
        }
        return new C1472Br(c1473Bs);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2608ik
    /* JADX INFO: renamed from: A02, reason: merged with bridge method [inline-methods] */
    public final void A0M(C1472Br c1472Br, int i) {
        String str = this.A03.get(i);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -1);
        int i2 = this.A00 * 4;
        if (i != 0) {
            i2 = this.A00;
        }
        marginLayoutParams.setMargins(i2, 0, i >= A0B() + (-1) ? this.A00 * 4 : this.A00, 0);
        c1472Br.A0w().setLayoutParams(marginLayoutParams);
        c1472Br.A0w().A00(str);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2608ik
    public final int A0B() {
        return this.A03.size();
    }
}
