package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import android.view.View;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class CF extends AbstractC2617it {
    public final /* synthetic */ int A00;
    public final /* synthetic */ C2850mi A01;

    public CF(C2850mi c2850mi, int i) {
        this.A01 = c2850mi;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2617it
    public final void A02(Rect rect, View view, C7O c7o, C2635jB c2635jB) {
        int iA1C = c7o.A1C(view);
        int iA0B = c7o.getAdapter() != null ? c7o.getAdapter().A0B() : 0;
        int i = this.A00;
        if (iA1C != 0) {
            i /= 2;
        }
        rect.left = i;
        rect.right = iA1C == iA0B + (-1) ? this.A00 : this.A00 / 2;
    }
}
