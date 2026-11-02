package com.facebook.ads.redexgen.X;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.widget.ImageView;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Aq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1445Aq extends ImageView implements InterfaceC2323e3 {
    public static byte[] A05;
    public static final int A06;
    public C1459Be A00;
    public final Paint A01;
    public final C1618Hi A02;
    public final C2892nO A03;
    public final B3 A04;

    static {
        A06();
        A06 = AbstractC3043pv.A0H;
    }

    public C1445Aq(C1618Hi c1618Hi, C2892nO c2892nO) {
        super(c1618Hi);
        this.A04 = new B3() { // from class: com.facebook.ads.redexgen.X.5C
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(B4 b4) {
                this.A00.A09();
            }
        };
        this.A03 = c2892nO;
        this.A02 = c1618Hi;
        this.A01 = new Paint();
        this.A01.setColor(Integer.MIN_VALUE);
        setColorFilter(-1);
        setPadding(AbstractC3043pv.A0y, AbstractC3043pv.A0y, AbstractC3043pv.A0y, AbstractC3043pv.A0y);
        setContentDescription(A03(0, 7, 17));
        A05();
        setOnClickListener(new ViewOnClickListenerC2309dp(this));
        AbstractC3086qc.A0H(1112, this);
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 28);
        }
        return new String(bArrCopyOfRange);
    }

    private void A04() {
        setImageBitmap(AbstractC3098qo.A01(EnumC3097qn.ICON_MUTE));
    }

    private void A05() {
        setImageBitmap(AbstractC3098qo.A01(EnumC3097qn.ICON_UN_MUTE));
    }

    public static void A06() {
        A05 = new byte[]{122, -94, -95, -110, 77, 110, -111};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A07() {
        return this.A00 != null && this.A00.getVolume() == 0.0f;
    }

    public final void A09() {
        if (this.A00 == null) {
            return;
        }
        if (A07()) {
            A04();
        } else {
            A05();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2323e3
    public final void ABd(C1459Be c1459Be) {
        this.A00 = c1459Be;
        if (this.A00 != null) {
            this.A00.getEventBus().A05(this.A04);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2323e3
    public final void ALp(C1459Be c1459Be) {
        if (this.A00 != null) {
            this.A00.getEventBus().A06(this.A04);
        }
        this.A00 = null;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        int width = getWidth() / 2;
        int height = getHeight() / 2;
        canvas.drawCircle(width, height, Math.min(width, height), this.A01);
        super.onDraw(canvas);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        setMeasuredDimension(A06, A06);
    }
}
