package com.facebook.ads.redexgen.X;

import android.R;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.google.common.base.Ascii;
import java.util.Arrays;
import javax.annotation.Nullable;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ft, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1577Ft extends RelativeLayout implements InterfaceC3120rA {
    public static byte[] A0I;
    public static String[] A0J = {"VjNTozFJBHBTAbZvfj55MfAwGP9LBSf6", "Pq0aBOwFzXTv3d8c4kUbGJ29Dl7JaeBe", "6Jh9GB1FdSmhvo4jirjJmKwQUVM2B32M", "TGGBgusTs1FvyAgmLwAY3Gsc6eBuJSRW", "x90wDNv6CtBtNBa5WCDyDNAaFj8t5cCY", "GDNjvFSJPJLifqCEdIwxfegvvEeKItWd", "ZGbO0A4ZRQBBFZeQfXm02pkO19XETszh", "zRbEM6nv1u3uOOYe"};
    public static final String A0K;
    public static final int A0L;
    public long A00;
    public long A01;

    @Nullable
    public String A02;
    public boolean A03;

    @Nullable
    public C2420fd A04;

    @Nullable
    public DialogC3154ri A05;
    public String A06;
    public boolean A07;
    public final InterfaceC2664je A08;
    public final LinearLayout A09;
    public final C2658jY A0A;
    public final C1618Hi A0B;
    public final InterfaceC2884nG A0C;
    public final InterfaceC3119r9 A0D;
    public final C3250tG A0E;
    public final InterfaceC3259tP A0F;
    public final F4 A0G;
    public final InterfaceC3264tU A0H;

    static {
        A0E();
        A0K = C1577Ft.class.getSimpleName();
        A0L = AbstractC3043pv.A0B;
    }

    public C1577Ft(C2658jY c2658jY, C1618Hi c1618Hi, InterfaceC2884nG interfaceC2884nG, InterfaceC3119r9 interfaceC3119r9, boolean z) {
        super(c1618Hi);
        this.A08 = new C1580Fw(this);
        this.A07 = true;
        this.A01 = -1L;
        this.A03 = true;
        this.A0A = c2658jY;
        this.A0C = interfaceC2884nG;
        this.A0D = interfaceC3119r9;
        this.A0B = c1618Hi;
        if (c1618Hi.A0E() == null) {
            c1618Hi.A0F().AAZ();
        }
        this.A0F = A0F();
        this.A0G = (AbstractC2864mw.A02(c1618Hi) || c1618Hi.A0E() == null) ? new F4(c1618Hi, this.A0F) : new F4(c1618Hi, c1618Hi.A0E(), this.A0F);
        this.A0H = A0C(z);
        this.A09 = (LinearLayout) this.A0H;
        this.A09.setId(View.generateViewId());
        this.A0H.setListener(new C1579Fv(this));
        this.A0G.setBrowserNavigationListener(this.A0H.getBrowserNavigationListener());
        this.A0E = new C3250tG(c1618Hi, null, R.attr.progressBarStyleHorizontal);
        A0G();
        c2658jY.A0A(this.A08);
    }

    private InterfaceC3264tU A0C(boolean z) {
        return z ? new F8(this.A0B, this.A0G, false) : new F6(this.A0B, this.A0G);
    }

    public static String A0D(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0I, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A0J;
            if (strArr[1].charAt(18) == strArr[4].charAt(18)) {
                throw new RuntimeException();
            }
            A0J[7] = "WrA4t0RN";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 62);
            i4++;
        }
    }

    public static void A0E() {
        A0I = new byte[]{114, -120, -120, -107, -120, -84, -41, -43, -120, -85, -41, -42, -36, -51, -42, -36, -120, -76, -41, -55, -52, -51, -52, -120, -68, -47, -43, -51, -94, -120, -70, -48, -48, -35, -48, -4, Ascii.US, 17, Ascii.DC4, -48, -10, Ascii.EM, Ascii.RS, Ascii.EM, 35, Ascii.CAN, -48, 4, Ascii.EM, Ascii.GS, Ascii.NAK, -22, -48, -98, -76, -76, -63, -76, -32, 3, -11, -8, -76, -25, 8, -11, 6, 8, -76, -24, -3, 1, -7, -50, -76, -101, -79, -79, -66, -79, -29, -10, 4, 1, 0, -1, 4, -10, -79, -42, -1, -11, -79, -27, -6, -2, -10, -53, -79, -57, -35, -35, -22, -35, Ascii.DLE, 32, 47, 44, 41, 41, -35, Ascii.SI, 34, Ascii.RS, 33, 54, -35, 17, 38, 42, 34, -9, -35, -112, -90, -90, -77, -90, -39, -21, -7, -7, -17, -11, -12, -90, -52, -17, -12, -17, -7, -18, -90, -38, -17, -13, -21, -64, -90, -116, 92, 114, 114, 127, 114, -102, -77, -64, -74, -66, -73, -60, 114, -90, -69, -65, -73, -116, 114, -90, -42, -45, -37, -41, -55, -42, -124, -41, -55, -41, -41, -51, -45, -46, -124, -56, -59, -40, -59, -124, -48, -45, -53, -53, -55, -56, -124, -92, -124, -58, -57, -44, -38, -39, -97, -57, -47, -58, -45, -48, 9, Ascii.EM, Ascii.SYN, Ascii.RS, Ascii.SUB, Ascii.FF, Ascii.EM, -4, -7, -13, Ascii.CAN, 33, Ascii.RS, Ascii.SUB, 35, 41, 9, 36, 32, Ascii.SUB, 35, -54, -61, -48, -58, -50, -57, -44, -74, -53, -49, -57, -31, -29, -32, -34, -32, -48, -44, -32, -43, -42, 17, 19, Ascii.DLE, Ascii.SO, Ascii.DLE, 0, 4, Ascii.DLE, 5, 6, 0, 3, 19, 2, Ascii.SI, 5, 0, 10, 4, Ascii.DLE, Ascii.SI, 0, Ascii.SYN, 19, Ascii.CR, -2, 0, -3, -5, -3, -19, -15, -3, -14, -13, -19, -16, 0, -17, -4, -14, -19, -4, -17, -5, -13, -79, -77, -80, -82, -80, -96, -92, -80, -91, -90, -96, -83, -94, -93, -90, -83, -96, -76, -74, -93, -75, -86, -75, -83, -90, 35, 37, 34, 32, 34, Ascii.DC2, Ascii.SYN, 34, Ascii.ETB, Ascii.CAN, Ascii.DC2, Ascii.US, Ascii.DC4, Ascii.NAK, Ascii.CAN, Ascii.US, Ascii.DC2, 39, Ascii.FS, 39, Ascii.US, Ascii.CAN};
    }

    public InterfaceC3259tP A0F() {
        return new C1578Fu(this);
    }

    public void A0G() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(10);
        this.A09.setPadding(AbstractC3043pv.A0e, AbstractC3043pv.A0e, AbstractC3043pv.A0e, AbstractC3043pv.A0e);
        this.A0D.A4V(this.A09, layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(3, this.A09.getId());
        layoutParams2.addRule(12);
        this.A0D.A4V(this.A0G, layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, A0L);
        layoutParams3.addRule(3, this.A09.getId());
        this.A0E.setProgress(0);
        this.A0D.A4V(this.A0E, layoutParams3);
    }

    public void A0H() {
        this.A0A.finish(1);
    }

    public void A0I() {
        A0J();
    }

    public final void A0J() {
        AudienceNetworkActivity audienceNetworkActivityA05;
        if (this.A04 == null) {
            return;
        }
        if ((this.A05 != null && this.A05.isShowing()) || (audienceNetworkActivityA05 = this.A0A.A05()) == null || audienceNetworkActivityA05.isFinishing() || audienceNetworkActivityA05.isDestroyed()) {
            return;
        }
        this.A05 = new DialogC3154ri(audienceNetworkActivityA05, this.A0B, this.A04, new C2892nO(this.A06, this.A0C));
        this.A05.show();
    }

    public void A0K(String str) {
    }

    public void ABc(@Nullable Intent intent, Bundle bundle, C2658jY c2658jY) {
        if (this.A01 < 0) {
            this.A01 = System.currentTimeMillis();
        }
        String strA0D = A0D(231, 11, 36);
        String strA0D2 = A0D(220, 11, 119);
        String strA0D3 = A0D(210, 10, 105);
        if (bundle == null) {
            this.A02 = intent.getStringExtra(strA0D3);
            this.A06 = intent.getStringExtra(strA0D2);
            String[] strArr = A0J;
            if (strArr[0].charAt(28) != strArr[2].charAt(28)) {
                throw new RuntimeException();
            }
            A0J[5] = "h34ynCyxETZN0C4DuHOjqZ0ETc7IsjOt";
            this.A00 = intent.getLongExtra(strA0D, -1L);
        } else {
            this.A02 = bundle.getString(strA0D3);
            this.A06 = bundle.getString(strA0D2);
            this.A00 = bundle.getLong(strA0D, -1L);
        }
        String strA0D4 = this.A02 != null ? this.A02 : A0D(199, 11, 39);
        this.A0H.setUrl(strA0D4);
        this.A0G.loadUrl(strA0D4);
        this.A0B.A0F().A5F(EnumC2959oW.A05.name());
        String stringExtra = intent.getStringExtra(A0D(242, 10, 51));
        if (stringExtra != null && !stringExtra.isEmpty()) {
            this.A04 = new C2420fd(stringExtra, intent.getStringExtra(A0D(323, 22, 117)), intent.getStringExtra(A0D(298, 25, 3)), intent.getStringExtra(A0D(277, 21, 80)), intent.getStringExtra(A0D(252, 25, 99)));
        }
        A0I();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void AGF(boolean z) {
        this.A0G.onPause();
        if (this.A03) {
            this.A03 = false;
            C3253tJ c3253tJA07 = new C3252tI(this.A0G.getFirstUrl()).A01(this.A00).A03(this.A01).A04(this.A0G.getResponseEndMs()).A00(this.A0G.getDomContentLoadedMs()).A05(this.A0G.getScrollReadyMs()).A02(this.A0G.getLoadFinishMs()).A06(System.currentTimeMillis()).A07();
            this.A0C.ABq(this.A06, c3253tJA07.A02());
            if (BuildConfigApi.isDebug()) {
                String str = A0D(169, 30, 38) + System.currentTimeMillis() + A0D(149, 20, 20) + c3253tJA07.A01 + A0D(53, 22, 86) + c3253tJA07.A03 + A0D(75, 24, 83) + c3253tJA07.A04 + A0D(0, 30, 42) + c3253tJA07.A00 + A0D(99, 24, 127) + c3253tJA07.A05 + A0D(30, 23, 114) + c3253tJA07.A02 + A0D(123, 26, 72) + c3253tJA07.A06;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void AGp(boolean z) {
        this.A0G.onResume();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void AKD(Bundle bundle) {
        bundle.putString(A0D(210, 10, 105), this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public String getCurrentClientToken() {
        return this.A06;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    public void onDestroy() {
        this.A0B.A0F().A5E(EnumC2959oW.A05.name());
        DialogC3154ri dialogC3154ri = this.A05;
        if (dialogC3154ri != null) {
            dialogC3154ri.A0C();
            this.A05 = null;
        }
        this.A0A.A0B(this.A08);
        AbstractC3273td.A03(this.A0G);
        this.A0G.destroy();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final /* synthetic */ void onStart() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final /* synthetic */ void onStop() {
    }

    public void setListener(InterfaceC3119r9 interfaceC3119r9) {
    }
}
