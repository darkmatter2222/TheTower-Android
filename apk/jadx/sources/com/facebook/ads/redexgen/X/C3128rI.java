package com.facebook.ads.redexgen.X;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import android.widget.RelativeLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rI, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3128rI extends View {
    public int A00;
    public Paint A01;
    public Paint A02;
    public Paint A03;
    public boolean A04;

    public C3128rI(C1618Hi c1618Hi) {
        this(c1618Hi, 60, true);
    }

    public C3128rI(C1618Hi c1618Hi, int i, boolean z) {
        super(c1618Hi);
        this.A00 = i;
        this.A04 = z;
        if (z) {
            this.A02 = new Paint();
            this.A02.setColor(-3355444);
            this.A02.setStyle(Paint.Style.STROKE);
            this.A02.setStrokeWidth(3.0f);
            this.A02.setAntiAlias(true);
            this.A01 = new Paint();
            this.A01.setColor(-1287371708);
            this.A01.setStyle(Paint.Style.FILL);
            this.A01.setAntiAlias(true);
            this.A03 = new Paint();
            this.A03.setColor(-1);
            this.A03.setStyle(Paint.Style.STROKE);
            this.A03.setStrokeWidth(6.0f);
            this.A03.setAntiAlias(true);
        }
    }

    public RelativeLayout.LayoutParams getDefaultLayoutParams() {
        float f = AbstractC3045px.A02;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (this.A00 * f), (int) (this.A00 * f));
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        return layoutParams;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        if (this.A04) {
            canvas.isHardwareAccelerated();
            int iMin = Math.min(canvas.getWidth(), canvas.getHeight());
            int i = iMin / 2;
            int i2 = iMin / 2;
            int i3 = (i * 2) / 3;
            canvas.drawCircle(i, i2, i3, this.A02);
            canvas.drawCircle(i, i2, i3 - 2, this.A01);
            int i4 = iMin / 3;
            int i5 = iMin / 3;
            canvas.drawLine(i4, i5, i4 * 2, i5 * 2, this.A03);
            canvas.drawLine(i4 * 2, i5, i4, i5 * 2, this.A03);
        }
        super.onDraw(canvas);
    }
}
