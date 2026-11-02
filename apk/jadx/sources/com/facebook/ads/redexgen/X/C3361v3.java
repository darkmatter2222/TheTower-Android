package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.google.common.base.Ascii;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.v3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3361v3 {
    public static byte[] A0O;
    public static String[] A0P = {"Qyv3hMywYzE", "6oWUxlAGbJMvjt7T925N6hAsD7mKtG3m", "a9aeVgNHaEAoSaJHixC1", "FwJftv30R9N88UDR0eGgkHDHkb5rNS7i", "lRkn6D3F716lGk9KqsTCAJwtqt7RhOud", "8HHmy0e1oLgUUo4zGZAk", "eMIrUwk6iWFnLW", "qrJ4IKon5nfZZhm4V6uG8DHKw06I8Wzz"};
    public C3226ss A08;
    public C3226ss A09;
    public ViewOnClickListenerC1544El A0A;
    public boolean A0B;
    public boolean A0C;
    public boolean A0E;
    public final int A0F;
    public final LA A0G;
    public final C2391fA A0H;
    public final C2402fL A0I;
    public final C2407fQ A0J;
    public final C1618Hi A0K;
    public final C2892nO A0L;
    public final InterfaceC3119r9 A0M;
    public final EnumC2935o7 A0N;
    public int A03 = 16;
    public int A02 = 12;
    public int A01 = 10;
    public int A04 = 20;
    public int A05 = 40;
    public int A06 = 52;
    public int A00 = 10;
    public int A07 = 8;
    public boolean A0D = true;

    static {
        A05();
    }

    public C3361v3(C1618Hi c1618Hi, LA la, C2892nO c2892nO, Handler handler, InterfaceC3119r9 interfaceC3119r9) {
        this.A0K = c1618Hi;
        this.A0M = interfaceC3119r9;
        this.A0I = la.A32().A0J();
        this.A0J = la.A32().A0L();
        this.A0H = la.A31();
        this.A0E = la.A3R();
        this.A0C = la.A3N();
        this.A0F = AbstractC2516hD.A00(c1618Hi.getResources().getDisplayMetrics());
        this.A0L = c2892nO;
        this.A0G = la;
        A04();
        this.A0N = EnumC2935o7.A00(this.A0G.A1a());
    }

    private ImageView A00(final ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(AbstractC3098qo.A01(EnumC3097qn.OTHER_SKIP), AbstractC3043pv.A0e, AbstractC3043pv.A0e, true);
        ImageView imageView = new ImageView(this.A0K);
        imageView.setImageBitmap(bitmapCreateScaledBitmap);
        imageView.setColorFilter(-1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor(A03(0, 9, 15)));
        imageView.setBackground(gradientDrawable);
        imageView.setPadding(AbstractC3043pv.A0y, AbstractC3043pv.A0y, AbstractC3043pv.A0y, AbstractC3043pv.A0y);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.v0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                C3361v3.A0C(viewOnClickListenerC1544El, view);
            }
        });
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(AbstractC3043pv.A0H, AbstractC3043pv.A0H, 8388661);
        layoutParams.setMargins(0, 0, 0, 0);
        imageView.setLayoutParams(layoutParams);
        imageView.setVisibility(0);
        return imageView;
    }

    private TextView A01() {
        if (TextUtils.isEmpty(this.A0G.A32().A0J().A09())) {
            return null;
        }
        TextView textView = new TextView(this.A0K);
        textView.setText(this.A0G.A32().A0J().A09());
        textView.setTextColor(-1);
        textView.setTextSize(13.0f);
        textView.setGravity(17);
        return textView;
    }

    private C3321uP A02() {
        C3321uP c3321uP = new C3321uP(this.A0K);
        AbstractC3086qc.A0O(c3321uP, 0);
        c3321uP.setFullCircleCorners(true);
        c3321uP.setLayoutParams(new RelativeLayout.LayoutParams(AbstractC3043pv.A04, AbstractC3043pv.A04));
        AbstractC3086qc.A0L(c3321uP);
        new AsyncTaskC1552Et(c3321uP, this.A0K).A04().A07(this.A0G.A35().A01());
        return c3321uP;
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0O, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 67);
        }
        return new String(bArrCopyOfRange);
    }

    private void A04() {
        this.A03 *= this.A0F;
        this.A02 *= this.A0F;
        this.A01 *= this.A0F;
        this.A04 *= this.A0F;
        this.A05 *= this.A0F;
        this.A06 *= this.A0F;
        this.A00 *= this.A0F;
        this.A07 *= this.A0F;
    }

    public static void A05() {
        A0O = new byte[]{111, 116, 124, 124, 124, 124, 124, 124, 124, Ascii.RS, 123, 123, Ascii.CR, Ascii.CR, Ascii.CR, Ascii.CR, Ascii.CR, Ascii.CR, 100, 104, 106, 41, 97, 102, 100, 98, 101, 104, 104, 108, 41, 102, 99, 116, 41, 110, 105, 115, 98, 117, 116, 115, 110, 115, 110, 102, 107, 41, 97, 110, 105, 110, 116, 111, 88, 102, 100, 115, 110, 113, 110, 115, 126, Ascii.VT, 19, 17, 8};
    }

    private void A06(FrameLayout frameLayout) {
        if (A0D()) {
            return;
        }
        View view = new View(this.A0K);
        view.setBackgroundColor(Color.parseColor(A03(9, 9, 126)));
        view.setAlpha(0.8f);
        frameLayout.addView(view, new FrameLayout.LayoutParams(-1, -1));
    }

    private void A07(FrameLayout frameLayout) {
        FrameLayout frameLayout2 = new FrameLayout(this.A0K);
        this.A08 = AbstractC3231sx.A01(this.A0K, false, this.A0G, this.A0L, this.A0M, EnumC3229sv.A02, AbstractC3228su.A00(this.A0G));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 8388693);
        layoutParams.setMargins(0, 0, A0D() ? AbstractC3043pv.A0n : this.A04, this.A03);
        C3226ss c3226ss = this.A08;
        if (A0P[6].length() == 4) {
            throw new RuntimeException();
        }
        A0P[4] = "X4E1HHP8EOGrpb4P0nkOSG6f0olRcDrd";
        frameLayout2.addView(c3226ss, layoutParams);
        frameLayout.addView(frameLayout2);
    }

    private void A08(FrameLayout frameLayout) {
        FrameLayout frameLayout2 = new FrameLayout(this.A0K);
        this.A09 = AbstractC3231sx.A01(this.A0K, false, this.A0G, this.A0L, this.A0M, EnumC3229sv.A02, EnumC3232sy.A04);
        AbstractC3086qc.A0L(this.A09);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 8388691);
        layoutParams.setMargins(this.A04, 0, 0, this.A03);
        frameLayout2.addView(this.A09, layoutParams);
        frameLayout.addView(frameLayout2);
    }

    private void A09(FrameLayout frameLayout) {
        FrameLayout frameLayout2 = new FrameLayout(this.A0K);
        C3230sw c3230swA02 = AbstractC3231sx.A02(this.A0K, EnumC3229sv.A02, this.A0G);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 8388691);
        layoutParams.setMargins(A0D() ? AbstractC3043pv.A0n : this.A04, 0, 0, this.A03);
        frameLayout2.addView(c3230swA02, layoutParams);
        frameLayout.addView(frameLayout2);
    }

    private void A0A(FrameLayout frameLayout, ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        FrameLayout frameLayout2 = new FrameLayout(this.A0K);
        frameLayout2.setPadding(0, this.A06, this.A02, this.A02);
        if (this.A0E) {
            frameLayout2.setOnClickListener(new ViewOnClickListenerC3360v2(this, viewOnClickListenerC1544El));
        }
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(AbstractC3098qo.A01(EnumC3097qn.NAV_CROSS), AbstractC3043pv.A0e, AbstractC3043pv.A0e, true);
        ImageView imageView = new ImageView(this.A0K);
        AbstractC3086qc.A0H(1002, imageView);
        imageView.setImageBitmap(bitmapCreateScaledBitmap);
        imageView.setColorFilter(-1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor(A03(0, 9, 15)));
        imageView.setBackground(gradientDrawable);
        imageView.setPadding(AbstractC3043pv.A0y, AbstractC3043pv.A0y, AbstractC3043pv.A0y, AbstractC3043pv.A0y);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(AbstractC3043pv.A0H, AbstractC3043pv.A0H, 8388661);
        layoutParams.setMargins(0, 0, 0, 0);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.uz
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.A00.A0I(view);
            }
        });
        long jA00 = this.A0J.A00();
        if (this.A0B) {
            jA00 = this.A0J.A01();
        }
        if (this.A0D && jA00 > 0) {
            View viewA00 = null;
            if (A0P[6].length() == 4) {
                throw new RuntimeException();
            }
            A0P[4] = "noxhdgHBYesZByvARmcIWYELyQSiTkUd";
            if (this.A0C && viewOnClickListenerC1544El != null) {
                viewA00 = A00(viewOnClickListenerC1544El);
                frameLayout2.addView(viewA00);
            }
            AbstractC2516hD.A01(this.A0K, imageView, jA00, viewA00);
        }
        frameLayout2.addView(imageView, layoutParams);
        if (!this.A0D) {
            imageView.setVisibility(8);
        }
        frameLayout.addView(frameLayout2, new FrameLayout.LayoutParams(-1, -2, 48));
    }

    private void A0B(ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        if (A0D()) {
            viewOnClickListenerC1544El.setPadding(AbstractC3043pv.A0P, AbstractC3043pv.A06, AbstractC3043pv.A0P, AbstractC3043pv.A06);
            viewOnClickListenerC1544El.setTypeface(viewOnClickListenerC1544El.getTypeface(), 1);
            this.A00 = 32;
        } else {
            viewOnClickListenerC1544El.setPadding(this.A04, this.A03, this.A04, this.A03);
        }
        viewOnClickListenerC1544El.setTextSize(A0D() ? 16.0f : 14.0f);
        viewOnClickListenerC1544El.A0D();
        viewOnClickListenerC1544El.setIncludeFontPadding(true);
        viewOnClickListenerC1544El.setLayoutParams(layoutParams);
        viewOnClickListenerC1544El.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        AbstractC3086qc.A0W(viewOnClickListenerC1544El, AbstractC3086qc.A06(-1, this.A00));
        viewOnClickListenerC1544El.setId(View.generateViewId());
        if (viewOnClickListenerC1544El.getParent() != null) {
            ((ViewGroup) viewOnClickListenerC1544El.getParent()).removeView(viewOnClickListenerC1544El);
        }
    }

    public static /* synthetic */ void A0C(ViewOnClickListenerC1544El viewOnClickListenerC1544El, View view) {
        viewOnClickListenerC1544El.A0E(A03(63, 4, 59));
        viewOnClickListenerC1544El.setVisibility(4);
    }

    private boolean A0D() {
        return this.A0N == EnumC2935o7.A07;
    }

    public final View A0E(ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        if (viewOnClickListenerC1544El != null) {
            viewOnClickListenerC1544El.setV2Design(true);
        }
        if (A0P[7].charAt(24) == 'd') {
            throw new RuntimeException();
        }
        A0P[0] = "o9BXxAxcaY6k";
        return A0F(viewOnClickListenerC1544El, null);
    }

    public final View A0F(ViewOnClickListenerC1544El viewOnClickListenerC1544El, ImageView imageView) {
        ImageView imageViewA02 = imageView;
        this.A0A = viewOnClickListenerC1544El;
        if (this.A0A != null) {
            this.A0A.A0G(this.A0G.A32().A0K());
        }
        this.A0B = imageViewA02 != null;
        FrameLayout frameLayout = new FrameLayout(this.A0K);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        C3327uV c3327uV = new C3327uV(this.A0K, this.A0H.A01(), true, false, false);
        String strA1n = this.A0G.A1n();
        String strA0H = this.A0I.A0H();
        if (strA1n == null || strA1n.isEmpty()) {
            strA1n = this.A0I.A0F().toLowerCase(Locale.getDefault());
        }
        c3327uV.A04(strA0H, strA1n, null, false, false);
        c3327uV.setAlignment(17);
        c3327uV.setTitleTextSize(A0D() ? 30 : 28);
        if (A0P[0].length() == 30) {
            throw new RuntimeException();
        }
        A0P[4] = "pDhzlxnIx13kRFgPhmccchsWDk3Xlymd";
        c3327uV.setDescriptionTextSize(A0D() ? 15 : 13);
        c3327uV.A02();
        c3327uV.setPadding(this.A05, 0, this.A05, 0);
        AbstractC3086qc.A0H(1111, c3327uV);
        LinearLayout linearLayout = new LinearLayout(this.A0K);
        linearLayout.setClickable(true);
        if (C2863mv.A1C(this.A0K)) {
            linearLayout.setOnClickListener(new ViewOnClickListenerC3359v1(this, viewOnClickListenerC1544El));
        }
        linearLayout.setPadding(0, -this.A04, 0, 0);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        if (A0D()) {
            imageViewA02 = A02();
        }
        if (imageViewA02 != null) {
            if (imageViewA02.getParent() != null) {
                ((ViewGroup) imageViewA02.getParent()).removeView(imageViewA02);
            }
            linearLayout.addView(imageViewA02);
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, this.A03, 0, this.A07);
        linearLayout.addView(c3327uV, layoutParams);
        TextView textViewA01 = A01();
        if (textViewA01 != null) {
            new LinearLayout.LayoutParams(-2, -2).setMargins(0, this.A07, 0, this.A03);
            linearLayout.addView(textViewA01);
        }
        if (viewOnClickListenerC1544El != null) {
            A0B(viewOnClickListenerC1544El);
            linearLayout.addView(viewOnClickListenerC1544El, layoutParams);
            if (TextUtils.isEmpty(viewOnClickListenerC1544El.getText())) {
                AbstractC3086qc.A0I(viewOnClickListenerC1544El);
            }
        }
        linearLayout.setAlpha(1.0f);
        A06(frameLayout);
        frameLayout.addView(linearLayout);
        A0A(frameLayout, viewOnClickListenerC1544El);
        LA la = this.A0G;
        if (A0P[1].charAt(10) == 'W') {
            throw new RuntimeException();
        }
        A0P[3] = "fD2T1Ve1WjePiWnkkw6aRP2HYHtz3klq";
        if (la.A3F()) {
            A07(frameLayout);
        }
        LA la2 = this.A0G;
        if (A0P[4].charAt(31) != 'd') {
            throw new RuntimeException();
        }
        A0P[7] = "bWL7PPSN5wk6yhEerI4fo10dnRMJ9G0K";
        if (la2.A3U()) {
            A09(frameLayout);
        } else if (this.A0G.A3T()) {
            A08(frameLayout);
        }
        return frameLayout;
    }

    public final ViewOnClickListenerC1544El A0G() {
        return this.A0A;
    }

    public final void A0H() {
        if (this.A08 != null) {
            this.A08.A0O();
        }
        if (this.A09 != null) {
            this.A09.A0O();
        }
    }

    public final /* synthetic */ void A0I(View view) {
        this.A0K.A0F().ABl();
        this.A0M.A5C(A03(18, 45, 68));
    }

    public final void A0J(boolean z) {
        if (!z && this.A08 != null) {
            this.A08.A0P();
        }
        if (this.A09 != null) {
            this.A09.A0P();
        }
    }

    public final void A0K(boolean z) {
        this.A0D = z;
    }
}
