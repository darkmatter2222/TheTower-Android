package com.facebook.ads.redexgen.X;

import android.util.AttributeSet;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class BP extends RelativeLayout implements InterfaceC2323e3 {
    public C1459Be A00;

    public BP(C1618Hi c1618Hi) {
        super(c1618Hi);
    }

    public BP(C1618Hi c1618Hi, AttributeSet attributeSet, int i) {
        super(c1618Hi, attributeSet, i);
        setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    }

    public void A07() {
    }

    public void A08() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2323e3
    public final void ABd(C1459Be c1459Be) {
        this.A00 = c1459Be;
        A07();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2323e3
    public final void ALp(C1459Be c1459Be) {
        A08();
        this.A00 = null;
    }

    public C1459Be getVideoView() {
        return this.A00;
    }
}
