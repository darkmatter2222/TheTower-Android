package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class ER extends AbstractC3345un {
    public static byte[] A0W;
    public static String[] A0X = {"9t0dOcvtz4nFxw1Er1moUrr2EtyOKEAz", "iQHy9eZIfeN6fg05uFb8LMVjGt7lrZpM", "IUGMhsGswDxXQXL1yeMoNzOPQ5l7A7nn", "WGzot7EjJPYMBnhp5aIGdHXIsLhXEToI", "8WYWour2idZt8Xmb54VGZEb3", "nmCawQ5ku5AKV9MjGCx", "xFT", "pW92TzPWILiwY07XSjupInMfb3iClCQl"};
    public static final int A0Y;
    public int A00;
    public int A01;
    public ImageView A02;
    public ImageView A03;
    public LinearLayout A04;
    public C2479ga A05;
    public C3226ss A06;
    public C3230sw A07;
    public InterfaceC3069qL A08;
    public C1464Bj A09;
    public C5Z A0A;
    public final Handler A0B;
    public final ImageView A0C;
    public final RelativeLayout A0D;
    public final RelativeLayout A0E;
    public final RelativeLayout A0F;
    public final RelativeLayout A0G;
    public final RelativeLayout A0H;
    public final TextView A0I;
    public final TextView A0J;
    public final TextView A0K;
    public final TextView A0L;
    public final TextView A0M;
    public final C1618Hi A0N;
    public final C2892nO A0O;
    public final C3321uP A0P;
    public final C3323uR A0Q;
    public final C3349ur A0R;
    public final C1459Be A0S;
    public final BM A0T;
    public final BE A0U;
    public final Runnable A0V;

    static {
        A0R();
        A0Y = (int) (AbstractC3045px.A02 * 16.0f);
    }

    public ER(C3349ur c3349ur) {
        super(c3349ur, false);
        this.A0B = new Handler(Looper.getMainLooper());
        this.A0U = new BE() { // from class: com.facebook.ads.redexgen.X.6c
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(BF bf) {
                if (this.A00.A08 != null) {
                    this.A00.A08.ALX();
                }
            }
        };
        this.A0T = new BM() { // from class: com.facebook.ads.redexgen.X.6b
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C5Y c5y) {
                this.A00.A0S.A0f(EnumC2324e4.A03, 20);
            }
        };
        this.A0V = new RunnableC3375vH(this);
        this.A0N = c3349ur.A06();
        this.A0R = c3349ur;
        this.A0O = new C2892nO(this.A0R.A05().A37(), getAdEventManager());
        this.A0O.A04(EnumC2891nN.A0p, null);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.A00 = displayMetrics.heightPixels;
        this.A01 = displayMetrics.widthPixels;
        this.A0S = A0G();
        AbstractC3086qc.A0L(this.A0S);
        this.A0S.setVideoURI(this.A0R.A05().A32().A0I().A09());
        this.A0S.A0f(EnumC2324e4.A03, 20);
        this.A0S.getEventBus().A03(this.A0U, this.A0T);
        this.A0G = A06();
        AbstractC3086qc.A0L(this.A0G);
        A0L();
        A0M();
        this.A0P = A0D();
        AbstractC3086qc.A0L(this.A0P);
        this.A0L = A0B();
        AbstractC3086qc.A0L(this.A0L);
        this.A0Q = A0E();
        AbstractC3086qc.A0L(this.A0Q);
        this.A0J = A09();
        AbstractC3086qc.A0L(this.A0J);
        this.A0C = A01();
        AbstractC3086qc.A0L(this.A0C);
        this.A0I = A08();
        AbstractC3086qc.A0L(this.A0I);
        this.A0E = A05();
        AbstractC3086qc.A0L(this.A0E);
        this.A0D = A04();
        AbstractC3086qc.A0L(this.A0D);
        this.A0K = A0A();
        AbstractC3086qc.A0L(this.A0K);
        this.A0M = A0C();
        AbstractC3086qc.A0L(this.A0M);
        this.A0H = A07(getWatchAdCtaText(), 654311423);
        AbstractC3086qc.A0L(this.A0H);
        this.A0F = A07(this.A0R.A05().A1o(), -16226561);
        AbstractC3086qc.A0L(this.A0F);
        String strA08 = this.A0R.A05().A32().A0I().A08();
        if (strA08 != null) {
            AbstractC3328uW.A00(this.A0R.A06(), this, strA08);
        }
        int i = getResources().getConfiguration().orientation;
        A0h(i);
        addView(this.A0S);
        A0S(i);
        A0K();
    }

    private ImageView A01() {
        ImageView imageView = new ImageView(this.A0N);
        imageView.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        imageView.setImageBitmap(AbstractC3098qo.A01(EnumC3097qn.DOWNLOAD_ICON));
        return imageView;
    }

    private LinearLayout A03() {
        this.A02 = new ImageView(this.A0N);
        this.A03 = new ImageView(this.A0N);
        LinearLayout linearLayout = new LinearLayout(this.A0N);
        this.A02.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        this.A02.setImageBitmap(AbstractC3098qo.A01(EnumC3097qn.AD_CHOICE_V2_COLLAPSE));
        linearLayout.addView(this.A02);
        this.A03.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        this.A03.setImageBitmap(AbstractC3098qo.A01(EnumC3097qn.AD_CHOICE_V2_EXPAND));
        linearLayout.addView(this.A03);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(12);
        layoutParams.addRule(11);
        linearLayout.setLayoutParams(layoutParams);
        return linearLayout;
    }

    private RelativeLayout A04() {
        RelativeLayout relativeLayout = new RelativeLayout(this.A0N);
        relativeLayout.addView(this.A0L);
        if (this.A0R.A05().A2b()) {
            relativeLayout.addView(this.A0Q);
            relativeLayout.addView(this.A0J);
        } else {
            relativeLayout.addView(this.A0E);
        }
        return relativeLayout;
    }

    private RelativeLayout A05() {
        RelativeLayout relativeLayout = new RelativeLayout(this.A0N.A02());
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        relativeLayout.addView(this.A0C);
        relativeLayout.addView(this.A0I);
        return relativeLayout;
    }

    private RelativeLayout A06() {
        RelativeLayout relativeLayout = new RelativeLayout(this.A0N.A02());
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-2, -1));
        return relativeLayout;
    }

    private RelativeLayout A07(String str, int i) {
        RelativeLayout relativeLayout = new RelativeLayout(this.A0N);
        relativeLayout.setPadding(AbstractC3043pv.A0e, AbstractC3043pv.A0e, AbstractC3043pv.A0e, AbstractC3043pv.A0e);
        AbstractC3086qc.A0W(relativeLayout, AbstractC3086qc.A06(i, 30));
        relativeLayout.setGravity(16);
        TextView textView = new TextView(this.A0N);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        textView.setText(str);
        textView.setTextColor(-1);
        AbstractC3086qc.A0b(textView, true, 14);
        textView.setLayoutParams(layoutParams);
        relativeLayout.addView(textView);
        return relativeLayout;
    }

    private TextView A08() {
        TextView textView = new TextView(this.A0N);
        textView.setText(this.A0R.A05().A32().A0J().A01());
        textView.setTextColor(-2130706433);
        textView.setMaxLines(1);
        textView.setTypeface(Typeface.DEFAULT);
        textView.setTextSize(12.0f);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        return textView;
    }

    private TextView A09() {
        TextView textView = new TextView(this.A0N);
        textView.setText(getRatingText());
        textView.setTextColor(-2130706433);
        textView.setMaxLines(1);
        textView.setTypeface(Typeface.DEFAULT);
        textView.setTextSize(12.0f);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTextAlignment(4);
        return textView;
    }

    private TextView A0A() {
        TextView textView = new TextView(this.A0N);
        textView.setText(String.format(Locale.US, this.A0R.A05().A1p(), this.A0R.A05().A32().A0J().A0H()));
        textView.setTextColor(-1);
        textView.setMaxLines(3);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setTextSize(24.0f);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTextAlignment(4);
        return textView;
    }

    private TextView A0B() {
        TextView textView = new TextView(this.A0N);
        textView.setText(this.A0R.A05().A32().A0J().A0H());
        textView.setTextColor(-1);
        textView.setMaxLines(2);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setTextSize(18.0f);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        return textView;
    }

    private TextView A0C() {
        TextView textView = new TextView(this.A0N);
        textView.setText(getWatchAdCtaText());
        textView.setTextColor(-1);
        textView.setMaxLines(1);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setTextSize(14.0f);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTextAlignment(4);
        return textView;
    }

    private C3321uP A0D() {
        C3321uP c3321uP = new C3321uP(this.A0N);
        AbstractC3086qc.A0O(c3321uP, 0);
        int i = (int) (this.A00 * 0.13f);
        new AsyncTaskC1552Et(c3321uP, this.A0N).A05(i, i).A07(this.A0R.A05().A35().A01());
        return c3321uP;
    }

    private C3323uR A0E() {
        C3323uR c3323uR = new C3323uR(this.A0N, A0Y, 5, 0, -1);
        c3323uR.setRating(getRating());
        return c3323uR;
    }

    private C1459Be A0G() {
        C1459Be c1459Be = new C1459Be(this.A0R.A06());
        this.A0A = new C5Z(this.A0N, getAdEventManager(), c1459Be, this.A0R.A05().A37(), 0, 0, true, null, null);
        if (C2863mv.A20(this.A0N)) {
            this.A09 = new C1464Bj(this.A0N, getAdEventManager(), c1459Be, this.A0R.A05().A37(), false, this.A0A, null);
        } else {
            this.A09 = null;
        }
        c1459Be.setRoundedCornerVideoView(44.0f);
        return c1459Be;
    }

    public static String A0J(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0W, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 93);
        }
        return new String(bArrCopyOfRange);
    }

    private void A0K() {
        this.A0F.setOnClickListener(new ViewOnClickListenerC3377vJ(this));
        if (this.A0R.A05().A2b()) {
            this.A0M.setOnClickListener(new ViewOnClickListenerC3378vK(this));
        } else {
            this.A0H.setOnClickListener(new ViewOnClickListenerC3379vL(this));
        }
    }

    private void A0L() {
        if (this.A0R.A05().A3F()) {
            this.A06 = A00(this.A0N, this.A0R.A05(), this.A0O, EnumC3229sv.A06, this.A0R.A0C());
            AbstractC3086qc.A0L(this.A06);
        } else if (this.A0R.A05().A2b()) {
            this.A05 = AbstractC2480gb.A00(this.A0N.A02());
            this.A04 = A03();
            AbstractC3086qc.A0L(this.A04);
            A0O();
        }
    }

    private void A0M() {
        if (this.A0R.A05().A3U()) {
            this.A07 = A01(this.A0N, EnumC3229sv.A06);
            AbstractC3086qc.A0L(this.A07);
        }
    }

    private void A0N() {
        if (this.A0R.A05().A2b() && getRating() == 0.0f) {
            this.A0D.setVisibility(8);
            this.A0J.setVisibility(8);
            this.A0Q.setVisibility(8);
        }
        if (this.A0R.A05().A2c() && TextUtils.isEmpty(this.A0R.A05().A32().A0J().A01())) {
            this.A0D.setVisibility(8);
            this.A0E.setVisibility(8);
        }
        this.A0D.setVisibility(0);
    }

    private void A0O() {
        if (this.A04 != null) {
            this.A04.setOnClickListener(new ViewOnClickListenerC3376vI(this));
        }
        A0T(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0P() {
        this.A0O.A04(EnumC2891nN.A0A, null);
        C2416fZ c2416fZA35 = this.A0R.A05().A35();
        if (this.A05 != null) {
            C2479ga c2479ga = this.A05;
            C1617Hh c1617HhA02 = this.A0N.A02();
            if (A0X[4].length() == 8) {
                throw new RuntimeException();
            }
            A0X[2] = "H0da2AJoDU04fBWZp18sqTWdh7AlHgBI";
            if (c2479ga.A0O(c1617HhA02, true)) {
                this.A0R.A0C().ABW(this.A0R.A05().A37(), c2416fZA35);
                return;
            }
        }
        if (TextUtils.isEmpty(c2416fZA35.A00())) {
            return;
        }
        C3007pK.A0P(new C3007pK(), this.A0N, AbstractC3011pP.A00(c2416fZA35.A00()), this.A0R.A05().A37());
    }

    private void A0Q() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(1, this.A0C.getId());
        layoutParams.setMargins(AbstractC3043pv.A0g, 0, 0, 0);
        layoutParams.addRule(15);
        this.A0I.setLayoutParams(layoutParams);
    }

    public static void A0R() {
        A0W = new byte[]{72, 58, 9, Ascii.FS, 1, 6, Ascii.SI, 73, 66, 93, 10};
    }

    private void A0S(int i) {
        if (i == 1) {
            addView(this.A0P);
            addView(this.A0D);
            addView(this.A0K);
            addView(this.A0F);
            if (this.A0R.A05().A2b()) {
                addView(this.A0M);
                LinearLayout linearLayout = this.A04;
                if (A0X[3].charAt(4) == 'K') {
                    throw new RuntimeException();
                }
                A0X[2] = "z3czfpskOUR5GkPxj2XYuASmiSQbXh2o";
                if (linearLayout != null) {
                    addView(this.A04);
                }
            } else {
                addView(this.A0H);
            }
        } else {
            this.A0G.addView(this.A0P);
            this.A0G.addView(this.A0D);
            this.A0G.addView(this.A0K);
            this.A0G.addView(this.A0F);
            if (this.A0R.A05().A2b()) {
                this.A0G.addView(this.A0M);
                if (this.A04 != null) {
                    addView(this.A04);
                }
            } else {
                this.A0G.addView(this.A0H);
            }
            addView(this.A0G);
        }
        if (this.A06 != null && this.A0R.A05().A3F()) {
            addView(this.A06);
            if (this.A04 != null) {
                this.A04.setVisibility(8);
            }
        }
        if (this.A07 == null || !this.A0R.A05().A3U()) {
            return;
        }
        addView(this.A07);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0T(int i) {
        if (this.A03 == null || this.A02 == null) {
            return;
        }
        if (i != 0) {
            this.A03.setVisibility(i);
            this.A02.setVisibility(0);
            return;
        }
        this.A03.setVisibility(i);
        String[] strArr = A0X;
        if (strArr[1].charAt(31) == strArr[7].charAt(31)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0X;
        strArr2[1] = "yuhM75mJCrETKj6W01GXrzL1WP3RsBks";
        strArr2[7] = "Bx7K3oxm3Viy4XFbFch3qHWGz8cfQUAd";
        this.A02.setVisibility(8);
    }

    private void A0U(int i) {
        if (this.A04 == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.A04.getLayoutParams();
        layoutParams.setMargins(0, 0, i == 1 ? AbstractC3043pv.A0q : (int) (this.A01 * 0.1f), 0);
        this.A04.setLayoutParams(layoutParams);
    }

    private void A0V(int i) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (i == 1) {
            if (this.A0R.A05().A2b()) {
                layoutParams.addRule(3, this.A0P.getId());
            } else {
                layoutParams.addRule(3, this.A0S.getId());
            }
            layoutParams.setMargins(0, AbstractC3043pv.A0e, 0, 0);
            layoutParams.addRule(14);
        } else {
            layoutParams.addRule(1, this.A0P.getId());
            layoutParams.setMargins(AbstractC3043pv.A0e, 0, 0, 0);
        }
        this.A0D.setLayoutParams(layoutParams);
        A0N();
    }

    private void A0W(int i) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(3, this.A0L.getId());
        layoutParams.setMargins(0, AbstractC3043pv.A0r, 0, 0);
        if (i == 1) {
            if (A0X[3].charAt(4) == 'K') {
                throw new RuntimeException();
            }
            A0X[0] = "J9v3PB5TmSh1zCxqLI8WWx7dkTLoZjSL";
            layoutParams.addRule(14);
        }
        this.A0E.setLayoutParams(layoutParams);
    }

    private void A0X(int i) {
        if (this.A07 == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        int i2 = AbstractC3043pv.A0e;
        if (i == 1) {
            i2 = AbstractC3043pv.A0q;
        }
        layoutParams.setMargins(i2, 0, 0, AbstractC3043pv.A0e);
        layoutParams.addRule(12);
        layoutParams.addRule(9);
        this.A07.setLayoutParams(layoutParams);
    }

    private void A0Y(int i) {
        if (this.A06 == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        int i2 = AbstractC3043pv.A0e;
        if (i == 1) {
            i2 = AbstractC3043pv.A0q;
        }
        if (this.A0R.A05().A3S()) {
            layoutParams.addRule(10);
            layoutParams.addRule(9);
            layoutParams.setMargins(i2, AbstractC3043pv.A0u, 0, 0);
        } else {
            layoutParams.addRule(12);
            layoutParams.addRule(9);
            layoutParams.setMargins(i2, 0, 0, AbstractC3043pv.A0e);
        }
        this.A06.setLayoutParams(layoutParams);
    }

    private void A0Z(int i) {
        int i2;
        if (i == 1) {
            i2 = (int) (this.A00 * 0.13f);
            if (this.A0R.A05().A2c()) {
                this.A0P.setVisibility(8);
            } else {
                this.A0P.setRadius(30);
            }
        } else {
            i2 = (int) (this.A01 * 0.08f);
            this.A0P.setRadius(18);
            this.A0P.setVisibility(0);
        }
        int i3 = 0;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i2, i2);
        if (i == 1) {
            i3 = (-i2) / 2;
            layoutParams.addRule(14);
            layoutParams.addRule(3, this.A0S.getId());
        }
        layoutParams.setMargins(0, i3, 0, 0);
        this.A0P.setLayoutParams(layoutParams);
    }

    private void A0a(int i) {
        int i2;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(3, this.A0L.getId());
        if (i == 1) {
            i2 = AbstractC3043pv.A0y;
            layoutParams.addRule(14);
        } else {
            i2 = AbstractC3043pv.A0r;
        }
        layoutParams.setMargins(0, i2, 0, 0);
        this.A0Q.setLayoutParams(layoutParams);
        this.A0Q.setItemSpacing(AbstractC3043pv.A0y);
    }

    private void A0b(int i) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(3, this.A0Q.getId());
        layoutParams.setMargins(0, i == 1 ? AbstractC3043pv.A0y : AbstractC3043pv.A0r, 0, 0);
        if (i == 1) {
            layoutParams.addRule(14);
        }
        this.A0J.setLayoutParams(layoutParams);
    }

    private void A0c(int i) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        if (i == 1) {
            layoutParams.addRule(3, this.A0D.getId());
            layoutParams.setMargins(AbstractC3043pv.A0t, AbstractC3043pv.A0e, AbstractC3043pv.A0t, 0);
        } else {
            layoutParams.addRule(3, this.A0P.getId());
            layoutParams.setMargins(0, AbstractC3043pv.A0h, 0, 0);
        }
        this.A0K.setLayoutParams(layoutParams);
    }

    private void A0d(int i) {
        if (i == 2) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -1);
            layoutParams.addRule(15);
            if (AbstractC3021pZ.A05((float) this.A0R.A05().A1F())) {
                this.A0G.setGravity(17);
            } else {
                layoutParams.addRule(6, this.A0S.getId());
            }
            layoutParams.setMargins(0, 0, (int) (this.A01 * 0.1f), 0);
            layoutParams.addRule(13);
            layoutParams.addRule(1, this.A0S.getId());
            this.A0G.setLayoutParams(layoutParams);
        }
    }

    private void A0e(int i) {
        View view;
        int i2;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        if (i == 1) {
            if (this.A0R.A05().A2b()) {
                view = this.A0M;
                i2 = AbstractC3043pv.A0h;
            } else {
                view = this.A0H;
                i2 = AbstractC3043pv.A0y;
            }
            layoutParams.setMargins(AbstractC3043pv.A0q, 0, AbstractC3043pv.A0q, i2);
            layoutParams.addRule(2, view.getId());
        } else {
            int i3 = AbstractC3043pv.A0n;
            if (this.A0R.A05().A3F()) {
                i3 = AbstractC3043pv.A0i;
            }
            layoutParams.setMargins(0, i3, 0, 0);
            layoutParams.addRule(3, this.A0K.getId());
        }
        this.A0F.setLayoutParams(layoutParams);
    }

    private void A0f(int i) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (i == 1) {
            this.A0L.setTextAlignment(4);
            layoutParams.setMargins(AbstractC3043pv.A0s, 0, AbstractC3043pv.A0s, 0);
        } else {
            this.A0L.setTextAlignment(5);
        }
        this.A0L.setLayoutParams(layoutParams);
    }

    private void A0g(int i) {
        int i2;
        RelativeLayout.LayoutParams layoutParams;
        int i3;
        double dA1F = this.A0R.A05().A1F();
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        if (i == 1) {
            if (AbstractC3021pZ.A05((float) dA1F)) {
                int i7 = this.A00;
                String[] strArr = A0X;
                if (strArr[5].length() == strArr[6].length()) {
                    throw new RuntimeException();
                }
                A0X[3] = "Mmbokwrq1b9TDvTZ3G4UF7tDdfBexUOo";
                i3 = (int) (i7 * 0.2f);
                i6 = i3;
            } else if (AbstractC3021pZ.A04((float) dA1F)) {
                i6 = (int) (this.A00 * 0.1f);
                i3 = (int) (this.A00 * 0.3f);
            } else {
                i6 = (int) (this.A00 * 0.1f);
                i3 = (int) (this.A00 * 0.4f);
            }
            layoutParams = new RelativeLayout.LayoutParams(-2, i3);
        } else {
            if (AbstractC3021pZ.A03((float) dA1F)) {
                i4 = (int) (this.A01 * 0.2f);
                i5 = (int) (this.A01 * 0.1f);
                i2 = (int) (this.A01 * 0.15f);
            } else if (AbstractC3021pZ.A05((float) dA1F)) {
                i5 = (int) (this.A01 * 0.1f);
                i4 = i5;
                i2 = (int) (this.A01 * 0.32f);
            } else if (AbstractC3021pZ.A04((float) dA1F)) {
                i4 = (int) (this.A01 * 0.15f);
                i5 = (int) (this.A01 * 0.1f);
                i2 = (int) (this.A01 * 0.27f);
            } else {
                i4 = (int) (this.A01 * 0.15f);
                i5 = (int) (this.A01 * 0.1f);
                i2 = (int) (this.A01 * 0.215f);
            }
            layoutParams = new RelativeLayout.LayoutParams(i2, -2);
        }
        layoutParams.setMargins(i4, i6, i5, 0);
        if (i == 2) {
            layoutParams.addRule(15);
        } else {
            layoutParams.addRule(14);
        }
        this.A0S.setLayoutParams(layoutParams);
    }

    private void A0h(int i) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.A00 = displayMetrics.heightPixels;
        this.A01 = displayMetrics.widthPixels;
        A0d(i);
        A0g(i);
        A0Z(i);
        A0f(i);
        A0b(i);
        A0Q();
        A0W(i);
        A0a(i);
        A0V(i);
        A0c(i);
        if (this.A0R.A05().A2b()) {
            A0j(i);
            A0U(i);
        } else {
            A0i(i);
        }
        A0Y(i);
        A0X(i);
        A0e(i);
    }

    private void A0i(int i) {
        int i2;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        if (i == 1) {
            if (!this.A0R.A05().A3F() || this.A06 == null) {
                layoutParams.addRule(12);
                i2 = AbstractC3043pv.A0t;
            } else if (this.A0R.A05().A3U() && this.A07 != null) {
                layoutParams.addRule(2, this.A07.getId());
                i2 = AbstractC3043pv.A0e;
            } else if (this.A0R.A05().A3S()) {
                layoutParams.addRule(12);
                i2 = AbstractC3043pv.A0n;
            } else {
                layoutParams.addRule(2, this.A06.getId());
                i2 = AbstractC3043pv.A0e;
            }
            layoutParams.setMargins(AbstractC3043pv.A0q, 0, AbstractC3043pv.A0q, i2);
        } else {
            layoutParams.addRule(3, this.A0F.getId());
            layoutParams.setMargins(0, AbstractC3043pv.A0y, 0, 0);
        }
        this.A0H.setLayoutParams(layoutParams);
    }

    private void A0j(int i) {
        int i2;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (i == 1) {
            if (!this.A0R.A05().A3F() || this.A06 == null) {
                layoutParams.addRule(12);
                i2 = AbstractC3043pv.A0t;
            } else if (this.A0R.A05().A3U() && this.A07 != null) {
                C3230sw c3230sw = this.A07;
                if (A0X[3].charAt(4) == 'K') {
                    throw new RuntimeException();
                }
                String[] strArr = A0X;
                strArr[5] = "GfMeNdgRkhTPpCLz0QK";
                strArr[6] = "wTA";
                layoutParams.addRule(2, c3230sw.getId());
                i2 = AbstractC3043pv.A0e;
            } else if (this.A0R.A05().A3S()) {
                layoutParams.addRule(12);
                i2 = AbstractC3043pv.A0p;
            } else {
                layoutParams.addRule(2, this.A06.getId());
                i2 = AbstractC3043pv.A0e;
            }
            layoutParams.setMargins(0, 0, 0, i2);
            layoutParams.addRule(14);
        } else {
            layoutParams.setMargins(0, AbstractC3043pv.A0e, 0, 0);
            layoutParams.addRule(3, this.A0F.getId());
            layoutParams.addRule(14);
        }
        this.A0M.setLayoutParams(layoutParams);
    }

    private float getRating() {
        try {
            return Float.parseFloat(this.A0R.A05().A32().A0J().A0D());
        } catch (NumberFormatException unused) {
            return 0.0f;
        }
    }

    private String getRatingText() {
        return String.format(Locale.US, A0J(7, 4, 49), Float.valueOf(getRating())) + A0J(0, 7, 53);
    }

    private String getWatchAdCtaText() {
        return String.format(Locale.US, this.A0R.A05().A1q(), Integer.valueOf(this.A0R.A05().A32().A0I().A03()));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final EnumC2358ec A1P(String str) {
        return EnumC2358ec.A08;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final void A1Q() {
        super.A1Q();
        if (this.A09 != null) {
            this.A09.A07();
        }
        if (this.A0A != null) {
            C5Z c5z = this.A0A;
            if (A0X[2].charAt(13) == 'Y') {
                throw new RuntimeException();
            }
            A0X[0] = "76X0eNcLmtr1QXaTANrFByq0kBvCaQsQ";
            c5z.A0p();
        }
        this.A0B.removeCallbacksAndMessages(null);
        this.A0S.getEventBus().A04(this.A0U, this.A0T);
        this.A08 = null;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final boolean A1g() {
        return true;
    }

    public final void A1j(C5Z c5z) {
        if (this.A0A != null) {
            this.A0A.A0o(c5z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        AbstractC3086qc.A0e(this.A0P, this.A0D, this.A0K, this.A0F, this.A0H, this.A0M, this.A04, this.A06, this.A07, this.A0G);
        A0h(configuration.orientation);
        A0S(configuration.orientation);
    }

    public void setVideoAdViewListener(InterfaceC3069qL interfaceC3069qL) {
        this.A08 = interfaceC3069qL;
    }
}
