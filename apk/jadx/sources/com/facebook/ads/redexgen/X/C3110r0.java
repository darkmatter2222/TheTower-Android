package com.facebook.ads.redexgen.X;

import android.graphics.drawable.GradientDrawable;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.r0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3110r0 extends LinearLayout {
    public static byte[] A04;
    public static final int A05;
    public static final int A06;
    public static final int A07;
    public static final int A08;
    public static final int A09;
    public final ImageView A00;
    public final ImageView A01;
    public final C2479ga A02;
    public final C1618Hi A03;

    static {
        A03();
        A08 = (int) (AbstractC3045px.A02 * 50.0f);
        A05 = (int) (AbstractC3045px.A02 * 10.0f);
        A06 = (int) (AbstractC3045px.A02 * 20.0f);
        A09 = (int) (AbstractC3045px.A02 * 4.0f);
        A07 = (int) (AbstractC3045px.A02 * 12.0f);
    }

    public C3110r0(C1618Hi c1618Hi, int i) {
        super(c1618Hi);
        this.A03 = c1618Hi;
        this.A02 = AbstractC2480gb.A00(c1618Hi.A02());
        setOrientation(0);
        this.A00 = new ImageView(c1618Hi);
        this.A01 = new ImageView(c1618Hi);
        A04(i);
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 91);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A04 = new byte[]{118, 83};
    }

    private void A04(int i) {
        A05(this.A00, EnumC3097qn.AD_CHOICES_ICON);
        if (i != 2) {
            setPadding(A05, A05, A05, A05);
            A05(this.A01, i == 1 ? EnumC3097qn.AN_INFO_ICON : EnumC3097qn.DEFAULT_INFO_ICON);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A06, A06);
            layoutParams.gravity = 17;
            addView(this.A01, layoutParams);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(A06, A06);
            layoutParams2.setMargins(A09, 0, 0, 0);
            layoutParams2.gravity = 17;
            addView(this.A00, layoutParams2);
            return;
        }
        setPadding(A05, A05 / 3, A05, A05 / 3);
        TextView textView = new TextView(this.A03);
        textView.setText(A02(0, 2, 108));
        textView.setTextColor(-1);
        textView.setPadding(0, A05 / 2, A05 / 2, A05 / 2);
        AbstractC3086qc.A0b(textView, true, 13);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 16;
        addView(textView, layoutParams3);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(A07, A07);
        layoutParams4.gravity = 16;
        addView(this.A00, layoutParams4);
    }

    public static void A05(ImageView imageView, EnumC3097qn enumC3097qn) {
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setImageBitmap(AbstractC3098qo.A01(enumC3097qn));
        imageView.setColorFilter(-1);
    }

    public void setAdDetails(C2416fZ c2416fZ, String str, C2892nO c2892nO, InterfaceC3119r9 interfaceC3119r9) {
        setOnClickListener(new ViewOnClickListenerC3109qz(this, c2892nO, interfaceC3119r9, str, c2416fZ));
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(A08);
        gradientDrawable.setColor(i);
        AbstractC3086qc.A0W(this, gradientDrawable);
    }

    public void setIconColors(int i) {
        this.A00.setColorFilter(i);
        this.A01.setColorFilter(i);
    }
}
