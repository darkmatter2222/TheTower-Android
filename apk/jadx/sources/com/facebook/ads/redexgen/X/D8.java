package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.view.FullScreenAdToolbar;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class D8 extends FrameLayout implements InterfaceC3120rA {
    public static byte[] A0F;
    public static String[] A0G = {"2Xyaln6pEv", "U0a3JqFqqkDVhXbmlhDLXicSxteMexx", "xzpI97Jg3aS17fwtqg1jZWsfReheMZxV", "0HUxaz9ggnFIA", "Uunhkc3", "kqN9", "fWeU9xYsODnan54TmlbSL1hNy6Lef7fu", "qbKhPFfRzVPGu"};
    public static final RelativeLayout.LayoutParams A0H;
    public boolean A00;
    public ViewGroup A01;
    public boolean A02;
    public final LA A03;
    public final C2746kz A04;
    public final C1618Hi A05;
    public final InterfaceC2884nG A06;
    public final C2892nO A07;
    public final C3077qT A08;
    public final AbstractC3112r2 A09;
    public final InterfaceC3119r9 A0A;
    public final InterfaceC3175s3 A0B;
    public final C2199c2 A0C;
    public final ViewOnSystemUiVisibilityChangeListenerC3072qO A0D;
    public final AbstractC2200c3 A0E;

    static {
        A0i();
        A0H = new RelativeLayout.LayoutParams(-1, -1);
    }

    public D8(C1618Hi c1618Hi, InterfaceC3175s3 interfaceC3175s3, InterfaceC2884nG interfaceC2884nG, LA la, C2746kz c2746kz, InterfaceC3119r9 interfaceC3119r9) {
        super(c1618Hi);
        this.A02 = false;
        this.A0E = new DE(this);
        this.A08 = new C3077qT();
        this.A00 = false;
        this.A05 = c1618Hi;
        this.A0B = interfaceC3175s3;
        this.A06 = interfaceC2884nG;
        this.A03 = la;
        this.A04 = c2746kz;
        this.A0A = interfaceC3119r9;
        this.A07 = new C2892nO(this.A03.A37(), this.A06);
        this.A0C = new C2199c2(this, 1, new WeakReference(this.A0E), this.A05);
        this.A0C.A0W(this.A03.A1J());
        this.A0C.A0X(this.A03.A1K());
        this.A09 = A0f();
        this.A0D = new ViewOnSystemUiVisibilityChangeListenerC3072qO(this);
        this.A0D.A05(EnumC3071qN.A03);
        if (A0u() || Build.VERSION.SDK_INT < 35) {
            return;
        }
        setFitsSystemWindows(true);
    }

    private AbstractC3112r2 A0f() {
        AbstractC3112r2 abstractC3112r2A0l = A0l();
        abstractC3112r2A0l.setFullscreen(true);
        int iA04 = this.A03.A32().A0I().A04();
        abstractC3112r2A0l.setPageDetails(this.A03.A35(), this.A03.A37(), iA04, this.A03.A36());
        abstractC3112r2A0l.A0D(this.A03.A31().A01(), ViewOnClickListenerC1544El.A05(this.A03));
        if (this.A03.A32().A0I().A02() == 0) {
            this.A02 = true;
            abstractC3112r2A0l.setToolbarActionMode(8);
        } else if (iA04 < 0 && this.A03.A32().A0T()) {
            if (A0G[5].length() != 4) {
                throw new RuntimeException();
            }
            A0G[5] = "12R7";
            abstractC3112r2A0l.setToolbarActionMode(4);
        }
        if (this.A03.A32().A0I().A02() >= 0) {
            abstractC3112r2A0l.setProgressSpinnerInvisible(true);
        }
        abstractC3112r2A0l.setToolbarListener(new D9(this));
        return abstractC3112r2A0l;
    }

    public static String A0g(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 80);
        }
        return new String(bArrCopyOfRange);
    }

    private void A0h() {
        if (!this.A03.A32().A0X()) {
            A0q();
            return;
        }
        C3159rn c3159rnA0F = new C3161rp(this.A05, this.A03.A32().A0J(), this.A03.A35()).A0A(this.A03.A31().A01()).A0F();
        AbstractC2894nQ.A04(c3159rnA0F, this.A07, EnumC2891nN.A0U);
        addView(c3159rnA0F, A0H);
        c3159rnA0F.A04(new DB(this));
    }

    public static void A0i() {
        A0F = new byte[]{84, 91, 74, 87, 86};
    }

    private EnumC3117r7 getAppOpenAdVariant() {
        return this.A03.A1U().equals(A0g(0, 5, 98)) ? EnumC3117r7.A07 : EnumC3117r7.A08;
    }

    public final C3030pi A0j(int i, AbstractRunnableC2979oq abstractRunnableC2979oq, C1441Am c1441Am) {
        C3030pi c3030pi = new C3030pi(i, new DD(this, i, c1441Am, abstractRunnableC2979oq));
        c3030pi.A07();
        return c3030pi;
    }

    public final C3030pi A0k(int i, AbstractRunnableC2979oq abstractRunnableC2979oq, C1441Am c1441Am, InterfaceC3187sF interfaceC3187sF) {
        C3030pi c3030pi = new C3030pi(i, new DC(this, i, c1441Am, interfaceC3187sF, abstractRunnableC2979oq));
        c3030pi.A07();
        return c3030pi;
    }

    public AbstractC3112r2 A0l() {
        if (A0u()) {
            return this.A03.A2D() ? new C1582Fy(this.A05, getAppOpenAdVariant(), this.A03, 8, new DA(this)) : new C1570Fl(this.A05, this.A03, 1);
        }
        return new FullScreenAdToolbar(this.A05, this.A0A, this.A07, 1, this.A03.A2u(), this.A03.A2e());
    }

    public void A0m() {
        if (this.A03.A2D()) {
            AbstractC3112r2 abstractC3112r2 = this.A09;
            if (A0G[4].length() == 31) {
                throw new RuntimeException();
            }
            A0G[4] = "c";
            Rect requestedMargins = abstractC3112r2.getRequestedMargins();
            if (requestedMargins == null) {
                return;
            }
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.A09.getLayoutParams();
            layoutParams.setMargins(requestedMargins.left, requestedMargins.top, requestedMargins.right, requestedMargins.bottom);
            this.A09.setLayoutParams(layoutParams);
        }
    }

    public final void A0n() {
        if (this.A00) {
            return;
        }
        this.A0C.A0U();
        this.A00 = true;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0047  */
    /* JADX WARN: Code duplicated, block: B:13:0x005e  */
    /* JADX WARN: Code duplicated, block: B:16:0x008e  */
    /* JADX WARN: Code duplicated, block: B:18:0x009f  */
    public final void A0o() {
        C2395fE c2395fEA32;
        String[] strArr;
        C2398fH c2398fHA0I;
        if (this.A09.getToolbarActionMode() != 8) {
            if (this.A03.A32().A0I().A07() != null) {
                c2398fHA0I = this.A03.A32().A0I();
                if (A0G[4].length() != 31) {
                    String[] strArr2 = A0G;
                    strArr2[6] = "COHiJK7VoTgBq0De7peYJOsfOEOe3XIQ";
                    strArr2[2] = "lGG8rOrP44fRkZ7H96nSjg4VgGaefoVT";
                    c2398fHA0I.A07().A0T(0);
                }
            }
            this.A03.A3D(false);
            c2395fEA32 = this.A03.A32();
            strArr = A0G;
            if (strArr[1].length() != strArr[0].length()) {
                String[] strArr3 = A0G;
                strArr3[1] = "wiu2MLgd3UkZmOSHZtDxRr0HkSCWnOg";
                strArr3[0] = "Ed0NbamE8O";
                c2395fEA32.A0N(-1);
                return;
            }
            String[] strArr4 = A0G;
            strArr4[3] = "aRfbrWr89hb3J";
            strArr4[7] = "GJWDx2ihyHFEK";
            c2395fEA32.A0N(-1);
            return;
        }
        AbstractC3112r2 abstractC3112r2 = this.A09;
        String[] strArr5 = A0G;
        if (strArr5[6].charAt(27) == strArr5[2].charAt(27)) {
            String[] strArr6 = A0G;
            strArr6[3] = "eZr61MFsF2rwL";
            strArr6[7] = "T1wa3uRffD5Dg";
            abstractC3112r2.setToolbarActionMode(2);
            if (this.A03.A32().A0I().A07() != null) {
                c2398fHA0I = this.A03.A32().A0I();
                if (A0G[4].length() != 31) {
                    String[] strArr7 = A0G;
                    strArr7[6] = "COHiJK7VoTgBq0De7peYJOsfOEOe3XIQ";
                    strArr7[2] = "lGG8rOrP44fRkZ7H96nSjg4VgGaefoVT";
                    c2398fHA0I.A07().A0T(0);
                }
            }
            this.A03.A3D(false);
            c2395fEA32 = this.A03.A32();
            strArr = A0G;
            if (strArr[1].length() != strArr[0].length()) {
                String[] strArr8 = A0G;
                strArr8[1] = "wiu2MLgd3UkZmOSHZtDxRr0HkSCWnOg";
                strArr8[0] = "Ed0NbamE8O";
                c2395fEA32.A0N(-1);
                return;
            }
            String[] strArr9 = A0G;
            strArr9[3] = "aRfbrWr89hb3J";
            strArr9[7] = "GJWDx2ihyHFEK";
            c2395fEA32.A0N(-1);
            return;
        }
        throw new RuntimeException();
    }

    public abstract void A0p();

    public abstract void A0q();

    public final void A0r(ViewGroup viewGroup) {
        if (!this.A03.A2D() || getAppOpenAdVariant() != EnumC3117r7.A07) {
            this.A01 = viewGroup;
            return;
        }
        C3322uQ c3322uQ = new C3322uQ(this.A05);
        c3322uQ.setRadius(AbstractC3043pv.A0y);
        c3322uQ.addView(viewGroup, new ViewGroup.LayoutParams(-1, -1));
        this.A01 = c3322uQ;
    }

    public abstract void A0s(C2658jY c2658jY);

    public abstract boolean A0t();

    public abstract boolean A0u();

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void ABc(Intent intent, Bundle bundle, C2658jY c2658jY) {
        this.A0A.A4V(this, A0H);
        A0s(c2658jY);
        A0h();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void AKD(Bundle bundle) {
    }

    public Integer getBackgroundColorForToolbar() {
        if (!this.A03.A2D()) {
            return null;
        }
        Integer num = getAppOpenAdVariant().A03;
        if (A0G[4].length() == 31) {
            throw new RuntimeException();
        }
        String[] strArr = A0G;
        strArr[1] = "PAMmmot6Tf7Ql1BWqbyc3bNBHIv9DUl";
        strArr[0] = "h1W7xn1Xng";
        return num;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public String getCurrentClientToken() {
        return this.A03.A37();
    }

    public boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (!A0u() && Build.VERSION.SDK_INT >= 35) {
            setFitsSystemWindows(true);
        }
        A0m();
        if (A0G[4].length() == 31) {
            throw new RuntimeException();
        }
        String[] strArr = A0G;
        strArr[3] = "ppFHHBjYkV1v1";
        strArr[7] = "EE8p4ctuHDbMc";
    }

    public void onDestroy() {
        this.A0D.A03();
        if (TextUtils.isEmpty(this.A03.A37())) {
            return;
        }
        this.A06.ABt(this.A03.A37(), new C3278ti().A05(this.A0C).A04(this.A08).A07());
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.A08.A06(this.A05, motionEvent, this, this);
        return super.onInterceptTouchEvent(motionEvent);
    }

    public /* synthetic */ void onStart() {
    }

    public /* synthetic */ void onStop() {
    }

    public void setListener(InterfaceC3119r9 interfaceC3119r9) {
    }

    public void setUpFullscreenMode(boolean z) {
        EnumC3071qN enumC3071qN = z ? EnumC3071qN.A04 : EnumC3071qN.A03;
        ViewOnSystemUiVisibilityChangeListenerC3072qO viewOnSystemUiVisibilityChangeListenerC3072qO = this.A0D;
        String[] strArr = A0G;
        if (strArr[3].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0G;
        strArr2[6] = "qfOTxDoWDRCl3cD5KSGOieDqypiePN9l";
        strArr2[2] = "QItBARXNxGEv5WetvuW2OzigLPzeTM1z";
        viewOnSystemUiVisibilityChangeListenerC3072qO.A05(enumC3071qN);
    }
}
