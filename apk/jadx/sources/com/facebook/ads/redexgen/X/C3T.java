package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3T, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3T extends C12843u {
    public C13596r A00;
    public List<C2974ol> A01;

    public C3T(C1618Hi c1618Hi) {
        super(c1618Hi);
        this.A00 = new C13596r(this, 1, null, null, null);
    }

    public final void A27(C2199c2 c2199c2) {
        if (this.A00 != null) {
            this.A00.A0o(c2199c2);
        }
    }

    public C13596r getCarouselCardBehaviorHelper() {
        return this.A00;
    }

    public void setCardsInfo(ArrayList arrayList) {
        this.A01 = arrayList;
        this.A00.A0k(this.A01);
    }
}
