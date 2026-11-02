package com.facebook.ads.redexgen.X;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.LinearLayout;
import androidx.core.view.ViewCompat;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.1J, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1J {
    public static byte[] A0E;
    public static String[] A0F = {"ciowXTSxQuaQyhX8rTWn7", "DisJvu9swd0CTHGF6BHCnvyyZ00xPQ7", "xWuTPxfBqCH2dyc8Xjmnr", "mVrZvJxjJfjXpwc", "kKC5x3rSafb3nIMchNhd1pvl93FRCFvc", "ZA2PBwyvmzkm1gxveKbqyoWIeaWpUzlq", "u6w7uuViu7j5rX2E05gRaqN2X5PX0NqK", "ZjaSE0KB14"};
    public static final int A0G;
    public ValueAnimator A00;
    public Drawable A01;
    public LinearLayout A02;
    public F8 A03;
    public C3250tG A04;
    public F4 A05;
    public C3395vb A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public final ViewGroup A0A;
    public final C1618Hi A0B;
    public final C1L A0C;
    public final String A0D;

    static {
        A0C();
        A0G = C3395vb.A09;
    }

    public C1J(C1618Hi c1618Hi, ViewGroup viewGroup, C1L c1l, String str) {
        this.A0B = c1618Hi;
        this.A0A = viewGroup;
        this.A0C = c1l;
        this.A0D = str;
    }

    public static int A00(int i) {
        return (int) (i * 0.25f);
    }

    public static int A01(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            return i;
        }
        int i2 = layoutParams.height;
        if (A0F[4].charAt(8) == 'U') {
            throw new RuntimeException();
        }
        A0F[0] = "403xTAizHvzCxqGBYbXL8";
        return i2 == -1 ? i : layoutParams.height;
    }

    public static String A08(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 5);
        }
        return new String(bArrCopyOfRange);
    }

    public static String A09(String str) {
        try {
            String queryParameter = AbstractC3011pP.A00(str).getQueryParameter(A08(0, 4, 64));
            if (!TextUtils.isEmpty(queryParameter)) {
                return queryParameter;
            }
        } catch (Exception unused) {
        }
        String[] strArr = A0F;
        if (strArr[2].length() == strArr[3].length()) {
            throw new RuntimeException();
        }
        A0F[0] = "xKmsJxvhrCmXlS6GSREeo";
        return null;
    }

    private void A0A() {
        LinearLayout linearLayout = new LinearLayout(this.A0B);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundColor(-1);
        AbstractC3086qc.A0L(linearLayout);
        C1526Dt c1526Dt = new C1526Dt(this, null);
        F4 f4 = this.A0B.A0E() != null ? new F4(this.A0B, this.A0B.A0E(), c1526Dt) : new F4(this.A0B, c1526Dt);
        F8 f8 = new F8(this.A0B, f4, true);
        f8.setListener(new C1527Du(this));
        f4.setBrowserNavigationListener(f8.getBrowserNavigationListener());
        C3250tG c3250tG = new C3250tG(this.A0B, null, R.attr.progressBarStyleHorizontal);
        linearLayout.addView(f8, new LinearLayout.LayoutParams(-1, -2));
        linearLayout.addView(c3250tG, new LinearLayout.LayoutParams(-1, -2));
        linearLayout.addView(f4, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        this.A02 = linearLayout;
        this.A05 = f4;
        this.A03 = f8;
        this.A04 = c3250tG;
    }

    private void A0B() {
        if (this.A00 != null) {
            ValueAnimator valueAnimator = this.A00;
            this.A00 = null;
            valueAnimator.cancel();
        }
    }

    public static void A0C() {
        A0E = new byte[]{41, 44, 43, 46};
    }

    public static void A0D(View view) {
        A0E(view, -1);
    }

    public static void A0E(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            return;
        }
        layoutParams.height = i;
        view.setLayoutParams(layoutParams);
    }

    public static void A0F(View view, int i) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = i;
            view.setLayoutParams(layoutParams);
        }
    }

    private void A0H(final View view, final View view2) {
        final int height = this.A0A.getHeight();
        if (height <= 0 || this.A02 == null) {
            this.A0A.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.1U
                @Override // java.lang.Runnable
                public final void run() {
                    this.A00.A0L();
                }
            });
            return;
        }
        final int i = (int) (height * 0.25f);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-1, height - i);
        marginLayoutParams.topMargin = height;
        this.A0A.addView(this.A02, marginLayoutParams);
        final int iA01 = A01(view, height);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(300L);
        valueAnimatorOfFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.facebook.ads.redexgen.X.1T
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                float animatedFraction = valueAnimator.getAnimatedFraction();
                int i2 = iA01 + ((int) ((i - iA01) * animatedFraction));
                int i3 = height + ((int) ((i - height) * animatedFraction));
                C1J.A0E(view, i2);
                if (view2 != null) {
                    C1J.A0E(view2, i2);
                }
                if (this.A05.A02 != null) {
                    C1J.A0F(this.A05.A02, i3);
                }
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: com.facebook.ads.redexgen.X.1S
            public boolean A00;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
                this.A00 = true;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                if (this.A01.A00 == animator) {
                    this.A01.A00 = null;
                }
                if (this.A00) {
                    return;
                }
                this.A01.A0C.AHr();
            }
        });
        this.A00 = valueAnimatorOfFloat;
        valueAnimatorOfFloat.start();
    }

    private void A0I(View view, View view2) {
        A0B();
        A0D(view);
        if (view2 != null) {
            A0D(view2);
        }
        if (this.A09) {
            this.A0C.AEG();
            this.A0B.A0F().A5E(EnumC2959oW.A03.name());
        }
        A0K();
    }

    private boolean A0J(String str, View view, View view2) {
        int height = this.A0A.getHeight();
        int iA00 = height > 0 ? height - A00(height) : 0;
        C3395vb c3395vb = new C3395vb(this.A0B, new C1528Dv(this));
        this.A06 = c3395vb;
        this.A09 = true;
        if (!c3395vb.A0D(str, iA00, 0)) {
            this.A06 = null;
            this.A09 = false;
            return false;
        }
        if (height > 0) {
            int iA01 = A00(height);
            A0E(view, iA01);
            if (view2 != null) {
                A0E(view2, iA01);
            }
        }
        this.A01 = this.A0A.getBackground();
        this.A07 = true;
        this.A0A.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        this.A0C.AHr();
        return true;
    }

    public final void A0K() {
        A0B();
        if (this.A06 != null) {
            this.A06.A0C();
            this.A06.A0B();
            this.A06 = null;
        }
        this.A09 = false;
        if (this.A07) {
            this.A0A.setBackground(this.A01);
            this.A01 = null;
            this.A07 = false;
        }
        if (this.A05 != null) {
            this.A05.destroy();
            this.A05 = null;
        }
        if (this.A02 != null) {
            this.A0A.removeView(this.A02);
            this.A02 = null;
        }
        this.A03 = null;
        this.A04 = null;
        this.A08 = false;
        if (A0F[1].length() == 21) {
            throw new RuntimeException();
        }
        String[] strArr = A0F;
        strArr[5] = "hg1KE4zK5w2BHZt1j0mAEsFo1Ca2P6ES";
        strArr[7] = "jvmP8GFAvD";
    }

    public final /* synthetic */ void A0L() {
        this.A0C.AHr();
    }

    public final boolean A0M() {
        return this.A08;
    }

    public final boolean A0N() {
        return this.A09;
    }

    public final boolean A0O(View view, View view2) {
        if (!this.A08) {
            return false;
        }
        A0I(view, view2);
        return true;
    }

    public final boolean A0P(String str, String str2, View view, View view2) {
        if (this.A08) {
            return false;
        }
        String strA09 = A09(str);
        if (TextUtils.isEmpty(strA09)) {
            return false;
        }
        this.A08 = true;
        EnumC2963oa enumC2963oaA00 = EnumC2963oa.A00(this.A0D);
        EnumC2959oW enumC2959oWA00 = C2961oY.A00(enumC2963oaA00, this.A0B);
        this.A0B.A0F().A5G(enumC2963oaA00.name(), enumC2959oWA00.name());
        if (enumC2959oWA00 == EnumC2959oW.A03 && A0J(strA09, view, view2)) {
            InterfaceC2300df interfaceC2300dfA0F = this.A0B.A0F();
            String strName = EnumC2959oW.A03.name();
            if (A0F[1].length() == 21) {
                throw new RuntimeException();
            }
            A0F[0] = "eb2FCQpi0JJdWiGAwUDg2";
            interfaceC2300dfA0F.A5F(strName);
            return true;
        }
        A0A();
        F4 f4 = this.A05;
        String[] strArr = A0F;
        if (strArr[2].length() == strArr[3].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0F;
        strArr2[5] = "vXWiLp3qbUORmgVUBDsI011627OlAaPQ";
        strArr2[7] = "NqclEFzSQX";
        if (f4 != null) {
            f4.loadUrl(strA09);
        }
        A0H(view, view2);
        this.A0B.A0F().A5F(EnumC2959oW.A05.name());
        return true;
    }
}
