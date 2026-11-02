package com.facebook.ads.redexgen.X;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.MotionEvent;
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

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.65, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class AnonymousClass65 extends AbstractC1521Do {
    public static byte[] A0u;
    public static String[] A0v = {"b5G1zrconZ3ixGT2ifmSYAvyf5qvuioM", "E7ePxMRKQj8Nsj11XAZX", "RYnvJIfy7H", "sKG7dsg9roBnaoP9H0Iom", "yy1EwMPcWWjeWCkN0IqWpK5f1Ty7r3W9", "FDFB", "dmJ0BH5on1aQmIo20RUb8HXj8gaX6ja3", "K5zlHDBh8uRMDNRgQaLPbhL7f5pOjpiq"};
    public static final int A0w;
    public static final int A0x;
    public static final int A0y;
    public static final int A0z;
    public static final int A10;
    public static final int A11;
    public static final int A12;
    public static final int A13;
    public float A00;
    public float A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public Handler A08;
    public InputMethodManager A09;
    public LinearLayout A0A;
    public LinearLayout A0B;
    public TextView A0C;
    public C2404fN A0D;
    public F6 A0E;
    public C3250tG A0F;
    public F4 A0G;
    public C3390vW A0H;
    public C3395vb A0I;
    public EnumC2324e4 A0J;
    public boolean A0K;
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
    public final int A0Z;
    public final AbstractC2361ef A0a;
    public final C1618Hi A0b;
    public final C2892nO A0c;
    public final AbstractC3112r2 A0d;
    public final C3396vc A0e;
    public final InterfaceC3171rz A0f;
    public final C1464Bj A0g;
    public final C1459Be A0h;
    public final C5Z A0i;
    public final BM A0j;
    public final BK A0k;
    public final BG A0l;
    public final BE A0m;
    public final BC A0n;
    public final BB A0o;
    public final C1446Ar A0p;
    public final C1441Am A0q;
    public final Runnable A0r;
    public final boolean A0s;
    public final boolean A0t;

    static {
        A0a();
        A0w = (int) (AbstractC3045px.A02 * 4.0f);
        A0x = (int) (AbstractC3045px.A02 * 8.0f);
        A0y = AbstractC2501gx.A02(-1, 77);
        A12 = (int) (AbstractC3045px.A02 * 26.0f);
        A13 = (int) (AbstractC3045px.A02 * 12.0f);
        A10 = (int) (AbstractC3045px.A02 * 12.0f);
        A11 = (int) (AbstractC3045px.A02 * 44.0f);
        A0z = AbstractC3043pv.A0y;
    }

    public AnonymousClass65(C1618Hi c1618Hi, InterfaceC2884nG interfaceC2884nG, AbstractC3112r2 abstractC3112r2, LA la, C2746kz c2746kz, InterfaceC3175s3 interfaceC3175s3, int i, InterfaceC3119r9 interfaceC3119r9, C2892nO c2892nO, int i2, boolean z, boolean z2, InterfaceC3171rz interfaceC3171rz, int i3, int i4) {
        super(c1618Hi, interfaceC3175s3, interfaceC2884nG, la, i, z, z2, interfaceC3119r9, i4);
        this.A03 = 0;
        this.A0K = false;
        this.A0S = false;
        this.A0X = false;
        this.A0e = new C3396vc();
        this.A0O = false;
        this.A0Q = false;
        this.A0P = false;
        this.A0N = false;
        this.A07 = 0;
        this.A02 = 0;
        this.A0T = true;
        this.A0R = true;
        this.A0U = false;
        this.A0r = new Runnable() { // from class: com.facebook.ads.redexgen.X.0G
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                if (AbstractC2971oi.A02(this)) {
                    return;
                }
                try {
                    if (this.A00.A0L) {
                        this.A00.A0R();
                    }
                } catch (Throwable th) {
                    AbstractC2971oi.A00(th, this);
                }
            }
        };
        this.A0M = false;
        this.A0Y = false;
        this.A0W = false;
        this.A01 = 0.0f;
        this.A0n = new BC() { // from class: com.facebook.ads.redexgen.X.6B
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(BD bd) {
                this.A00.A0Y = true;
            }
        };
        this.A0m = new BE() { // from class: com.facebook.ads.redexgen.X.6A
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(BF bf) {
                if (((AbstractC1521Do) this.A00).A0C.A07()) {
                    return;
                }
                this.A00.A1f();
            }
        };
        this.A0l = new BG() { // from class: com.facebook.ads.redexgen.X.69
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            public final /* bridge */ /* synthetic */ void A03(C2830mO c2830mO) {
            }
        };
        this.A0o = new BB() { // from class: com.facebook.ads.redexgen.X.68
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C5V c5v) {
                this.A00.A0i(c5v);
                this.A00.A0f.AEz((this.A00.A01 * this.A00.A0h.getDuration()) + c5v.A00());
            }
        };
        this.A0j = new BM() { // from class: com.facebook.ads.redexgen.X.67
            public static String[] A01 = {"BmqBtTpZlT3DtavXPK4nn1Oe6PJ8eKGQ", "OXbhHz0rtL3a8Taut2", "5oBXn7lJPf6zGkkh0QqVuBtpjxwaZWN", "FWLsTidEa6XLmF9UcSrJklMlRviBbTnv", "6UAWCwL2dkuQx0eQvW8b3nylBmxnWEre", "dUaXTsKKEv7HTrZi8rNWJs3FomMu5E2s", "oTuXCK", "msaAIvKNyzWTmQsGi"};

            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C5Y c5y) {
                this.A00.A0f.AEd(this.A00.A0h.getDuration());
                AnonymousClass65.A03(this.A00, 1.0f);
                boolean z3 = this.A00.A0R;
                this.A00.A0R = false;
                if (((AbstractC1521Do) this.A00).A08.A3G() && z3 && !this.A00.A0L) {
                    AnonymousClass65 anonymousClass65 = this.A00;
                    if (A01[6].length() == 16) {
                        throw new RuntimeException();
                    }
                    String[] strArr = A01;
                    strArr[5] = "7np4TXHt4Y0ufXaBiLyONnIQEAl1DMwU";
                    strArr[3] = "tl21TXYOtkOTW8fhoemFU0tz9phtfgkq";
                    if (!anonymousClass65.A0U) {
                        this.A00.A0f.AH3(true);
                    }
                }
                this.A00.A0h.A0f(EnumC2324e4.A03, 28);
            }
        };
        this.A0k = new AnonymousClass66(this);
        this.A0d = abstractC3112r2;
        this.A0Z = i3;
        this.A08 = new Handler(Looper.getMainLooper());
        this.A09 = (InputMethodManager) c1618Hi.getSystemService(A0M(12, 12, 40));
        this.A0a = C2362eg.A01(c1618Hi, interfaceC2884nG, la.A37(), AbstractC3011pP.A00(la.A32().A0K().A06()), new HashMap(), false, true, la.A33());
        this.A0b = c1618Hi;
        this.A0c = c2892nO;
        this.A0p = new C1446Ar(this.A0b, this.A0c);
        this.A0q = new C1441Am(this.A0b, -1);
        this.A0f = interfaceC3171rz;
        this.A0D = i2 == 1 ? super.A08.A31().A01() : super.A08.A31().A00();
        this.A0h = new C1459Be(this.A0b);
        this.A0h.getEventBus().A03(this.A0n, this.A0m, this.A0l, this.A0o, this.A0j, this.A0k);
        this.A0i = new C5Z(c1618Hi, interfaceC2884nG, this.A0h, la.A37());
        A0X();
        String strA09 = super.A08.A32().A0I().A09();
        if (strA09 != null) {
            this.A0h.setVideoURI(c2746kz.A0T(strA09));
        }
        A0U();
        A0Q();
        A0P();
        String strA08 = la.A32().A0I().A08();
        if (strA08 != null) {
            AbstractC3328uW.A00(this.A0b, this, strA08);
        }
        setupLayoutConfiguration(false);
        A0W();
        A0V();
        postDelayed(new DO(this), 1000L);
        if (C2863mv.A1z(this.A0b)) {
            this.A0b.A0B().AM7(this.A0h, super.A08.A37(), true);
        }
        if (C2863mv.A20(this.A0b)) {
            this.A0g = new C1464Bj(this.A0b, interfaceC2884nG, this.A0h, super.A08.A37(), false, this.A0i, null);
        } else {
            this.A0g = null;
        }
        A0b(la.A32());
        this.A0s = super.A08.A2Y();
        this.A0t = super.A08.A2r();
        c1618Hi.A0F().AD8(this.A0s, this.A0t, true);
    }

    public static /* synthetic */ float A03(AnonymousClass65 anonymousClass65, float f) {
        float f2 = anonymousClass65.A01 + f;
        anonymousClass65.A01 = f2;
        return f2;
    }

    public static /* synthetic */ int A05(AnonymousClass65 anonymousClass65) {
        int i = anonymousClass65.A02;
        anonymousClass65.A02 = i + 1;
        return i;
    }

    public static /* synthetic */ int A07(AnonymousClass65 anonymousClass65) {
        int i = anonymousClass65.A07;
        anonymousClass65.A07 = i + 1;
        return i;
    }

    public static String A0M(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0u, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 48);
        }
        return new String(bArrCopyOfRange);
    }

    private void A0N() {
        int i;
        AbstractC3086qc.A0K(this.A0B);
        this.A0B = new LinearLayout(this.A0b);
        AbstractC3086qc.A0V(this.A0B, this.A0b);
        if (this.A0K) {
            int i2 = this.A04;
            String[] strArr = A0v;
            if (strArr[6].charAt(10) == strArr[4].charAt(10)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0v;
            strArr2[3] = "eARj3wLLoGbDJmJ7QaGG8";
            strArr2[2] = "iGp5YEz0aP";
            i = i2 / 4;
        } else {
            i = this.A04 / 5;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, i);
        layoutParams.addRule(12);
        this.A0B.setLayoutParams(layoutParams);
        addView(this.A0B, 2);
    }

    private void A0O() {
        if (!this.A0X || this.A0I == null) {
            return;
        }
        this.A0I.A0C();
        this.A0I.A0B();
        this.A0I = null;
        this.A0X = false;
        this.A0h.setBackgroundPlaybackEnabled(false);
        this.A0A.setVisibility(0);
    }

    private void A0P() {
        this.A0q.A0A(-1, A0y, false);
        this.A0q.setPadding(A13, A13, A13, A13);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, A12);
        layoutParams.addRule(12);
        addView(this.A0q, layoutParams);
    }

    private void A0Q() {
        this.A0p.setPadding(A10, A10, A10, A10);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(A11, A11);
        layoutParams.setMargins(0, AbstractC3112r2.A00, A0z, 0);
        layoutParams.addRule(11);
        layoutParams.addRule(10);
        addView(this.A0h, new RelativeLayout.LayoutParams(-1, -1));
        addView(this.A0p, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0R() {
        if (super.A08.A2O() && this.A0M) {
            this.A0M = false;
            A0k(A0M(24, 18, 53));
        }
    }

    private void A0S() {
        if (super.A08.A2O()) {
            boolean z = this.A0M;
            String[] strArr = A0v;
            if (strArr[3].length() == strArr[2].length()) {
                throw new RuntimeException();
            }
            A0v[1] = "kkPn6UZbIf4yuCbsGSZ";
            if (z) {
                this.A0M = false;
                Map<String, String> mapA07 = new C3278ti().A05(null).A04(null).A07();
                mapA07.put(A0M(0, 12, 81), A0M(24, 18, 53));
                super.A0A.ABr(super.A08.A37(), mapA07);
            }
        }
    }

    private void A0T() {
        if (this.A0X) {
            this.A0e.A01(this.A0h);
            A0O();
            this.A0L = false;
            this.A0h.setY(0.0f);
            this.A0h.getLayoutParams().height = this.A05;
            this.A0h.requestLayout();
            this.A0H.setTranslationY(0.0f);
        }
    }

    private void A0U() {
        postDelayed(new DR(this), C2863mv.A0N(this.A0b));
    }

    private void A0V() {
        AbstractC3086qc.A0K(this.A0A);
        this.A0A = new LinearLayout(this.A0b);
        this.A0A.setOrientation(1);
        AbstractC3086qc.A0L(this.A0A);
        A0Y();
        this.A0A.setBackgroundColor(-1);
        addView(this.A0A);
    }

    private void A0W() {
        View view = this.A0h;
        if (super.A08.A2O()) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.03
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) throws Throwable {
                    if (AbstractC2971oi.A02(this)) {
                        return;
                    }
                    try {
                        if (this.A00.A0a instanceof C13897v) {
                            C13897v c13897v = (C13897v) this.A00.A0a;
                            if (!this.A00.A0L) {
                                this.A00.A0M = true;
                                this.A00.A0f.ADH();
                                this.A00.A0j(c13897v.A0O().toString());
                                if (((AbstractC1521Do) this.A00).A08.A1N() >= 0) {
                                    this.A00.A08.postDelayed(this.A00.A0r, ((AbstractC1521Do) this.A00).A08.A1N());
                                }
                            }
                            this.A00.A0m(this.A00.A0L ? false : true);
                        }
                    } catch (Throwable th) {
                        AbstractC2971oi.A00(th, this);
                    }
                }
            });
        }
        AbstractC3086qc.A0K(view);
        AbstractC3086qc.A0L(view);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(15);
        addView(view, 1, layoutParams);
        this.A0C = new TextView(this.A0b);
        AbstractC3086qc.A0L(this.A0C);
        this.A0C.setGravity(17);
        this.A0C.setTextColor(getColors().A06(true));
        this.A0C.setEllipsize(TextUtils.TruncateAt.END);
        this.A0C.setMaxLines(2);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(12);
        layoutParams2.setMargins(A0x, A0x / 2, A0x, A12);
        addView(this.A0C, layoutParams2);
        AbstractC3086qc.A0L(this.A0C);
        this.A0H = new C3390vW(this.A0b, null, super.A08, super.A0A, super.A0D, super.A0F, super.A0C, getColors(), new DV(this));
        AbstractC3086qc.A0H(1001, this.A0H);
        addView(this.A0H);
        A0Z();
        A0N();
        if (C2863mv.A16(this.A0b)) {
            this.A0B.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.0g
                public static byte[] A01;

                static {
                    A01();
                }

                public static String A00(int i, int i2, int i3) {
                    byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
                    for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                        bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 73);
                    }
                    return new String(bArrCopyOfRange);
                }

                public static void A01() {
                    A01 = new byte[]{Ascii.RS, 33, 33, 34, 49, Ascii.RS, 38, 41, 48};
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) throws Throwable {
                    if (AbstractC2971oi.A02(this)) {
                        return;
                    }
                    try {
                        if (this.A00.A0L) {
                            return;
                        }
                        this.A00.A0H.A02(A00(0, 9, 116));
                        this.A00.A0f.ADH();
                    } catch (Throwable th) {
                        AbstractC2971oi.A00(th, this);
                    }
                }
            });
            if (this.A0d != null) {
                this.A0d.setCTAClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.0U
                    public static byte[] A01;

                    static {
                        A01();
                    }

                    public static String A00(int i, int i2, int i3) {
                        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
                        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 33);
                        }
                        return new String(bArrCopyOfRange);
                    }

                    public static void A01() {
                        A01 = new byte[]{41, 50, 50, 49, 63, 60, 47};
                    }

                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) throws Throwable {
                        if (AbstractC2971oi.A02(this)) {
                            return;
                        }
                        try {
                            if (this.A00.A0L) {
                                return;
                            }
                            this.A00.A0H.A02(A00(0, 7, 124));
                            this.A00.A0f.ADH();
                        } catch (Throwable th) {
                            AbstractC2971oi.A00(th, this);
                        }
                    }
                });
            }
        }
    }

    private void A0X() {
        this.A0h.A0g(this.A0q);
        this.A0h.A0g(this.A0p);
        if (!TextUtils.isEmpty(super.A08.A32().A0I().A08())) {
            C5B c5b = new C5B(this.A0b);
            this.A0h.A0g(c5b);
            c5b.setImage(super.A08.A32().A0I().A08());
        }
        this.A0h.A0g(new AnonymousClass55(this.A0b));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0Y() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, this.A05);
        if (this.A0L) {
            int i = this.A05;
            String[] strArr = A0v;
            if (strArr[6].charAt(10) == strArr[4].charAt(10)) {
                throw new RuntimeException();
            }
            A0v[5] = "KzfN";
            layoutParams.setMargins(0, i / 5, 0, 0);
            layoutParams.addRule(12);
            this.A0A.setLayoutParams(layoutParams);
        } else {
            layoutParams.setMargins(0, this.A05 + 1, 0, 0);
        }
        this.A0A.setTranslationY(0.0f);
        this.A0A.setLayoutParams(layoutParams);
    }

    private void A0Z() {
        int i;
        if (this.A0K) {
            i = this.A04 / 4;
        } else {
            int i2 = this.A04;
            String[] strArr = A0v;
            if (strArr[7].charAt(25) != strArr[0].charAt(25)) {
                throw new RuntimeException();
            }
            A0v[5] = "tQDw";
            i = i2 / 5;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, i);
        layoutParams.addRule(14);
        layoutParams.addRule(2, this.A0C.getId());
        layoutParams.setMargins(0, 0, 0, 0);
        this.A0H.setLayoutParams(layoutParams);
    }

    public static void A0a() {
        A0u = new byte[]{-28, -19, -22, -28, -20, -32, -12, -16, -10, -13, -28, -26, -63, -58, -56, -51, -52, -73, -59, -67, -52, -64, -57, -68, -38, -40, -54, -41, -56, -47, -50, -56, -48, -60, -53, -50, -47, -39, -54, -41, -54, -55, Ascii.EM, Ascii.VT, Ascii.DLE, 6, 17, Ascii.EM, 3};
    }

    private void A0b(C2395fE c2395fE) {
        double dA00 = AbstractC3335ud.A00(c2395fE);
        String strA0G = c2395fE.A0J().A0G();
        if (strA0G == null || strA0G.trim().length() == 0) {
            AbstractC3086qc.A0P(this.A0B, 8);
            if (C2863mv.A16(this.A0b)) {
                this.A0B.setClickable(false);
            }
        } else {
            this.A0C.setText(strA0G);
            if (C2863mv.A16(this.A0b)) {
                this.A0B.setClickable(true);
            }
        }
        if (dA00 > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            this.A03 = (int) (((double) this.A06) / dA00);
        }
        this.A03 = this.A0K ? this.A04 : this.A03;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0i(C5V c5v) {
        if (this.A0h.getState() == EnumC2209cC.A02 && C2863mv.A1e(this.A0b)) {
            postDelayed(new DQ(this, c5v), 5000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0j(String str) {
        String strA1V = super.A08.A1V();
        if (strA1V != null) {
            EnumC2963oa enumC2963oaA00 = EnumC2963oa.A00(strA1V);
            EnumC2959oW enumC2959oWA00 = C2961oY.A00(enumC2963oaA00, this.A0b);
            this.A0b.A0F().A5G(enumC2963oaA00.name(), enumC2959oWA00.name());
            if (enumC2959oWA00 == EnumC2959oW.A03 && A15(str)) {
                return;
            }
        }
        AbstractC3086qc.A0K(this.A0G);
        DU du = new DU(this);
        if (this.A0b.A0E() == null) {
            this.A0b.A0F().AAZ();
        }
        this.A0G = (AbstractC2864mw.A02(this.A0b) || this.A0b.A0E() == null) ? new F4(this.A0b, du) : new F4(this.A0b, this.A0b.A0E(), du);
        this.A0G.setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.ads.redexgen.X.0T
            public static byte[] A01;
            public static String[] A02 = {"nTJw2HQmlXly2UF06", "09pvuqNAuk0d0kWf9oP4EF7vD9WhRuQ2", "C723y22SlktCgvbyr", "ZmMyMPPk6FEy4XD3gqTK2d5Nku0Q81Z0", "skuvOwmau9g9aPLOFCXPmD", "axafZnGOpn7qXt4tgge2fS17aPq3Kcv5", "MD612YACy1aZjZYrd9Q8DckZRQGlrVYC", "HeA9vxZD3qLAMjz4pEIeKnSfi2CXY38t"};

            static {
                A01();
            }

            public static String A00(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
                for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 1);
                }
                return new String(bArrCopyOfRange);
            }

            public static void A01() {
                A01 = new byte[]{74, 76, 90, 77, 96, 92, 83, 86, 92, 84, 96, 86, 94, 93, 91, 93, 75, 92, 113, 69, 75, 87, 94, 79, 74, 113, 77, 66, 71, 77, 69, 113, 71, 79, 76};
            }

            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                switch (motionEvent.getActionMasked()) {
                    case 0:
                        if (this.A00.A0P || this.A00.A09 == null || !this.A00.A09.isAcceptingText()) {
                            return false;
                        }
                        this.A00.A0P = true;
                        this.A00.A0l(A00(14, 21, 47));
                        return false;
                    case 1:
                        AnonymousClass65.A07(this.A00);
                        if (A02[7].length() != 32) {
                            throw new RuntimeException();
                        }
                        A02[3] = "V8Iyg5ceA0qUXrZrfcXrbF7yHzuc3ZLC";
                        if (this.A00.A0O || this.A00.A07 < 5) {
                            return false;
                        }
                        this.A00.A0O = true;
                        this.A00.A0l(A00(0, 14, 62));
                        return false;
                    default:
                        return false;
                }
            }
        });
        setUpBrowserControls(this.A0G);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.weight = 0.9f;
        this.A0A.addView(this.A0G, layoutParams);
        this.A0G.loadUrl(str);
    }

    private void A0k(String str) {
        Map<String, String> mapA07 = new C3278ti().A05(null).A04(null).A02(this.A0b, this.A0a).A07();
        mapA07.put(A0M(0, 12, 81), str);
        this.A0c.A04(EnumC2891nN.A0J, mapA07);
        super.A0D.A5C(super.A08.A1X());
        super.A0A.ACA(super.A08.A37(), mapA07);
        if (C2863mv.A2W(this.A0b)) {
            HashMap map = new HashMap();
            map.put(MH.A04, Boolean.TRUE.toString());
            map.put(MH.A05, Boolean.TRUE.toString());
            map.put(MH.A06, Boolean.TRUE.toString());
            super.A0A.ACb(super.A08.A37(), map);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0l(String str) {
        if (super.A08.A2x() <= 0) {
            if (super.A08.A2N()) {
                A0R();
            }
        } else {
            if (super.A08.A3I() && this.A0N) {
                return;
            }
            this.A0N = true;
            A0k(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0m(final boolean z) {
        if (z || !this.A0s || this.A0T) {
            this.A0L = z;
            if (z) {
                this.A02 = 0;
                this.A07 = 0;
                String[] strArr = A0v;
                if (strArr[6].charAt(10) != strArr[4].charAt(10)) {
                    String[] strArr2 = A0v;
                    strArr2[6] = "fPJHU3DU2hcBjPmK46tCVyN3dd6y5E2f";
                    strArr2[4] = "x9l33aEwOeBX6t0fb5HndH4tdp2tg6sC";
                    this.A0O = false;
                    this.A0P = false;
                    this.A0Q = false;
                    this.A0N = false;
                }
                throw new RuntimeException();
            }
            this.A08.removeCallbacksAndMessages(null);
            String strA0M = A0M(48, 1, 90);
            if (A0v[5].length() == 4) {
                String[] strArr3 = A0v;
                strArr3[6] = "2VIz0Kke2Kivr3Iq0QnydvmuiswvnqCS";
                strArr3[4] = "pW9SxXJin2XYPoJJeQFLpwZFWffE7Gdp";
                ObjectAnimator objectAnimatorOfFloat = z ? ObjectAnimator.ofFloat(this.A0H, strA0M, this.A0H.getY(), this.A05 / 5) : null;
                LinearLayout linearLayout = this.A0A;
                float y = this.A0A.getY();
                int i = this.A05;
                if (z) {
                    i /= 5;
                }
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(linearLayout, strA0M, y, i);
                objectAnimatorOfFloat2.setDuration(500L);
                ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.A0h, strA0M, this.A0h.getY(), 0.0f);
                objectAnimatorOfFloat3.setDuration(500L);
                int height = this.A0h.getHeight();
                int i2 = this.A05;
                if (z) {
                    i2 /= 5;
                }
                ValueAnimator duration = ValueAnimator.ofInt(height, i2).setDuration(500L);
                duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.facebook.ads.redexgen.X.0L
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        Integer num = (Integer) valueAnimator.getAnimatedValue();
                        this.A00.A0h.getLayoutParams().height = num.intValue();
                        this.A00.A0h.requestLayout();
                    }
                });
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.setInterpolator(new AccelerateDecelerateInterpolator());
                animatorSet.playTogether(objectAnimatorOfFloat2, objectAnimatorOfFloat3, duration);
                if (objectAnimatorOfFloat != null) {
                    objectAnimatorOfFloat.setDuration(500L);
                    animatorSet.playTogether(objectAnimatorOfFloat);
                }
                animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.facebook.ads.redexgen.X.0I
                    public static String[] A02 = {"665X2CVNVi5qi0mjwkQllZ1Z3hi7SqJ", "IxMbBgN5orcIqYb5gE7I2VSAtMRKiR19", "DUuEpa5mCFfr8tNdbIs12A8n692GEBy4", "BCx81yYWcJIFbJYbIPtGYr5Yts79gdA8", "TuoPSsX0Ttr7GVLKV65Uo8NHw92QaFBx", "DISqui5OzmKtzneiZfMM3I4nAphI7c5A", "RGs1eSEzkCCuxrcdmM0vBsAuPUV1dHLM", "i2aTxnVrgF4AF1SiY0ePTGr2MrnzxiND"};

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        this.A00.A0H.setTranslationY(0.0f);
                        this.A00.A0Y();
                        if (z || this.A00.A0G == null) {
                            return;
                        }
                        F4 f4 = this.A00.A0G;
                        String[] strArr4 = A02;
                        if (strArr4[2].charAt(0) != strArr4[5].charAt(0)) {
                            throw new RuntimeException();
                        }
                        A02[7] = "YuVJDdeMntZwiATJvQeG4uMSFeQioDy3";
                        f4.destroy();
                    }
                });
                if (this.A0t) {
                    this.A0h.A0d(animatorSet, z);
                }
                animatorSet.start();
                return;
            }
            throw new RuntimeException();
        }
    }

    private void A0n(boolean z) {
        RelativeLayout.LayoutParams layoutParams;
        setupLayoutConfiguration(z);
        AbstractC3086qc.A0K(this.A0h);
        if (this.A0L) {
            layoutParams = new RelativeLayout.LayoutParams(-1, this.A05 / 5);
            layoutParams.addRule(14);
            layoutParams.addRule(10);
        } else {
            layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(13);
            A0V();
        }
        this.A0h.setTranslationY(0.0f);
        addView(this.A0h, 1, layoutParams);
        A0N();
        A0Z();
    }

    private void A0o(boolean z, int i) {
        this.A0b.A0F().AD6(!z, i);
        if (this.A0E != null) {
            this.A0E.setCloseButtonVisibility(z ? 0 : 4);
        }
    }

    private final boolean A0p() {
        return this.A0L;
    }

    private boolean A15(String str) {
        int i = (this.A05 * 4) / 5;
        C3395vb c3395vb = new C3395vb(this.A0b, new DP(this));
        this.A0X = true;
        this.A0I = c3395vb;
        if (c3395vb.A0D(str, i, 0)) {
            this.A0A.setVisibility(8);
            this.A0h.setBackgroundPlaybackEnabled(true);
            return true;
        }
        this.A0X = false;
        this.A0I = null;
        return false;
    }

    private void setUpBrowserControls(F4 f4) {
        AbstractC3086qc.A0K(this.A0E);
        this.A0E = new F6(this.A0b, f4, true, this.A0t);
        if (this.A0s) {
            A0o(this.A0T, 1);
        }
        f4.setBrowserNavigationListener(this.A0E.getBrowserNavigationListener());
        AbstractC3086qc.A0L(this.A0E);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.weight = 0.1f;
        this.A0E.setListener(new DT(this));
        this.A0E.setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.ads.redexgen.X.0S
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                switch (motionEvent.getActionMasked()) {
                    case 0:
                        this.A00.A00 = motionEvent.getY();
                        break;
                    case 1:
                        if (this.A00.A00 < motionEvent.getY()) {
                            this.A00.A0m(false);
                        }
                        break;
                }
                return true;
            }
        });
        this.A0A.addView(this.A0E, layoutParams);
        AbstractC3086qc.A0K(this.A0F);
        this.A0F = new C3250tG(this.A0b, null, R.attr.progressBarStyleHorizontal);
        this.A0A.addView(this.A0F, new LinearLayout.LayoutParams(-1, A0w));
    }

    private void setupLayoutConfiguration(boolean z) {
        this.A0K = getResources().getConfiguration().orientation == 2;
        this.A0L = z;
        this.A04 = Resources.getSystem().getDisplayMetrics().heightPixels;
        this.A06 = Resources.getSystem().getDisplayMetrics().widthPixels;
        Point point = new Point();
        WindowManager windowManager = (WindowManager) this.A0b.getSystemService(A0M(42, 6, 114));
        if (windowManager != null) {
            if (Build.VERSION.SDK_INT >= 30) {
                WindowMetrics currentWindowMetrics = windowManager.getCurrentWindowMetrics();
                point.y = currentWindowMetrics.getBounds().bottom - currentWindowMetrics.getBounds().top;
            } else {
                windowManager.getDefaultDisplay().getRealSize(point);
            }
        }
        this.A05 = point.y > 0 ? point.y : this.A04;
        this.A03 = this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final EnumC2358ec A1a(String str) {
        this.A0U = true;
        return !A0p() ? this.A0H.A02(str) : EnumC2358ec.A08;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1b() {
        A0O();
        A0S();
        if (C2863mv.A1z(this.A0b)) {
            this.A0b.A0B().ALo(this.A0h);
        }
        if (this.A0g != null) {
            C1464Bj c1464Bj = this.A0g;
            String[] strArr = A0v;
            if (strArr[7].charAt(25) != strArr[0].charAt(25)) {
                throw new RuntimeException();
            }
            A0v[5] = "lXF6";
            c1464Bj.A07();
        }
        if (this.A0h != null) {
            this.A0h.getEventBus().A04(this.A0n, this.A0m, this.A0l, this.A0o, this.A0j, this.A0k);
            AbstractC3086qc.A0I(this.A0h);
            this.A0h.A0X();
        }
        this.A0i.A0p();
        AbstractC3086qc.A0e(this.A0h, this.A0q, this.A0p);
        super.A0F.A0V();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1c() {
        if (this.A0W) {
            this.A0W = false;
            if (this.A0h.getState() == EnumC2209cC.A06 || this.A0J == null) {
                return;
            }
            this.A0h.A0f(this.A0J, 19);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1d() {
        if (this.A0X && !this.A0h.A0o()) {
            this.A0J = this.A0h.getVideoStartReason();
            this.A0W = true;
            this.A0h.A0j(false, 3);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1g() {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1h() {
        this.A0h.setVolume(super.A08.A32().A0I().A0A() ? 0.0f : 1.0f);
        this.A0h.A0f(EnumC2324e4.A03, 20);
        int iA02 = super.A08.A32().A0I().A02();
        if (iA02 == 0 || iA02 >= this.A0Z) {
            this.A0d.setToolbarActionMode(8);
        } else if (iA02 > 0) {
            this.A0d.setProgressSpinnerInvisible(true);
            new C3030pi(iA02, new DS(this)).A07();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1i(boolean z) {
        if (super.A08.A3G() && this.A0R && !this.A0U) {
            return;
        }
        this.A0T = z;
        A0o(z, 4);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1j(boolean z) {
        if (this.A0X || this.A0h.A0o()) {
            return;
        }
        this.A0J = this.A0h.getVideoStartReason();
        this.A0V = z;
        this.A0h.A0j(false, 13);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1k(boolean z) {
        if (this.A0h.getState() == EnumC2209cC.A06 || this.A0J == null) {
            return;
        }
        if (!this.A0V || z) {
            this.A0h.A0f(this.A0J, 19);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final boolean A1l() {
        if (this.A0R) {
            boolean z = this.A0U;
            String[] strArr = A0v;
            if (strArr[6].charAt(10) == strArr[4].charAt(10)) {
                throw new RuntimeException();
            }
            A0v[5] = "DjZN";
            if (!z) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final boolean A1o() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final boolean A1p() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final boolean A1q() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final boolean A1r(int i, int i2, Intent intent) {
        if (i != C3395vb.A09 || !this.A0X) {
            return false;
        }
        A0T();
        return true;
    }

    public final boolean A1s() {
        return !A0p();
    }

    public C2404fN getColors() {
        return this.A0D;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public C3257tN getFullScreenAdStyle() {
        return new C3257tN(true, C3257tN.A06, super.A08.A31().A01(), ViewOnClickListenerC1544El.A05(super.A08), super.A08.A31().A01().A08(true), super.A08.A32().A0I().A08());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public C3077qT getTouchDataRecorder() {
        return super.A0C;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        A0n(A0p());
        setupLayoutConfiguration(A0p());
        A0Y();
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            A1k(false);
        } else {
            A1j(false);
        }
    }
}
