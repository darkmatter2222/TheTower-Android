package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.6K, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C6K extends AbstractC1521Do {
    public static String[] A0A = {"itiy11Wl5lP7QtpB3", "v6A5WW2CB", "SYp5FzxPKMl", "MKN0lN1Uug", "IQIXhYysWoH9a5YMZx5hFMUL6lEdxT5q", "FECz3BMfLn4pJfwLFVrIm2wrzlNMsWJ3", "RmVgcuWcoU56A5AXkQhrmgSRFj76ryom", "F5uv5dts8QHAu8Ovw"};
    public static final RelativeLayout.LayoutParams A0B = new RelativeLayout.LayoutParams(-1, -1);
    public C3030pi A00;
    public C3030pi A01;
    public AbstractC3345un A02;
    public C1441Am A03;
    public final int A04;
    public final ImageView A05;
    public final C2892nO A06;
    public final AbstractC3112r2 A07;
    public final InterfaceC3171rz A08;
    public final AtomicBoolean A09;

    public C6K(C1618Hi c1618Hi, InterfaceC3175s3 interfaceC3175s3, int i, InterfaceC2884nG interfaceC2884nG, LA la, InterfaceC3119r9 interfaceC3119r9, AbstractC3112r2 abstractC3112r2, C2892nO c2892nO, boolean z, boolean z2, InterfaceC3171rz interfaceC3171rz, int i2, int i3) {
        super(c1618Hi, interfaceC3175s3, interfaceC2884nG, la, i, z, z2, interfaceC3119r9, i3);
        this.A09 = new AtomicBoolean(false);
        this.A04 = i2;
        this.A08 = interfaceC3171rz;
        this.A05 = new ImageView(getContext());
        this.A07 = abstractC3112r2;
        this.A06 = c2892nO;
        if (la.A2M()) {
            this.A03 = new C1441Am(c1618Hi, this.A04);
        }
        this.A05.setScaleType(ImageView.ScaleType.CENTER);
        this.A05.setAdjustViewBounds(true);
        new AsyncTaskC1552Et(this.A05, c1618Hi).A05(la.A32().A0I().A00(), la.A32().A0I().A01()).A06(new C1515Di(this)).A07(la.A32().A0I().A08());
        A09(c1618Hi.getResources().getConfiguration().orientation);
    }

    private AbstractC3345un A02(int i) {
        if (this.A05.getParent() != null) {
            ImageView imageView = this.A05;
            if (A0A[4].charAt(16) != 'Z') {
                throw new RuntimeException();
            }
            String[] strArr = A0A;
            strArr[3] = "PnJcnL34IR";
            strArr[1] = "4gIzhBkuZ";
            AbstractC3086qc.A0K(imageView);
        }
        if (A0A[4].charAt(16) != 'Z') {
            throw new RuntimeException();
        }
        A0A[4] = "hUws06ULbo6w3OlBZNW9WYMgHjAED42u";
        boolean z = i != 2;
        C3348uq c3348uq = new C3348uq(super.A09, this.A0A, this.A0D, super.A08, this.A05, this.A0F, this.A0C);
        c3348uq.A0J(this.A07.getToolbarHeight()).A0P(this.A07).A0I(i).A0T(z).A0S(super.A00).A0M(this.A06);
        if (this.A03 != null) {
            c3348uq.A0R(this.A03);
        }
        c3348uq.A0L(C2362eg.A00(super.A09, this.A0A, "", AbstractC3011pP.A00(super.A08.A32().A0K().A06()), new HashMap(), super.A08.A33()));
        c3348uq.A0Q(this.A08);
        return AbstractC3346uo.A00(c3348uq.A0U(), null, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A07() {
        if (this.A09.get()) {
            A1f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A08() {
        this.A01 = new C3030pi(this.A04 * super.A08.A30(), new C1512Df(this));
        this.A01.A07();
    }

    private void A09(int i) {
        AbstractC3086qc.A0K(this.A02);
        this.A02 = A02(i);
        if (this.A02 instanceof ET) {
            ((ET) this.A02).setChildChainedAd(true);
        } else if (this.A02 instanceof EE) {
            ((EE) this.A02).setChildChainedAd(true);
        }
        addView(this.A02, 0, A0B);
        String[] strArr = A0A;
        if (strArr[5].charAt(20) != strArr[6].charAt(20)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0A;
        strArr2[0] = "NymEh23RSAOezTqdL";
        strArr2[7] = "Z0aVEFLWFgqQyxS3R";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0C() {
        return super.A08.A3G() && (this.A02 instanceof C1539Eg) && !super.A08.A32().A0U();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0D() {
        return super.A08.A3G() && (this.A02 instanceof EE) && super.A08.A32().A0U();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final EnumC2358ec A1a(String str) {
        return this.A02.A1P(str);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1b() {
        if (this.A01 != null) {
            this.A01.A06();
            this.A01 = null;
        }
        if (C2863mv.A1z(super.A09)) {
            super.A09.A0B().ALo(this.A05);
        }
        if (this.A02 != null) {
            this.A02.A1Q();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1e() {
        this.A02.A1V();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1g() {
        if (this.A02 instanceof C1539Eg) {
            ((C1539Eg) this.A02).A1j();
        } else if (this.A02 instanceof EE) {
            ((EE) this.A02).A1k(false);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1h() {
        int iA02 = super.A08.A32().A0I().A02();
        if (this.A04 <= 0) {
            this.A08.AH3(false);
            return;
        }
        this.A00 = new C3030pi(this.A04, 100.0f, 100L, new Handler(Looper.getMainLooper()), new C1514Dh(this));
        this.A00.A07();
        if (iA02 >= 0) {
            AbstractC3112r2 abstractC3112r2 = this.A07;
            if (A0A[2].length() != 11) {
                throw new RuntimeException();
            }
            String[] strArr = A0A;
            strArr[5] = "5sJR643P2MO0kglA4V6nmPiOKHmDAtHO";
            strArr[6] = "LANOKlUG8RCY7vCAyDzomj5mGxVqyRh5";
            abstractC3112r2.setProgressSpinnerInvisible(true);
        }
        if (iA02 == 0 || iA02 >= this.A04) {
            this.A07.setToolbarActionMode(8);
        } else if (iA02 > 0) {
            new C3030pi(iA02, new C1513Dg(this)).A07();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1i(boolean z) {
        this.A02.setChainedWatchAndBrowseSkippableStatus(z);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1j(boolean z) {
        if (this.A00 != null && this.A00.A05()) {
            this.A00.A06();
        }
        if (this.A01 != null) {
            this.A01.A06();
        }
        if (this.A02 != null) {
            this.A02.A1b(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1k(boolean z) {
        if (this.A00 != null && !this.A00.A04()) {
            this.A00.A07();
        }
        if (this.A01 != null && !this.A01.A04()) {
            this.A01.A07();
        }
        if (this.A02 != null) {
            this.A02.A1c(z);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final boolean A1o() {
        if (!this.A02.A1d()) {
            return false;
        }
        if (!(this.A02 instanceof C1539Eg) || ((C1539Eg) this.A02).A1k()) {
            return (this.A02 instanceof EE) && !((EE) this.A02).A1m();
        }
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final boolean A1p() {
        if (this.A02 instanceof C1539Eg) {
            return ((C1539Eg) this.A02).A1k();
        }
        if (this.A02 instanceof EE) {
            return ((EE) this.A02).A1m();
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final boolean A1q() {
        if (this.A02 instanceof C1539Eg) {
            return ((C1539Eg) this.A02).A1l();
        }
        if (!(this.A02 instanceof EE)) {
            return true;
        }
        boolean zA1n = ((EE) this.A02).A1n();
        String[] strArr = A0A;
        if (strArr[3].length() == strArr[1].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0A;
        strArr2[5] = "28Vogccv9NIqO6rM4fplmtKTHGMh81ux";
        strArr2[6] = "2IsbBznITuMDsuWjFSmSm3tyrCYFg9A3";
        return zA1n;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public C3257tN getFullScreenAdStyle() {
        C2404fN colors = this.A02.getColors();
        return new C3257tN(this.A02.A1g(), C3257tN.A07, colors, ViewOnClickListenerC1544El.A05(super.A08), colors.A08(this.A02.A1g() || (this.A02 instanceof AbstractC1538Ef)), null);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.A02 instanceof C1539Eg) {
            this.A02.onConfigurationChanged(configuration);
        } else {
            if (super.A08.A32().A0U()) {
                return;
            }
            A09(configuration.orientation);
        }
    }
}
