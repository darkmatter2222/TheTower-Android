package com.facebook.ads.redexgen.X;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.widget.ImageView;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ar, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1446Ar extends ImageView implements InterfaceC2323e3 {
    public static byte[] A06;
    public static String[] A07 = {"CZ6R6baQKTb1E5sAmpDqVkfMXF7zVnG4", "nQZGX73N3q5NRRZlZyP90gUTrDeeLYBu", "LfCM6PYFJNbwOvLH4thVDQon3h1Zk2zk", "bpUakkTElIOqaP65ISNG9oh", "gJtMODfbj2e7z8MJG7ZRKfD", "8rYwk9o7IGDDsMQbyUTj4ra1LUt9E6qX", "3WiLQHXTUUJ8WctEatoRQ", "Xo7nIXQ5hsw2R0tzDjIU8fyfjH4jtFIR"};
    public static final int A08;
    public static final int A09;
    public C1459Be A00;
    public final Paint A01;
    public final RectF A02;
    public final C1618Hi A03;
    public final C2892nO A04;
    public final B3 A05;

    static {
        A06();
        A09 = (int) (AbstractC3045px.A02 * 4.0f);
        A08 = (int) (AbstractC3045px.A02 * 6.0f);
    }

    public C1446Ar(C1618Hi c1618Hi, C2892nO c2892nO) {
        this(c1618Hi, c2892nO, false);
    }

    public C1446Ar(C1618Hi c1618Hi, C2892nO c2892nO, boolean z) {
        super(c1618Hi);
        this.A05 = new B3() { // from class: com.facebook.ads.redexgen.X.5D
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(B4 b4) {
                this.A00.A09();
            }
        };
        this.A04 = c2892nO;
        this.A03 = c1618Hi;
        if (z) {
            this.A02 = new RectF();
        } else {
            this.A02 = null;
        }
        this.A01 = new Paint();
        this.A01.setColor(-1728053248);
        setColorFilter(-1);
        setPadding(A09, A09, A09, A09);
        setContentDescription(A03(0, 7, 59));
        A05();
        setOnClickListener(new ViewOnClickListenerC2310dq(this));
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 19);
        }
        return new String(bArrCopyOfRange);
    }

    private void A04() {
        setImageBitmap(AbstractC3098qo.A01(EnumC3097qn.SOUND_OFF));
    }

    private void A05() {
        setImageBitmap(AbstractC3098qo.A01(EnumC3097qn.SOUND_ON));
    }

    public static void A06() {
        A06 = new byte[]{101, 93, 92, 77, 8, 105, 76};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A07() {
        if (this.A00 != null) {
            float volume = this.A00.getVolume();
            String[] strArr = A07;
            if (strArr[5].charAt(12) == strArr[1].charAt(12)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A07;
            strArr2[3] = "7LwdJMyLjSlNEKSwxkcw7Q3";
            strArr2[6] = "d5nTRpYYugpReKnwSxkEX";
            if (volume == 0.0f) {
                return true;
            }
        }
        return false;
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
            this.A00.getEventBus().A05(this.A05);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2323e3
    public final void ALp(C1459Be c1459Be) {
        if (this.A00 != null) {
            this.A00.getEventBus().A06(this.A05);
        }
        this.A00 = null;
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        int width = getWidth() / 2;
        int height = getHeight() / 2;
        if (this.A02 != null) {
            this.A02.set(0.0f, 0.0f, getWidth(), getHeight());
            canvas.drawRoundRect(this.A02, A08, A08, this.A01);
        } else {
            canvas.drawCircle(width, height, Math.min(width, height), this.A01);
        }
        super.onDraw(canvas);
    }

    public void setBackgroundPaintColor(int i) {
        this.A01.setColor(i);
    }
}
