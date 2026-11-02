package com.facebook.ads.redexgen.X;

import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseBooleanArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.mi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2850mi {
    public static byte[] A0b;
    public static String[] A0c = {"wmhzjtJNgJPoD37pgtS32tHcCkcaAcK2", "M5rbo4IbPB8RiQlV8", "kqsU3TZVJYHjw7Vsj4hL4NX5aIRgmyZM", "Ct63LEx6fKI28HUDmJfMA1qFsnzrhICQ", "Ggy2PWGKxQkrPFXnNSboiVH1AWHMAr2d", "vOxGe6IrDCnFtZ8SEEXVIzND7xq46iVi", "FRACt27AEHyHYshaD", "gYry3sFzGArTzPEqkBCG1bf"};
    public static final int A0d;
    public static final int A0e;
    public static final int A0f;
    public static final int A0g;
    public long A00;
    public View A01;
    public ImageView A02;
    public RelativeLayout A03;
    public TextView A04;
    public TextView A05;
    public C3024pc A06;
    public C3027pf A07;
    public C3036po A08;
    public C12843u A09;
    public C3226ss A0A;
    public C3295tz A0B;
    public ViewOnClickListenerC1544El A0C;
    public C3308uC A0D;
    public C1483Cc A0E;
    public C2829mN A0F;
    public C2801lu A0G;
    public InterfaceC2800lt A0H;
    public C1441Am A0I;
    public List<InterfaceC2619iv> A0J;
    public final RelativeLayout A0Q;
    public final TextView A0R;
    public final LA A0S;
    public final C1618Hi A0T;
    public final InterfaceC2884nG A0U;
    public final C2892nO A0V;
    public final C3077qT A0W;
    public final AbstractC3112r2 A0X;
    public final InterfaceC3119r9 A0Y;
    public final C3321uP A0Z;
    public final C2199c2 A0a;
    public boolean A0M = false;
    public boolean A0K = false;
    public boolean A0L = false;
    public final int A0O = 1;
    public boolean A0N = false;
    public final SparseBooleanArray A0P = new SparseBooleanArray();

    static {
        A0J();
        A0g = AbstractC3043pv.A0W;
        A0f = AbstractC3043pv.A0N;
        A0d = AbstractC3043pv.A0S;
        A0e = AbstractC3043pv.A0A;
    }

    public C2850mi(C1618Hi c1618Hi, LA la, InterfaceC2884nG interfaceC2884nG, C2199c2 c2199c2, C3077qT c3077qT, InterfaceC3119r9 interfaceC3119r9, AbstractC3112r2 abstractC3112r2, C2892nO c2892nO) {
        this.A0T = c1618Hi;
        this.A0S = la;
        this.A0U = interfaceC2884nG;
        this.A0a = c2199c2;
        this.A0W = c3077qT;
        this.A0Y = interfaceC3119r9;
        this.A0X = abstractC3112r2;
        this.A0V = c2892nO;
        this.A0Q = new RelativeLayout(this.A0T);
        this.A0Z = new C3321uP(this.A0T);
        this.A0R = new TextView(this.A0T);
    }

    private ImageView A00(ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        ImageView imageView = new ImageView(this.A0T);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(A0e, A0e);
        layoutParams.addRule(14);
        layoutParams.addRule(2, viewOnClickListenerC1544El.getId());
        layoutParams.setMargins(0, 0, 0, AbstractC3043pv.A0y);
        imageView.setLayoutParams(layoutParams);
        imageView.setImageBitmap(AbstractC3098qo.A01(EnumC3097qn.CHEVRON_UP));
        AbstractC3086qc.A0L(imageView);
        return imageView;
    }

    private TextView A01() {
        TextView textView = new TextView(this.A0T);
        textView.setTextColor(-855638017);
        textView.setMaxLines(1);
        textView.setTypeface(Typeface.DEFAULT);
        textView.setTextSize(14.0f);
        textView.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        AbstractC3086qc.A0L(textView);
        return textView;
    }

    private TextView A02() {
        String strA1n = this.A0S.A1n();
        if (strA1n != null) {
            boolean zIsEmpty = strA1n.isEmpty();
            String[] strArr = A0c;
            if (strArr[0].charAt(27) == strArr[3].charAt(27)) {
                throw new RuntimeException();
            }
            A0c[4] = "YKlVwjdcHL25z9qVuQu7SA5yaoJNv3UH";
            if (!zIsEmpty) {
                TextView textView = new TextView(this.A0T);
                textView.setText(strA1n);
                textView.setTextSize(17.0f);
                textView.setTextColor(-1);
                textView.setTypeface(Typeface.DEFAULT_BOLD);
                textView.setGravity(17);
                AbstractC3086qc.A0L(textView);
                return textView;
            }
        }
        String[] strArr2 = A0c;
        if (strArr2[5].charAt(26) == strArr2[2].charAt(26)) {
            throw new RuntimeException();
        }
        A0c[4] = "7Ol8BJziZ0eCODjPb6OCvIEjiGZxQWOK";
        return null;
    }

    public static C2395fE A03(List<C2395fE> list, int i) {
        if (list == null || i >= list.size()) {
            return null;
        }
        return list.get(i);
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0b, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 14);
        }
        return new String(bArrCopyOfRange);
    }

    public static List<C2622iy> A07(List<InterfaceC2619iv> list) {
        ArrayList arrayList = new ArrayList();
        if (list == null) {
            return arrayList;
        }
        Iterator<InterfaceC2619iv> it = list.iterator();
        while (it.hasNext()) {
            List<C2622iy> listA7q = it.next().A7q();
            if (listA7q != null) {
                arrayList.addAll(listA7q);
            }
        }
        return arrayList;
    }

    public static List<C2622iy> A08(List<C2612io> list, int i, int i2, ViewOnClickListenerC1544El viewOnClickListenerC1544El, List<C2395fE> list2, InterfaceC2577iD interfaceC2577iD) {
        ArrayList arrayList = new ArrayList(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = i + i3;
            if (i4 >= list.size()) {
                break;
            }
            C2612io c2612io = list.get(i4);
            arrayList.add(new C2622iy(i4, i2, c2612io.A02(), viewOnClickListenerC1544El, A03(list2, i4), interfaceC2577iD, c2612io.A03()));
        }
        return arrayList;
    }

    public static /* synthetic */ AnonymousClass22 A09(InterfaceC2800lt interfaceC2800lt) {
        interfaceC2800lt.AEy();
        return AnonymousClass22.A01;
    }

    private void A0A() {
        if (this.A01 != null) {
            AbstractC3086qc.A0K(this.A01);
            this.A01 = null;
        }
        if (this.A0I != null) {
            AbstractC3086qc.A0K(this.A0I);
            this.A0I = null;
        }
    }

    private void A0B() {
        int size;
        if (this.A09 == null || this.A0J == null || (size = this.A0J.size()) <= 1) {
            return;
        }
        new C7P().A0G(this.A09);
        this.A0D = new C3308uC(this.A0T, size);
        this.A0D.setDotsOnlyMode(this.A0S.A2h());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, AbstractC3043pv.A0X);
        layoutParams.setMargins(0, AbstractC3043pv.A0A, 0, 0);
        layoutParams.addRule(3, this.A09.getId());
        layoutParams.addRule(14);
        this.A0D.setLayoutParams(layoutParams);
        AbstractC3086qc.A0L(this.A0D);
        if (this.A0E != null) {
            this.A0E.A0i(new CG(this));
            this.A0E.A0h(this.A0D);
        }
    }

    private void A0C() {
        if (this.A09 == null) {
            return;
        }
        this.A09.A1n(new CF(this, C12723i.A03));
    }

    private void A0D() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(14);
        if (this.A09 != null) {
            layoutParams.addRule(2, this.A09.getId());
        }
        layoutParams.setMargins(0, 0, 0, AbstractC3043pv.A0A);
        this.A0Q.setLayoutParams(layoutParams);
        A0E();
        A0F();
        this.A0Q.addView(this.A0Z);
        if (A0c[7].length() != 23) {
            throw new RuntimeException();
        }
        String[] strArr = A0c;
        strArr[5] = "8KcewuvUOQmDoGzCCi48J48118a3ZAlx";
        strArr[2] = "W9ZEAZvTrDXSIUtvJ9fFOVPh9jJBvEq3";
        this.A0Q.addView(this.A0R);
    }

    private void A0E() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.width = A0g;
        layoutParams.height = A0g;
        layoutParams.addRule(14);
        this.A0Z.setRadius(A0f);
        this.A0Z.setLayoutParams(layoutParams);
        AbstractC3086qc.A0O(this.A0Z, 0);
        AbstractC3086qc.A0H(1106, this.A0Z);
        new AsyncTaskC1552Et(this.A0Z, this.A0T).A05(A0g, A0g).A07(this.A0S.A35().A01());
    }

    private void A0F() {
        this.A0R.setText(this.A0S.A32().A0J().A0G());
        this.A0R.setTextColor(-1);
        this.A0R.setMaxLines(1);
        this.A0R.setTypeface(Typeface.DEFAULT_BOLD);
        this.A0R.setTextSize(20.0f);
        this.A0R.setEllipsize(TextUtils.TruncateAt.END);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        layoutParams.addRule(3, this.A0Z.getId());
        layoutParams.setMargins(AbstractC3043pv.A0P, AbstractC3043pv.A0X, AbstractC3043pv.A0P, 0);
        this.A0R.setLayoutParams(layoutParams);
        AbstractC3086qc.A0H(1107, this.A0R);
    }

    private void A0G() {
        if (this.A0C != null) {
            int iA04 = this.A0S.A31().A01().A04();
            this.A07 = new C3027pf();
            this.A07.A09(this.A0C, iA04);
        }
    }

    private void A0H() {
        if (this.A03 != null) {
            List<C2612io> listA1w = this.A0S.A1w();
            if (listA1w.isEmpty()) {
                return;
            }
            C1618Hi c1618Hi = this.A0T;
            RelativeLayout relativeLayout = this.A03;
            C2612io c2612io = listA1w.get(0);
            if (A0c[4].charAt(19) == 'g') {
                throw new RuntimeException();
            }
            A0c[7] = "CtNo196Fe3KoY20FKnvv0Db";
            AbstractC3328uW.A00(c1618Hi, relativeLayout, c2612io.A02());
        }
    }

    private void A0I() {
        EnumC2578iE enumC2578iEA00 = EnumC2578iE.A00(this.A0S.A1g());
        if (enumC2578iEA00 == null) {
        }
        switch (C2857mp.A00[enumC2578iEA00.ordinal()]) {
            case 1:
                A0P(this.A0S.A31().A01().A04());
                A0S(0L);
                break;
            case 2:
                A0P(this.A0S.A31().A01().A04());
                A0S(0L);
                break;
            case 3:
                A0G();
                A0S(0L);
                break;
        }
    }

    public static void A0J() {
        A0b = new byte[]{81, 90, 87, 68, SignedBytes.MAX_POWER_OF_TWO, 93, 92, 109, 71, 66, 105, 123, 116, 105, 55, 105, 127, 104, 115, 124, 55, 119, 127, 126, 115, 111, 119, 6, Ascii.FS, Ascii.ESC, Ascii.DC2, Ascii.EM, Ascii.DLE, 42, Ascii.FS, Ascii.CAN, Ascii.DC4, Ascii.DC2, Ascii.DLE, 32, 59, 59, 56, 54, 53, 38};
    }

    private final void A0K() {
        if (this.A03 != null) {
            if (this.A0S.A3S() || this.A0S.A3O()) {
                this.A0A = AbstractC3231sx.A01(this.A0T, true, this.A0S, this.A0V, this.A0Y, EnumC3229sv.A03, AbstractC3228su.A00(this.A0S));
                AbstractC3086qc.A0H(1116, this.A0A);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams.addRule(12);
                layoutParams.addRule(11);
                layoutParams.setMargins(AbstractC3043pv.A00, AbstractC3043pv.A00, AbstractC3043pv.A0H, AbstractC3043pv.A0A);
                this.A0A.setLayoutParams(layoutParams);
                this.A03.addView(this.A0A);
            }
        }
    }

    private final void A0L() {
        if (this.A03 == null || !this.A0S.A3U()) {
            return;
        }
        C3230sw c3230swA02 = AbstractC3231sx.A02(this.A0T, EnumC3229sv.A03, this.A0S);
        AbstractC3086qc.A0H(1117, c3230swA02);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(12);
        layoutParams.addRule(9);
        layoutParams.setMargins(AbstractC3043pv.A0H, AbstractC3043pv.A00, AbstractC3043pv.A00, AbstractC3043pv.A0A);
        c3230swA02.setLayoutParams(layoutParams);
        this.A03.addView(c3230swA02);
    }

    private final void A0M() {
        if (this.A03 != null) {
            this.A0B = new C3295tz(this.A0T, this.A0S, this.A0Y, this.A0V);
            this.A03.addView(this.A0B.A0A());
            this.A0B.A0A().bringToFront();
        }
    }

    private final void A0N() {
        if (!this.A0K || this.A0E == null) {
            return;
        }
        this.A0E.A0V();
    }

    private final void A0O() {
        if (!this.A0K || this.A0E == null) {
            return;
        }
        this.A0E.A0X();
    }

    private void A0P(int i) {
        if (this.A0C != null) {
            this.A07 = new C3027pf();
            this.A07.A08(this.A0C, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0Q(int i) {
        if (this.A0N || this.A0G == null || this.A03 == null) {
            return;
        }
        this.A0N = true;
        long jA0B = 0;
        long jA0C = this.A00;
        if (this.A08 != null) {
            jA0B = this.A08.A0B();
            jA0C = this.A08.A0C();
            this.A08.A0D();
            this.A08 = null;
        }
        A0A();
        A0k();
        A0l();
        this.A03.removeAllViews();
        if (A0c[4].charAt(19) == 'g') {
            throw new RuntimeException();
        }
        String[] strArr = A0c;
        strArr[1] = "XDZvMu68Wy31BwuYj";
        strArr[6] = "RtFjp8dWsBLi8PnQD";
        this.A0G.A0N(i);
        final InterfaceC2800lt interfaceC2800lt = this.A0H;
        if (interfaceC2800lt == null || jA0C <= 0) {
            return;
        }
        this.A0G.A0O(jA0C, jA0B, new InterfaceC12220n() { // from class: com.facebook.ads.redexgen.X.5n
            @Override // com.facebook.ads.redexgen.X.InterfaceC12220n
            public final Object AB0() {
                return C2850mi.A09(interfaceC2800lt);
            }
        });
    }

    private void A0R(long j) {
        if (this.A0C == null || this.A03 == null) {
            return;
        }
        int i = (int) j;
        this.A0I = new C1441Am(this.A0T, i);
        this.A0I.A0A(AbstractC1551Es.A0g, AbstractC1551Es.A0f, true);
        AbstractC3086qc.A0L(this.A0I);
        View viewA01 = this.A0S.A2i() ? C2312ds.A01(this.A0T, this.A0I, i) : this.A0I;
        this.A01 = viewA01;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, AbstractC3043pv.A0U);
        if (this.A04 != null) {
            layoutParams.addRule(2, this.A04.getId());
        } else if (this.A0A != null) {
            layoutParams.addRule(2, this.A0A.getId());
        } else if (this.A0B != null) {
            layoutParams.addRule(2, this.A0B.A0A().getId());
        } else {
            layoutParams.addRule(12);
        }
        layoutParams.addRule(14);
        layoutParams.setMargins(AbstractC3043pv.A0H, AbstractC3043pv.A00, AbstractC3043pv.A0H, AbstractC3043pv.A0c);
        this.A03.addView(viewA01, layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.A0C.getLayoutParams();
        layoutParams2.removeRule(2);
        layoutParams2.removeRule(12);
        layoutParams2.addRule(2, viewA01.getId());
        this.A0C.setLayoutParams(layoutParams2);
        if (this.A08 != null) {
            this.A08.A0H(new InterfaceC3033pl() { // from class: com.facebook.ads.redexgen.X.CH
                @Override // com.facebook.ads.redexgen.X.InterfaceC3033pl
                public final void AGc(long j2) {
                    this.A00.A0m(j2);
                }
            });
        }
    }

    private final void A0S(long j) {
        if (this.A0C != null) {
            this.A06 = new C3024pc(j);
            if (this.A02 != null) {
                this.A06.A0B(this.A0C, this.A02);
            } else {
                this.A06.A0B(this.A0C);
            }
        }
    }

    private void A0T(Bundle bundle) {
        if (this.A0J != null) {
            boolean zIsEmpty = this.A0J.isEmpty();
            String[] strArr = A0c;
            if (strArr[1].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            A0c[4] = "IjuB2paeAIyV1f1v4wXvkLgk7dUmIJVu";
            if (zIsEmpty) {
                return;
            }
            this.A03 = new RelativeLayout(this.A0T);
            this.A03.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            this.A09 = new C12843u(this.A0T);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(13);
            this.A09.setLayoutParams(layoutParams);
            AbstractC3086qc.A0L(this.A09);
            this.A0E = new C1483Cc(this.A09, 1, this.A0J.size(), this.A0a, bundle, this.A0S.A1O() > 0);
            this.A0E.A0l(true);
            this.A09.setAdapter(new C9(this.A0T, this.A0S, this.A0U, new C2746kz(this.A0T), this.A0a, this.A0W, this.A0Y, this.A0S.A37(), 1, this.A0E, this.A0X, this.A0J, this.A0P));
            this.A09.A1o(this.A09.getOnScrollListener());
            A0B();
            A0D();
            this.A03.addView(this.A09);
            if (this.A0D != null) {
                this.A03.addView(this.A0D);
            }
            this.A03.addView(this.A0Q);
        }
    }

    private void A0U(ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        A0Z(this.A0S.A1w(), this.A0S.A1H(), viewOnClickListenerC1544El, this.A0S.A2K() ? this.A0S.A39() : null);
        A0T(null);
        if (this.A0S.A2I()) {
            RelativeLayout relativeLayout = this.A03;
            String[] strArr = A0c;
            if (strArr[1].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0c;
            strArr2[0] = "OyR1vCv1zgrGy5NQPzLPo5FirG7oD10E";
            strArr2[3] = "H1imMuNzdg4YFaBUdWuZd1xnVhMFjBBL";
            if (relativeLayout != null) {
                if (this.A0G != null) {
                    this.A0G.A0J();
                    this.A0G = null;
                }
                this.A0N = false;
                this.A0G = new C2801lu(this.A0T, this.A03, this.A0S, this.A0U, this.A0W, this.A0Y, this.A0V, this.A0a, this.A0S.A33(), this.A0P);
                this.A0G.A0P(A07(this.A0J));
            }
        }
    }

    private void A0V(ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        this.A0M = this.A0S.A2K();
        A0a(this.A0S.A1w(), viewOnClickListenerC1544El, this.A0M ? this.A0S.A39() : null);
        A0T(null);
        this.A0Q.setVisibility(8);
        A0C();
        if (this.A0M && this.A03 != null && this.A0J != null) {
            this.A0F = new C2829mN(this.A0T, this.A03, this.A0J);
        }
        if (this.A09 != null) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.A09.getLayoutParams();
            layoutParams.removeRule(13);
            layoutParams.addRule(10);
            layoutParams.setMargins(0, AbstractC3043pv.A0P + AbstractC3112r2.A00, 0, 0);
            this.A09.setLayoutParams(layoutParams);
        }
    }

    private void A0W(final ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        List<C2612io> listA1w = this.A0S.A1w();
        if (listA1w.isEmpty()) {
            return;
        }
        C2612io c2612io = listA1w.get(0);
        String strA02 = c2612io.A02();
        this.A03 = new RelativeLayout(this.A0T);
        this.A03.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        ImageView imageView = new ImageView(this.A0T);
        imageView.setAdjustViewBounds(true);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(13);
        imageView.setLayoutParams(layoutParams);
        AbstractC3086qc.A0L(imageView);
        new AsyncTaskC1552Et(imageView, this.A0T).A07(strA02);
        final String strA03 = c2612io.A03();
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.n1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C2850mi.A0Y(strA03, viewOnClickListenerC1544El, view);
            }
        });
        this.A03.addView(imageView);
        AbstractC3086qc.A0P(this.A0Q, 8);
    }

    public static /* synthetic */ void A0Y(String str, ViewOnClickListenerC1544El viewOnClickListenerC1544El, View view) {
        if (!TextUtils.isEmpty(str)) {
            viewOnClickListenerC1544El.setClickUrl(str);
        }
        viewOnClickListenerC1544El.A0E(A06(27, 12, 123));
    }

    private void A0Z(List<C2612io> list, int i, ViewOnClickListenerC1544El viewOnClickListenerC1544El, List<C2395fE> list2) {
        InterfaceC2577iD interfaceC2577iD = this.A0S.A2I() ? new InterfaceC2577iD() { // from class: com.facebook.ads.redexgen.X.CK
            @Override // com.facebook.ads.redexgen.X.InterfaceC2577iD
            public final void AGa(int i2) {
                this.A00.A0Q(i2);
            }
        } : null;
        this.A0J = new ArrayList();
        int i2 = 0;
        while (i2 < list.size()) {
            List<C2622iy> listA08 = A08(list, i2, i, viewOnClickListenerC1544El, list2, interfaceC2577iD);
            this.A0J.add(new C5(listA08, listA08.size()));
            i2 += i;
        }
    }

    private void A0a(List<C2612io> list, ViewOnClickListenerC1544El viewOnClickListenerC1544El, List<C2395fE> list2) {
        int size = list.size();
        this.A0J = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            C2612io c2612io = list.get(i);
            String strA02 = c2612io.A02();
            if (!TextUtils.isEmpty(strA02)) {
                this.A0J.add(new C4(new C2622iy(i, size, strA02, viewOnClickListenerC1544El, A03(list2, i), null, c2612io.A03())));
            }
        }
    }

    private boolean A0b() {
        if (!this.A0S.A3S() && !this.A0S.A3O()) {
            LA la = this.A0S;
            String[] strArr = A0c;
            if (strArr[1].length() != strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0c;
            strArr2[5] = "AtQC8qL6sNR1q1lUShXc5Up1t9GetrPO";
            strArr2[2] = "g09TAOI6JmA9le553UvOejsoG8NtT7zC";
            if (!la.A3U()) {
                return false;
            }
        }
        return true;
    }

    public final RelativeLayout A0d() {
        return this.A03;
    }

    public final void A0e() {
        if (this.A07 != null) {
            this.A07.A05();
        }
        A0k();
        A0l();
        A0A();
        if (this.A08 != null) {
            C3036po c3036po = this.A08;
            String[] strArr = A0c;
            if (strArr[5].charAt(26) == strArr[2].charAt(26)) {
                throw new RuntimeException();
            }
            A0c[7] = "b3Mug6svYuHPEn32ZnRehHC";
            c3036po.A0D();
        }
        if (this.A0B != null) {
            this.A0B.A0B();
        }
        if (this.A0G != null) {
            this.A0G.A0J();
            this.A0G = null;
        }
    }

    public final void A0f() {
        A0N();
        if (this.A08 != null) {
            C3036po c3036po = this.A08;
            String[] strArr = A0c;
            if (strArr[0].charAt(27) == strArr[3].charAt(27)) {
                throw new RuntimeException();
            }
            A0c[7] = "mnShHBs10cE8zNTjSV3RIjC";
            c3036po.A0E();
        }
        if (this.A0B != null) {
            this.A0B.A0C();
        }
        if (this.A0A != null) {
            C3226ss c3226ss = this.A0A;
            String[] strArr2 = A0c;
            if (strArr2[1].length() != strArr2[6].length()) {
                String[] strArr3 = A0c;
                strArr3[1] = "ueVYLBgy3RaCrxm5u";
                strArr3[6] = "pRtLM5p9Pq6RGsG2C";
                c3226ss.A0P();
            } else {
                String[] strArr4 = A0c;
                strArr4[0] = "zqO25Ej2YgcvB6AumP8Brgpeoau4axJx";
                strArr4[3] = "fz5PMQq2ut9b4ynzwsYh3w3dvRMr0NTS";
                c3226ss.A0P();
            }
        }
        if (this.A06 != null) {
            this.A06.A08();
        }
        if (this.A07 != null) {
            this.A07.A06();
        }
        if (this.A0G != null) {
            this.A0G.A0K();
        }
    }

    public final void A0g() {
        A0O();
        if (this.A08 != null) {
            this.A08.A0F();
        }
        if (this.A06 != null) {
            this.A06.A09();
        }
        if (this.A07 != null) {
            this.A07.A07();
        }
        C2801lu c2801lu = this.A0G;
        String[] strArr = A0c;
        if (strArr[0].charAt(27) == strArr[3].charAt(27)) {
            throw new RuntimeException();
        }
        A0c[7] = "oUibUOakpWyWjzaBwPteLT9";
        if (c2801lu != null) {
            this.A0G.A0L();
        }
    }

    public final void A0h() {
        if (this.A0S.A3R()) {
            this.A0X.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.nK
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.A00.A0o(view);
                }
            });
        } else {
            this.A0X.setOnClickListener(null);
        }
    }

    public final void A0i() {
        if (this.A03 != null) {
            if (!A0b()) {
                A0M();
            } else {
                A0K();
                A0L();
            }
        }
    }

    public final void A0j() {
        if (this.A0J == null || this.A0E == null || this.A0S.A1O() <= 0) {
            return;
        }
        int size = this.A0J.size();
        this.A0K = true;
        this.A0E.A0e(size, this.A0S.A1O());
    }

    public final void A0k() {
        if (!this.A0K || this.A0E == null) {
            return;
        }
        this.A0K = false;
        this.A0E.A0Y();
    }

    public final void A0l() {
        if (this.A06 != null) {
            this.A06.A0A();
        }
    }

    public final /* synthetic */ void A0m(long j) {
        if (this.A0I != null) {
            this.A0I.A09((int) j);
        }
    }

    public final void A0n(long j, final InterfaceC2800lt interfaceC2800lt) {
        if (this.A08 != null) {
            this.A08.A0D();
        }
        A0A();
        this.A00 = j;
        this.A0H = interfaceC2800lt;
        Objects.requireNonNull(interfaceC2800lt);
        this.A08 = new C3036po(j, new InterfaceC3032pk() { // from class: com.facebook.ads.redexgen.X.CJ
            @Override // com.facebook.ads.redexgen.X.InterfaceC3032pk
            public final void AHJ() {
                interfaceC2800lt.AEy();
            }
        });
        A0R(j);
        this.A08.A0G();
    }

    public final /* synthetic */ void A0o(View view) {
        if (this.A0C != null) {
            this.A0C.A0E(A06(39, 7, 90));
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x011b  */
    /* JADX WARN: Code duplicated, block: B:34:0x0127  */
    /* JADX WARN: Code duplicated, block: B:40:0x0156  */
    /* JADX WARN: Code duplicated, block: B:42:0x015a  */
    /* JADX WARN: Code duplicated, block: B:44:0x0170  */
    /* JADX WARN: Code duplicated, block: B:46:0x017f  */
    /* JADX WARN: Code duplicated, block: B:49:0x0189  */
    /* JADX WARN: Code duplicated, block: B:51:0x019f  */
    /* JADX WARN: Code duplicated, block: B:53:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:56:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:58:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:61:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:65:0x0215  */
    /* JADX WARN: Code duplicated, block: B:67:0x0219  */
    /* JADX WARN: Code duplicated, block: B:69:0x022d  */
    /* JADX WARN: Code duplicated, block: B:71:0x0233  */
    /* JADX WARN: Code duplicated, block: B:72:0x0240  */
    /* JADX WARN: Code duplicated, block: B:76:0x025a  */
    /* JADX WARN: Code duplicated, block: B:78:0x0260  */
    public final void A0p(ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        ImageView imageView;
        String[] strArr;
        int id;
        RelativeLayout.LayoutParams layoutParams;
        int i;
        String[] strArr2;
        C2829mN c2829mN;
        String[] strArr3;
        int iA03;
        int id2;
        ImageView imageView2;
        String[] strArr4;
        AbstractC3086qc.A0K(viewOnClickListenerC1544El);
        this.A0C = null;
        if (this.A03 != null) {
            viewOnClickListenerC1544El.setV2Design(true);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, A0d);
            layoutParams2.setMargins(AbstractC3043pv.A0H, AbstractC3043pv.A00, AbstractC3043pv.A0H, AbstractC3043pv.A0A);
            if (this.A04 != null) {
                layoutParams2.addRule(2, this.A04.getId());
            } else if (this.A0A != null) {
                layoutParams2.addRule(2, this.A0A.getId());
            } else if (this.A0B != null) {
                layoutParams2.addRule(2, this.A0B.A0A().getId());
            } else {
                layoutParams2.addRule(12);
            }
            viewOnClickListenerC1544El.setMinWidth(-1);
            layoutParams2.addRule(14);
            viewOnClickListenerC1544El.setLayoutParams(layoutParams2);
            viewOnClickListenerC1544El.setPadding(AbstractC3043pv.A0r, 0, AbstractC3043pv.A0r, 0);
            viewOnClickListenerC1544El.setTextColor(ViewCompat.MEASURED_STATE_MASK);
            viewOnClickListenerC1544El.setTextSize(18.0f);
            this.A03.addView(viewOnClickListenerC1544El);
            this.A0C = viewOnClickListenerC1544El;
            Drawable drawableA06 = AbstractC3086qc.A06(-1, 30);
            if (A0c[7].length() != 23) {
                throw new RuntimeException();
            }
            String[] strArr5 = A0c;
            strArr5[1] = "SA5IkWpW6i15MB66k";
            strArr5[6] = "SjrLJ2e7chVKVhlFq";
            AbstractC3086qc.A0W(viewOnClickListenerC1544El, drawableA06);
            viewOnClickListenerC1544El.A0D();
            if (Build.VERSION.SDK_INT >= 28) {
                viewOnClickListenerC1544El.setTypeface(Typeface.create(Typeface.SANS_SERIF, 600, false));
            } else {
                viewOnClickListenerC1544El.setTypeface(Typeface.create(A06(10, 17, 20), 0));
            }
            this.A02 = A00(viewOnClickListenerC1544El);
            this.A02.setOnClickListener(AbstractC3335ud.A03(viewOnClickListenerC1544El, A06(0, 10, 60)));
            this.A03.addView(this.A02);
            this.A05 = A02();
            if (this.A05 != null) {
                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams3.addRule(14);
                layoutParams3.addRule(2, this.A02.getId());
                layoutParams3.setMargins(0, 0, 0, AbstractC3043pv.A0c);
                this.A03.addView(this.A05, layoutParams3);
            }
            boolean z = this.A0M;
            String[] strArr6 = A0c;
            if (strArr6[5].charAt(26) != strArr6[2].charAt(26)) {
                A0c[7] = "qnhz8qIa4J9DbUtJS3a29tj";
                if (z) {
                    if (this.A0F != null && this.A03 != null) {
                        if (this.A05 != null) {
                            id2 = this.A05.getId();
                        } else if (this.A02 != null) {
                            imageView2 = this.A02;
                            strArr4 = A0c;
                            if (strArr4[1].length() != strArr4[6].length()) {
                                throw new RuntimeException();
                            }
                            A0c[4] = "cirUXT0M8fs3liK7FCmzZAIx4UmYHAeD";
                            id2 = imageView2.getId();
                        } else {
                            id2 = -1;
                        }
                        this.A0F.A04(id2);
                    }
                }
            } else if (z) {
                if (this.A0F != null) {
                    if (this.A05 != null) {
                        id2 = this.A05.getId();
                    } else if (this.A02 != null) {
                        imageView2 = this.A02;
                        strArr4 = A0c;
                        if (strArr4[1].length() != strArr4[6].length()) {
                            throw new RuntimeException();
                        }
                        A0c[4] = "cirUXT0M8fs3liK7FCmzZAIx4UmYHAeD";
                        id2 = imageView2.getId();
                    } else {
                        id2 = -1;
                    }
                    this.A0F.A04(id2);
                }
            }
            C3308uC c3308uC = this.A0D;
            String[] strArr7 = A0c;
            if (strArr7[5].charAt(26) != strArr7[2].charAt(26)) {
                String[] strArr8 = A0c;
                strArr8[1] = "lYK94AEc9yyRqlmRZ";
                strArr8[6] = "tTc4YL6HTJdGSLvbr";
                if (c3308uC != null) {
                    if (this.A02 != null) {
                        imageView = this.A02;
                        strArr = A0c;
                        if (strArr[0].charAt(27) != strArr[3].charAt(27)) {
                            throw new RuntimeException();
                        }
                        A0c[4] = "w79jgsySEl21q3IuU1S91TSkpTE5j5Ww";
                        id = imageView.getId();
                        if (this.A05 != null) {
                            id = this.A05.getId();
                        }
                        if (this.A0F != null) {
                            c2829mN = this.A0F;
                            strArr3 = A0c;
                            if (strArr3[5].charAt(26) != strArr3[2].charAt(26)) {
                                throw new RuntimeException();
                            }
                            A0c[7] = "u77kiFlwErjh5hagxbbozNc";
                            iA03 = c2829mN.A03();
                            if (iA03 != -1) {
                                id = iA03;
                            }
                        }
                        layoutParams = (RelativeLayout.LayoutParams) this.A0D.getLayoutParams();
                        if (layoutParams != null) {
                            layoutParams.removeRule(3);
                            layoutParams.addRule(2, id);
                            layoutParams.addRule(14);
                            i = AbstractC3043pv.A0c;
                            strArr2 = A0c;
                            if (strArr2[1].length() != strArr2[6].length()) {
                                A0c[4] = "2RFdWGNV3wghKuD6EXap5pEWD17WV1op";
                                layoutParams.setMargins(0, 0, 0, i);
                                this.A0D.setLayoutParams(layoutParams);
                            } else {
                                String[] strArr9 = A0c;
                                strArr9[5] = "K94vI3VSNNU74KeTts0esNe41r0kSxJk";
                                strArr9[2] = "nGpEjrma7l8kHebEPaM3gsXEqWlb2eIt";
                                layoutParams.setMargins(0, 0, 0, i);
                                this.A0D.setLayoutParams(layoutParams);
                            }
                        }
                    }
                }
            } else {
                String[] strArr10 = A0c;
                strArr10[5] = "c4pmRngjoD7ggO426GiR2jQBlYyeq4ZP";
                strArr10[2] = "ROkzrAr6S6MF2fjVO5NEZoPlczhcm3Qj";
                if (c3308uC != null) {
                    if (this.A02 != null) {
                        imageView = this.A02;
                        strArr = A0c;
                        if (strArr[0].charAt(27) != strArr[3].charAt(27)) {
                            throw new RuntimeException();
                        }
                        A0c[4] = "w79jgsySEl21q3IuU1S91TSkpTE5j5Ww";
                        id = imageView.getId();
                        if (this.A05 != null) {
                            id = this.A05.getId();
                        }
                        if (this.A0F != null) {
                            c2829mN = this.A0F;
                            strArr3 = A0c;
                            if (strArr3[5].charAt(26) != strArr3[2].charAt(26)) {
                                throw new RuntimeException();
                            }
                            A0c[7] = "u77kiFlwErjh5hagxbbozNc";
                            iA03 = c2829mN.A03();
                            if (iA03 != -1) {
                                id = iA03;
                            }
                        }
                        layoutParams = (RelativeLayout.LayoutParams) this.A0D.getLayoutParams();
                        if (layoutParams != null) {
                            layoutParams.removeRule(3);
                            layoutParams.addRule(2, id);
                            layoutParams.addRule(14);
                            i = AbstractC3043pv.A0c;
                            strArr2 = A0c;
                            if (strArr2[1].length() != strArr2[6].length()) {
                                A0c[4] = "2RFdWGNV3wghKuD6EXap5pEWD17WV1op";
                                layoutParams.setMargins(0, 0, 0, i);
                                this.A0D.setLayoutParams(layoutParams);
                            } else {
                                String[] strArr11 = A0c;
                                strArr11[5] = "K94vI3VSNNU74KeTts0esNe41r0kSxJk";
                                strArr11[2] = "nGpEjrma7l8kHebEPaM3gsXEqWlb2eIt";
                                layoutParams.setMargins(0, 0, 0, i);
                                this.A0D.setLayoutParams(layoutParams);
                            }
                        }
                    }
                }
            }
            viewOnClickListenerC1544El.A0H(new InterfaceC3303u7() { // from class: com.facebook.ads.redexgen.X.CI
                @Override // com.facebook.ads.redexgen.X.InterfaceC3303u7
                public final void AEZ() {
                    this.A00.A0k();
                }
            });
            A0I();
        }
    }

    public final void A0q(ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        EnumC2578iE enumC2578iEA00 = EnumC2578iE.A00(this.A0S.A1g());
        if (enumC2578iEA00 == null) {
            return;
        }
        viewOnClickListenerC1544El.setV2Design(true);
        switch (C2857mp.A00[enumC2578iEA00.ordinal()]) {
            case 1:
                A0W(viewOnClickListenerC1544El);
                break;
            case 2:
                A0V(viewOnClickListenerC1544El);
                break;
            case 3:
                A0U(viewOnClickListenerC1544El);
                break;
        }
        A0H();
    }

    public final void A0r(String str) {
        if (this.A03 != null) {
            this.A04 = A01();
            this.A04.setText(str);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            if (this.A0A != null) {
                layoutParams.addRule(2, this.A0A.getId());
            } else if (this.A0B != null) {
                layoutParams.addRule(2, this.A0B.A0A().getId());
            } else {
                layoutParams.addRule(12);
            }
            layoutParams.setMargins(AbstractC3043pv.A0n, 0, 0, AbstractC3043pv.A0c);
            this.A04.setLayoutParams(layoutParams);
            this.A03.addView(this.A04);
        }
    }

    public final void A0s(boolean z) {
        this.A0L = z;
    }

    public final boolean A0t() {
        return this.A08 != null && this.A08.A0I();
    }

    public final boolean A0u() {
        return this.A0L;
    }
}
