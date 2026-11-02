package com.facebook.ads.redexgen.X;

import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Bo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1469Bo extends C3322uQ {
    public final ImageView A00;
    public final C1618Hi A01;

    public C1469Bo(C1618Hi c1618Hi) {
        super(c1618Hi);
        this.A01 = c1618Hi;
        setRadius(30);
        this.A00 = new ImageView(c1618Hi);
        this.A00.setAdjustViewBounds(true);
        addView(this.A00, new RelativeLayout.LayoutParams(-2, -1));
    }

    public final /* synthetic */ void A00(C3276tg c3276tg) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.width = -2;
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup != null) {
            viewGroup.updateViewLayout(this, layoutParams);
        }
    }

    public void setUrl(String str) {
        AsyncTaskC1552Et asyncTaskC1552Et = new AsyncTaskC1552Et(this.A00, this.A01);
        asyncTaskC1552Et.A04();
        asyncTaskC1552Et.A07(str);
        asyncTaskC1552Et.A06(new InterfaceC3277th() { // from class: com.facebook.ads.redexgen.X.Bp
            @Override // com.facebook.ads.redexgen.X.InterfaceC3277th
            public final void AFA(C3276tg c3276tg) {
                this.A00.A00(c3276tg);
            }
        });
    }
}
