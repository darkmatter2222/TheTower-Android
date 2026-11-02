package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.HashMap;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.6C, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C6C extends AbstractC1521Do {
    public static byte[] A0j;
    public static String[] A0k = {"zF", "YuhgBsbCJ4GENG72FYuTSQ3UxVCmrs0t", "RSfzcHToFNO8jc1tX2m0S0AZ0vbf9kKl", "p", "lGjhRdALEILVIUsiuWCm6MXJK2R8L6Co", "wXQvDYR5huLQKlTsBS5mG0rN7ygrQvR2", "AYgBJnzxyMi9rrwHO3oB8yOhTSWVLxNu", "3k2Jytm7iEKA6X2jmmGhgFSNDYaf4AHR"};
    public static final int A0l;
    public static final int A0m;
    public static final int A0n;
    public static final int A0o;
    public static final int A0p;
    public static final int A0q;
    public static final int A0r;
    public static final int A0s;
    public static final int A0t;
    public static final int A0u;
    public static final int A0v;
    public float A00;
    public C2404fN A01;
    public C3030pi A02;
    public C3333ub A03;
    public C3361v3 A04;
    public C3388vU A05;
    public C2521hI A06;
    public EnumC2324e4 A07;
    public C1437Ai A08;
    public boolean A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public boolean A0D;
    public boolean A0E;
    public boolean A0F;
    public boolean A0G;
    public boolean A0H;
    public final int A0I;
    public final int A0J;
    public final int A0K;
    public final int A0L;
    public final int A0M;
    public final Handler A0N;
    public final View A0O;
    public final C1618Hi A0P;
    public final C2892nO A0Q;
    public final AbstractC3112r2 A0R;
    public final AbstractC3284to A0S;
    public final ViewOnClickListenerC1544El A0T;
    public final InterfaceC3171rz A0U;
    public final C2530hR A0V;
    public final C1464Bj A0W;
    public final C1459Be A0X;
    public final C5Z A0Y;
    public final BM A0Z;
    public final BK A0a;
    public final BG A0b;
    public final BE A0c;
    public final BC A0d;
    public final BB A0e;
    public final C1453Ay A0f;
    public final C1441Am A0g;
    public final boolean A0h;
    public final boolean A0i;

    static {
        A0L();
        A0p = (int) (AbstractC3045px.A02 * 48.0f);
        A0n = AbstractC2501gx.A02(-1, 77);
        A0u = (int) (AbstractC3045px.A02 * 26.0f);
        A0v = (int) (AbstractC3045px.A02 * 12.0f);
        A0r = (int) (AbstractC3045px.A02 * 12.0f);
        A0s = (int) (AbstractC3045px.A02 * 44.0f);
        A0q = AbstractC3043pv.A0y;
        A0t = (int) (AbstractC3045px.A02 * 16.0f);
        A0o = AbstractC2501gx.A02(A0n, 90);
        A0m = (int) (AbstractC3045px.A02 * 4.0f);
        A0l = (int) (AbstractC3045px.A03 * 32.0f);
    }

    public C6C(C1618Hi c1618Hi, InterfaceC2884nG interfaceC2884nG, LA la, C2746kz c2746kz, InterfaceC3175s3 interfaceC3175s3, int i, InterfaceC3119r9 interfaceC3119r9, C2892nO c2892nO, AbstractC3112r2 abstractC3112r2, int i2, int i3, int i4, boolean z, int i5, boolean z2, boolean z3, boolean z4, InterfaceC3171rz interfaceC3171rz, int i6, int i7) {
        super(c1618Hi, interfaceC3175s3, interfaceC2884nG, la, i, z3, z4, interfaceC3119r9, i7);
        this.A0N = new Handler(Looper.getMainLooper());
        this.A00 = 0.0f;
        this.A09 = false;
        this.A0A = false;
        this.A0H = false;
        this.A0B = false;
        this.A0F = false;
        this.A0E = true;
        this.A0C = false;
        this.A0D = false;
        this.A0d = new BC() { // from class: com.facebook.ads.redexgen.X.6I
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(BD bd) {
                this.A00.A0H = true;
                if (this.A00.getAdDataBundle().A2M()) {
                    this.A00.A0P.A0F().AM1(AbstractC3021pZ.A00((float) ((AbstractC1521Do) this.A00).A08.A1F()), this.A00.getResources().getConfiguration().orientation, true, true, AbstractC2361ef.A0E(C2362eg.A00(this.A00.A0P, ((AbstractC1521Do) this.A00).A0A, "", AbstractC3011pP.A00(((AbstractC1521Do) this.A00).A08.A32().A0K().A06()), new HashMap(), ((AbstractC1521Do) this.A00).A08.A33())));
                    this.A00.A0N(this.A00.getResources().getConfiguration().orientation);
                    this.A00.A0S.setVisibility(0);
                    if (this.A00.A0S instanceof AbstractC1551Es) {
                        ((AbstractC1551Es) this.A00.A0S).A0u(this.A00.getResources().getConfiguration().orientation);
                    }
                }
                if (this.A00.getAdDataBundle().A2O()) {
                    this.A00.A0g.setOnClickListener(this.A00.A0T);
                }
            }
        };
        this.A0c = new BE() { // from class: com.facebook.ads.redexgen.X.6H
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
        this.A0b = new BG() { // from class: com.facebook.ads.redexgen.X.6G
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            public final /* bridge */ /* synthetic */ void A03(C2830mO c2830mO) {
            }
        };
        this.A0e = new BB() { // from class: com.facebook.ads.redexgen.X.6F
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C5V c5v) {
                this.A00.A0V(c5v);
                this.A00.A0U.AEz((this.A00.A00 * this.A00.A0X.getDuration()) + c5v.A00());
            }
        };
        this.A0Z = new BM() { // from class: com.facebook.ads.redexgen.X.6E
            public static String[] A01 = {"WHlfg22LQewOceL2LP0nfjs", "MLczN6H9d0ts9YHCrKUbmxW9Pv4xX40Z", "bfgAoKxvo7gEuP52Z2EO408IJ8JPPLb2", "8W4TrLCVwT5pN341HhH6D3mP2byMMwpU", "ScQcjv0hvXE5sqpvLhFnJdo", "ew857MaMURY893GG0hi3zO6RFtTWvxkk", "kzrdBoT0QozH1fOZ2V6a3FXV0JrhAD1i", "6tn8KSSYbJPeTKsUVc3lRKjtLiYgy0EC"};

            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C5Y c5y) {
                this.A00.A0U.AEd(this.A00.A0X.getDuration());
                C6C.A01(this.A00, 1.0f);
                if (!this.A00.getAdDataBundle().A3G() && this.A00.A00 <= ((AbstractC1521Do) this.A00).A08.A32().A0H()) {
                    this.A00.A0X.A0f(EnumC2324e4.A03, 28);
                    return;
                }
                if (!this.A00.getAdDataBundle().A3G() || this.A00.A0C) {
                    if (this.A00.getAdDataBundle().A3G() && this.A00.A0C) {
                        return;
                    }
                    this.A00.A0E = false;
                    this.A00.A0K();
                    return;
                }
                int iA30 = this.A00.getAdDataBundle().A30();
                if (this.A00.A00 < iA30) {
                    this.A00.A0H();
                    return;
                }
                float f = this.A00.A00;
                float f2 = iA30;
                String[] strArr = A01;
                if (strArr[5].charAt(17) != strArr[3].charAt(17)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A01;
                strArr2[0] = "Y6tJEDKh19k0rBQmCTxaUfC";
                strArr2[4] = "6GhykS7c96Spqt9ACDuQK2F";
                if (f != f2) {
                    this.A00.A0K();
                    return;
                }
                this.A00.A0E = false;
                this.A00.A0U.AH3(true);
                this.A00.A0H();
            }
        };
        this.A0a = new C6D(this);
        this.A0P = c1618Hi;
        this.A0Q = c2892nO;
        this.A0R = abstractC3112r2;
        this.A0M = i6;
        int i8 = -1;
        if (super.A08.A2M()) {
            i8 = i6;
            this.A0O = new C1445Aq(this.A0P, c2892nO);
        } else {
            this.A0O = new C1446Ar(this.A0P, c2892nO);
        }
        this.A0g = new C1441Am(this.A0P, i8);
        if (this.A00 < la.A32().A0H()) {
            this.A0g.setShouldClearAnimationWhenVideoCompleted(false);
        }
        this.A0K = i5;
        this.A0i = z2;
        this.A0J = i2;
        this.A0L = i3;
        this.A0U = interfaceC3171rz;
        this.A0I = i4;
        this.A0h = z;
        this.A0V = new C2530hR(this.A0P, interfaceC2884nG, super.A08);
        this.A01 = i3 == 1 ? super.A08.A31().A01() : super.A08.A31().A00();
        this.A0X = new C1459Be(this.A0P);
        this.A0X.getEventBus().A03(this.A0d, this.A0c, this.A0b, this.A0e, this.A0Z, this.A0a);
        this.A0Y = new C5Z(c1618Hi, interfaceC2884nG, this.A0X, la.A37(), 0, 0, la.A32().A0V(), null, null);
        A0J();
        this.A0X.setVideoURI(c2746kz.A0T(super.A08.A32().A0I().A09()));
        A0I();
        C3039pr c3039prA02 = super.A0B.A02(la);
        this.A0P.A0H().A00(c3039prA02.A01);
        this.A0S = A06();
        if (this.A0S instanceof C1540Eh) {
            new C1434Af(this.A0S, 400, 100, 0).A4b(true, false);
        } else {
            this.A0S.setVisibility(8);
        }
        this.A0f = new C1453Ay(true, la.A32().A0V());
        A0M();
        this.A0T = this.A0S.getCTAButton();
        if (c3039prA02.A00) {
            this.A0X.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.1D
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.A00.A1t(view);
                }
            });
        }
        AbstractC3086qc.A0H(1001, this.A0T);
        A0G();
        if (!getAdDataBundle().A2M()) {
            A0F();
        }
        this.A0S.bringToFront();
        if (C2863mv.A1z(this.A0P)) {
            this.A0P.A0B().AM7(this.A0X, super.A08.A37(), true);
        }
        if (C2863mv.A20(this.A0P)) {
            this.A0W = new C1464Bj(this.A0P, interfaceC2884nG, this.A0X, super.A08.A37(), la.A32().A0V(), this.A0Y, null);
        } else {
            this.A0W = null;
        }
    }

    public static /* synthetic */ float A01(C6C c6c, float f) {
        float f2 = c6c.A00 + f;
        c6c.A00 = f2;
        return f2;
    }

    private AbstractC3284to A06() {
        AbstractC3284to c1540Eh;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        String strA03 = super.A08.A1c().equals(A0C(47, 14, 65)) ? EnumC2318dy.A04.A03() : A0C(0, 37, 58);
        double dA1F = super.A08.A1F();
        boolean zA2M = getAdDataBundle().A2M();
        if (A0k[2].charAt(19) == 'M') {
            throw new RuntimeException();
        }
        A0k[2] = "UjX50goOnLgU03JCSIrIh8CV2epyWLz0";
        if (zA2M) {
            c1540Eh = new C3329uX((float) dA1F, strA03, this.A0P, getColors(), super.A08, super.A0D, this.A0T, AbstractC1521Do.A0I, false, super.A0A, super.A0F, super.A0C, this.A0g, this.A0Q, false).A03();
            ((AbstractC1551Es) c1540Eh).setChainedAdInfo(super.A00);
        } else {
            c1540Eh = new C1540Eh(this.A0P, null, A0p, super.A08.A32().A0J().A00() == EnumC2400fJ.A05, getColors(), super.A08.A32().A0K().A07(), strA03, super.A0A, super.A0D, super.A0F, super.A0C, super.A08);
        }
        c1540Eh.getCTAButton().getCtaActionHelper().A0A(super.A08);
        AbstractC3086qc.A0H(1008, c1540Eh);
        c1540Eh.A0l(this.A0L);
        addView(c1540Eh, layoutParams);
        c1540Eh.setInfo(super.A08.A32().A0J(), super.A08.A32().A0K(), super.A08.A37(), super.A08.A35().A01(), null, new InterfaceC3303u7() { // from class: com.facebook.ads.redexgen.X.Db
            @Override // com.facebook.ads.redexgen.X.InterfaceC3303u7
            public final void AEZ() {
                this.A00.A1s();
            }
        });
        return c1540Eh;
    }

    public static String A0C(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0j, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 44);
        }
        return new String(bArrCopyOfRange);
    }

    private void A0D() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        if (this.A06 != null) {
            this.A06.A0f(false);
            addView(this.A06.A0W(), layoutParams);
        }
    }

    private void A0E() {
        EnumC2935o7 enumC2935o7A00 = EnumC2935o7.A00(getAdDataBundle().A1a());
        if (enumC2935o7A00 == EnumC2935o7.A08) {
            AbstractC3086qc.A0e(this.A0S, this.A0O, this.A0T);
            this.A05 = new C3388vU(this.A0P, getAdDataBundle(), this.A0Q, this.A0N, super.A0D, this.A0R);
            addView(this.A05.A0K(this.A0T), new RelativeLayout.LayoutParams(-1, -1));
            return;
        }
        if (enumC2935o7A00 == EnumC2935o7.A05) {
            AbstractC3086qc.A0e(this.A0S, this.A0O, this.A0T);
            this.A03 = new C3333ub(this.A0P, getAdDataBundle(), this.A0Q, this.A0N, super.A0D);
            addView(this.A03.A0D(this.A0T), new RelativeLayout.LayoutParams(-1, -1));
            return;
        }
        if (getAdDataBundle().A32().A0L().A04()) {
            C2395fE c2395fEA32 = getAdDataBundle().A32();
            if (A0k[4].charAt(4) != 'R') {
                throw new RuntimeException();
            }
            A0k[5] = "IG6C4D4FNzKOlmveDSOZA8Sm7vA0oiYo";
            if (!c2395fEA32.A0L().A03().isEmpty()) {
                AbstractC3086qc.A0e(this.A0S, this.A0O, this.A0T);
                this.A06 = new C2521hI(this.A0P, getAdDataBundle(), super.A0D, this.A0T, this.A0N, this.A0Q);
                A0D();
                return;
            }
        }
        if (getAdDataBundle().A32().A0L().A05() || getAdDataBundle().A32().A0L().A04()) {
            AbstractC3086qc.A0e(this.A0S, this.A0O, this.A0T);
            this.A04 = new C3361v3(this.A0P, super.A08, this.A0Q, this.A0N, super.A0D);
            this.A04.A0K(false);
            addView(this.A04.A0E(this.A0T));
            return;
        }
        C2530hR c2530hR = this.A0V;
        String[] strArr = A0k;
        if (strArr[7].charAt(6) == strArr[6].charAt(6)) {
            throw new RuntimeException();
        }
        A0k[2] = "b3YZz6eZKLVTjLGY7Qv3itRrcKhjm6bQ";
        Pair<EnumC2531hS, View> pairA03 = c2530hR.A03(this.A0T);
        View view = (View) pairA03.second;
        AbstractC3086qc.A0H(1101, view);
        A0U((EnumC2531hS) pairA03.first, view);
    }

    private void A0F() {
        this.A0g.A0A(-1, A0n, false);
        this.A0g.setPadding(A0v, A0v, A0v, A0v);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, A0u);
        layoutParams.addRule(12);
        addView(this.A0g, layoutParams);
    }

    private void A0G() {
        RelativeLayout.LayoutParams layoutParams;
        if (super.A08.A2M()) {
            layoutParams = new RelativeLayout.LayoutParams(A0l, A0l);
            layoutParams.setMargins(AbstractC3043pv.A0e, AbstractC3043pv.A0u, AbstractC3043pv.A0e, AbstractC3043pv.A0c);
            layoutParams.addRule(9);
        } else {
            this.A0O.setPadding(A0r, A0r, A0r, A0r);
            layoutParams = new RelativeLayout.LayoutParams(A0s, A0s);
            layoutParams.setMargins(0, AbstractC3112r2.A00, A0q, 0);
            layoutParams.addRule(11);
            layoutParams.addRule(10);
        }
        addView(this.A0X, new RelativeLayout.LayoutParams(-1, -1));
        addView(this.A0O, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0H() {
        this.A0X.A0f(EnumC2324e4.A03, 28);
    }

    private void A0I() {
        postDelayed(new DX(this), C2863mv.A0N(this.A0P));
    }

    private void A0J() {
        this.A0X.A0g(this.A0g);
        if (this.A0O instanceof InterfaceC2323e3) {
            this.A0X.A0g((InterfaceC2323e3) this.A0O);
        }
        if (!TextUtils.isEmpty(super.A08.A32().A0I().A08())) {
            C5B c5b = new C5B(this.A0P);
            this.A0X.A0g(c5b);
            c5b.setImage(super.A08.A32().A0I().A08());
        }
        this.A0X.A0g(new AnonymousClass55(this.A0P));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0K() {
        if (A1o()) {
            A1g();
        } else {
            this.A0U.AE6();
        }
    }

    public static void A0L() {
        A0j = new byte[]{-55, -43, -45, -108, -52, -57, -55, -53, -56, -43, -43, -47, -108, -57, -54, -39, -108, -49, -44, -38, -53, -40, -39, -38, -49, -38, -49, -57, -46, -108, -55, -46, -49, -55, -47, -53, -54, Ascii.SI, Ascii.CAN, Ascii.ESC, Ascii.FF, Ascii.SO, Ascii.CR, 8, Ascii.ETB, Ascii.GS, Ascii.CR, -33, -46, -28, -50, -33, -47, -46, -47, -52, -29, -42, -47, -46, -36, -67, -80, -85, -84, -74};
    }

    private final void A0M() {
        View expandableLayout = this.A0S.getExpandableLayout();
        if (expandableLayout != null) {
            if (this.A08 != null) {
                this.A0f.A0L(this.A08);
            }
            C2404fN c2404fNA01 = super.A08.A31().A01();
            this.A0f.A0L(new C1435Ag(this.A0S.getCTAButton(), 300, -1, c2404fNA01.A0A(true)));
            this.A0f.A0L(new C1438Aj(this.A0S.getCTAButton(), 300, AbstractC3086qc.A08(A0n, A0o, A0m), AbstractC3086qc.A05(c2404fNA01.A09(true), A0m)));
            this.A0f.A0L(new C1436Ah(expandableLayout, 150, false));
            this.A0f.ABd(this.A0X);
            this.A0f.A0K(com.ironsource.M9.b.g);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0N(int i) {
        if (getAdDataBundle().A2M()) {
            this.A0P.A0F().AM3(i);
            this.A0X.A0a(i);
            A0O(i, this.A0X, (RelativeLayout) this.A0X.getVideoView());
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x006f  */
    private final void A0O(int i, ViewGroup viewGroup, RelativeLayout relativeLayout) {
        AbstractC3284to abstractC3284to;
        if (this.A0S instanceof AbstractC1551Es) {
            if ((this.A0S instanceof C13586q) || (this.A0S instanceof C13576p)) {
                AbstractC3086qc.A0K(this.A0S);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                if (getResources().getConfiguration().orientation == 2) {
                    layoutParams.addRule(1, relativeLayout.getId());
                    this.A0S.setLayoutParams(layoutParams);
                    viewGroup.addView(this.A0S);
                } else {
                    View view = this.A0S;
                    if (A0k[5].charAt(17) == 'S') {
                        A0k[1] = "FRMsyzuLc3gZfdMKASlNmMY9tlCkF6nx";
                        addView(view, layoutParams);
                    }
                }
                abstractC3284to = this.A0S;
                if (A0k[4].charAt(4) == 'R') {
                    String[] strArr = A0k;
                    strArr[7] = "PKo2vwQTJwyDgvIModIJuZ40o1531gqX";
                    strArr[6] = "2NjiF537ycZcGbLh0nonhJtG51ansIa1";
                    abstractC3284to.A0l(i);
                    ((AbstractC1551Es) this.A0S).A0y(viewGroup, relativeLayout, i);
                    return;
                }
            } else {
                abstractC3284to = this.A0S;
                if (A0k[4].charAt(4) == 'R') {
                    String[] strArr2 = A0k;
                    strArr2[7] = "PKo2vwQTJwyDgvIModIJuZ40o1531gqX";
                    strArr2[6] = "2NjiF537ycZcGbLh0nonhJtG51ansIa1";
                    abstractC3284to.A0l(i);
                    ((AbstractC1551Es) this.A0S).A0y(viewGroup, relativeLayout, i);
                    return;
                }
            }
            throw new RuntimeException();
        }
    }

    private void A0U(EnumC2531hS enumC2531hS, View view) {
        this.A0X.A0i(false);
        this.A0X.setVisibility(8);
        switch (C1B.A00[enumC2531hS.ordinal()]) {
            case 1:
                this.A0S.setVisibility(0);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.setMargins(0, AbstractC3112r2.A00, 0, 0);
                layoutParams.addRule(2, this.A0S.getId());
                addView(view, layoutParams);
                break;
            case 2:
                AbstractC3086qc.A0e(this.A0S);
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams2.setMargins(A0t, A0t, A0t, A0t);
                addView(view, layoutParams2);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0V(C5V c5v) {
        if (this.A0X.getState() == EnumC2209cC.A02 && C2863mv.A1e(this.A0P)) {
            postDelayed(new DW(this, c5v), 5000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0W(String str) {
        if (this.A0F) {
            return;
        }
        this.A0F = true;
        this.A0U.AHa(str);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final EnumC2358ec A1a(String str) {
        if (getAdDataBundle().A3G() && getCurrentPlayCount() < getAdDataBundle().A30()) {
            boolean z = this.A0C;
            String[] strArr = A0k;
            if (strArr[0].length() == strArr[3].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0k;
            strArr2[0] = "rD";
            strArr2[3] = "0";
            if (!z) {
                this.A0C = true;
                this.A0E = false;
                EnumC2358ec enumC2358ecA0E = this.A0T.A0E(A0C(37, 10, 125));
                if (A1o()) {
                    A1g();
                } else {
                    this.A0U.AH3(true);
                }
                return enumC2358ecA0E;
            }
        }
        return this.A0T.A0E(str);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1b() {
        super.A1b();
        this.A0S.A0j();
        if (this.A02 != null) {
            this.A02.A06();
        }
        this.A0N.removeCallbacksAndMessages(null);
        if (this.A05 != null) {
            this.A05.A0L();
        }
        if (this.A03 != null) {
            this.A03.A0E();
        }
        if (this.A06 != null) {
            this.A06.A0Y();
        }
        C3361v3 c3361v3 = this.A04;
        String[] strArr = A0k;
        if (strArr[0].length() != strArr[3].length()) {
            A0k[2] = "4e1dr9g4n9kT22ZIdoKy0n8REVoGbgbF";
            if (c3361v3 != null) {
                C3361v3 c3361v4 = this.A04;
                if (A0k[1].charAt(26) != '5') {
                    A0k[2] = "sDtqF7ractOdV57EDY7GyqTfjJ1PXsQF";
                    c3361v4.A0H();
                }
            }
            if (C2863mv.A1z(this.A0P)) {
                this.A0P.A0B().ALo(this.A0X);
            }
            if (this.A0W != null) {
                this.A0W.A07();
            }
            if (this.A0X != null) {
                this.A0X.getEventBus().A04(this.A0d, this.A0c, this.A0b, this.A0e, this.A0Z, this.A0a);
                AbstractC3086qc.A0I(this.A0X);
                this.A0X.A0X();
            }
            this.A0Y.A0p();
            AbstractC3086qc.A0e(this.A0X, this.A0g, this.A0O);
            super.A0F.A0V();
            return;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1g() {
        this.A0P.A0F().A5W();
        this.A09 = true;
        AbstractC3086qc.A0X(this);
        AbstractC3086qc.A0I(this.A0X);
        AbstractC3086qc.A0e(this.A0X, this.A0g, this.A0O);
        A0E();
        if (this.A0I == 0 && this.A0h) {
            if (this.A0i) {
                this.A0U.ALw();
            }
            if (this.A0R != null) {
                this.A0R.setToolbarActionMode(getAdDataBundle().A3N() ? 8 : 2);
            }
            this.A02 = new C3030pi(this.A0K, 100.0f, 100L, new Handler(Looper.getMainLooper()), new C1507Da(this));
            this.A02.A07();
            return;
        }
        this.A0U.AH3(true);
        if (this.A0R == null || getAdDataBundle().A32().A0L().A00() <= 0) {
            this.A0A = true;
            return;
        }
        this.A0A = false;
        if (getAdDataBundle().A3N()) {
            this.A0R.setToolbarActionMode(8);
        } else {
            this.A0R.setToolbarActionMode(2);
        }
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.facebook.ads.redexgen.X.1C
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                if (AbstractC2971oi.A02(this)) {
                    return;
                }
                try {
                    this.A00.A0A = true;
                    this.A00.A0U.AH3(true);
                } catch (Throwable th) {
                    AbstractC2971oi.A00(th, this);
                }
            }
        }, getAdDataBundle().A32().A0L().A00());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1h() {
        this.A0X.setVolume(super.A08.A32().A0I().A0A() ? 0.0f : 1.0f);
        this.A0X.A0f(EnumC2324e4.A03, 20);
        if (!getAdDataBundle().A3G() || this.A0C) {
            int iA02 = super.A08.A32().A0I().A02();
            if (iA02 >= 0) {
                this.A0R.setProgressSpinnerInvisible(true);
            }
            if (iA02 == 0 || iA02 >= this.A0M) {
                this.A0R.setToolbarActionMode(8);
            } else if (iA02 > 0) {
                new C3030pi(iA02, new DZ(this)).A07();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1i(boolean z) {
        if (z) {
            this.A0D = true;
        }
        if (z && getAdDataBundle().A3G() && getCurrentPlayCount() < getAdDataBundle().A30()) {
            boolean z2 = this.A0C;
            if (A0k[5].charAt(17) != 'S') {
                throw new RuntimeException();
            }
            String[] strArr = A0k;
            strArr[7] = "HQMNmsEpSladYJ4PQutWG71JU8T5RrCM";
            strArr[6] = "fScVEufYqboG567jNGnQCk8yQ2DxEz8s";
            if (!z2) {
                this.A0R.setToolbarActionMode(8);
                return;
            }
        }
        if (z && getAdDataBundle().A3G() && this.A0C) {
            this.A0E = false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x003d  */
    /* JADX WARN: Code duplicated, block: B:26:0x0072  */
    /* JADX WARN: Code duplicated, block: B:28:0x007b  */
    /* JADX WARN: Code duplicated, block: B:30:0x007f  */
    /* JADX WARN: Code duplicated, block: B:33:0x0095  */
    /* JADX WARN: Code duplicated, block: B:35:0x009b  */
    /* JADX WARN: Code duplicated, block: B:38:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:40:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:43:0x00c2 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:44:0x00c3  */
    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1j(boolean z) {
        C3361v3 c3361v3;
        C3388vU c3388vU;
        if (this.A0B) {
            if (this.A05 != null) {
                c3388vU = this.A05;
                if (A0k[1].charAt(26) != '5') {
                    A0k[1] = "4wNyCTM8ZErgqvJ584yFMDN96NuiIKcr";
                    c3388vU.A0N(z);
                }
            }
            if (this.A03 != null) {
                this.A03.A0G(z);
            }
            if (this.A06 != null) {
                this.A06.A0e(z);
            }
            c3361v3 = this.A04;
            if (A0k[2].charAt(19) != 'M') {
                A0k[4] = "tUEuR5Hu5W0wqcl6w1396euuBpvmuQY6";
                if (c3361v3 != null) {
                    if (!this.A0B) {
                        this.A04.A0J(z);
                    }
                }
            } else {
                String[] strArr = A0k;
                strArr[0] = "OQ";
                strArr[3] = "X";
                if (c3361v3 != null) {
                    if (!this.A0B) {
                        this.A04.A0J(z);
                    }
                }
            }
            this.A0B = false;
            if (A0k[4].charAt(4) != 'R') {
                throw new RuntimeException();
            }
            A0k[4] = "tYy8RE9rHMYlmDryM9ERZuucPYH6oSxt";
            if (this.A02 != null) {
                this.A02.A06();
            }
            if (this.A0X.A0o()) {
                return;
            }
            this.A07 = this.A0X.getVideoStartReason();
            this.A0G = z;
            this.A0X.A0j(false, 13);
            return;
        }
        AbstractC3284to abstractC3284to = this.A0S;
        if (A0k[2].charAt(19) != 'M') {
            String[] strArr2 = A0k;
            strArr2[0] = "34";
            strArr2[3] = "e";
            abstractC3284to.A0m(z);
            if (this.A05 != null && !this.A0B) {
                c3388vU = this.A05;
                if (A0k[1].charAt(26) != '5') {
                    A0k[1] = "4wNyCTM8ZErgqvJ584yFMDN96NuiIKcr";
                    c3388vU.A0N(z);
                }
            }
            if (this.A03 != null && !this.A0B) {
                this.A03.A0G(z);
            }
            if (this.A06 != null && !this.A0B) {
                this.A06.A0e(z);
            }
            c3361v3 = this.A04;
            if (A0k[2].charAt(19) != 'M') {
                A0k[4] = "tUEuR5Hu5W0wqcl6w1396euuBpvmuQY6";
                if (c3361v3 != null) {
                    if (!this.A0B) {
                        this.A04.A0J(z);
                    }
                }
            } else {
                String[] strArr3 = A0k;
                strArr3[0] = "OQ";
                strArr3[3] = "X";
                if (c3361v3 != null) {
                    if (!this.A0B) {
                        this.A04.A0J(z);
                    }
                }
            }
            this.A0B = false;
            if (A0k[4].charAt(4) != 'R') {
                throw new RuntimeException();
            }
            A0k[4] = "tYy8RE9rHMYlmDryM9ERZuucPYH6oSxt";
            if (this.A02 != null) {
                this.A02.A06();
            }
            if (this.A0X.A0o()) {
                return;
            }
            this.A07 = this.A0X.getVideoStartReason();
            this.A0G = z;
            this.A0X.A0j(false, 13);
            return;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1k(boolean z) {
        if (this.A02 != null && !this.A02.A05()) {
            C3030pi c3030pi = this.A02;
            if (A0k[5].charAt(17) != 'S') {
                throw new RuntimeException();
            }
            String[] strArr = A0k;
            strArr[7] = "pObqmm4LdTsqTcUgL7kozPbufRCkwYZC";
            strArr[6] = "5szeP9lNqMFVM0rzjOQcuK8NUDwg7u3G";
            c3030pi.A07();
        }
        if (this.A09 || this.A0X.getState() == EnumC2209cC.A06 || this.A07 == null) {
            return;
        }
        if (!this.A0G || z) {
            this.A0X.A0f(this.A07, 19);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final boolean A1l() {
        return this.A0E && !this.A0C;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final boolean A1o() {
        return (this.A0I == 2 || !super.A08.A32().A0W() || this.A09) ? false : true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final boolean A1p() {
        return this.A09;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final boolean A1q() {
        return this.A0A;
    }

    public final /* synthetic */ void A1s() {
        this.A0C = true;
        if (getAdDataBundle().A3G() && this.A0D) {
            this.A0E = false;
            this.A0U.AH3(true);
        }
    }

    public final /* synthetic */ void A1t(View view) {
        this.A0T.A0E(A0C(61, 5, 27));
    }

    public C2404fN getColors() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public int getCurrentPlayCount() {
        return (int) this.A00;
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
        C2404fN c2404fNA00;
        super.onConfigurationChanged(configuration);
        if (this.A09) {
            if (this.A05 != null) {
                this.A05.A0M(configuration.orientation);
                return;
            } else if (this.A03 != null) {
                this.A03.A0F(configuration.orientation);
                return;
            } else {
                if (this.A06 != null) {
                    this.A06.A0a(configuration.orientation);
                    return;
                }
                return;
            }
        }
        if (getAdDataBundle().A2M()) {
            A0N(configuration.orientation);
            return;
        }
        if (configuration.orientation == 1) {
            C2391fA c2391fAA31 = super.A08.A31();
            if (A0k[4].charAt(4) != 'R') {
                throw new RuntimeException();
            }
            A0k[1] = "uYIsd2DhsQ91Wp0xmXJ9348eeMLtSRMf";
            c2404fNA00 = c2391fAA31.A01();
        } else {
            c2404fNA00 = super.A08.A31().A00();
        }
        this.A01 = c2404fNA00;
        this.A0T.setViewShowsOverMedia(true);
        this.A0T.setUpButtonColors(this.A01);
        this.A0S.A0l(configuration.orientation);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View expandableLayout;
        super.onLayout(z, i, i2, i3, i4);
        if (!getAdDataBundle().A2M() && (expandableLayout = this.A0S.getExpandableLayout()) != null && z && this.A08 == null) {
            this.A08 = new C1437Ai(expandableLayout, 300, expandableLayout.getHeight(), 0);
            this.A0f.A0L(this.A08);
            this.A0f.A0J();
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            A1k(false);
        } else {
            this.A0B = true;
            A1j(false);
        }
    }
}
