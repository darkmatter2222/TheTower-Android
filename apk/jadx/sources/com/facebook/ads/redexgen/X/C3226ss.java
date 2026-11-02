package com.facebook.ads.redexgen.X;

import android.animation.LayoutTransition;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ss, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3226ss extends LinearLayout {
    public static String[] A0I = {"kYky", "Ytyb6EqPolkd3IBPRyelkKTSOwPpDK", "T7mJgPxrQO7oXK5", "ntUdAWqKDjSpARXDvSYNWruqLRNJVSnQ", "EUE8AWSPEnh2CCxvEJvcwP9LMDnlI69H", "1sRbwp1vEOWpoihmxUd6HSpJGtNrEdLQ", "KMlCf6mmSTXsWQ", "wQ59sdNYsDWf07oSSS0IvkK4b2nAfpeC"};
    public ImageView A00;
    public ImageView A01;
    public InterfaceC3227st A02;
    public Runnable A03;
    public boolean A04;
    public final int A05;
    public final Bitmap A06;
    public final Bitmap A07;
    public final Bitmap A08;
    public final Bitmap A09;
    public final Bitmap A0A;
    public final Bitmap A0B;
    public final LA A0C;
    public final C1618Hi A0D;
    public final C2892nO A0E;
    public final InterfaceC3119r9 A0F;
    public final EnumC3229sv A0G;
    public final EnumC3232sy A0H;

    public C3226ss(C1618Hi c1618Hi, boolean z, LA la, C2892nO c2892nO, InterfaceC3119r9 interfaceC3119r9, EnumC3229sv enumC3229sv, InterfaceC3227st interfaceC3227st, EnumC3232sy enumC3232sy) {
        this(c1618Hi, z, la, c2892nO, interfaceC3119r9, enumC3229sv, enumC3232sy);
        this.A02 = interfaceC3227st;
    }

    public C3226ss(C1618Hi c1618Hi, boolean z, LA la, C2892nO c2892nO, InterfaceC3119r9 interfaceC3119r9, EnumC3229sv enumC3229sv, EnumC3232sy enumC3232sy) {
        super(c1618Hi);
        this.A07 = AbstractC3098qo.A01(EnumC3097qn.CREDIT_LINE_INFO_ICON);
        this.A06 = AbstractC3098qo.A01(EnumC3097qn.CREDIT_LINE_DETAIL_ICON);
        this.A04 = false;
        this.A08 = AbstractC3098qo.A01(EnumC3097qn.AD_CHOICE_ICON);
        this.A09 = AbstractC3098qo.A01(EnumC3097qn.AD_CHOICE_TEXT);
        this.A0A = AbstractC3098qo.A01(EnumC3097qn.AD_CREDIT_LINE_COLLAPSE_TEXT);
        this.A0B = AbstractC3098qo.A01(EnumC3097qn.CREDIT_LINE_TEXT);
        this.A05 = la.A2z();
        this.A0E = c2892nO;
        this.A0F = interfaceC3119r9;
        this.A0G = enumC3229sv;
        this.A0D = c1618Hi;
        this.A0C = la;
        this.A0H = enumC3232sy;
        A05();
        A0K(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02() {
        AbstractC3086qc.A0N(this.A00, 1.0f, 0.0f, 100);
        A0E(3, 300, new InterfaceC3213sf() { // from class: com.facebook.ads.redexgen.X.FA
            @Override // com.facebook.ads.redexgen.X.InterfaceC3213sf
            public final void ALQ(Object obj, long j) {
                this.A00.A0U(obj, j);
            }
        }, new C3222so(this));
        postDelayed(new Runnable() { // from class: com.facebook.ads.redexgen.X.sj
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A0R();
            }
        }, 100L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A03() {
        A0E(2, 300, new InterfaceC3213sf() { // from class: com.facebook.ads.redexgen.X.FB
            @Override // com.facebook.ads.redexgen.X.InterfaceC3213sf
            public final void ALQ(Object obj, long j) {
                this.A00.A0V(obj, j);
            }
        }, new C3220sm(this));
        AbstractC3086qc.A0N(this.A00, 0.0f, 1.0f, 0);
        AbstractC3086qc.A0P(this.A00, 0);
    }

    private void A04() {
        if (!this.A04 || this.A03 == null) {
            return;
        }
        A06();
        A02();
    }

    private void A05() {
        switch (this.A0H) {
            case A03:
                AbstractC3228su.A03(this.A0D, this.A0G);
                break;
            case A02:
                AbstractC3228su.A02(this.A0D, this.A0G);
                break;
        }
    }

    private void A06() {
        if (this.A04 && this.A03 != null) {
            removeCallbacks(this.A03);
            this.A03 = null;
        }
        this.A04 = false;
    }

    private void A07() {
        switch (this.A0H) {
            case A02:
                AbstractC3086qc.A0O(this, -859190839);
                break;
            default:
                AbstractC3086qc.A0O(this, -870569165);
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A08() {
        switch (this.A0H) {
            case A02:
                this.A01.setPadding(AbstractC3043pv.A0U, AbstractC3043pv.A00, AbstractC3043pv.A0B, AbstractC3043pv.A00);
                break;
            case A04:
                this.A01.setPadding(AbstractC3043pv.A0U, AbstractC3043pv.A00, AbstractC3043pv.A0U, AbstractC3043pv.A00);
                this.A01.setVisibility(8);
                break;
            default:
                this.A01.setPadding(AbstractC3043pv.A0K, AbstractC3043pv.A00, AbstractC3043pv.A0B, AbstractC3043pv.A00);
                break;
        }
    }

    private void A09() {
        switch (this.A0H) {
            case A02:
                A0F(this.A00, this.A09, AbstractC3043pv.A00, AbstractC3043pv.A01, AbstractC3043pv.A0U, AbstractC3043pv.A01, AbstractC3043pv.A0X, 1123);
                break;
            case A04:
                A0F(this.A00, this.A0B, AbstractC3043pv.A02, AbstractC3043pv.A00, AbstractC3043pv.A02, AbstractC3043pv.A00, -2, 1126);
                break;
            default:
                A0F(this.A00, this.A06, AbstractC3043pv.A00, AbstractC3043pv.A0B, AbstractC3043pv.A0U, AbstractC3043pv.A0B, -2, 1125);
                break;
        }
    }

    private void A0A() {
        switch (this.A0H) {
            case A02:
                ImageView imageView = this.A01;
                Bitmap bitmap = this.A08;
                int i = AbstractC3043pv.A0K;
                int i2 = AbstractC3043pv.A00;
                int i3 = AbstractC3043pv.A0K;
                if (A0I[6].length() != 14) {
                    A0F(imageView, bitmap, i, i2, i3, AbstractC3043pv.A00, AbstractC3043pv.A0X, 1122);
                    return;
                } else {
                    A0I[1] = "3V7eP7xG7WTZc9MDvH5LSGfpfKaqXB";
                    A0F(imageView, bitmap, i, i2, i3, AbstractC3043pv.A00, AbstractC3043pv.A0X, 1122);
                    return;
                }
            case A04:
                ImageView imageView2 = this.A01;
                Bitmap bitmap2 = this.A0A;
                int i4 = AbstractC3043pv.A0U;
                if (A0I[6].length() != 14) {
                    throw new RuntimeException();
                }
                String[] strArr = A0I;
                strArr[4] = "BfuGKUtJXOjLFO9TkfLBBgMAfanlH5m0";
                strArr[7] = "PCZaCPjK2uAoJJ2LfmWPR1QmBonTi8PG";
                A0F(imageView2, bitmap2, i4, AbstractC3043pv.A00, AbstractC3043pv.A0U, AbstractC3043pv.A00, -2, 1127);
                return;
            default:
                A0F(this.A01, this.A07, AbstractC3043pv.A0K, AbstractC3043pv.A00, AbstractC3043pv.A0K, AbstractC3043pv.A00, -2, 1124);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0B() {
        this.A03 = new Runnable() { // from class: com.facebook.ads.redexgen.X.si
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A02();
            }
        };
        postDelayed(this.A03, this.A05);
    }

    private void A0C() {
        this.A04 = true;
        AbstractC3086qc.A0P(this.A00, 0);
        A0B();
    }

    private final void A0D() {
        AbstractC3086qc.A0P(this.A00, 8);
        AbstractC3086qc.A0P(this.A01, 0);
        if (this.A0H == EnumC3232sy.A04) {
            this.A01.setPadding(AbstractC3043pv.A0U, AbstractC3043pv.A00, AbstractC3043pv.A0U, AbstractC3043pv.A00);
        } else {
            this.A01.setPadding(AbstractC3043pv.A0K, AbstractC3043pv.A00, AbstractC3043pv.A0K, AbstractC3043pv.A00);
        }
    }

    private void A0E(int i, int i2, InterfaceC3213sf interfaceC3213sf, LayoutTransition.TransitionListener transitionListener) {
        LayoutTransition layoutTransition = new LayoutTransition();
        layoutTransition.setAnimator(i, new C3224sq(this, i2, interfaceC3213sf));
        layoutTransition.addTransitionListener(transitionListener);
        setLayoutTransition(layoutTransition);
    }

    private void A0F(ImageView imageView, Bitmap bitmap, int i, int i2, int i3, int i4, int i5, int i6) {
        AbstractC3086qc.A0H(i6, imageView);
        imageView.setImageBitmap(bitmap);
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageView.setAdjustViewBounds(true);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, i5);
        imageView.setPadding(i, i2, i3, i4);
        imageView.setLayoutParams(layoutParams);
    }

    private void A0K(boolean z) {
        setOrientation(0);
        setPadding(AbstractC3043pv.A00, AbstractC3043pv.A0K, AbstractC3043pv.A00, AbstractC3043pv.A0K);
        setClipToPadding(false);
        setGravity(17);
        A07();
        setCornerRadius(AbstractC3043pv.A0D);
        this.A01 = new ImageView(getContext());
        A0A();
        addView(this.A01);
        if (this.A0H == EnumC3232sy.A04) {
            this.A01.setVisibility(8);
        }
        this.A00 = new ImageView(getContext());
        A09();
        addView(this.A00);
        A0L(z);
        setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.sh
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.A00.A0T(view);
            }
        });
    }

    private void A0L(boolean z) {
        if (z && (this.A0H == EnumC3232sy.A03 || this.A0H == EnumC3232sy.A04)) {
            A0C();
        } else {
            AbstractC3086qc.A0P(this.A00, 8);
            AbstractC3086qc.A0P(this.A01, 0);
        }
    }

    private void setCornerRadius(float f) {
        setOutlineProvider(new C3219sl(this, f));
        setClipToOutline(true);
    }

    public final void A0O() {
        A06();
    }

    public final void A0P() {
        A06();
        A0D();
    }

    public final void A0Q() {
        this.A04 = true;
        post(new Runnable() { // from class: com.facebook.ads.redexgen.X.sk
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A0S();
            }
        });
    }

    public final /* synthetic */ void A0R() {
        AbstractC3086qc.A0P(this.A00, 8);
    }

    public final /* synthetic */ void A0S() {
        postDelayed(new Runnable() { // from class: com.facebook.ads.redexgen.X.sg
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A03();
            }
        }, 300L);
    }

    public final /* synthetic */ void A0T(View view) {
        if (!this.A04) {
            AbstractC3228su.A01(this.A0C, this.A0G, this.A0D);
            A0Q();
        } else {
            if (this.A0H == EnumC3232sy.A04) {
                return;
            }
            A04();
            if (this.A02 != null) {
                this.A02.AEX(view);
            } else {
                AbstractC3228su.A08(this.A0E, this.A0D, this.A0F, this.A0C, this.A0G);
            }
        }
    }

    public final /* synthetic */ void A0U(Object obj, long j) {
        ((View) obj).animate().translationX(getWidth()).setDuration(j).setInterpolator(new InterpolatorC3008pL(1.5f)).setListener(new C3223sp(this)).start();
    }

    public final /* synthetic */ void A0V(Object obj, long j) {
        View view = (View) obj;
        view.setTranslationX(getWidth());
        view.animate().translationX(0.0f).setDuration(j).setListener(new C3221sn(this)).setInterpolator(new pM(1.5f)).start();
    }
}
