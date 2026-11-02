package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.facebook.ads.internal.view.FullScreenAdToolbar;
import com.google.common.base.Ascii;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.5o, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C13305o extends AbstractC1565Fg {
    public static byte[] A0C;
    public static String[] A0D = {"hEO5MspmmQwWZDjfO9hYkGtE8t8ljCUN", "895GOd6GqHS2SDNwtQvAqIE", "zBXblOu1CdgXx49mdyV8flA", "GxqIbNjcrUQMSJiuMkyJv1mwkudVYaGP", "be3ZgXhlaup3yXbKLr41yKjcTusIQNjx", "HLi8FTj59ZkYUe8FmXrpO0CEflvtIm0o", "7bereGXxKpIS6kk2UNHV0kt11i4QSfeP", "LRvrjmvhZNKPrr4qRukG9JYrfPQqD7wd"};
    public static final int A0E;
    public static final int A0F;
    public static final int A0G;
    public static final int A0H;
    public static final int A0I;
    public static final int A0J;
    public int A00;
    public int A01;
    public LinearLayout A02;
    public C2746kz A03;
    public C12843u A04;
    public C3320uO A05;
    public C1483Cc A06;
    public AbstractC2200c3 A07;
    public C2199c2 A08;
    public String A09;
    public List<C2974ol> A0A;
    public final C3077qT A0B;

    static {
        A0L();
        A0F = (int) (AbstractC3045px.A02 * 48.0f);
        A0G = AbstractC3043pv.A0y;
        A0H = (int) (AbstractC3045px.A02 * 8.0f);
        A0J = (int) (AbstractC3045px.A02 * 56.0f);
        A0E = (int) (AbstractC3045px.A02 * 48.0f);
        A0I = (int) (AbstractC3045px.A02 * 12.0f);
    }

    public C13305o(C1618Hi c1618Hi, InterfaceC2884nG interfaceC2884nG, C2746kz c2746kz, InterfaceC3119r9 interfaceC3119r9, LA la) {
        super(c1618Hi, interfaceC2884nG, interfaceC3119r9, la);
        this.A0B = new C3077qT();
        if (la instanceof C13747g) {
            super.A09 = true;
            super.A08 = new C2474gV(c1618Hi, new FG(), this.A0D.A1u(), interfaceC3119r9);
        }
        this.A03 = c2746kz;
        if (Build.VERSION.SDK_INT >= 35) {
            setFitsSystemWindows(true);
        }
        this.A0E.A0F().AM1(A0J(0, 0, 93), getResources().getConfiguration().orientation, false, false, A0J(0, 8, 77));
    }

    private int A00() {
        return A0J + A0F + (A0G * 4) + (this.A0D.A3F() ? A0E : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public EnumC2358ec A02(String str) {
        EnumC2358ec enumC2358ecA0E = EnumC2358ec.A08;
        if (this.A04 == null) {
            return enumC2358ecA0E;
        }
        CQ cq = (CQ) this.A04.A1I(this.A04.getLayoutManager().A38());
        if (cq != null && cq.A0w() != null) {
            enumC2358ecA0E = cq.A0w().A0E(str);
            if (cq.A0w().getCtaActionHelper().A07() == null) {
                cq.A0w().getCtaActionHelper().A09(new CV(this));
            }
        }
        return enumC2358ecA0E;
    }

    public static String A0J(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A0D;
            if (strArr[0].charAt(22) != strArr[6].charAt(22)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0D;
            strArr2[5] = "I427OJiZERIl1pgFYs7VIJxgJMuHqTWY";
            strArr2[4] = "m1VK8a3APoHjuOOKlTc7gi9yCeUy6Tbh";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 74);
            i4++;
        }
    }

    public static void A0L() {
        A0C = new byte[]{100, 102, 117, 104, 114, 116, 98, 107, 0, Ascii.CAN, Ascii.SUB, 3};
    }

    private final void A0M() {
        if (this.A02 != null) {
            this.A02.removeAllViews();
            this.A02 = null;
        }
        if (this.A04 != null) {
            this.A04.removeAllViews();
            this.A04.A1U();
            this.A04 = null;
        }
        if (this.A05 != null) {
            this.A05.removeAllViews();
            this.A05 = null;
        }
    }

    private final void A0N(int i, Bundle bundle) {
        int iA00;
        int i2;
        int i3;
        if (this.A0A == null || this.A0D == null || this.A09 == null) {
            return;
        }
        this.A02 = new LinearLayout(getContext());
        if (i == 1) {
            this.A02.setGravity(17);
        } else {
            this.A02.setGravity(48);
        }
        this.A02.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.A02.setOrientation(1);
        int i4 = AbstractC3045px.A04.widthPixels;
        int i5 = AbstractC3045px.A04.heightPixels;
        if (i != 1) {
            iA00 = i5 - A00();
            i2 = A0G;
            i3 = i2 * 2;
            if (A0D[3].charAt(7) == 'c') {
                A0D[3] = "33a9m0XcSM7ZjVpxQbOo2BFfYt51qxyV";
            }
            throw new RuntimeException();
        }
        iA00 = Math.min(i4 - (A0G * 4), i5 / 2);
        i2 = (i4 - iA00) / 8;
        i3 = i2 * 4;
        this.A07 = new CW(this);
        this.A08 = new C2199c2(this, 1, new WeakReference(this.A07), this.A0E);
        this.A08.A0W(this.A00);
        this.A08.A0X(this.A01);
        this.A04 = new C12843u(this.A0E);
        this.A04.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        this.A06 = new C1483Cc(this.A04, i, this.A0A.size(), this.A08, bundle, false);
        this.A06.A0k(this.A0A);
        int i6 = iA00;
        this.A04.setAdapter(new CX(this.A0E, this.A0A, this.A0D, this.A0F, this.A03, this.A08, this.A0B, getAudienceNetworkListener(), this.A09, i6, i2, i3, i, this.A06, this.A0H));
        this.A04.A1o(this.A04.getOnScrollListener());
        if (i == 1) {
            A0P(this.A06);
        }
        this.A02.addView(this.A04);
        if (this.A05 != null) {
            this.A02.addView(this.A05);
        }
        boolean zA1z = C2863mv.A1z(this.A0E);
        String[] strArr = A0D;
        if (strArr[0].charAt(22) == strArr[6].charAt(22)) {
            String[] strArr2 = A0D;
            strArr2[2] = "aDPNGuTrfnUmeGhx8dEtLad";
            strArr2[1] = "oEJmwC7eMAbLdHre0yQkkMB";
            if (zA1z) {
                this.A0E.A0B().AM7(this.A04, this.A0D.A37(), false);
            }
            A0k(this.A02, false, i);
            return;
        }
        throw new RuntimeException();
    }

    private void A0O(LA la) {
        this.A09 = la.A37();
        this.A00 = la.A1J();
        this.A01 = la.A1K();
        List<C2395fE> listA39 = la.A39();
        this.A0A = new ArrayList(listA39.size());
        int i = 0;
        while (true) {
            int size = listA39.size();
            String[] strArr = A0D;
            if (strArr[5].charAt(16) == strArr[4].charAt(16)) {
                throw new RuntimeException();
            }
            A0D[3] = "1AHb04hcylshFNuVFPVd0IA840Fx90m0";
            if (i >= size) {
                return;
            }
            this.A0A.add(new C2974ol(i, listA39.size(), listA39.get(i)));
            i++;
        }
    }

    private void A0P(C1483Cc c1483Cc) {
        C7P c7p = new C7P();
        if (this.A04 != null) {
            this.A04.setOnFlingListener(null);
        }
        c7p.A0G(this.A04);
        c1483Cc.A0i(new CU(this));
        if (this.A0A == null || super.A07 == null) {
            return;
        }
        this.A05 = new C3320uO(this.A0E, super.A07.A01(), this.A0A.size());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, A0H);
        layoutParams.setMargins(0, A0I, 0, 0);
        this.A05.setLayoutParams(layoutParams);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1565Fg
    public final FullScreenAdToolbar A0g() {
        return new FullScreenAdToolbar(this.A0E, getAudienceNetworkListener(), this.A0G, 0, this.A0D.A2u(), false);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1565Fg
    public final void A0i() {
        EnumC2358ec enumC2358ecA02 = A02(A0J(8, 4, 57));
        if (this.A0D.A3H() || enumC2358ecA02 == EnumC2358ec.A08 || enumC2358ecA02 == EnumC2358ec.A05) {
            return;
        }
        A0r();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1565Fg
    public final boolean A0q() {
        return false;
    }

    public final void A0r() {
        if (this.A0H.getToolbarActionMode() == 8) {
            this.A0H.setToolbarActionMode(2);
        }
        this.A0D.A3D(false);
        this.A0D.A32().A0N(-1);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void ABc(Intent intent, Bundle bundle, C2658jY c2658jY) {
        A0l(c2658jY);
        if (this.A0D != null) {
            A0O(this.A0D);
        }
        A0N(c2658jY.A05().getResources().getConfiguration().orientation, bundle);
        c2658jY.A0A(new CT(this, c2658jY));
        if (this.A0D != null) {
            int iA04 = this.A0D.A32().A0I().A04();
            if (super.A09) {
                iA04 = this.A0D.A32().A0I().A03();
            }
            if (iA04 > 0) {
                A0j(iA04);
            }
            if (this.A0D.A32().A0I().A02() >= 0) {
                this.A0H.setToolbarActionMode(8);
            }
            if (this.A0D.A3R()) {
                this.A0H.setOnClickListener(new ViewOnClickListenerC2968of(this));
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1565Fg, com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void AGF(boolean z) {
        super.AGF(z);
        if (this.A06 != null) {
            this.A06.A0U();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1565Fg, com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void AGp(boolean z) {
        super.AGp(z);
        if (this.A06 != null) {
            C1483Cc c1483Cc = this.A06;
            if (A0D[3].charAt(7) != 'c') {
                throw new RuntimeException();
            }
            A0D[3] = "WQGRJtcc30lEWdH0kDQlnI6y1dvpEWXq";
            c1483Cc.A0W();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void AKD(Bundle bundle) {
        if (this.A06 != null) {
            this.A06.A0f(bundle);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1565Fg
    public int getCloseButtonStyle() {
        return 0;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        Bundle bundle = new Bundle();
        AKD(bundle);
        A0M();
        A0N(configuration.orientation, bundle);
        super.onConfigurationChanged(configuration);
        if (Build.VERSION.SDK_INT >= 35) {
            setFitsSystemWindows(true);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1565Fg, com.facebook.ads.redexgen.X.InterfaceC3120rA
    public final void onDestroy() {
        super.onDestroy();
        if (C2863mv.A1z(this.A0E)) {
            this.A0E.A0B().ALo(this.A04);
        }
        if (!TextUtils.isEmpty(this.A09)) {
            this.A0F.ABt(this.A09, new C3278ti().A05(this.A08).A04(this.A0B).A07());
        }
        A0M();
        if (this.A08 != null) {
            this.A08.A0V();
        }
        this.A08 = null;
        this.A07 = null;
        this.A0A = null;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.A0B.A06(this.A0E, motionEvent, this, this);
        return super.onInterceptTouchEvent(motionEvent);
    }
}
