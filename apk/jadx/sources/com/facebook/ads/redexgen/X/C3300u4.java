package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.u4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3300u4 extends RelativeLayout {
    public Runnable A00;
    public boolean A01;
    public boolean A02;
    public final int A03;
    public final Handler A04;
    public final RelativeLayout A05;
    public final LA A06;
    public final C1618Hi A07;
    public final ViewOnClickListenerC1544El A08;
    public final boolean A09;
    public static String[] A0A = {"lYBQPt5EeQTEHSulRYN1NTPAhA", "I40MXu5BXigJKikdnS1WHl7AtgGUaraI", "TJkToAPSava3jxgCAxOgc43", "b6jpooN9aaYeT3fbo5zsHax1nICsO86o", "Vz6IqOQgJuZbDA7xp8clHkJW5F", "cIt1n5snpHl069sFth8rIFb5omyjxfUK", "voe6OKdtQWorCLkYsZIwA9C", "4LwD5QbhoU6tgLUYecpineqUtQK"};
    public static final int A0F = AbstractC3043pv.A0L;
    public static final int A0B = AbstractC3043pv.A0V;
    public static final int A0C = AbstractC3043pv.A0A;
    public static final int A0G = AbstractC3043pv.A06;
    public static final int A0E = AbstractC3043pv.A0J;
    public static final int A0D = AbstractC3043pv.A09;

    public C3300u4(C1618Hi c1618Hi, LA la, ViewOnClickListenerC1544El viewOnClickListenerC1544El, int i, boolean z) {
        super(c1618Hi);
        this.A01 = false;
        this.A02 = false;
        this.A04 = new Handler(Looper.getMainLooper());
        this.A07 = c1618Hi;
        this.A06 = la;
        this.A08 = viewOnClickListenerC1544El;
        this.A03 = i;
        this.A09 = z;
        this.A05 = A00();
        A0I(getResources().getConfiguration().orientation);
        this.A05.setTranslationY(A0D);
        addView(this.A05);
        A07();
    }

    private RelativeLayout A00() {
        RelativeLayout relativeLayout = new RelativeLayout(this.A07);
        relativeLayout.setPadding(AbstractC3043pv.A06, AbstractC3043pv.A06, AbstractC3043pv.A06, AbstractC3043pv.A06);
        AbstractC3086qc.A0Q(relativeLayout, -1, A0C);
        relativeLayout.setElevation(AbstractC3043pv.A0K);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(AbstractC3043pv.A0X, AbstractC3043pv.A01, AbstractC3043pv.A00, AbstractC3043pv.A01);
        if (this.A08 != null) {
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, A0E);
            layoutParams2.addRule(11);
            layoutParams2.addRule(15);
            layoutParams.addRule(0, this.A08.getId());
            relativeLayout.addView(this.A08, layoutParams2);
        }
        C3321uP appIcon = getAppIcon();
        AbstractC3086qc.A0L(appIcon);
        relativeLayout.addView(appIcon);
        layoutParams.addRule(1, appIcon.getId());
        relativeLayout.addView(getTitleAndRatings(), layoutParams);
        return relativeLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A04() {
        this.A07.A0F().AED();
        this.A05.animate().translationY(A0D).setDuration(300L).setListener(new C3299u3(this)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05() {
        this.A05.animate().translationY(0.0f).setDuration(300L).setListener(new C3298u2(this)).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A06() {
        if (this.A00 != null) {
            this.A04.removeCallbacks(this.A00);
            this.A00 = null;
        }
        this.A01 = false;
    }

    private void A07() {
        new ViewOnTouchListenerC3094qk(100, 500, this.A07, new C1547Eo(this)).A00(this.A05);
    }

    private C3321uP getAppIcon() {
        C3321uP c3321uP = new C3321uP(this.A07);
        AbstractC3086qc.A0O(c3321uP, 0);
        new AsyncTaskC1552Et(c3321uP, this.A07).A05(A0F, A0F).A07(this.A06.A35().A01());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(A0F, A0F);
        layoutParams.addRule(9);
        c3321uP.setLayoutParams(layoutParams);
        return c3321uP;
    }

    private LinearLayout getRatingCountAndStar() {
        LinearLayout linearLayout = new LinearLayout(this.A07);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        TextView textView = new TextView(this.A07);
        AbstractC3086qc.A0L(textView);
        textView.setTextColor(this.A06.A31().A01().A07(false));
        textView.setText(this.A06.A32().A0J().A0D());
        textView.setTextSize(13.0f);
        linearLayout.addView(textView);
        C3324uS c3324uS = new C3324uS(this.A07, ViewCompat.MEASURED_STATE_MASK, ViewCompat.MEASURED_STATE_MASK);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(A0G, A0G);
        layoutParams.setMargins(AbstractC3043pv.A0K, AbstractC3043pv.A0K, AbstractC3043pv.A0K, AbstractC3043pv.A0K);
        linearLayout.addView(c3324uS, layoutParams);
        return linearLayout;
    }

    private TextView getTitle() {
        TextView textView = new TextView(this.A07);
        textView.setTextColor(this.A06.A31().A01().A07(false));
        textView.setText(this.A06.A32().A0J().A0H());
        textView.setTextSize(15.0f);
        textView.setMaxLines(1);
        return textView;
    }

    private RelativeLayout getTitleAndRatings() {
        RelativeLayout relativeLayout = new RelativeLayout(this.A07);
        relativeLayout.setGravity(16);
        TextView title = getTitle();
        AbstractC3086qc.A0L(title);
        relativeLayout.addView(title);
        LinearLayout ratingCountAndStar = getRatingCountAndStar();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(3, title.getId());
        layoutParams.addRule(12);
        relativeLayout.addView(ratingCountAndStar, layoutParams);
        return relativeLayout;
    }

    public final void A0E() {
        this.A00 = new Runnable() { // from class: com.facebook.ads.redexgen.X.u1
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A05();
            }
        };
        this.A01 = true;
        this.A04.postDelayed(this.A00, this.A03);
    }

    public final void A0F() {
        A06();
        this.A04.removeCallbacksAndMessages(null);
        if (this.A05 != null) {
            this.A05.clearAnimation();
        }
    }

    public final void A0G() {
        A06();
        if (this.A02 || this.A05 == null) {
            return;
        }
        this.A05.clearAnimation();
    }

    public final void A0H() {
        if (this.A02 || this.A01) {
            return;
        }
        RelativeLayout relativeLayout = this.A05;
        String[] strArr = A0A;
        if (strArr[1].charAt(17) == strArr[5].charAt(17)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0A;
        strArr2[1] = "DbEY42Y7TGsFdpMEAM5w8qdCwG9i3YwF";
        strArr2[5] = "rrBUvKbhRw1HJJafKnpWZgKFED1V1Sxe";
        if (relativeLayout != null) {
            A0E();
        }
    }

    public final void A0I(int i) {
        RelativeLayout.LayoutParams layoutParams;
        if (i == 1) {
            layoutParams = new RelativeLayout.LayoutParams(-1, A0B);
            layoutParams.setMargins(AbstractC3043pv.A0A, AbstractC3043pv.A00, AbstractC3043pv.A0A, AbstractC3043pv.A00);
        } else {
            layoutParams = new RelativeLayout.LayoutParams((int) (((double) getResources().getDisplayMetrics().widthPixels) * 0.5d), A0B);
        }
        this.A05.setLayoutParams(layoutParams);
    }
}
