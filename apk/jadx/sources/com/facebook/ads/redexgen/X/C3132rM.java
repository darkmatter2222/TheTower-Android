package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.facebook.ads.internal.api.AdNativeComponentView;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rM, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3132rM extends AdNativeComponentView {
    public static final int A01 = (int) (AbstractC3045px.A02 * 1.0f);
    public final ImageView A00;

    public C3132rM(C1618Hi c1618Hi) {
        super(c1618Hi);
        this.A00 = new C3162rq(c1618Hi);
        this.A00.setScaleType(ImageView.ScaleType.CENTER_CROP);
        EnumC3051q3.A04(this.A00, EnumC3051q3.A0A);
        addView(this.A00, new ViewGroup.LayoutParams(-1, -1));
        AbstractC3086qc.A0O(this.A00, -2130706433);
        setPadding(A01, A01, A01, A01);
    }

    @Override // com.facebook.ads.internal.api.AdNativeComponentView
    public View getAdContentsView() {
        return this.A00;
    }

    public ImageView getImageCardView() {
        return this.A00;
    }
}
