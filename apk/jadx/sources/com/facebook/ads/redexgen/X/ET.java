package com.facebook.ads.redexgen.X;

import android.R;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowMetrics;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.common.base.Ascii;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class ET extends AbstractC3345un {
    public static byte[] A0l;
    public static String[] A0m = {"E7d9V", "HfiTPdnQE6JsOHdYoOA4lRNnbQ3", "7AVXCU5oRbsgBqmorHmAVCwb6r5tuTQ8", "hoWzaZbN7yXesQFa", "a3ZYa3", "EXUfJIeYYGyfdCGOPOS2l0on83CPH94Z", "MYJwByDzw5bCUSkxw6qgTJ7WJbI", "X3l5ZIwYV4"};
    public static final int A0n;
    public static final int A0o;
    public static final int A0p;
    public static final int A0q;
    public static final int A0r;
    public float A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public Handler A08;
    public View A09;
    public InputMethodManager A0A;
    public LinearLayout A0B;
    public LinearLayout A0C;
    public TextView A0D;
    public LA A0E;
    public AbstractRunnableC2979oq A0F;
    public F6 A0G;
    public C3250tG A0H;
    public F4 A0I;
    public C3349ur A0J;
    public C3390vW A0K;
    public boolean A0L;
    public boolean A0M;
    public boolean A0N;
    public boolean A0O;
    public boolean A0P;
    public boolean A0Q;
    public boolean A0R;
    public boolean A0S;
    public boolean A0T;
    public boolean A0U;
    public boolean A0V;
    public boolean A0W;
    public boolean A0X;
    public boolean A0Y;
    public boolean A0Z;
    public final Handler A0a;
    public final View A0b;
    public final AbstractC2361ef A0c;
    public final C2892nO A0d;
    public final InterfaceC3303u7 A0e;
    public final InterfaceC3318uM A0f;
    public final C3319uN A0g;
    public final C1441Am A0h;
    public final Runnable A0i;
    public final boolean A0j;
    public final boolean A0k;

    static {
        A0W();
        A0p = AbstractC3043pv.A0F;
        A0n = AbstractC3043pv.A0K;
        A0r = AbstractC3043pv.A0X;
        A0o = AbstractC2501gx.A02(-1, 77);
        A0q = AbstractC3043pv.A06;
    }

    public ET(C3349ur c3349ur) {
        super(c3349ur, true);
        this.A02 = 0;
        this.A0L = false;
        this.A0U = false;
        this.A0W = false;
        this.A0X = false;
        this.A0Y = false;
        this.A0V = false;
        this.A0Z = false;
        this.A0P = false;
        this.A0R = false;
        this.A0Q = false;
        this.A0O = false;
        this.A07 = 0;
        this.A01 = 0;
        this.A0S = false;
        this.A0T = true;
        this.A0a = new Handler(Looper.getMainLooper());
        this.A0i = new RunnableC3366v8(this);
        this.A0N = false;
        this.A08 = new Handler(Looper.getMainLooper());
        this.A0A = (InputMethodManager) c3349ur.A06().getSystemService(A0I(12, 12, 19));
        this.A0J = c3349ur;
        this.A0E = this.A0J.A05();
        this.A0d = new C2892nO(c3349ur.A05().A37(), c3349ur.A07());
        this.A0h = this.A0J.A0E();
        if (this.A0h != null) {
            AbstractC3086qc.A0L(this.A0h);
        }
        this.A0b = this.A0J.A03();
        this.A0c = C2362eg.A01(c3349ur.A06(), c3349ur.A07(), c3349ur.A05().A37(), AbstractC3011pP.A00(c3349ur.A05().A32().A0K().A06()), new HashMap(), false, true, this.A0E.A33());
        this.A0e = new EW(this);
        String strA08 = c3349ur.A05().A32().A0I().A08();
        if (strA08 != null) {
            AbstractC3328uW.A00(c3349ur.A06(), this, strA08);
        }
        setupLayoutConfiguration(false);
        A0R();
        A0N();
        this.A0F = new EV(this);
        postDelayed(this.A0F, 1000L);
        A0V();
        this.A0f = new EU(this);
        C1459Be c1459Be = this.A0J.A02() instanceof C1459Be ? (C1459Be) this.A0J.A02() : null;
        this.A0g = new C3319uN(c3349ur, this.A0E, c1459Be, this.A0J.A0C(), this.A0f, this.A0D, this.A0K, this.A0h, this.A0b);
        if (c1459Be != null && C2863mv.A1L(getAdContextWrapper())) {
            AbstractC3281tl.A00(c1459Be.getVideoImplView(), C2863mv.A1M(getAdContextWrapper()), new ViewOnClickListenerC3367v9(this));
        } else if (c1459Be == null && this.A09 != null && C2863mv.A1J(getAdContextWrapper())) {
            AbstractC3281tl.A00(this.A09, C2863mv.A1K(getAdContextWrapper()), new ViewOnClickListenerC3368vA(this));
        }
        this.A0j = c3349ur.A05().A2Y();
        this.A0k = c3349ur.A05().A2r();
        getAdContextWrapper().A0F().AD8(this.A0j, this.A0k, c3349ur.A05().A3E());
    }

    public static /* synthetic */ int A03(ET et) {
        int i = et.A01;
        et.A01 = i + 1;
        return i;
    }

    public static /* synthetic */ int A05(ET et) {
        int i = et.A07;
        et.A07 = i + 1;
        return i;
    }

    public static String A0I(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0l, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 122);
        }
        return new String(bArrCopyOfRange);
    }

    private void A0J() {
        AbstractC3086qc.A0K(this.A0C);
        this.A0C = new LinearLayout(this.A0J.A06());
        AbstractC3086qc.A0V(this.A0C, getAdContextWrapper());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.A0L ? this.A03 / 4 : this.A03 / 5);
        layoutParams.addRule(12);
        this.A0C.setLayoutParams(layoutParams);
        addView(this.A0C, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0K() {
        if (this.A0E.A2O() && this.A0N) {
            this.A0N = false;
            A0g(A0I(24, 18, 22));
        }
    }

    private void A0L() {
        if (this.A0E.A2O() && this.A0N) {
            this.A0N = false;
            Map<String, String> mapA07 = new C3278ti().A05(null).A04(null).A07();
            mapA07.put(A0I(0, 12, 39), A0I(24, 18, 22));
            getAdEventManager().ABr(this.A0E.A37(), mapA07);
        }
    }

    private void A0M() {
        if (this.A0J.A05().A2p()) {
            AbstractC3112r2 abstractC3112r2A0B = this.A0J.A0B();
            String[] strArr = A0m;
            if (strArr[6].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            A0m[5] = "A12Q06T7GUYr42DFZcrpPYwQeNBLUijr";
            if (abstractC3112r2A0B != null) {
                abstractC3112r2A0B.setProgressSpinnerInvisible(false);
            }
        }
    }

    private void A0N() {
        AbstractC3086qc.A0K(this.A0B);
        this.A0B = new LinearLayout(this.A0J.A06());
        this.A0B.setOrientation(1);
        AbstractC3086qc.A0L(this.A0B);
        A0T();
        this.A0B.setBackgroundColor(-1);
        addView(this.A0B);
    }

    private void A0O() {
        if (this.A0b != null) {
            AbstractC3086qc.A0K(this.A0b);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(AbstractC3345un.A0A, AbstractC3345un.A0A);
            layoutParams.addRule(10);
            layoutParams.addRule(11);
            layoutParams.setMargins(AbstractC3345un.A09, this.A06, AbstractC3345un.A09, AbstractC3345un.A09);
            addView(this.A0b, layoutParams);
        }
    }

    private void A0P() {
        if (this.A0h != null) {
            AbstractC3086qc.A0K(this.A0h);
            this.A0h.setPadding(A0q, A0q, A0q, A0q);
            this.A0h.A0A(-1, A0o, false);
            this.A0h.setTranslationY(0.0f);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, A0p);
            layoutParams.addRule(12);
            addView(this.A0h, layoutParams);
        }
    }

    private void A0Q() {
        AbstractC3112r2 abstractC3112r2A0B = this.A0J.A0B();
        if (abstractC3112r2A0B == null) {
            return;
        }
        abstractC3112r2A0B.setPageDetailsVisible((this.A0M || abstractC3112r2A0B.A0E()) ? false : true);
    }

    private void A0R() {
        this.A09 = this.A0J.A02();
        if (this.A09 != null) {
            if (this.A0E.A2O()) {
                this.A09.setOnClickListener(new ViewOnClickListenerC3369vB(this));
            }
            AbstractC3086qc.A0K(this.A09);
            AbstractC3086qc.A0L(this.A09);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(15);
            addView(this.A09, 1, layoutParams);
        }
        this.A0D = new TextView(this.A0J.A06());
        AbstractC3086qc.A0L(this.A0D);
        this.A0D.setGravity(17);
        this.A0D.setTextColor(getColors().A06(true));
        this.A0D.setEllipsize(TextUtils.TruncateAt.END);
        this.A0D.setMaxLines(2);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(12);
        layoutParams2.setMargins(A0r, A0r / 2, A0r, this.A0h == null ? A0r : A0p);
        addView(this.A0D, layoutParams2);
        AbstractC3086qc.A0L(this.A0D);
        this.A0K = new C3390vW(this.A0J.A06(), getCtaButton(), this.A0J.A05(), this.A0J.A07(), this.A0J.A0C(), this.A0J.A0F(), this.A0J.A0A(), getColors(), this.A0e);
        this.A0K.setAutoClickTime(this.A0J.A05(), this.A0J.A0B());
        AbstractC3086qc.A0H(1010, this.A0K);
        addView(this.A0K);
        A0U();
        A0J();
        if (C2863mv.A16(this.A0J.A06())) {
            this.A0C.setOnClickListener(new ViewOnClickListenerC3370vC(this));
            if (this.A0J.A0B() != null) {
                this.A0J.A0B().setCTAClickListener(new ViewOnClickListenerC3371vD(this));
            }
        }
    }

    private void A0S() {
        this.A0V = true;
        this.A0K.setVisibility(8);
        AbstractC3086qc.A0X(this);
        removeCallbacks(this.A0F);
        AbstractC3086qc.A0e(this.A0K);
        AbstractC3086qc.A0e(this.A0h, this.A0b, this.A0g, this.A0D, this.A0G, this.A0J.A0B(), this.A0B, this.A0H);
        if (Build.VERSION.SDK_INT >= 35) {
            Object parent = getParent();
            if (A0m[2].charAt(2) == 'l') {
                throw new RuntimeException();
            }
            String[] strArr = A0m;
            strArr[7] = "dcmhw8Dv4G";
            strArr[4] = "xWqpnZ";
            if (parent instanceof View) {
                View view = (View) parent;
                view.setFitsSystemWindows(false);
                view.setPadding(0, 0, 0, 0);
            }
        }
        if (this.A09 instanceof C1459Be) {
            View view2 = this.A09;
            String[] strArr2 = A0m;
            if (strArr2[3].length() == strArr2[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr3 = A0m;
            strArr3[3] = "MwIFkAnAcHG80XI9";
            strArr3[0] = "L16qh";
            C1459Be c1459Be = (C1459Be) view2;
            for (InterfaceC2323e3 interfaceC2323e3 : c1459Be.getPlugins()) {
                if (interfaceC2323e3 instanceof AnonymousClass51) {
                    c1459Be.A0h(interfaceC2323e3);
                    break;
                }
            }
        }
        addView(new C3361v3(this.A0J.A06(), this.A0E, this.A0d, this.A0a, this.A0J.A0C()).A0E(getRegularCtaForEndCard()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0T() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.A04);
        if (A1j()) {
            layoutParams.setMargins(0, this.A04 / 5, 0, 0);
            layoutParams.addRule(12);
            String[] strArr = A0m;
            if (strArr[7].length() == strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0m;
            strArr2[7] = "mOqhFUC5R4";
            strArr2[4] = "x2rQdK";
            this.A0B.setLayoutParams(layoutParams);
        } else {
            layoutParams.setMargins(0, this.A04 + 1, 0, 0);
        }
        this.A0B.setTranslationY(0.0f);
        this.A0B.setLayoutParams(layoutParams);
    }

    private void A0U() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, this.A0L ? this.A03 / 4 : this.A03 / 5);
        layoutParams.addRule(14);
        layoutParams.addRule(2, this.A0D.getId());
        layoutParams.setMargins(0, 0, 0, 0);
        this.A0K.setLayoutParams(layoutParams);
        this.A0K.A03();
    }

    private void A0V() {
        if (!this.A0V) {
            A0P();
            A0O();
        }
        A0Q();
    }

    public static void A0W() {
        A0l = new byte[]{62, 49, 52, 62, 54, 2, 46, 50, 40, 47, 62, 56, 0, 7, Ascii.EM, Ascii.FS, Ascii.GS, 54, 4, Ascii.FF, Ascii.GS, 1, 6, Ascii.CR, Ascii.EM, Ascii.US, 9, Ascii.RS, Ascii.SI, 0, 5, Ascii.SI, 7, 51, 10, 5, 0, Ascii.CAN, 9, Ascii.RS, 9, 8, 114, 108, 107, 97, 106, 114, 1};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0f(String str) {
        AbstractC3086qc.A0K(this.A0I);
        EY ey = new EY(this);
        if (this.A0J.A06().A0E() == null) {
            this.A0J.A06().A0F().AAZ();
        }
        this.A0I = (AbstractC2864mw.A02(this.A0J.A06()) || this.A0J.A06().A0E() == null) ? new F4(this.A0J.A06(), ey) : new F4(this.A0J.A06(), this.A0J.A06().A0E(), ey);
        this.A0I.setOnTouchListener(new ViewOnTouchListenerC3363v5(this));
        setUpBrowserControls(this.A0I);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.weight = 0.9f;
        this.A0B.addView(this.A0I, layoutParams);
        this.A0I.loadUrl(str);
    }

    private void A0g(String str) {
        Map<String, String> mapA07 = new C3278ti().A05(null).A04(null).A02(this.A0J.A06(), this.A0c).A07();
        mapA07.put(A0I(0, 12, 39), str);
        this.A0d.A04(EnumC2891nN.A0J, mapA07);
        this.A0J.A0C().A5C(this.A0E.A1X());
        getAdEventManager().ACA(this.A0E.A37(), mapA07);
        if (C2863mv.A2W(this.A0J.A06())) {
            HashMap map = new HashMap();
            map.put(MH.A04, Boolean.TRUE.toString());
            map.put(MH.A05, Boolean.TRUE.toString());
            map.put(MH.A06, Boolean.TRUE.toString());
            getAdEventManager().ACb(this.A0E.A37(), map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0h(String str) {
        if (this.A0E.A2x() <= 0) {
            if (this.A0E.A2N()) {
                A0K();
            }
        } else {
            if (this.A0E.A3I() && this.A0O) {
                return;
            }
            this.A0O = true;
            A0g(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0i(boolean z) {
        if (z || !A0m()) {
            this.A0M = z;
            if (z) {
                this.A01 = 0;
                this.A07 = 0;
                this.A0P = false;
                this.A0Q = false;
                this.A0R = false;
                this.A0O = false;
                A0k(!A0m(), 0);
                A0M();
            } else {
                this.A08.removeCallbacksAndMessages(null);
            }
            if (!this.A0S) {
                postDelayed(new EX(this, z), 250L);
            }
            String strA0I = A0I(48, 1, 2);
            ObjectAnimator objectAnimatorOfFloat = z ? ObjectAnimator.ofFloat(this.A0K, strA0I, this.A0K.getY(), this.A04 / 5) : null;
            LinearLayout linearLayout = this.A0B;
            float y = this.A0B.getY();
            int i = this.A04;
            if (z) {
                i /= 5;
            }
            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(linearLayout, strA0I, y, i);
            objectAnimatorOfFloat2.setDuration(500L);
            if (this.A09 != null) {
                ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.A09, strA0I, this.A09.getY(), 0.0f);
                objectAnimatorOfFloat3.setDuration(500L);
                int height = this.A09.getHeight();
                int i2 = this.A04;
                String[] strArr = A0m;
                if (strArr[3].length() == strArr[0].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0m;
                strArr2[6] = "3HcTndNMKO02itZ1YB9OuMlfPHE";
                strArr2[1] = "rUq8gYLqYGWwvrPw2H7I5hxcdAd";
                if (z) {
                    i2 /= 5;
                }
                ValueAnimator duration = ValueAnimator.ofInt(height, i2).setDuration(500L);
                duration.addUpdateListener(new C3364v6(this));
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
                animatorSet.playTogether(objectAnimatorOfFloat2, objectAnimatorOfFloat3, duration);
                if (objectAnimatorOfFloat != null) {
                    objectAnimatorOfFloat.setDuration(500L);
                    animatorSet.playTogether(objectAnimatorOfFloat);
                }
                animatorSet.addListener(new C3365v7(this, z));
                if (this.A0k && (this.A09 instanceof C1459Be)) {
                    ((C1459Be) this.A09).A0d(animatorSet, z);
                }
                animatorSet.start();
            }
        }
    }

    private void A0j(boolean z) {
        RelativeLayout.LayoutParams layoutParams;
        setupLayoutConfiguration(z);
        AbstractC3086qc.A0K(this.A09);
        if (this.A09 == null) {
            this.A09 = this.A0J.A02();
            AbstractC3086qc.A0L(this.A09);
        }
        boolean z2 = this.A0M;
        String[] strArr = A0m;
        if (strArr[3].length() == strArr[0].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0m;
        strArr2[7] = "FZuJEB1DgE";
        strArr2[4] = "ioAK5D";
        if (z2) {
            layoutParams = new RelativeLayout.LayoutParams(-1, this.A04 / 5);
            layoutParams.addRule(14);
            layoutParams.addRule(10);
        } else {
            layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            if (C2863mv.A1J(getAdContextWrapper()) && getResources().getConfiguration().orientation == 2 && !(this.A09 instanceof C1459Be)) {
                layoutParams = new RelativeLayout.LayoutParams(-2, -1);
            }
            layoutParams.addRule(13);
            A0N();
        }
        if (this.A09 != null) {
            this.A09.setTranslationY(0.0f);
            addView(this.A09, 1, layoutParams);
        }
        A0J();
        if (A0m[2].charAt(2) == 'l') {
            A0U();
            return;
        }
        String[] strArr3 = A0m;
        strArr3[6] = "pPe40HbQyCL07tY4s4c8j3Lf22g";
        strArr3[1] = "FpZU0oL4KOaHbXLVjTxOhAl2PJv";
        A0U();
    }

    private void A0k(boolean z, int i) {
        if (this.A0G == null || !this.A0j) {
            return;
        }
        this.A0G.setCloseButtonVisibility(z ? 0 : 4);
        getAdContextWrapper().A0F().AD6(!z, i);
    }

    private boolean A0l() {
        if (this.A0E.A32().A0I().A0B()) {
            boolean z = this.A0Y;
            String[] strArr = A0m;
            if (strArr[3].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0m;
            strArr2[7] = "WvW0Ef6T7c";
            strArr2[4] = "9KXIlI";
            if (z && !this.A0Z && !this.A0W) {
                return true;
            }
        }
        return false;
    }

    private boolean A0m() {
        return this.A0j && this.A0X;
    }

    private ViewOnClickListenerC1544El getRegularCtaForEndCard() {
        ViewOnClickListenerC1544El viewOnClickListenerC1544El = new ViewOnClickListenerC1544El(getAdContextWrapper(), this.A0J.A05().A1X(), this.A0E.A31().A01(), getAdEventManager(), this.A0J.A0C(), (C2199c2) null, this.A0J.A0A(), this.A0E.A33());
        viewOnClickListenerC1544El.setViewShowsOverMedia(true);
        AbstractC3086qc.A0L(viewOnClickListenerC1544El);
        viewOnClickListenerC1544El.setText(this.A0E.A32().A0K().A05());
        AbstractC3086qc.A0H(1001, viewOnClickListenerC1544El);
        viewOnClickListenerC1544El.setCta(this.A0E.A32().A0K(), this.A0E.A37(), new HashMap(), null);
        return viewOnClickListenerC1544El;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setBrowserProgressBarValue(int i) {
        if (this.A0H != null) {
            this.A0H.setProgress(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTitleToBrowser(String str) {
        if (this.A0G != null) {
            this.A0G.setTitle(str);
        }
    }

    private void setUpBrowserControls(F4 f4) {
        AbstractC3086qc.A0K(this.A0G);
        this.A0G = new F6(this.A0J.A06(), f4, true, this.A0k);
        if (this.A0j) {
            A0k(false, 1);
        }
        f4.setBrowserNavigationListener(this.A0G.getBrowserNavigationListener());
        AbstractC3086qc.A0L(this.A0G);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.weight = 0.1f;
        this.A0G.setListener(new EZ(this));
        this.A0G.setOnTouchListener(new ViewOnTouchListenerC3362v4(this));
        this.A0B.addView(this.A0G, layoutParams);
        AbstractC3086qc.A0K(this.A0H);
        this.A0H = new C3250tG(this.A0J.A06(), null, R.attr.progressBarStyleHorizontal);
        this.A0B.addView(this.A0H, new LinearLayout.LayoutParams(-1, A0n));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setUrlToBrowser(String str) {
        if (this.A0G != null) {
            this.A0G.setUrl(str);
        }
    }

    private void setupLayoutConfiguration(boolean z) {
        this.A0L = getResources().getConfiguration().orientation == 2;
        this.A06 = this.A0J.A0B() != null ? this.A0J.A0B().getToolbarHeight() : 0;
        this.A0M = z;
        this.A03 = Resources.getSystem().getDisplayMetrics().heightPixels;
        this.A05 = Resources.getSystem().getDisplayMetrics().widthPixels;
        Point point = new Point();
        WindowManager windowManager = (WindowManager) getAdContextWrapper().getSystemService(A0I(42, 6, 127));
        if (windowManager != null) {
            if (Build.VERSION.SDK_INT >= 30) {
                WindowMetrics currentWindowMetrics = windowManager.getCurrentWindowMetrics();
                point.y = currentWindowMetrics.getBounds().bottom - currentWindowMetrics.getBounds().top;
            } else {
                windowManager.getDefaultDisplay().getRealSize(point);
            }
        }
        this.A04 = point.y > 0 ? point.y : this.A03;
        this.A02 = this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final EnumC2358ec A1P(String str) {
        return this.A0K.A02(str);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final void A1Q() {
        this.A0a.removeCallbacksAndMessages(null);
        A0L();
        super.A1Q();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final void A1R() {
        AbstractC3112r2 abstractC3112r2A0B = this.A0J.A0B();
        if (abstractC3112r2A0B != null) {
            abstractC3112r2A0B.setPageDetailsVisible((A1j() || abstractC3112r2A0B.A0E()) ? false : true);
        }
        this.A0Y = false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final void A1S() {
        if (this.A0J.A0B() != null) {
            AbstractC3112r2 abstractC3112r2A0B = this.A0J.A0B();
            String[] strArr = A0m;
            if (strArr[6].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0m;
            strArr2[3] = "MMiJw7TNUivh7iTB";
            strArr2[0] = "GEB80";
            abstractC3112r2A0B.setPageDetailsVisible(false);
        }
        this.A0Y = true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final void A1T() {
        this.A0W = false;
        this.A0X = false;
        A0k(true, 3);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final void A1U() {
        this.A0W = this.A0E.A32().A0I().A04() > 0;
        this.A0X = true;
        A0k(false, 2);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final void A1X(C2395fE c2395fE, String str, double d, Bundle bundle) {
        super.A1X(c2395fE, str, d, bundle);
        this.A0K.setCta(this.A0E.A32().A0K(), this.A0E.A37(), new HashMap<>(), this.A0e);
        String strA0G = c2395fE.A0J().A0G();
        if (strA0G == null || strA0G.trim().length() == 0) {
            AbstractC3086qc.A0P(this.A0C, 8);
            if (C2863mv.A16(this.A0J.A06())) {
                this.A0C.setClickable(false);
            }
        } else {
            this.A0D.setText(strA0G);
            if (C2863mv.A16(this.A0J.A06())) {
                LinearLayout linearLayout = this.A0C;
                String[] strArr = A0m;
                if (strArr[3].length() != strArr[0].length()) {
                    A0m[2] = "Tti1ERh3982vMPWOgwyCGNbTUdK6PILe";
                    linearLayout.setClickable(true);
                } else {
                    A0m[2] = "fnWnWSkw0ES4UX172ZpEF9XfJQ6oKenC";
                    linearLayout.setClickable(true);
                }
            }
        }
        if (d > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            this.A02 = (int) (((double) this.A05) / d);
        }
        boolean z = this.A0L;
        String[] strArr2 = A0m;
        if (strArr2[6].length() != strArr2[1].length()) {
            throw new RuntimeException();
        }
        A0m[2] = "7Lq3s7aOnX5NGbRVe2GBF9HLZ2EE6fpE";
        this.A02 = z ? this.A03 : this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final void A1Y(C5Y c5y) {
        this.A0T = false;
        super.A1Y(c5y);
        if (!this.A0E.A32().A0L().A05() || A1j()) {
            return;
        }
        A0S();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final boolean A1e() {
        return !A1j();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final boolean A1g() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final boolean A1i(boolean z) {
        if (A1j()) {
            getAdContextWrapper().A0F().AD5();
            A0i(false);
            return true;
        }
        if (A0l()) {
            getAdContextWrapper().A0F().AD9();
            this.A0g.A07(this);
            return true;
        }
        if (!this.A0E.A32().A0L().A05()) {
            getAdContextWrapper().A0F().AD7();
            return false;
        }
        getAdContextWrapper().A0F().ADA();
        if (this.A09 instanceof C1459Be) {
            ((C1459Be) this.A09).A0i(true);
        }
        A0S();
        return true;
    }

    public final boolean A1j() {
        return this.A0M;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0070  */
    /* JADX WARN: Code duplicated, block: B:31:0x007e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:32:0x007f  */
    /* JADX WARN: Code duplicated, block: B:34:0x009c  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:37:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:39:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:41:0x00c9 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:43:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:48:0x00ea A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:49:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:53:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:55:? A[RETURN, SYNTHETIC] */
    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public int getCloseButtonStyle() {
        boolean z;
        boolean zA0B;
        boolean z2;
        String[] strArr;
        if (A1j()) {
            return A0m() ? 2 : 3;
        }
        if (this.A0E.A32().A0I().A02() < 0 || !A1e()) {
            z = this.A0W;
            if (A0m[5].charAt(10) != 'N') {
                throw new RuntimeException();
            }
            String[] strArr2 = A0m;
            strArr2[6] = "uLLZ3lMHSUiuIxtDkLrux0PASFR";
            strArr2[1] = "4IavHTvooBAwtjEZ8UrgSKatCFD";
            if (z) {
                return 2;
            }
            zA0B = this.A0E.A32().A0I().A0B();
            if (A0m[5].charAt(10) != 'N') {
                A0m[2] = "Lj4ZofuCG7Hls3ppNpUzlw5AiL4xlXXC";
                if (zA0B) {
                    return 1;
                }
                z2 = this.A0Y;
                strArr = A0m;
                if (strArr[3].length() != strArr[0].length()) {
                    String[] strArr3 = A0m;
                    strArr3[6] = "DsnS5lLBdCuGc7xyUx4JFV8KtGv";
                    strArr3[1] = "nlKE3CRcsLi8C9cAVjP9wrVa02r";
                    if (z2) {
                        return 4;
                    }
                } else {
                    String[] strArr4 = A0m;
                    strArr4[7] = "CBNB4sFIZp";
                    strArr4[4] = "cwnmYS";
                    if (z2) {
                        return 4;
                    }
                }
                if (this.A0E.A32().A0L().A05()) {
                    return 1;
                }
                return super.getCloseButtonStyle();
            }
        } else {
            if (this.A0E.A3G()) {
                boolean z3 = this.A0T;
                if (A0m[5].charAt(10) != 'N') {
                    String[] strArr5 = A0m;
                    strArr5[6] = "NhzVRhgvHrOwM64xV2PIAOEbNcq";
                    strArr5[1] = "xEzMNY3CkayGfsMDFyAKLsf22gx";
                    if (z3 && (this.A09 instanceof C1459Be)) {
                        return 8;
                    }
                }
            }
            if (this.A0W || this.A0Y) {
                return 8;
            }
            z = this.A0W;
            if (A0m[5].charAt(10) != 'N') {
                throw new RuntimeException();
            }
            String[] strArr6 = A0m;
            strArr6[6] = "uLLZ3lMHSUiuIxtDkLrux0PASFR";
            strArr6[1] = "4IavHTvooBAwtjEZ8UrgSKatCFD";
            if (z) {
                return 2;
            }
            zA0B = this.A0E.A32().A0I().A0B();
            if (A0m[5].charAt(10) != 'N') {
                A0m[2] = "Lj4ZofuCG7Hls3ppNpUzlw5AiL4xlXXC";
                if (zA0B) {
                    return 1;
                }
                z2 = this.A0Y;
                strArr = A0m;
                if (strArr[3].length() != strArr[0].length()) {
                    String[] strArr7 = A0m;
                    strArr7[6] = "DsnS5lLBdCuGc7xyUx4JFV8KtGv";
                    strArr7[1] = "nlKE3CRcsLi8C9cAVjP9wrVa02r";
                    if (z2) {
                        return 4;
                    }
                } else {
                    String[] strArr8 = A0m;
                    strArr8[7] = "CBNB4sFIZp";
                    strArr8[4] = "cwnmYS";
                    if (z2) {
                        return 4;
                    }
                }
                if (this.A0E.A32().A0L().A05()) {
                    return 1;
                }
                return super.getCloseButtonStyle();
            }
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        A0j(A1j());
        A0V();
        setupLayoutConfiguration(A1j());
        A0T();
        if (!this.A0V || Build.VERSION.SDK_INT < 35) {
            return;
        }
        Object parent = getParent();
        if (parent instanceof View) {
            View view = (View) parent;
            view.setFitsSystemWindows(false);
            view.setPadding(0, 0, 0, 0);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public void setChainedWatchAndBrowseSkippableStatus(boolean z) {
        this.A0X = !z;
        A0k(z, 4);
    }

    public void setChildChainedAd(boolean z) {
        this.A0S = z;
    }
}
