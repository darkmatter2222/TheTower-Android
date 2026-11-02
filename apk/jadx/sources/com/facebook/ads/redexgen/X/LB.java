package com.facebook.ads.redexgen.X;

import android.view.ViewGroup;
import android.widget.ImageView;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class LB extends AbstractC2608ik<C1575Fr> {
    public static final int A05 = (int) (AbstractC3045px.A02 * 4.0f);
    public InterfaceC2390f9 A00;
    public final List<GT> A01;
    public final int A02;
    public final C1618Hi A03;
    public final AbstractC2200c3 A04 = new LF(this);

    public LB(C3U c3u, List<GT> list, C1618Hi c1618Hi) {
        this.A03 = c1618Hi;
        this.A02 = c3u.getChildSpacing();
        this.A01 = list;
    }

    private ViewGroup.MarginLayoutParams A01(int i) {
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -1);
        int i2 = this.A02;
        if (i == 0) {
            i2 *= 2;
        }
        marginLayoutParams.setMargins(i2, 0, i >= this.A01.size() + (-1) ? this.A02 * 2 : this.A02, 0);
        return marginLayoutParams;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2608ik
    public final int A0B() {
        return this.A01.size();
    }

    public final void A0Q(ImageView imageView, int i) {
        GT gt = this.A01.get(i);
        C2912ni adCoverImage = gt.getAdCoverImage();
        if (adCoverImage != null) {
            AsyncTaskC1552Et asyncTaskC1552EtA04 = new AsyncTaskC1552Et(imageView, this.A03).A04();
            asyncTaskC1552EtA04.A06(new LD(this, i, gt));
            asyncTaskC1552EtA04.A07(adCoverImage.getUrl());
        }
    }

    public final void A0R(InterfaceC2390f9 interfaceC2390f9) {
        this.A00 = interfaceC2390f9;
    }

    public void A0S(C1575Fr c1575Fr, int i) {
        c1575Fr.A0w().setLayoutParams(A01(i));
    }
}
