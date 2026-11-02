package com.facebook.ads.redexgen.X;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.view.FullScreenAdToolbar;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class D2 extends FrameLayout implements InterfaceC3120rA {
    public static byte[] A0L;
    public static String[] A0M = {"n8b1XAz0kHAkpiWEmzC3t1pF5U", "eWK394xXCAUBfgpESuKIG56NqbrNFWJq", "5CdOn8t3diym6HDjOq5Y6uNvOx4lt5g3", "HN0pIlpAYl374dQUYji0gU", "nPJn2NzIeBIJ0ob92wkGV5", "7vv965TmOe", "OL6PAd", "N5PSCRASy1"};
    public static final RelativeLayout.LayoutParams A0N;
    public int A00;
    public int A01;
    public int A02;
    public C3310uE A03;
    public AbstractC1521Do A04;
    public C2474gV A05;
    public boolean A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public final C1708Kz A0A;
    public final InterfaceC2664je A0B;
    public final C2746kz A0C;
    public final C1618Hi A0D;
    public final InterfaceC2884nG A0E;
    public final C2892nO A0F;
    public final ViewOnSystemUiVisibilityChangeListenerC3072qO A0G;
    public final AbstractC3112r2 A0H;
    public final InterfaceC3119r9 A0I;
    public final InterfaceC3175s3 A0J;
    public final ArrayList<C3257tN> A0K;

    static {
        A0I();
        A0N = new RelativeLayout.LayoutParams(-1, -1);
    }

    public D2(C1618Hi c1618Hi, InterfaceC3175s3 interfaceC3175s3, InterfaceC2884nG interfaceC2884nG, C1708Kz c1708Kz, C2746kz c2746kz, InterfaceC3119r9 interfaceC3119r9) {
        FrameLayout.LayoutParams layoutParams;
        super(c1618Hi);
        this.A0K = new ArrayList<>();
        this.A09 = false;
        this.A07 = false;
        this.A08 = false;
        this.A06 = true;
        this.A02 = 1;
        this.A00 = 0;
        this.A01 = 0;
        this.A0B = new D5(this);
        this.A0D = c1618Hi;
        this.A0J = interfaceC3175s3;
        this.A0E = interfaceC2884nG;
        this.A0A = c1708Kz;
        this.A0C = c2746kz;
        this.A0I = interfaceC3119r9;
        this.A0F = new C2892nO(this.A0A.A2z(0).A37(), this.A0E);
        this.A0G = new ViewOnSystemUiVisibilityChangeListenerC3072qO(this);
        this.A0G.A05(EnumC3071qN.A03);
        this.A05 = new C2474gV(this.A0D, this.A0J, this.A0A.A1u(), interfaceC3119r9);
        this.A0H = A07();
        if (this.A0A.A2M()) {
            layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(AbstractC3043pv.A0x, AbstractC3043pv.A0u, 0, 0);
        } else {
            layoutParams = new FrameLayout.LayoutParams(-1, this.A0H.getToolbarHeight());
        }
        addView(this.A0H, layoutParams);
    }

    /* JADX WARN: Code duplicated, block: B:103:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:105:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:18:0x0051  */
    /* JADX WARN: Code duplicated, block: B:39:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:43:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:45:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:51:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:60:0x011e  */
    /* JADX WARN: Code duplicated, block: B:62:0x0126  */
    /* JADX WARN: Code duplicated, block: B:93:0x01c1  */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00eb, code lost:
    
        if (r7.A04.A1o() != false) goto L57;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int A00() {
        /*
            Method dump skipped, instruction units count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.D2.A00():int");
    }

    private int A01(int i) {
        return (!this.A0A.A3B() || i >= this.A0A.A33().size() || i < 0) ? this.A0A.A1M() : this.A0A.A33().get(i).intValue();
    }

    public static /* synthetic */ int A03(D2 d2, int i) {
        int i2 = d2.A01 + i;
        d2.A01 = i2;
        return i2;
    }

    private AbstractC3112r2 A07() {
        AbstractC3112r2 fullScreenAdToolbar = !this.A0A.A2M() ? new FullScreenAdToolbar(this.A0D, this.A0I, this.A0F, 2, -1, false) : new C1570Fl(this.A0D, this.A0A.A2z(this.A00), 2);
        fullScreenAdToolbar.setFullscreen(true);
        fullScreenAdToolbar.setToolbarListener(new D3(this));
        return fullScreenAdToolbar;
    }

    private AbstractC1521Do A0C(boolean z, int i) {
        D4 d4 = new D4(this, i);
        LA laA2z = this.A0A.A2z(this.A00);
        Activity activityA0E = this.A0D.A0E();
        if (activityA0E != null) {
            boolean zA2R = laA2z.A2R();
            String[] strArr = A0M;
            if (strArr[3].length() != strArr[4].length()) {
                throw new RuntimeException();
            }
            A0M[2] = "bDB0WKM3tjeRkIfEXbhmbXqmjWoJ3lp1";
            if (zA2R) {
                AbstractC3108qy.A02(activityA0E, 1, this.A0D);
            } else {
                C1618Hi c1618Hi = this.A0D;
                if (A0M[1].charAt(22) != '6') {
                    AbstractC3108qy.A02(activityA0E, -1, c1618Hi);
                } else {
                    String[] strArr2 = A0M;
                    strArr2[6] = "kND67a";
                    strArr2[0] = "muWswOX35m7UhHe3NR7FnsVKJl";
                    AbstractC3108qy.A02(activityA0E, -1, c1618Hi);
                }
            }
        }
        if (laA2z.A3R()) {
            this.A0H.setOnClickListener(new ViewOnClickListenerC3172s0(this));
        }
        boolean z2 = this.A0A.A38() && this.A00 > 0;
        boolean z3 = this.A0A.A37() && this.A00 > 0;
        String strA31 = this.A0A.A31();
        if (laA2z.A2Q()) {
            int i2 = this.A0J instanceof FG ? 0 : 1;
            this.A0D.A0F().ALB(EnumC2311dr.A07);
            this.A0D.A0F().AKd(this.A00);
            this.A0D.A0F().A5U(strA31);
            return new C6L(this.A0D, this.A0J, this.A0E, laA2z, this.A00, z2, z3, this.A0I, d4, this.A0A.A2v(), i2, A01(this.A00), this.A0A.A3B() ? 0 : this.A01);
        }
        if (laA2z.A39().size() > 1) {
            int iA01 = A01(this.A00);
            if (iA01 == 0) {
                setUnskippableSecondsComplete(true);
            }
            this.A0D.A0F().ALB(EnumC2311dr.A05);
            this.A0D.A0F().AKd(this.A00);
            this.A0D.A0F().A5U(strA31);
            if (laA2z.A2K()) {
                return new C6M(this.A0D, this.A0J, this.A00, this.A0E, laA2z, this.A0I, this.A0H, this.A0F, this.A0C, z2, z3, d4, iA01, this.A0A.A2v(), true);
            }
            return new C6J(this.A0D, this.A0J, this.A00, this.A0E, laA2z, this.A0I, this.A0H, this.A0F, this.A0C, z2, z3, d4, iA01, this.A0A.A2v());
        }
        if (A0d(laA2z)) {
            int iA02 = A01(this.A00);
            if (iA02 == 0) {
                setUnskippableSecondsComplete(true);
            }
            this.A0D.A0F().ALB(EnumC2311dr.A06);
            this.A0D.A0F().AKd(this.A00);
            this.A0D.A0F().A5U(strA31);
            return new C6K(this.A0D, this.A0J, this.A00, this.A0E, laA2z, this.A0I, this.A0H, this.A0F, z2, z3, d4, iA02, this.A0A.A2v());
        }
        if (!laA2z.A32().A0U()) {
            this.A0D.A0F().ALB(EnumC2311dr.A07);
            this.A0D.A0F().AKd(this.A00);
            this.A0D.A0F().A5U(strA31);
            return new C6C(this.A0D, this.A0E, laA2z, this.A0C, this.A0J, this.A00, this.A0I, this.A0F, this.A0H, this.A0A.A1M(), i, this.A0A.A2u(), z, this.A0A.A2w(), this.A0A.A3B(), z2, z3, d4, A01(this.A00), this.A0A.A2v());
        }
        this.A0D.A0F().ALB(EnumC2311dr.A07);
        this.A0D.A0F().AKd(this.A00);
        this.A0D.A0F().A5U(strA31);
        if (this.A0A.A2M()) {
            return new C13405y(this.A0D, this.A0E, this.A0H, laA2z, this.A0C, this.A0J, this.A00, this.A0I, this.A0F, i, z2, z3, d4, A01(this.A00), this.A0A.A2v());
        }
        return new AnonymousClass65(this.A0D, this.A0E, this.A0H, laA2z, this.A0C, this.A0J, this.A00, this.A0I, this.A0F, i, z2, z3, d4, A01(this.A00), this.A0A.A2v());
    }

    public static String A0D(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0L, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 39);
        }
        return new String(bArrCopyOfRange);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0E() {
        int iA00 = A00();
        if (iA00 != 0) {
            this.A0D.A0F().A5X(iA00);
        }
    }

    private void A0F() {
        if (this.A00 <= 0 || TextUtils.isEmpty(this.A0A.A2z(this.A00 - 1).A37())) {
            return;
        }
        this.A0E.ABt(this.A0A.A2z(this.A00 - 1).A37(), new C3278ti().A05(this.A04 != null ? this.A04.getAdViewabilityChecker() : null).A04(this.A04 != null ? this.A04.getTouchDataRecorder() : null).A07());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:18:0x004c  */
    public void A0G() {
        boolean z;
        if (this.A0H.getToolbarActionMode() == 8) {
            if (this.A09) {
                if (A0a()) {
                    boolean zA0Y = A0Y();
                    if (A0M[1].charAt(22) != '6') {
                        throw new RuntimeException();
                    }
                    String[] strArr = A0M;
                    strArr[6] = "TvtNav";
                    strArr[0] = "7cv5ylY9IM1pTqkWAPRPJldmHk";
                    if (zA0Y || A0c()) {
                        z = false;
                    } else {
                        z = true;
                    }
                } else {
                    z = false;
                }
                boolean z2 = this.A04 != null && this.A04.A1o();
                if (A0Y() || z || z2) {
                    this.A0H.setToolbarActionMode(1);
                } else {
                    this.A0H.setToolbarActionMode(0);
                }
            } else {
                this.A0H.setToolbarActionMode(2);
            }
        }
        int i = this.A00 - 1;
        if (this.A0A.A3C(i)) {
            LA laA2z = this.A0A.A2z(i);
            this.A0H.setProgressSpinnerInvisible(true ^ laA2z.A3Q());
            laA2z.A3D(false);
            laA2z.A32().A0N(-1);
        }
    }

    private void A0H() {
        this.A0D.A0F().A5V();
        this.A07 = true;
        this.A03 = new C3310uE(this.A0D, this.A0A, this.A0E, this.A0I, this.A0H.getToolbarHeight(), this.A02);
        C3257tN c3257tN = null;
        Iterator<C3257tN> it = this.A0K.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            if (A0M[1].charAt(22) == '6') {
                String[] strArr = A0M;
                strArr[7] = "ZPnrdglx3i";
                strArr[5] = "Z92DtyKnO3";
                if (!zHasNext) {
                    break;
                }
                C3257tN next = it.next();
                if (next.A00 == C3257tN.A06) {
                    c3257tN = next;
                    break;
                }
            } else {
                throw new RuntimeException();
            }
        }
        if (c3257tN != null) {
            A0N(this.A03, c3257tN);
        } else if (!this.A0K.isEmpty()) {
            C3310uE c3310uE = this.A03;
            C3257tN c3257tN2 = this.A0K.get(0);
            String[] strArr2 = A0M;
            if (strArr2[3].length() != strArr2[4].length()) {
                throw new RuntimeException();
            }
            A0M[1] = "QrfYDlJd0rSqFpmMPkZz6N62c1xeqnJu";
            A0N(c3310uE, c3257tN2);
        }
        A0W(true);
        if (this.A0H instanceof FullScreenAdToolbar) {
            ((FullScreenAdToolbar) this.A0H).setOnlyPageDetails(null);
        }
        if (this.A04 != null) {
            AbstractC3086qc.A0K(this.A04);
            this.A04.A1b();
            this.A04 = null;
        }
        AbstractC3086qc.A0K(this.A03);
        AbstractC3086qc.A0H(1102, this.A03);
        addView(this.A03, 0, new FrameLayout.LayoutParams(-1, -1));
    }

    public static void A0I() {
        A0L = new byte[]{113, -64, -73, 113, -62, -27, -95};
        String[] strArr = A0M;
        if (strArr[3].length() != strArr[4].length()) {
            throw new RuntimeException();
        }
        A0M[2] = "BvaU1dA3vF4hXYIjQV5InfWnSlZ4OmYy";
    }

    private final void A0J() {
        this.A0G.A05(EnumC3071qN.A04);
    }

    private synchronized void A0K() {
        this.A0D.A0F().ACm();
        this.A0D.A0F().ABs();
        this.A0I.A5C(this.A0J.A7L());
        this.A05.A06();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0L(float f) {
        float fA01 = A01(this.A00 - 1);
        float f2 = fA01 > 0.0f ? ((this.A0A.A3B() ? 0 : this.A01) + f) / fA01 : 1.0f;
        if (this.A06 && this.A0A.A3B()) {
            this.A06 = false;
            this.A0H.setProgressImmediate(0.0f);
        }
        this.A0H.setProgress(100.0f * f2);
        if (f2 < 1.0f || this.A09) {
            return;
        }
        setUnskippableSecondsComplete(true);
        if (A0Z()) {
            return;
        }
        this.A0H.setToolbarActionMode(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0M(int i) {
        this.A0D.A0F().A5S(i);
        setUnskippableSecondsComplete(true);
        A0K();
        A0F();
        this.A0D.A0F().ABl();
        this.A0I.A5C(this.A0J.A8X());
    }

    private void A0N(ViewGroup viewGroup, C3257tN c3257tN) {
        if (c3257tN.A00 != C3257tN.A06 || c3257tN.A03 == null) {
            AbstractC3086qc.A0O(viewGroup, c3257tN.A01);
        } else {
            AbstractC3328uW.A00(this.A0D, viewGroup, c3257tN.A03);
        }
        this.A0H.setFullscreen(c3257tN.A05);
        this.A0H.A0D(c3257tN.A02, c3257tN.A04);
    }

    private void A0O(LA la) {
        if (this.A0H instanceof FullScreenAdToolbar) {
            boolean zA0d = A0d(la);
            if (A0M[2].charAt(7) != '3') {
                throw new RuntimeException();
            }
            A0M[2] = "vyv5r133RkdgG8M1gH7WIgZDBjsgq9Je";
            if (zA0d && this.A02 == 2) {
                ((FullScreenAdToolbar) this.A0H).setOnlyPageDetails(la.A35());
            } else {
                ((FullScreenAdToolbar) this.A0H).setOnlyPageDetails(null);
            }
        }
    }

    private final void A0P(C2658jY c2658jY) {
        c2658jY.A0A(this.A0B);
        int i = c2658jY.A05().getResources().getConfiguration().orientation;
        this.A02 = i;
        A0X(this.A0A.A35(), i);
        A0J();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:13:0x002e  */
    public void A0W(boolean z) {
        boolean z2;
        if (A0Z()) {
            return;
        }
        if (!A0a() || A0Y()) {
            z2 = false;
        } else {
            boolean zA0c = A0c();
            if (A0M[1].charAt(22) != '6') {
                throw new RuntimeException();
            }
            String[] strArr = A0M;
            strArr[7] = "fhNsXNJVUA";
            strArr[5] = "wXa0tVX5fv";
            if (zA0c) {
                z2 = false;
            } else {
                z2 = true;
            }
        }
        boolean z3 = this.A04 != null && this.A04.A1o();
        if (A0Y() || z2 || z3) {
            this.A0H.setToolbarActionMode(1);
            return;
        }
        setUnskippableSecondsComplete(true);
        if (z) {
            this.A0H.setToolbarActionMessage(A0D(0, 0, 66));
        }
        this.A0H.setToolbarActionMode(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0X(boolean z, int i) {
        if (this.A04 != null) {
            this.A04.A1b();
            if (A0M[1].charAt(22) != '6') {
                throw new RuntimeException();
            }
            A0M[2] = "W3TlfOl3oEXDpQnuuCTH10eCcUmU4b3A";
            this.A04.removeAllViews();
            AbstractC3086qc.A0K(this.A04);
        }
        if (this.A0A.A2M()) {
            AbstractC3086qc.A0K(this.A0H);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(AbstractC3043pv.A0x, AbstractC3043pv.A0u, 0, 0);
            addView(this.A0H, layoutParams);
        }
        if (!A0Y()) {
            setUnskippableSecondsComplete(true);
            if (A0a()) {
                A0H();
                return;
            } else {
                A0M(1);
                return;
            }
        }
        if (this.A0A.A3B()) {
            setUnskippableSecondsComplete(false);
            this.A0H.setProgressImmediate(0.0f);
        }
        if (!this.A0D.A01().AB4(this.A0A.A2z(this.A00).A37(), this.A0A.A30())) {
            this.A0D.A0F().A5T();
            A0M(2);
            return;
        }
        AbstractC1521Do abstractC1521DoA0C = A0C(z, i);
        this.A04 = abstractC1521DoA0C;
        this.A04.A1i(this.A09);
        setupToolbarForAd(abstractC1521DoA0C);
        addView(this.A04, 0, A0N);
        this.A00++;
        this.A04.A1h();
    }

    private boolean A0Y() {
        return this.A00 < this.A0A.A2v();
    }

    private boolean A0Z() {
        if (this.A04 == null || this.A0H.getToolbarActionMode() != 8) {
            return false;
        }
        int i = this.A00 - 1;
        if (!this.A0A.A3C(i)) {
            return false;
        }
        LA laA2z = this.A0A.A2z(i);
        return laA2z.A3G() && this.A04.A1l() && this.A04.getCurrentPlayCount() < laA2z.A30();
    }

    private boolean A0a() {
        return this.A0A.A2u() == 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0b() {
        if (this.A0H.getToolbarActionMode() != 8) {
            return false;
        }
        int i = this.A00 - 1;
        if (this.A0A.A3C(i)) {
            return this.A0A.A2z(i).A3J();
        }
        return false;
    }

    private final boolean A0c() {
        return this.A07;
    }

    public static boolean A0d(LA la) {
        return TextUtils.isEmpty(la.A32().A0I().A09());
    }

    private void setupToolbarForAd(AbstractC1521Do abstractC1521Do) {
        if (this.A0H == null) {
            return;
        }
        this.A06 = true;
        LA laA2z = this.A0A.A2z(this.A00);
        int iA01 = A01(this.A00);
        if (this.A0H instanceof FullScreenAdToolbar) {
            ((FullScreenAdToolbar) this.A0H).A0G(this.A0D, laA2z.A2u());
            ((FullScreenAdToolbar) this.A0H).A0F(laA2z.A35(), laA2z.A37(), iA01);
        } else if (this.A0H instanceof C1570Fl) {
            C1570Fl c1570Fl = (C1570Fl) this.A0H;
            String[] strArr = A0M;
            if (strArr[7].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0M;
            strArr2[6] = "BSHe58";
            strArr2[0] = "ZBSZ6J22vFdXaG69CEBQUYT0cT";
            c1570Fl.A0I(laA2z);
            ((C1570Fl) this.A0H).setInitialUnskippableSeconds(iA01);
        }
        C3257tN fullScreenAdStyle = abstractC1521Do.getFullScreenAdStyle();
        A0N(abstractC1521Do, fullScreenAdStyle);
        this.A0K.add(fullScreenAdStyle);
        if (this.A0H instanceof FullScreenAdToolbar) {
            this.A0H.setToolbarActionMessage(A0D(4, 3, 90) + (this.A00 + 1) + A0D(0, 4, 42) + this.A0A.A2v());
        }
        boolean z = abstractC1521Do instanceof C6L;
        this.A0H.setVisibility(z ? 8 : 0);
        this.A0H.setSkipIconSuppressed(z);
        if (this.A08) {
            this.A0H.setToolbarActionMode(1);
        }
        A0O(laA2z);
    }

    public final void A0h() {
        A0X(false, this.A02);
    }

    public final boolean A0i() {
        boolean z = this.A00 < this.A0A.A2v() && this.A0A.A39();
        if (z) {
            this.A0D.A0F().ACr();
        }
        return z;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void ABc(Intent intent, Bundle bundle, C2658jY c2658jY) {
        this.A0I.A4V(this, A0N);
        A0P(c2658jY);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void AGF(boolean z) {
        if (this.A04 != null) {
            this.A04.A1j(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void AGp(boolean z) {
        if (this.A04 != null) {
            this.A04.A1k(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void AKD(Bundle bundle) {
    }

    public AbstractC1521Do getContentView() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public String getCurrentClientToken() {
        return A0D(0, 0, 66);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        if (this.A04 != null) {
            return this.A04.A1r(i, i2, intent);
        }
        return false;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.A02 = configuration.orientation;
        if (this.A04 != null) {
            this.A04.onConfigurationChanged(configuration);
        }
        if (this.A04 instanceof C6K) {
            A0N(this.A04, this.A04.getFullScreenAdStyle());
            A0O(this.A04.getAdDataBundle());
        } else {
            if (this.A04 instanceof C6M) {
                A0N(this.A04, this.A04.getFullScreenAdStyle());
                return;
            }
            boolean z = this.A04 instanceof C6J;
            if (A0M[2].charAt(7) != '3') {
                throw new RuntimeException();
            }
            A0M[2] = "dTSLtaN3TPLZnVsUfzbb4eL6QIUFm0aB";
            if (z) {
                A0N(this.A04, this.A04.getFullScreenAdStyle());
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void onDestroy() {
        if (this.A04 != null) {
            this.A04.A1b();
            this.A04 = null;
        }
        this.A0D.A01().A5Y(this.A0A.A30());
        this.A0G.A03();
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void onStart() {
        if (this.A04 != null) {
            this.A04.A1c();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void onStop() {
        if (this.A04 != null) {
            this.A04.A1d();
        }
    }

    public void setListener(InterfaceC3119r9 interfaceC3119r9) {
    }

    public void setServerSideRewardHandler(C2474gV c2474gV) {
        this.A05 = c2474gV;
    }

    public void setUnskippableSecondsComplete(boolean z) {
        this.A09 = z;
        if (this.A04 != null) {
            this.A04.A1i(this.A09);
        }
    }
}
