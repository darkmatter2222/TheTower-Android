package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.Timeline;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Wi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC1983Wi {
    public InterfaceC1982Wh A00;
    public InterfaceC1993Ws A01;

    public final InterfaceC1993Ws A00() {
        return (InterfaceC1993Ws) AbstractC1722Ln.A02(this.A01);
    }

    public final void A01() {
        if (this.A00 != null) {
            this.A00.AHM();
        }
    }

    public final void A02(InterfaceC1982Wh interfaceC1982Wh, InterfaceC1993Ws interfaceC1993Ws) {
        this.A00 = interfaceC1982Wh;
        this.A01 = interfaceC1993Ws;
    }

    public abstract boolean A0Y();

    public abstract C1984Wj A0b(InterfaceC1813Pe[] interfaceC1813PeArr, RY ry, C1862Rk c1862Rk, Timeline timeline) throws AnonymousClass96;

    public abstract void A0c(Object obj);
}
