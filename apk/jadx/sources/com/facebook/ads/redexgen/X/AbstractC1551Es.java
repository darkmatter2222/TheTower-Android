package com.facebook.ads.redexgen.X;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.Typeface;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.google.common.base.Ascii;
import com.ironsource.InterfaceC3669k1;
import com.unity3d.ads.core.domain.WebViewScreenCapture;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Es, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC1551Es extends AbstractC3284to {
    public static byte[] A0d;
    public static String[] A0e = {"YZ7mqjMCQ4ZVS7HIRuPKvqVzJvYDJjdD", "lf7WQpUcEjqKCnwGgiKUdASR4zq", "78RW0uF9JjhamCOT1k0B6fMdCwhsJ6j0", "lwjyCH5IXGWzF7Np2iOjyUwAY4Xv8s6d", "rGH3h8SRsM9Uii0yiVX16M", "22wTTyXUf6EH4LTYMfLJxIQ4ktQKPU0x", "B763Zxo7MnxWTyFcqWboTePk3FDt9EU0", "ld5blse1oDiYMYeftQDrypWljETt4iPj"};
    public static final int A0f;
    public static final int A0g;
    public static final int A0h;
    public static final int A0i;
    public static final int A0j;
    public static final int A0k;
    public static final int A0l;
    public static final int A0m;
    public static final int A0n;
    public static final int A0o;
    public static final int A0p;
    public AnimatorSet A00;
    public int A01;
    public int A02;
    public int A03;
    public TextView A04;
    public C3226ss A05;
    public C3230sw A06;
    public C1434Af A07;
    public final int A08;
    public final C2416fZ A09;
    public final C2479ga A0A;
    public final C2892nO A0B;
    public final InterfaceC3119r9 A0C;
    public final Runnable A0D;
    public final Runnable A0E;
    public final String A0F;
    public final Handler A0G;
    public final View A0H;
    public final ImageView A0I;
    public final ImageView A0J;
    public final ImageView A0K;
    public final LinearLayout A0L;
    public final LinearLayout A0M;
    public final RelativeLayout A0N;
    public final RelativeLayout A0O;
    public final RelativeLayout A0P;
    public final TextView A0Q;
    public final TextView A0R;
    public final LA A0S;
    public final C2402fL A0T;
    public final C2404fN A0U;
    public final C1618Hi A0V;
    public final C3226ss A0W;
    public final C1441Am A0X;
    public final Runnable A0Y;
    public final AtomicBoolean A0Z;
    public final AtomicBoolean A0a;
    public final boolean A0b;
    public final boolean A0c;

    static {
        A0a();
        A0o = AbstractC3043pv.A0O;
        A0j = AbstractC3043pv.A0S;
        A0l = AbstractC3043pv.A0P;
        A0m = AbstractC3043pv.A03;
        A0n = AbstractC3043pv.A04;
        A0k = AbstractC3043pv.A0A;
        A0g = AbstractC2501gx.A02(-1, 255);
        A0f = AbstractC2501gx.A02(-1, 20);
        A0p = AbstractC3043pv.A0U;
        A0h = AbstractC3043pv.A0N;
        A0i = AbstractC3043pv.A0a;
    }

    public AbstractC1551Es(C1618Hi c1618Hi, ViewOnClickListenerC1544El viewOnClickListenerC1544El, int i, boolean z, C2404fN c2404fN, boolean z2, String str, InterfaceC2884nG interfaceC2884nG, InterfaceC3119r9 interfaceC3119r9, C2199c2 c2199c2, C3077qT c3077qT, LA la, C1441Am c1441Am, C2892nO c2892nO, boolean z3) {
        super(c1618Hi, viewOnClickListenerC1544El, i, c2404fN, z2, str, interfaceC2884nG, interfaceC3119r9, c2199c2, c3077qT, la.A33(), la.A2W(), la.A1f());
        this.A0Z = new AtomicBoolean(true);
        this.A0a = new AtomicBoolean(false);
        this.A0Y = new RunnableC3285tp(this);
        this.A0E = new RunnableC3286tq(this);
        this.A0D = new RunnableC3287tr(this);
        this.A0B = c2892nO;
        this.A0S = la;
        this.A0A = AbstractC2480gb.A00(c1618Hi.A02());
        this.A0C = interfaceC3119r9;
        this.A0F = la.A37();
        this.A09 = la.A35();
        this.A0U = c2404fN;
        this.A0T = la.A32().A0J();
        this.A0V = c1618Hi;
        this.A0b = z;
        this.A0c = z3;
        this.A0G = new Handler(Looper.getMainLooper());
        this.A0I = new ImageView(this.A0V);
        this.A0J = new ImageView(this.A0V);
        AbstractC3086qc.A0H(1104, this.A0I);
        AbstractC3086qc.A0H(1105, this.A0J);
        this.A0W = AbstractC3231sx.A01(this.A0V, true, this.A0S, this.A0B, this.A0C, EnumC3229sv.A03, AbstractC3228su.A00(this.A0S));
        AbstractC3086qc.A0H(1116, this.A0W);
        this.A01 = -1;
        this.A03 = ViewCompat.MEASURED_STATE_MASK;
        this.A0P = A0O();
        this.A0N = A0M();
        this.A0O = A0N();
        A0V();
        A0U();
        this.A0M = new LinearLayout(this.A0V);
        this.A0M.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        AbstractC3086qc.A0L(this.A0M);
        this.A0K = A0K();
        AbstractC3086qc.A0L(this.A0K);
        if (this.A0c) {
            this.A0K.setVisibility(0);
            this.A0K.setOnClickListener(AbstractC3335ud.A03(super.A08, A0T(6, 10, 69)));
        } else {
            this.A0K.setVisibility(8);
        }
        if (super.A08.getParent() != null) {
            ((ViewGroup) super.A08.getParent()).removeView(super.A08);
        }
        this.A0R = A0R();
        AbstractC3086qc.A0H(1107, this.A0R);
        this.A0Q = A0P();
        AbstractC3086qc.A0H(1108, this.A0Q);
        this.A0X = A0S(c1441Am);
        AbstractC3086qc.A0H(1109, this.A0X);
        this.A0H = this.A0S.A2i() ? C2312ds.A02(this.A0V, this.A0X, A0g, A0f, A0p) : this.A0X;
        if (this.A0S.A2U()) {
            this.A0H.setVisibility(8);
        }
        this.A0L = A0L();
        AbstractC3086qc.A0H(1103, this.A0L);
        this.A0L.setOnClickListener(new ViewOnClickListenerC3288ts(this));
        A0t(8);
        setUpAdReportingInitiateView(la);
        setUpCreditLineV2(la);
        this.A08 = this.A0S.A32().A0I().A03();
        if (this.A0S.A1c().equals(A0T(60, 14, 31)) && !la.A2T() && this.A08 > 0) {
            this.A04 = A0Q();
            AbstractC3086qc.A0H(1110, this.A04);
        }
        this.A0G.postDelayed(this.A0E, WebViewScreenCapture.CACHE_TTL_MS);
    }

    public static int A0I(int i) {
        if (AbstractC2501gx.A01(i, -1) >= 4.5d) {
            return -1;
        }
        return ViewCompat.MEASURED_STATE_MASK;
    }

    private ImageView A0K() {
        ImageView imageView = new ImageView(this.A0V);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(A0k, A0k);
        layoutParams.addRule(14);
        layoutParams.setMargins(0, 0, 0, AbstractC3043pv.A0y);
        imageView.setLayoutParams(layoutParams);
        imageView.setImageBitmap(AbstractC3098qo.A01(EnumC3097qn.CHEVRON_UP));
        return imageView;
    }

    private LinearLayout A0L() {
        LinearLayout linearLayout = new LinearLayout(this.A0V);
        linearLayout.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        this.A0I.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        this.A0I.setImageBitmap(AbstractC3098qo.A01(EnumC3097qn.AD_CHOICE_V2_COLLAPSE));
        linearLayout.addView(this.A0I);
        this.A0J.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        this.A0J.setImageBitmap(AbstractC3098qo.A01(EnumC3097qn.AD_CHOICE_V2_EXPAND));
        linearLayout.addView(this.A0J);
        return linearLayout;
    }

    private RelativeLayout A0M() {
        RelativeLayout relativeLayout = new RelativeLayout(this.A0V);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        relativeLayout.setClipChildren(false);
        relativeLayout.setClipToPadding(false);
        AbstractC3086qc.A0L(relativeLayout);
        return relativeLayout;
    }

    private RelativeLayout A0N() {
        RelativeLayout relativeLayout = new RelativeLayout(this.A0V);
        new RelativeLayout.LayoutParams(-1, -2).addRule(16);
        AbstractC3086qc.A0L(relativeLayout);
        return relativeLayout;
    }

    private RelativeLayout A0O() {
        RelativeLayout relativeLayout = new RelativeLayout(this.A0V);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        return relativeLayout;
    }

    private TextView A0P() {
        TextView textView = new TextView(this.A0V);
        textView.setText(this.A0c ? this.A0T.A0H() : this.A0T.A0G());
        textView.setTextColor(-1);
        textView.setMaxLines(4);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTextAlignment(4);
        textView.setTypeface(Typeface.DEFAULT);
        textView.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        return textView;
    }

    private TextView A0Q() {
        TextView textView = new TextView(this.A0V);
        textView.setTextColor(-855638017);
        textView.setMaxLines(1);
        textView.setTypeface(Typeface.DEFAULT);
        textView.setTextSize(14.0f);
        textView.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        AbstractC3086qc.A0L(textView);
        return textView;
    }

    private TextView A0R() {
        TextView textView = new TextView(this.A0V);
        textView.setText(this.A0c ? this.A0T.A0G() : this.A0T.A0H());
        textView.setTextColor(-1);
        textView.setMaxLines(2);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setTextSize(30.0f);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTextAlignment(4);
        textView.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        return textView;
    }

    private C1441Am A0S(C1441Am c1441Am) {
        if (c1441Am == null) {
            c1441Am = new C1441Am(this.A0V, -1);
            c1441Am.setVisibility(8);
        }
        c1441Am.A0A(A0g, A0f, true);
        c1441Am.setPadding(0, 0, 0, 0);
        c1441Am.setLayoutParams(new RelativeLayout.LayoutParams(-1, A0p));
        return c1441Am;
    }

    public static String A0T(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0d, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 118);
        }
        return new String(bArrCopyOfRange);
    }

    private void A0U() {
        this.A02 = 30;
        super.A08.setIncludeFontPadding(false);
        super.A08.setTextSize(18.0f);
        super.A08.setTextColor(this.A03);
        super.A08.setOutlineProvider(null);
        AbstractC3086qc.A0W(super.A08, AbstractC3086qc.A06(this.A01, this.A02));
        super.A08.setLayoutParams(new RelativeLayout.LayoutParams(-2, A0j));
        AbstractC3086qc.A0H(1001, super.A08);
        if (!this.A0S.A1g().isEmpty() || EnumC2935o7.A00(this.A0S.A1a()) == EnumC2935o7.A06) {
            if (Build.VERSION.SDK_INT >= 28) {
                super.A08.setTypeface(Typeface.create(Typeface.SANS_SERIF, 600, false));
            } else {
                super.A08.setTypeface(Typeface.create(A0T(74, 17, 41), 0));
            }
        }
    }

    private void A0V() {
        if (this.A0b) {
            super.A09.setFullCircleCorners(true);
        } else {
            super.A09.setRadius(15);
        }
        AbstractC3086qc.A0O(super.A09, 0);
        super.A09.setLayoutParams(new RelativeLayout.LayoutParams(A0l, A0l));
        AbstractC3086qc.A0L(super.A09);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0W() {
        if (this.A0B != null) {
            this.A0B.A04(EnumC2891nN.A0A, null);
        }
        C2479ga c2479ga = this.A0A;
        C1617Hh c1617HhA02 = this.A0V.A02();
        if (A0e[1].length() == 18) {
            throw new RuntimeException();
        }
        String[] strArr = A0e;
        strArr[5] = "21oPnUFpyuOPK2fB009ubeUcH8EMAvZw";
        strArr[7] = "KnNEyrKNEpVmEzjcBxoivzciYA3Ii2PI";
        if (c2479ga.A0O(c1617HhA02, true)) {
            this.A0C.ABW(this.A0F, this.A09);
        } else {
            if (TextUtils.isEmpty(this.A09.A00())) {
                return;
            }
            C3007pK.A0P(new C3007pK(), this.A0V, AbstractC3011pP.A00(this.A09.A00()), this.A0F);
        }
    }

    private void A0X() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(AbstractC3043pv.A0e, 0, 0, 0);
        layoutParams.addRule(12);
        layoutParams.addRule(9);
        this.A0L.setLayoutParams(layoutParams);
    }

    private void A0Y() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (this.A0S.A3S()) {
            layoutParams.setMargins(0, 0, AbstractC3043pv.A0h, AbstractC3043pv.A0y);
            layoutParams.addRule(12);
            layoutParams.addRule(11);
        } else {
            layoutParams.setMargins(AbstractC3043pv.A0c, 0, 0, 0);
            layoutParams.addRule(8, this.A0H.getId());
            layoutParams.addRule(1, this.A0H.getId());
        }
        this.A0W.setLayoutParams(layoutParams);
    }

    private void A0Z() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, A0p);
        layoutParams.width = (int) (getResources().getDisplayMetrics().widthPixels * 0.42f);
        layoutParams.addRule(14);
        layoutParams.addRule(12);
        layoutParams.setMargins(0, 0, 0, AbstractC3043pv.A0y);
        this.A0H.setLayoutParams(layoutParams);
    }

    public static void A0a() {
        A0d = new byte[]{63, Ascii.ETB, 1, 7, Ascii.ETB, 57, 80, 91, 86, 69, 65, 92, 93, 108, 70, 67, 44, 45, 59, 43, 58, 33, 56, 60, 33, 39, 38, 1, Ascii.VT, 7, 6, 119, 107, 102, 100, 98, 88, 111, 104, 107, 99, 98, 117, 88, 115, 98, 127, 115, 109, 111, 114, 122, 111, 120, 110, 110, 66, 127, 124, 111, Ascii.ESC, Ascii.FF, Ascii.RS, 8, Ascii.ESC, Ascii.CR, Ascii.FF, Ascii.CR, 54, Ascii.US, 0, Ascii.CR, Ascii.FF, 6, 44, 62, 49, 44, 114, 44, 58, 45, 54, 57, 114, 50, 58, 59, 54, 42, 50, 52, 41, 52, 44, 37, 69, 67, 80, 95, 66, 93, 80, 69, 88, 94, 95, 104};
    }

    private void A0b(int i, int i2) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, 0, AbstractC3043pv.A0e, 0);
        if (i2 == 1) {
            layoutParams.addRule(11);
        } else {
            layoutParams.addRule(0, i);
        }
        layoutParams.addRule(12);
        this.A0L.setLayoutParams(layoutParams);
    }

    private void A0c(int i, int i2) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.removeRule(7);
        layoutParams.removeRule(2);
        layoutParams.removeRule(12);
        layoutParams.removeRule(0);
        if (i2 != 1) {
            if (this.A0S.A3S()) {
                layoutParams.setMargins(0, 0, AbstractC3043pv.A0e, AbstractC3043pv.A0h);
            } else {
                layoutParams.setMargins(0, 0, AbstractC3043pv.A0e, AbstractC3043pv.A0y);
            }
            layoutParams.addRule(0, i);
            layoutParams.addRule(12);
        } else if (this.A0H.getVisibility() == 8) {
            layoutParams.setMargins(0, 0, AbstractC3043pv.A0e, AbstractC3043pv.A0y);
            layoutParams.addRule(12);
            layoutParams.addRule(11);
        } else {
            if (this.A0S.A3S()) {
                layoutParams.addRule(12);
                layoutParams.addRule(7, this.A0H.getId());
            } else {
                layoutParams.addRule(2, this.A0H.getId());
                layoutParams.addRule(7, this.A0H.getId());
            }
            layoutParams.setMargins(0, 0, 0, AbstractC3043pv.A0y);
        }
        this.A0W.setLayoutParams(layoutParams);
    }

    private void A0d(int i, int i2) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, A0p);
        if (i2 == 1) {
            layoutParams.addRule(12);
            if (this.A0W.getVisibility() == 8) {
                layoutParams.setMargins(AbstractC3043pv.A0e, 0, AbstractC3043pv.A0y, AbstractC3043pv.A0y);
                layoutParams.addRule(0, this.A0L.getId());
            } else if (this.A0S.A3S()) {
                layoutParams.setMargins(AbstractC3043pv.A0e, 0, AbstractC3043pv.A0e, AbstractC3043pv.A0m);
            } else {
                layoutParams.setMargins(AbstractC3043pv.A0e, 0, AbstractC3043pv.A0e, AbstractC3043pv.A0y);
            }
        } else {
            if (this.A0W.getVisibility() == 8) {
                layoutParams.setMargins(AbstractC3043pv.A0e, 0, AbstractC3043pv.A0e, AbstractC3043pv.A0y);
                layoutParams.addRule(2, this.A0L.getId());
            } else {
                layoutParams.setMargins(AbstractC3043pv.A0e, 0, AbstractC3043pv.A0e, AbstractC3043pv.A0r);
                layoutParams.addRule(2, this.A0W.getId());
            }
            layoutParams.addRule(0, i);
        }
        layoutParams.addRule(14);
        this.A0H.setLayoutParams(layoutParams);
    }

    private void A0e(View view) {
        if (view != null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(AbstractC3043pv.A0h, 0, 0, AbstractC3043pv.A0y);
            layoutParams.addRule(12);
            layoutParams.addRule(9);
            view.setLayoutParams(layoutParams);
        }
    }

    private void A0f(View view, int i) {
        if (view != null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.removeRule(5);
            layoutParams.removeRule(12);
            layoutParams.removeRule(1);
            if (i != 1) {
                layoutParams.setMargins(0, 0, 0, AbstractC3043pv.A0h);
                layoutParams.addRule(5, this.A0H.getId());
                layoutParams.addRule(12);
            } else if (this.A0H.getVisibility() == 8) {
                layoutParams.setMargins(AbstractC3043pv.A0e, 0, 0, AbstractC3043pv.A0y);
                layoutParams.addRule(12);
                layoutParams.addRule(9);
            } else {
                layoutParams.setMargins(0, 0, 0, AbstractC3043pv.A0y);
                layoutParams.addRule(12);
                layoutParams.addRule(5, this.A0H.getId());
            }
            view.setLayoutParams(layoutParams);
        }
    }

    private void setUpAdReportingInitiateView(LA la) {
        if (!la.A3O() && !la.A3S()) {
            this.A0W.setVisibility(8);
            return;
        }
        this.A0L.setVisibility(8);
        String[] strArr = A0e;
        if (strArr[3].charAt(23) == strArr[2].charAt(23)) {
            throw new RuntimeException();
        }
        A0e[6] = "0FcdVCAcjavFmKr8FtV8pQfbpWB7inim";
        this.A0I.setVisibility(8);
        this.A0J.setVisibility(8);
    }

    private void setUpCreditLineV2(LA la) {
        if (la.A3U()) {
            this.A06 = AbstractC3231sx.A02(this.A0V, EnumC3229sv.A03, la);
            AbstractC3086qc.A0H(1117, this.A06);
        } else if (la.A3T()) {
            this.A05 = AbstractC3231sx.A01(this.A0V, true, this.A0S, this.A0B, this.A0C, EnumC3229sv.A03, EnumC3232sy.A04);
            AbstractC3086qc.A0L(this.A05);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3284to
    public final void A0j() {
        this.A0G.removeCallbacksAndMessages(null);
        AbstractC3086qc.A0e(this.A0P, this.A0O, super.A09, this.A0R, super.A08, this.A0X, this.A0H, this.A04, this.A0Q, this.A0L, this.A0W, this.A06, this.A05, this.A0K, this.A0N);
        removeAllViews();
        this.A0W.A0O();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3284to
    public final void A0k() {
        super.A09.setOnClickListener(AbstractC3335ud.A03(super.A08, A0T(27, 4, 30)));
        this.A0R.setOnClickListener(AbstractC3335ud.A03(super.A08, A0T(91, 5, 54)));
        this.A0Q.setOnClickListener(AbstractC3335ud.A03(super.A08, A0T(16, 11, 62)));
        this.A0X.setOnClickListener(AbstractC3335ud.A03(super.A08, A0T(48, 12, kotlin.fh.h1)));
        if (this.A04 != null) {
            TextView textView = this.A04;
            ViewOnClickListenerC1544El viewOnClickListenerC1544El = super.A08;
            if (A0e[0].charAt(10) == 'E') {
                throw new RuntimeException();
            }
            A0e[0] = "yvH0iGYeyfHnJzYK2LpOtn5mOMwEyg0X";
            textView.setOnClickListener(AbstractC3335ud.A03(viewOnClickListenerC1544El, A0T(31, 17, InterfaceC3669k1.d.b.k)));
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3284to
    public void A0l(int i) {
        A0o();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3284to
    public final void A0m(boolean z) {
        super.A0m(z);
        if (z) {
            return;
        }
        this.A0W.A0P();
    }

    public final void A0n() {
        if (this.A04 != null) {
            this.A04.setVisibility(8);
        }
    }

    public final void A0o() {
        if (this.A00 != null) {
            this.A00.cancel();
            this.A0G.removeCallbacks(this.A0D);
        }
    }

    public final void A0p() {
        super.A08.setIncludeFontPadding(false);
        super.A08.setTextSize(18.0f);
        super.A08.setTextColor(this.A03);
        AbstractC3086qc.A0W(super.A08, AbstractC3086qc.A06(this.A01, this.A02));
        super.A08.A0D();
    }

    public final void A0q() {
        super.A08.A0D();
    }

    public final void A0r() {
        if (this.A00 != null) {
            float height = super.A08.getHeight() * 0.1f;
            String strA0T = A0T(96, 12, 71);
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(super.A08, strA0T, -height, 0.0f);
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.A0K, strA0T, -height, 0.0f);
            objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
            objectAnimatorOfFloat2.setInterpolator(new LinearInterpolator());
            this.A00.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
            this.A00.setDuration(600L);
            this.A00.start();
        }
    }

    public final void A0s(int i) {
        if (this.A04 != null) {
            int iMax = Math.max(0, this.A08 - i);
            if (iMax <= 0) {
                this.A04.setVisibility(8);
                return;
            }
            this.A04.setText(this.A0S.A36().A07().replace(A0T(0, 6, 18), String.valueOf(iMax)));
        }
    }

    public final void A0t(int i) {
        if (i == 0) {
            this.A0J.setVisibility(i);
            this.A0I.setVisibility(8);
        } else {
            this.A0J.setVisibility(i);
            this.A0I.setVisibility(0);
        }
    }

    public abstract void A0u(int i);

    public final void A0v(long j) {
        this.A00 = new AnimatorSet();
        this.A0G.postDelayed(this.A0D, j);
    }

    public void A0w(View view, int i, float[] fArr) {
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(fArr, null, null));
        shapeDrawable.getPaint().setColor(i);
        view.setBackground(shapeDrawable);
    }

    public final void A0x(ViewGroup viewGroup, View view) {
        if (view != null) {
            viewGroup.addView(view);
        }
    }

    public abstract void A0y(ViewGroup viewGroup, RelativeLayout relativeLayout, int i);

    public final void A0z(ViewGroup viewGroup, boolean z, boolean z2, int i) {
        AbstractC3086qc.A0e(this.A0L, this.A0W, this.A06, this.A0H, super.A09, this.A0R, this.A0Q, this.A04, this.A05);
        AbstractC3086qc.A0K(this);
        int i2 = getResources().getConfiguration().orientation;
        if (!z) {
            this.A0H.setLayoutParams(new RelativeLayout.LayoutParams(-1, A0p));
            if (this.A04 != null) {
                this.A04.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
                return;
            }
            return;
        }
        if (i2 == 2 && z2) {
            A0X();
            viewGroup.addView(this.A0L);
            A0Z();
            viewGroup.addView(this.A0H);
            A0Y();
            viewGroup.addView(this.A0W);
            A0e(this.A06);
            A0e(this.A05);
            A0x(viewGroup, this.A06);
            A0x(viewGroup, this.A05);
        } else {
            A0b(i, i2);
            viewGroup.addView(this.A0L);
            A0d(i, i2);
            viewGroup.addView(this.A0H);
            A0c(i, i2);
            viewGroup.addView(this.A0W);
            A0f(this.A06, i2);
            A0f(this.A05, i2);
            A0x(viewGroup, this.A06);
            A0x(viewGroup, this.A05);
        }
        if (this.A04 != null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            if (this.A0H.getVisibility() == 8) {
                layoutParams.addRule(12);
                layoutParams.addRule(9);
                layoutParams.setMargins(AbstractC3043pv.A0e, 0, 0, AbstractC3043pv.A0m);
            } else {
                layoutParams.addRule(2, this.A0H.getId());
                layoutParams.addRule(5, this.A0H.getId());
                layoutParams.setMargins(0, 0, 0, AbstractC3043pv.A0y);
            }
            this.A04.setLayoutParams(layoutParams);
            viewGroup.addView(this.A04);
        }
    }

    public final void A10(RelativeLayout relativeLayout) {
        if (this.A04 == null || this.A04.getVisibility() != 0) {
            return;
        }
        relativeLayout.addView(this.A04);
    }

    public final boolean A11() {
        return this.A04 != null && this.A04.getVisibility() == 0;
    }

    public C1441Am getProgressBarAnimation() {
        return this.A0X;
    }

    public void setCTAClickListener(View.OnClickListener onClickListener) {
        super.A09.setOnClickListener(onClickListener);
        this.A0R.setOnClickListener(onClickListener);
        this.A0Q.setOnClickListener(onClickListener);
        this.A0X.setOnClickListener(onClickListener);
        if (this.A04 != null) {
            this.A04.setOnClickListener(onClickListener);
        }
    }

    public void setChainedAdInfo(String str) {
        this.A04 = A0Q();
        AbstractC3086qc.A0L(this.A04);
        this.A04.setText(str);
    }

    public void setPlaceHolderTextForRewardsConversion(String str) {
        if (this.A04 != null) {
            this.A04.setText(str);
            this.A04.setOnClickListener(AbstractC3335ud.A03(super.A08, A0T(31, 17, InterfaceC3669k1.d.b.k)));
        }
    }
}
