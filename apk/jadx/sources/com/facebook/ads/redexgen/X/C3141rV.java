package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.content.Intent;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.google.common.base.Ascii;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import p005kotlin.io.encoding.Base64;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.rV, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3141rV extends FrameLayout {
    public static byte[] A0D;
    public static String[] A0E = {"tbDze41vR57WitlKMZyAWwQAPr5W6UnI", "IuZs1YJSi1bHFsg6mzMK9q5xKMO6o7or", "hodcQuDmNahPcJfuRDFyg3Dt7ywQDJlo", "pe0GQOvuFh5pg2TnQbBafefGr0TJwnl9", "GBdfSPafrBJGpom", "dBimmGt7g4heT7CXoRBe25ieDEtLBdAn", "Fd20gvJSvkSAp5OFhbQMjKnWZcr", "I2dHkzrwBjQ3AOP"};
    public static final int A0F;
    public boolean A00;
    public final LK A01;
    public final LA A02;
    public final C1618Hi A03;
    public final InterfaceC2884nG A04;
    public final C2892nO A05;
    public final C3077qT A06;
    public final C1564Ff A07;
    public final AbstractC1562Fd A08;
    public final AbstractC2200c3 A09;
    public final C2199c2 A0A;
    public final String A0B;
    public final WeakReference<InterfaceC3140rU> A0C;

    static {
        A0F();
        A0F = (int) (AbstractC3045px.A02 * 40.0f);
    }

    public C3141rV(C1618Hi c1618Hi, InterfaceC2884nG interfaceC2884nG, C2746kz c2746kz, WeakReference<InterfaceC3140rU> weakReference, int i, int i2, int i3, int i4, LK lk, String str) {
        super(c1618Hi);
        this.A06 = new C3077qT();
        this.A03 = c1618Hi;
        this.A04 = interfaceC2884nG;
        this.A01 = lk;
        this.A0C = weakReference;
        this.A0B = str;
        LA laA0F = this.A01.A0F();
        if (laA0F == null) {
            throw new IllegalStateException(A09(0, 32, 99));
        }
        this.A02 = this.A01.A0F();
        AbstractC3086qc.A0O(this, -1);
        this.A05 = new C2892nO(this.A01.A7z(), this.A04);
        this.A09 = A06();
        this.A0A = A07(i, i4, i2, i3);
        LinearLayout linearLayout = new LinearLayout(c1618Hi);
        linearLayout.setOrientation(1);
        addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
        this.A08 = A04(c2746kz);
        if (this.A08 != null) {
            linearLayout.addView(this.A08, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        }
        this.A07 = A02(laA0F);
        linearLayout.addView(this.A07, new LinearLayout.LayoutParams(-1, -2));
    }

    private C1564Ff A02(LA la) {
        C2395fE c2395fEA32 = la.A32();
        AbstractC1571Fn abstractC1571Fn = new AbstractC1571Fn() { // from class: com.facebook.ads.redexgen.X.6x
            public static byte[] A01;

            static {
                A01();
            }

            public static String A00(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
                for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 111);
                }
                return new String(bArrCopyOfRange);
            }

            public static void A01() {
                A01 = new byte[]{65};
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC3119r9
            public final void A5C(String str) {
                C2500gw.A00(this.A00.A03).A07(new Intent(str + A00(0, 1, 20) + this.A00.A0B));
            }
        };
        C1564Ff c1564Ff = new C1564Ff(this.A03, A0F, getOrientation() == 1 ? la.A31().A01() : la.A31().A00(), c2395fEA32.A0K().A07(), A09(32, 31, 0), this.A04, abstractC1571Fn, this.A0A, this.A06, la.A33());
        c1564Ff.getCTAButton().getCtaActionHelper().A0A(la);
        c1564Ff.setInfo(c2395fEA32.A0J(), c2395fEA32.A0K(), this.A01.A7z(), la.A35().A01(), null, null);
        if (C2863mv.A1N(this.A03)) {
            c1564Ff.A0k();
        }
        return c1564Ff;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.facebook.ads.redexgen.X.71] */
    private AbstractC1562Fd A04(C2746kz c2746kz) {
        final ViewOnClickListenerC3138rS viewOnClickListenerC3138rS = new ViewOnClickListenerC3138rS(this);
        String strA0e = this.A01.A0e();
        if (A0H(c2746kz, this.A01) && strA0e != null) {
            C13666y c13666yA0J = new C13666y(this.A03, this.A04, c2746kz, this.A05, viewOnClickListenerC3138rS, this.A02).A0J(this.A01.A7z(), strA0e, this.A01.A0H() != null ? this.A01.A0H().getUrl() : null, this.A01.A0R(), this.A01.A0Q());
            C1618Hi c1618Hi = this.A03;
            if (A0E[0].charAt(8) != 'R') {
                throw new RuntimeException();
            }
            A0E[0] = "77qnFvJsRWmRKk6JBgJBKEGWiyh1GlxA";
            if (C2863mv.A1R(c1618Hi)) {
                setViewAsCTA(c13666yA0J);
            }
            return c13666yA0J;
        }
        C2912ni c2912niA0H = this.A01.A0H();
        if (c2912niA0H == null) {
            return null;
        }
        final C1618Hi c1618Hi2 = this.A03;
        final C2892nO c2892nO = this.A05;
        final LA la = this.A02;
        AnonymousClass71 anonymousClass71A0J = new AbstractC1562Fd(c1618Hi2, viewOnClickListenerC3138rS, c2892nO, la) { // from class: com.facebook.ads.redexgen.X.71
            public static String[] A01 = {"zn2Jj3FLXRTbJtfw8Afxej", "dtmtrgWIKVcWUlm8dEr0sz0z9tf2J", "65otsIevi2", "WIcVvvEwkashef3N2EiIBveLumlZYLnq", "znrVNV6qMGpKzfn7IZK4DoefRCFoha0z", "F9i1YLvz3R", "dnWzAs8QX1u", "24chPJcrZ9gPM5HVBrP4Hx0vuAfDCuLF"};
            public final C3274te A00;

            {
                super(c1618Hi2, viewOnClickListenerC3138rS, c2892nO, la);
                this.A00 = new C3274te(c1618Hi2);
                addView(this.A00, new RelativeLayout.LayoutParams(-1, -1));
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1562Fd
            public final void A0F() {
                super.A0F();
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1562Fd
            public final void A0G() {
                super.A0G();
                if (this.A04 != null) {
                    AbstractC3086qc.A0K(this.A04);
                    C3212se c3212se = this.A04;
                    if (A01[1].length() == 32) {
                        throw new RuntimeException();
                    }
                    String[] strArr = A01;
                    strArr[3] = "LQJH1HzQRbzmZJzAQOnyFR28ulfrgLB8";
                    strArr[7] = "K31P2xmHlOzC52emjhwrGa1Mutq82lvW";
                    c3212se.setLayoutParams(AbstractC1562Fd.A0B(null));
                    addView(this.A04);
                }
            }

            public final AnonymousClass71 A0J(String str) {
                new AsyncTaskC1552Et(this.A00, this.A08).A05(this.A00.getHeight(), this.A00.getWidth()).A06(new C1563Fe(this)).A07(str);
                A0G();
                return this;
            }

            @Override // com.facebook.ads.redexgen.X.AbstractC1562Fd
            public int getMediaViewId() {
                return this.A00.getId();
            }
        }.A0J(c2912niA0H.getUrl());
        if (C2863mv.A1P(this.A03)) {
            setViewAsCTA(anonymousClass71A0J);
        }
        return anonymousClass71A0J;
    }

    private C1559Fa A06() {
        return new C1559Fa(this);
    }

    private C2199c2 A07(int i, int i2, int i3, int i4) {
        C2199c2 c2199c2 = new C2199c2(this, i, i2, true, new WeakReference(this.A09), this.A03);
        c2199c2.A0W(i3);
        c2199c2.A0X(i4);
        return c2199c2;
    }

    public static String A09(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0D, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 49);
        }
        return new String(bArrCopyOfRange);
    }

    private void A0C() {
        String strA0M = this.A01.A0M();
        if (TextUtils.isEmpty(strA0M)) {
            return;
        }
        C3007pK.A0P(new C3007pK(), this.A03, AbstractC3011pP.A00(strA0M), this.A01.A7z());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0D() {
        this.A05.A04(EnumC2891nN.A0A, null);
        if (!AbstractC2480gb.A00(this.A03.A02()).A0O(this.A03, false)) {
            A0C();
            return;
        }
        AbstractC3184sC abstractC3184sCA01 = AbstractC3185sD.A01(this.A03, this.A04, this.A01.A7z(), this);
        if (abstractC3184sCA01 == null) {
            A0C();
            return;
        }
        AbstractC3086qc.A0X(this);
        addView(abstractC3184sCA01, new FrameLayout.LayoutParams(-1, -1));
        abstractC3184sCA01.A0N();
    }

    private void A0E() {
        if (getVisibility() == 0 && this.A00 && hasWindowFocus()) {
            this.A0A.A0U();
            return;
        }
        C2199c2 c2199c2 = this.A0A;
        String[] strArr = A0E;
        if (strArr[2].charAt(4) != strArr[3].charAt(4)) {
            throw new RuntimeException();
        }
        A0E[5] = "SgvS5kp7YWZNPSZIgTDwR2Me85gfZWHQ";
        c2199c2.A0V();
    }

    public static void A0F() {
        A0D = new byte[]{19, 54, 114, 54, 51, 38, 51, 114, 48, 39, 60, 54, 62, 55, 114, 59, 33, 114, 49, 51, 60, 60, Base64.padSymbol, 38, 114, 48, 55, 114, 60, 39, 62, 62, 82, 94, 92, Ascii.US, 87, 80, 82, 84, 83, 94, 94, 90, Ascii.US, 80, 85, 66, Ascii.US, 83, 80, 95, 95, 84, 67, Ascii.US, 82, 93, 88, 82, 90, 84, 85};
    }

    public static boolean A0H(C2746kz c2746kz, LK lk) {
        String strA0e = lk.A0e();
        if (TextUtils.isEmpty(strA0e)) {
            return false;
        }
        String strA0T = c2746kz.A0T(strA0e);
        if (A0E[6].length() == 10) {
            throw new RuntimeException();
        }
        A0E[6] = "4EiEXi";
        return !TextUtils.isEmpty(strA0T);
    }

    private int getOrientation() {
        Activity activityA0E = this.A03.A0E();
        if (activityA0E != null) {
            return activityA0E.getResources().getConfiguration().orientation;
        }
        return 1;
    }

    private void setViewAsCTA(View view) {
        view.setOnClickListener(new ViewOnClickListenerC3139rT(this));
    }

    public final void A0I() {
        if (this.A08 != null) {
            this.A08.A0E();
        }
        if (this.A0A != null) {
            this.A0A.A0V();
        }
        AbstractC3086qc.A0K(this);
    }

    public final void A0J() {
        if (this.A08 != null) {
            this.A08.A0F();
        }
    }

    public C2199c2 getViewabilityChecker() {
        return this.A0A;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.A00 = true;
        A0E();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.A00 = false;
        A0E();
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.A06.A06(this.A03, motionEvent, this, this);
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        A0E();
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        A0E();
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            InterfaceC2300df interfaceC2300dfA0F = this.A03.A0F();
            if (AbstractC3163rr.A01(interfaceC2300dfA0F.getId())) {
                interfaceC2300dfA0F.A5E(EnumC2959oW.A04.name());
            }
        }
    }
}
