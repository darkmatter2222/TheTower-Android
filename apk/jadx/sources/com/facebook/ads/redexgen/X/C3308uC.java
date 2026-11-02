package com.facebook.ads.redexgen.X;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.view.animation.LinearInterpolator;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.uC, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3308uC extends View {
    public static byte[] A0I;
    public static String[] A0J = {"MXGSYDJIXT53Eu", "rSQjewWzlJJm6mH", "OTLmHCk6V9sRuaMMoAeoEWIA", "xEVpkBxJdMs8Usx", "4HebFghRFBisJMY0sXBOKXuAw8NdoIIk", "XKZ7ELYRKja0tESu6FyTVaQEn2THsruU", "DjhgBtBBpe0Qnsw2vo6CB27u6IJrUzuu", "eG2iyoTD0N1tzC"};
    public float A00;
    public int A01;
    public int A02;
    public int A03;
    public long A04;
    public ValueAnimator A05;
    public boolean A06;
    public boolean A07;
    public final float A08;
    public final float A09;
    public final float A0A;
    public final float A0B;
    public final float A0C;
    public final int A0D;
    public final Paint A0E;
    public final Paint A0F;
    public final Paint A0G;
    public final RectF A0H;

    static {
        A05();
    }

    public C3308uC(Context context, int i) {
        super(context);
        this.A01 = 0;
        this.A00 = 0.0f;
        this.A03 = 0;
        this.A02 = 0;
        this.A07 = true;
        this.A0H = new RectF();
        this.A04 = 0L;
        this.A06 = false;
        float f = AbstractC3045px.A02;
        this.A0B = 3.0f * f;
        this.A09 = 24.0f * f;
        this.A08 = 6.0f * f;
        this.A0C = 8.0f * f;
        this.A0A = this.A08 / 2.0f;
        this.A0D = i;
        A04();
        this.A0G = new Paint(1);
        Paint paint = this.A0G;
        String strA03 = A03(0, 9, kotlin.fh.h1);
        paint.setColor(Color.parseColor(strA03));
        this.A0G.setStyle(Paint.Style.FILL);
        this.A0F = new Paint(1);
        this.A0F.setColor(-1);
        this.A0F.setStyle(Paint.Style.FILL);
        this.A0E = new Paint(1);
        this.A0E.setColor(Color.parseColor(strA03));
        this.A0E.setStyle(Paint.Style.FILL);
    }

    private float A00() {
        int i = this.A02 - this.A03;
        if (i <= 0) {
            return 0.0f;
        }
        float f = 0.0f;
        if (A0J[2].length() != 24) {
            throw new RuntimeException();
        }
        A0J[2] = "Y0ZkWaxMT6jt3adZTw52BStx";
        for (int i2 = this.A03; i2 < this.A02; i2++) {
            float fA01 = A01(i2);
            f += (i2 == this.A01 ? this.A06 ? this.A0B * 2.0f : this.A09 : this.A0B * 2.0f) * fA01;
        }
        return f + ((i - 1) * this.A0C);
    }

    private float A01(int i) {
        if (this.A0D <= 5 || i == this.A01) {
            return 1.0f;
        }
        if (i != this.A03 || this.A03 <= 0) {
            return (i != this.A02 + (-1) || this.A02 >= this.A0D) ? 1.0f : 0.6f;
        }
        return 0.6f;
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0I, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 87);
        }
        return new String(bArrCopyOfRange);
    }

    private void A04() {
        if (this.A0D <= 5) {
            this.A03 = 0;
            this.A02 = this.A0D;
            return;
        }
        if (this.A07) {
            if (this.A01 >= this.A02) {
                int i = this.A01 - 5;
                if (A0J[0].length() != 14) {
                    throw new RuntimeException();
                }
                A0J[0] = "kVk1mb97Ae4y6Z";
                this.A03 = i + 2;
            } else if (this.A01 == this.A02 - 1) {
                int i2 = this.A02;
                int i3 = this.A0D;
                String[] strArr = A0J;
                if (strArr[6].charAt(19) == strArr[5].charAt(19)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0J;
                strArr2[6] = "M5hFB8KfS4APqOoRWAJyy3kSPVToucAF";
                strArr2[5] = "5ObYjJgOqSTG6ZUTMyE7gnDPrG4xqxW4";
                if (i2 < i3) {
                    this.A03 = (this.A01 - 5) + 2;
                }
            }
            if (this.A01 >= this.A0D - 3) {
                this.A03 = this.A0D - 5;
            }
        } else {
            if (this.A01 < this.A03) {
                this.A03 = this.A01 - 1;
            } else if (this.A01 == this.A03 && this.A03 > 0) {
                this.A03 = this.A01 - 1;
            }
            if (this.A01 <= 3) {
                this.A03 = 0;
            }
        }
        this.A03 = Math.max(0, this.A03);
        this.A02 = this.A03 + 5;
        if (this.A02 > this.A0D) {
            this.A02 = this.A0D;
            String[] strArr3 = A0J;
            if (strArr3[6].charAt(19) == strArr3[5].charAt(19)) {
                this.A03 = this.A02 - 5;
            } else {
                A0J[4] = "J7b6LWOWNr0Bc1GXf6shmLhEJA9JYO0r";
                this.A03 = this.A02 - 5;
            }
        }
    }

    public static void A05() {
        byte[] bArr = {-27, -6, -14, 8, 8, 8, 8, 8, 8};
        String[] strArr = A0J;
        if (strArr[6].charAt(19) == strArr[5].charAt(19)) {
            throw new RuntimeException();
        }
        A0J[0] = "DreWOAfYMIn4dp";
        A0I = bArr;
    }

    private void A06(Canvas canvas, float f, float f2, float f3) {
        if (this.A06) {
            float f4 = this.A0B * f3;
            if (A0J[2].length() != 24) {
                throw new RuntimeException();
            }
            A0J[4] = "gfGE0IVM4IiiunjYNzvlXHeKRmLSnZvo";
            canvas.drawCircle(f + f4, f2, f4, this.A0F);
            return;
        }
        float f5 = this.A09 * f3;
        float f6 = this.A08 * f3;
        float f7 = this.A0A * f3;
        float f8 = f2 - (f6 / 2.0f);
        float f9 = (f6 / 2.0f) + f2;
        this.A0H.set(f, f8, f + f5, f9);
        canvas.drawRoundRect(this.A0H, f7, f7, this.A0G);
        if (this.A00 > 0.0f) {
            this.A0H.set(f, f8, (this.A00 * f5) + f, f9);
            canvas.drawRoundRect(this.A0H, f7, f7, this.A0F);
        }
    }

    private void A07(Canvas canvas, float f, float f2, float f3) {
        canvas.drawCircle(f, f2, f3, this.A0E);
    }

    public final void A08() {
        A0B();
        this.A00 = 1.0f;
        invalidate();
    }

    public final void A09() {
        if (this.A05 == null || !this.A05.isRunning()) {
            return;
        }
        this.A05.pause();
    }

    public final void A0A() {
        if (this.A05 == null || !this.A05.isPaused()) {
            return;
        }
        this.A05.resume();
    }

    public final void A0B() {
        if (this.A05 != null) {
            this.A05.cancel();
            this.A05 = null;
        }
    }

    public final void A0C(long j) {
        this.A04 = j;
        if (this.A05 == null || !this.A05.isRunning()) {
            A0B();
            this.A00 = 0.0f;
            this.A05 = ValueAnimator.ofFloat(0.0f, 1.0f);
            this.A05.setDuration(j);
            this.A05.setInterpolator(new LinearInterpolator());
            this.A05.addUpdateListener(new C3307uB(this));
            this.A05.start();
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.A0D <= 0) {
            return;
        }
        float width = (getWidth() - A00()) / 2.0f;
        float height = getHeight() / 2.0f;
        for (int i = this.A03; i < this.A02; i++) {
            float fA01 = A01(i);
            if (i == this.A01) {
                A06(canvas, width, height, fA01);
                width += this.A0C + ((this.A06 ? this.A0B * 2.0f : this.A09) * fA01);
            } else {
                float f = this.A0B * fA01;
                A07(canvas, width + f, height, f);
                width += (f * 2.0f) + this.A0C;
            }
        }
    }

    public void setCurrentPosition(int i) {
        if (i < 0 || i >= this.A0D || this.A01 == i) {
            return;
        }
        A0B();
        if (this.A01 == this.A0D - 1 && i == 0) {
            this.A07 = true;
        } else {
            this.A07 = i > this.A01;
        }
        this.A01 = i;
        A04();
        if (this.A04 > 0) {
            A0C(this.A04);
        } else {
            invalidate();
        }
    }

    public void setDotsOnlyMode(boolean z) {
        this.A06 = z;
        invalidate();
    }
}
