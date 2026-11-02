package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.google.common.base.Ascii;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.s6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3178s6 extends FrameLayout {
    public static byte[] A03;
    public static String[] A04 = {"8g7rUDJr7O6IssAOltSex8KkgF4sYvfR", "OXGx65XQ4ZrIEK5TI7fivB7JI6XLFZVF", "163Q583oT81", "waeTQCpFOxHSYLVsoIAnuWvTxf8feInx", "qE6lOCp7JAI3EizzryOpuy2l8uSAI7El", "ZZuHIFUBfFeIEz32hbSx5WMxPJIm13l", "tJxhsqv5dHN5GfDg5MJDOa7xX22O9yYc", "OnQc0jkEhDJNrmKL7G"};
    public RelativeLayout A00;
    public ScrollView A01;
    public final C1618Hi A02;

    static {
        A04();
    }

    public C3178s6(C1618Hi c1618Hi) {
        super(c1618Hi);
        this.A02 = c1618Hi;
        this.A02.A0F().ABm();
        A03();
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 100);
        }
        return new String(bArrCopyOfRange);
    }

    private void A01() {
        AbstractC3086qc.A0J(this);
        AbstractC3086qc.A0K(this);
    }

    private void A02() {
        this.A00.removeAllViews();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        this.A00.addView(getAdHideView(), layoutParams);
        AbstractC3086qc.A0X(this.A00);
        this.A01.fullScroll(33);
    }

    private void A03() {
        this.A01 = new ScrollView(this.A02);
        this.A01.setFillViewport(true);
        AbstractC3086qc.A0O(this.A01, -218103809);
        this.A00 = new RelativeLayout(this.A02);
        this.A00.setPadding(AbstractC3043pv.A0X, AbstractC3043pv.A0X, AbstractC3043pv.A0X, AbstractC3043pv.A0X);
        this.A01.addView(this.A00, new FrameLayout.LayoutParams(-1, -2));
        addView(this.A01, new FrameLayout.LayoutParams(-1, -1));
    }

    public static void A04() {
        String[] strArr = A04;
        if (strArr[2].length() == strArr[5].length()) {
            throw new RuntimeException();
        }
        A04[7] = "Fsa7sVeYscHWL4B1dw";
        A03 = new byte[]{7, 59, 54, 115, Ascii.DC2, 55, 115, 58, 32, 115, 59, 58, 55, 55, 54, Base64.padSymbol, 80, 107, 97, 106};
    }

    private LinearLayout getAdHideView() {
        LinearLayout linearLayout = new LinearLayout(this.A02);
        linearLayout.setOrientation(1);
        TextView textView = new TextView(this.A02);
        AbstractC3086qc.A0b(textView, true, 20);
        textView.setTextColor(-14934495);
        textView.setText(A00(0, 16, 55));
        textView.setGravity(17);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(AbstractC3043pv.A00, AbstractC3043pv.A00, AbstractC3043pv.A00, AbstractC3043pv.A0A);
        final C3188sG c3188sG = new C3188sG(this.A02);
        c3188sG.setData(A00(16, 4, 97), null);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        c3188sG.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.s4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.A00.A05(c3188sG, view);
            }
        });
        linearLayout.addView(textView, layoutParams);
        linearLayout.addView(c3188sG, layoutParams2);
        return linearLayout;
    }

    public final /* synthetic */ void A05(C3188sG c3188sG, View view) {
        this.A02.A0F().ABn();
        c3188sG.A01();
        A01();
    }
}
