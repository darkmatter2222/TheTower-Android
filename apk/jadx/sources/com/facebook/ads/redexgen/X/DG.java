package com.facebook.ads.redexgen.X;

import android.widget.ImageView;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class DG implements InterfaceC3277th {
    public final /* synthetic */ C13405y A00;

    public DG(C13405y c13405y) {
        this.A00 = c13405y;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3277th
    public final void AFA(C3276tg c3276tg) {
        if (this.A00.A05 == null || c3276tg.A00() == null) {
            return;
        }
        this.A00.A05.setImageBitmap(c3276tg.A00());
        this.A00.A05.setScaleType(ImageView.ScaleType.CENTER_CROP);
        this.A00.A05.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    }
}
