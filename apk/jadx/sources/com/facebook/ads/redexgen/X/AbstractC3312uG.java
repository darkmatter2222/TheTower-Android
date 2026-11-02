package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.widget.Button;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.uG, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC3312uG extends Button {
    public static byte[] A0A;
    public static final int A0B;
    public static final int A0C;
    public int A00;
    public int A01;
    public int A02;
    public C2404fN A03;
    public boolean A04;
    public boolean A05;
    public boolean A06;
    public final int A07;
    public final Runnable A08;
    public final Runnable A09;

    static {
        A0C();
        A0B = (int) (AbstractC3045px.A02 * 16.0f);
        A0C = (int) (AbstractC3045px.A02 * 4.0f);
    }

    public AbstractC3312uG(C1618Hi c1618Hi, C2404fN c2404fN) {
        super(c1618Hi);
        this.A04 = false;
        this.A02 = 0;
        this.A00 = 0;
        this.A01 = A0C;
        this.A05 = true;
        this.A06 = false;
        this.A08 = new C1543Ek(this);
        this.A09 = new C1542Ej(this);
        this.A03 = c2404fN;
        this.A07 = C2863mv.A03(c1618Hi);
        AbstractC3086qc.A0b(this, false, 16);
        setGravity(17);
        if (C2863mv.A2J(c1618Hi)) {
            setAllCaps(false);
        }
        A0A();
    }

    public static String A09(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 64);
        }
        return new String(bArrCopyOfRange);
    }

    private void A0A() {
        if (this.A03 != null) {
            this.A00 = this.A03.A09(this.A06);
            this.A02 = this.A03.A0A(this.A06);
        }
        AbstractC3086qc.A0R(this, this.A00, this.A05 ? this.A01 : 0);
        setTextColor(this.A02);
    }

    private void A0B() {
        if (this.A07 < 0 || this.A04) {
            return;
        }
        this.A04 = true;
        if (C2863mv.A2m(getContext())) {
            postDelayed(this.A08, this.A07);
        }
    }

    public static void A0C() {
        A0A = new byte[]{120, 113, 94, 6};
    }

    public void A0D() {
        String string = getText().toString();
        if (TextUtils.isEmpty(string)) {
            return;
        }
        String[] strArrSplit = string.split(A09(1, 3, 109));
        for (int i = 0; i < strArrSplit.length; i++) {
            strArrSplit[i] = strArrSplit[i].substring(0, 1).toUpperCase(Locale.getDefault()) + strArrSplit[i].substring(1).toLowerCase(Locale.getDefault());
        }
        super.setText((CharSequence) AbstractC3305u9.A01(A09(0, 1, 24), strArrSplit));
    }

    public C2404fN getColorInfo() {
        return this.A03;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        A0B();
    }

    public void setCornerRadiusPx(int i) {
        this.A01 = i;
    }

    public void setRoundedCornersEnabled(boolean z) {
        this.A05 = z;
        A0A();
    }

    public void setText(String str) {
        super.setText((CharSequence) str.toUpperCase(Locale.US));
    }

    public void setUpButtonColors(C2404fN c2404fN) {
        this.A03 = c2404fN;
        A0A();
    }

    public void setViewShowsOverMedia(boolean z) {
        this.A06 = z;
        A0A();
    }
}
