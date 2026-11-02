package com.facebook.ads.redexgen.X;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Bl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1466Bl extends FrameLayout implements InterfaceC2456gD {
    public TextView A00;
    public TextView A01;
    public TextView A02;
    public TextView A03;
    public final MediaView A04;
    public final NativeAd A05;
    public final C2433fq A06;
    public final ArrayList<View> A07;
    public static String[] A08 = {"LrUXeZd5oXG5wJ7", "S6ePTdxfK6c7yhvbHMQjZqIgQsLDz3QO", "YqVXoEdDoNpK3nL0El5", "Exhg7LXIw6HgSAmcccR052cOKtX3WF", "LN", "59F20xOEewuTmZzPatOKMeF6XI6ZvB1j", "IRBrDKvf2o0dBHWjf99N02m12yrR0Bg7", "KZ90h8EmVWfLUNKv0pT"};
    public static final int A0E = (int) (AbstractC3045px.A02 * 6.0f);
    public static final int A0D = (int) (AbstractC3045px.A02 * 8.0f);
    public static final int A0C = (int) (AbstractC3045px.A02 * 12.0f);
    public static final int A0A = (int) (AbstractC3045px.A02 * 350.0f);
    public static final int A09 = (int) (AbstractC3045px.A02 * 250.0f);
    public static final int A0B = (int) (AbstractC3045px.A02 * 175.0f);

    public C1466Bl(C1618Hi c1618Hi, NativeAd nativeAd, C2914nk c2914nk, EnumC2915nl enumC2915nl, C3321uP c3321uP, MediaView mediaView, AdOptionsView adOptionsView) {
        super(c1618Hi);
        this.A07 = new ArrayList<>();
        this.A05 = nativeAd;
        this.A04 = mediaView;
        this.A06 = new C2433fq(c1618Hi, this.A05, c2914nk, c3321uP, adOptionsView);
        this.A06.setPadding(A0C, A0C, A0C, A0E);
        addView(this.A06, new FrameLayout.LayoutParams(-1, -2));
        if (enumC2915nl == EnumC2915nl.A09 || enumC2915nl == EnumC2915nl.A0B) {
            A07(c2914nk);
        }
        addView(this.A04, new FrameLayout.LayoutParams(-1, -2));
        if (enumC2915nl != EnumC2915nl.A0B || this.A05.getAdCreativeType() != NativeAd.AdCreativeType.CAROUSEL) {
            A06(c2914nk);
            A04(c2914nk);
            A05(c2914nk);
        }
        this.A07.add(c3321uP);
        this.A07.add(mediaView);
    }

    private int A00() {
        int measuredHeight = 0;
        int measuredHeight2 = (this.A03 == null || this.A03.getVisibility() != 0) ? 0 : this.A03.getMeasuredHeight();
        TextView textView = this.A02;
        if (A08[1].charAt(0) == 'k') {
            throw new RuntimeException();
        }
        String[] strArr = A08;
        strArr[6] = "SrhbzBCrZmwJCsE1GN19GBhRpshhKBl4";
        strArr[5] = "lZXGEU0s5y97LRskCQS4IC0Q6rEMlB8o";
        int measuredHeight3 = (textView == null || this.A02.getVisibility() != 0) ? 0 : this.A02.getMeasuredHeight();
        int measuredHeight4 = (this.A00 == null || this.A00.getVisibility() != 0) ? 0 : this.A00.getMeasuredHeight();
        TextView textView2 = this.A01;
        if (A08[1].charAt(0) == 'k') {
            throw new RuntimeException();
        }
        String[] strArr2 = A08;
        strArr2[6] = "nRuc5lutSXPKh9f7kKzdW2kIhLu3nB9m";
        strArr2[5] = "FuxAmHJZMOFMUG38wB3yXnFuBZuRMBRE";
        if (textView2 != null && this.A01.getVisibility() == 0) {
            measuredHeight = this.A01.getMeasuredHeight() + A0C + A0D;
        }
        return ((((getMeasuredHeight() - this.A06.getMeasuredHeight()) - measuredHeight2) - measuredHeight3) - measuredHeight4) - measuredHeight;
    }

    private void A01() {
        if (this.A03 != null) {
            this.A03.setLines(1);
        }
        if (this.A02 != null) {
            this.A02.setLines(1);
        }
        if (this.A00 != null) {
            this.A00.setLines(1);
        }
    }

    private void A02(int i) {
        AbstractC3086qc.A0P(this.A04, i > A0B ? 0 : 8);
        AbstractC3086qc.A0P(this.A03, i > A0A ? 0 : 8);
        AbstractC3086qc.A0P(this.A00, i <= A09 ? 8 : 0);
    }

    public static void A03(int i, int i2, TextView... textViewArr) {
        for (TextView textView : textViewArr) {
            if (textView != null && textView.getVisibility() == 0) {
                int iA04 = AbstractC3086qc.A04(textView, i2);
                textView.setLines(iA04 + 1);
                textView.measure(i, View.MeasureSpec.makeMeasureSpec(textView.getMeasuredHeight() + (textView.getLineHeight() * iA04), 1073741824));
                i2 -= textView.getLineHeight() * iA04;
            }
        }
    }

    private void A04(C2914nk c2914nk) {
        if (this.A05.getAdBodyText() == null || this.A05.getAdBodyText().trim().isEmpty()) {
            return;
        }
        this.A00 = new TextView(getContext());
        c2914nk.A06(this.A00);
        this.A00.setText(this.A05.getAdBodyText());
        this.A00.setPadding(A0C, 0, A0C, 0);
        addView(this.A00, new FrameLayout.LayoutParams(-1, -2));
    }

    private void A05(C2914nk c2914nk) {
        if (this.A05.hasCallToAction()) {
            this.A01 = new TextView(getContext());
            AbstractC3086qc.A0L(this.A01);
            c2914nk.A05(this.A01);
            this.A01.setText(this.A05.getAdCallToAction());
            this.A01.setPadding(A0D, A0D, A0D, A0D);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(A0D, 0, A0D, 0);
            addView(this.A01, layoutParams);
            this.A07.add(this.A01);
        }
    }

    private void A06(C2914nk c2914nk) {
        if (this.A05.getAdHeadline() == null || this.A05.getAdHeadline().trim().isEmpty()) {
            return;
        }
        this.A02 = new TextView(getContext());
        c2914nk.A07(this.A02);
        this.A02.setText(this.A05.getAdHeadline());
        this.A02.setPadding(A0C, A0D, A0C, 0);
        addView(this.A02, new FrameLayout.LayoutParams(-1, -2));
    }

    private void A07(C2914nk c2914nk) {
        if (this.A05.getAdLinkDescription() == null || this.A05.getAdLinkDescription().trim().isEmpty()) {
            return;
        }
        this.A03 = new TextView(getContext());
        c2914nk.A06(this.A03);
        this.A03.setText(this.A05.getAdLinkDescription());
        this.A03.setPadding(A0C, 0, A0C, A0D);
        addView(this.A03, new FrameLayout.LayoutParams(-1, -2));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2456gD
    public View getView() {
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2456gD
    public ArrayList<View> getViewsForInteraction() {
        return this.A07;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.A06.layout(i, i2, i3, this.A06.getMeasuredHeight() + i2);
        int measuredHeight = i2 + this.A06.getMeasuredHeight();
        if (this.A03 != null && this.A03.getVisibility() == 0) {
            int measuredHeight2 = this.A03.getMeasuredHeight();
            this.A03.layout(i, measuredHeight, i3, measuredHeight + measuredHeight2);
            measuredHeight += measuredHeight2;
        }
        this.A04.layout(i, measuredHeight, i3, this.A04.getMeasuredHeight() + measuredHeight);
        int measuredHeight3 = measuredHeight + this.A04.getMeasuredHeight();
        if (this.A02 != null) {
            this.A02.layout(i, measuredHeight3, i3, this.A02.getMeasuredHeight() + measuredHeight3);
            measuredHeight3 += this.A02.getMeasuredHeight();
        }
        if (this.A00 != null && this.A00.getVisibility() == 0) {
            TextView textView = this.A00;
            if (A08[1].charAt(0) == 'k') {
                throw new RuntimeException();
            }
            A08[3] = "gjv6mmFqHT0";
            textView.layout(i, measuredHeight3, i3, this.A00.getMeasuredHeight() + measuredHeight3);
        }
        if (this.A01 != null) {
            this.A01.layout(A0C + i, (i4 - this.A01.getMeasuredHeight()) - A0C, i3 - A0C, i4 - A0C);
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        A02(View.MeasureSpec.getSize(i2));
        A01();
        super.onMeasure(i, i2);
        int iA00 = A00();
        int iMin = (this.A04.getMediaWidth() == 0 || this.A04.getMediaHeight() == 0 || ((IC) this.A04.getMediaViewApi()).A0b()) ? iA00 : Math.min((int) (this.A04.getMeasuredWidth() * (this.A04.getMediaHeight() / this.A04.getMediaWidth())), iA00);
        this.A04.measure(i, View.MeasureSpec.makeMeasureSpec(iMin, 1073741824));
        if (iMin < iA00) {
            A03(i, iA00 - iMin, this.A02, this.A00, this.A03);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2456gD
    public final void unregisterView() {
        this.A05.unregisterView();
    }
}
