package com.facebook.ads.redexgen.X;

import android.widget.ImageView;
import android.widget.RelativeLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Bs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1473Bs extends C3322uQ {
    public final ImageView A00;
    public final C1618Hi A01;

    public C1473Bs(C1618Hi c1618Hi) {
        super(c1618Hi);
        this.A01 = c1618Hi;
        this.A00 = new ImageView(c1618Hi);
        this.A00.setAdjustViewBounds(true);
        addView(this.A00, new RelativeLayout.LayoutParams(-2, -1));
    }

    public final void A00(String str) {
        AsyncTaskC1552Et asyncTaskC1552Et = new AsyncTaskC1552Et(this.A00, this.A01);
        asyncTaskC1552Et.A04();
        asyncTaskC1552Et.A07(str);
    }
}
