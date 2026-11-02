package com.facebook.ads.redexgen.X;

import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.5B, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C5B extends BP {
    public static String[] A04 = {"t7nWMgaAgPrF08nCpsue0KJ0bXYxildh", "6KdtKMmtzfHYFwbGu3Z1Ir1zVfPvm0mZ", "4a3tRJ2Sc2HJRD7iGLBoGFg5dIAFXATk", "UpueiF5Mlf4qFrRwKkN0oaj1wZcm2sVE", "2I2trXzlQyfCpDc0SWIB9I9l1xDqUCt2", "pVCp6f81Bxfp7pGgyLuO3QWY2ZOI1Rz7", "JWrnXr9CYPwxDsxVPLOhiB9OxQPOAEin", "O346HS8RGmqKBjl58VTWQBGWIRLrpgc9"};
    public final ImageView A00;
    public final C1618Hi A01;
    public final AbstractC2832mQ<C5Y> A02;
    public final AbstractC2832mQ<BF> A03;

    public C5B(C1618Hi c1618Hi) {
        this(c1618Hi, false);
    }

    public C5B(C1618Hi c1618Hi, boolean z) {
        ImageView.ScaleType scaleType;
        int i;
        super(c1618Hi);
        this.A03 = new C1444Ap(this);
        this.A02 = new C1443Ao(this);
        this.A01 = c1618Hi;
        this.A00 = new ImageView(c1618Hi);
        if (z) {
            scaleType = ImageView.ScaleType.FIT_START;
            i = 0;
        } else {
            scaleType = ImageView.ScaleType.FIT_CENTER;
            i = ViewCompat.MEASURED_STATE_MASK;
        }
        this.A00.setScaleType(scaleType);
        AbstractC3086qc.A0O(this.A00, i);
        this.A00.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        addView(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.BP
    public final void A07() {
        super.A07();
        if (getVideoView() != null) {
            getVideoView().getEventBus().A03(this.A03, this.A02);
        }
    }

    @Override // com.facebook.ads.redexgen.X.BP
    public final void A08() {
        if (getVideoView() != null) {
            getVideoView().getEventBus().A04(this.A02, this.A03);
        }
        super.A08();
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.A00.layout(0, 0, i3 - i, i4 - i2);
    }

    public void setImage(String str) {
        setImage(str, null);
    }

    public void setImage(String str, InterfaceC3277th interfaceC3277th) {
        if (str == null) {
            setVisibility(8);
            return;
        }
        setVisibility(0);
        AsyncTaskC1552Et asyncTaskC1552EtA04 = new AsyncTaskC1552Et(this.A00, this.A01).A04();
        if (interfaceC3277th != null) {
            asyncTaskC1552EtA04.A06(interfaceC3277th);
        }
        asyncTaskC1552EtA04.A07(str);
        String[] strArr = A04;
        if (strArr[0].charAt(21) == strArr[6].charAt(21)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A04;
        strArr2[0] = "kA5c9xFlh2VnhKEqDnwhhyQ6vC8xp51l";
        strArr2[6] = "v6NK46wFN1tyoiPUrV3jpTAezqYTXUDI";
    }
}
