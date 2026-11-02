package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.google.android.gms.ads.AdSize;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.hI, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2521hI {
    public static byte[] A0n;
    public static String[] A0o = {"tcfXpaWAVkoQ2BNjYJNJsoFSM2", "creEdCM", "wDroJIJ", "aIq45EPfSvmmcYKahwQmQmbYWTVCxHWT", "be3NMLJl6ooSZid2rv", "2UYX2PQ", "thIIrzB4nRx1mczinnGRYVZEy7VAX2va", "ZYUKwomLReyh0D"};
    public ImageView A0M;
    public ImageView A0N;
    public LinearLayout A0O;
    public RelativeLayout A0P;
    public TextView A0Q;
    public TextView A0R;
    public C7O A0S;
    public C3226ss A0T;
    public C3226ss A0U;
    public C3230sw A0V;
    public C3321uP A0W;
    public C3361v3 A0X;
    public final Handler A0b;
    public final FrameLayout A0c;
    public final LA A0d;
    public final C2391fA A0e;
    public final C2402fL A0f;
    public final C2407fQ A0g;
    public final C2416fZ A0h;
    public final C1618Hi A0i;
    public final C2892nO A0j;
    public final InterfaceC3119r9 A0k;
    public final ViewOnClickListenerC1544El A0l;
    public int A06 = AdSize.WIDE_SKYSCRAPER_WIDTH;
    public int A07 = 130;
    public int A03 = 56;
    public int A04 = 430;
    public int A0K = 110;
    public int A0L = 70;
    public int A0A = 120;
    public int A0G = 48;
    public int A0F = 44;
    public int A0D = 24;
    public int A0C = 20;
    public int A0B = 16;
    public int A09 = 12;
    public int A08 = 10;
    public int A0H = 8;
    public int A0E = 4;
    public int A0J = IronSourceError.ERROR_AD_UNIT_CAPPED;
    public int A0I = 300;
    public int A05 = 220;
    public boolean A0Y = false;
    public final AtomicBoolean A0m = new AtomicBoolean(false);
    public int A00 = 0;
    public int A02 = 0;
    public int A01 = this.A06;
    public boolean A0Z = true;
    public final int A0a = Math.max(1, (int) AbstractC3045px.A02);

    static {
        A0M();
    }

    public C2521hI(final C1618Hi c1618Hi, LA la, InterfaceC3119r9 interfaceC3119r9, ViewOnClickListenerC1544El viewOnClickListenerC1544El, Handler handler, C2892nO c2892nO) {
        this.A0i = c1618Hi;
        this.A0d = la;
        this.A0j = c2892nO;
        this.A0h = la.A35();
        this.A0g = la.A32().A0L();
        this.A0k = interfaceC3119r9;
        this.A0b = handler;
        this.A0f = la.A32().A0J();
        this.A0e = la.A31();
        this.A0l = viewOnClickListenerC1544El;
        this.A0S = new C7O(c1618Hi) { // from class: com.facebook.ads.redexgen.X.3h
            @Override // com.facebook.ads.redexgen.X.C7O, android.view.ViewGroup
            public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                return false;
            }

            @Override // com.facebook.ads.redexgen.X.C7O, android.view.View
            public final boolean onTouchEvent(MotionEvent motionEvent) {
                return false;
            }
        };
        this.A0P = new RelativeLayout(c1618Hi);
        this.A0W = new C3321uP(c1618Hi);
        this.A0R = new TextView(c1618Hi);
        this.A0M = new ImageView(c1618Hi);
        this.A0c = new FrameLayout(this.A0i);
        A0K();
        if (this.A0l != null) {
            AbstractC3086qc.A0H(1001, this.A0l);
        }
    }

    public static int A00(int i) {
        if (AbstractC2501gx.A01(i, -1) >= 4.5d) {
            return -1;
        }
        return ViewCompat.MEASURED_STATE_MASK;
    }

    private FrameLayout.LayoutParams A01() {
        if (this.A0i.getResources().getConfiguration().orientation == 2) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.setMargins(0, this.A0L, 0, this.A0C);
            return layoutParams;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, this.A0Y ? this.A0I : this.A0J);
        layoutParams2.setMargins(0, this.A0K, 0, 0);
        return layoutParams2;
    }

    private FrameLayout.LayoutParams A02() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(AbstractC3043pv.A0H, AbstractC3043pv.A0H, 8388661);
        layoutParams.setMargins(0, this.A0G, this.A09, 0);
        return layoutParams;
    }

    private ImageView A03() {
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(AbstractC3098qo.A01(EnumC3097qn.OTHER_SKIP), AbstractC3043pv.A0e, AbstractC3043pv.A0e, true);
        ImageView imageView = new ImageView(this.A0i);
        imageView.setImageBitmap(bitmapCreateScaledBitmap);
        imageView.setColorFilter(-1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor(A0H(7, 9, 85)));
        imageView.setBackground(gradientDrawable);
        imageView.setPadding(AbstractC3043pv.A0y, AbstractC3043pv.A0y, AbstractC3043pv.A0y, AbstractC3043pv.A0y);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.hP
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.A00.A0b(view);
            }
        });
        if (this.A0l != null && this.A0l.getCtaActionHelper().A07() == null) {
            this.A0l.getCtaActionHelper().A09(new InterfaceC2359ed() { // from class: com.facebook.ads.redexgen.X.Bv
                @Override // com.facebook.ads.redexgen.X.InterfaceC2359ed
                public final void ADg() {
                    this.A00.A0Z();
                }
            });
        }
        imageView.setLayoutParams(A02());
        imageView.setVisibility(0);
        return imageView;
    }

    private LinearLayout.LayoutParams A04() {
        int i = -1;
        int i2 = -2;
        int i3 = 0;
        if (this.A0i.getResources().getConfiguration().orientation == 2) {
            i = this.A04;
            i2 = -2;
            i3 = this.A0B;
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i, i2);
        layoutParams.gravity = 81;
        layoutParams.setMargins(this.A0B, i3, this.A0B, 0);
        return layoutParams;
    }

    private LinearLayout A05() {
        LinearLayout linearLayout = new LinearLayout(this.A0i);
        linearLayout.setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        linearLayout.setGravity(80);
        linearLayout.setLayoutParams(layoutParams);
        return linearLayout;
    }

    private LinearLayout A06() {
        String strA0A;
        LinearLayout linearLayout = new LinearLayout(this.A0i);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        if (this.A0f.A0D().isEmpty() && !this.A0g.A07()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        if (!this.A0f.A0D().isEmpty()) {
            arrayList.add(new C2494gq(this.A0i).A01(new C3311uF(this.A0i, -1, -1, EnumC3097qn.RATINGS)).A03(this.A0f.A0D()).A02(this.A0f.A0C()));
        }
        if (this.A0g.A08() && !this.A0f.A07().isEmpty()) {
            C2402fL c2402fL = this.A0f;
            String[] strArr = A0o;
            if (strArr[5].length() != strArr[2].length()) {
                throw new RuntimeException();
            }
            A0o[7] = "f4qazDhyphTHhR";
            strA0A = c2402fL.A07();
        } else if (this.A0f.A0A().isEmpty()) {
            strA0A = A0H(0, 0, 38);
        } else {
            try {
                strA0A = AbstractC3055q7.A01(Integer.parseInt(this.A0f.A0A()));
            } catch (NumberFormatException unused) {
                strA0A = this.A0f.A0A();
            }
        }
        if (!strA0A.isEmpty()) {
            arrayList.add(new C2494gq(this.A0i).A01(new C3311uF(this.A0i, -1, -1, EnumC3097qn.NUCLEUS_GROUP)).A03(strA0A).A02(this.A0f.A0B()));
        }
        if (!this.A0f.A05().isEmpty()) {
            arrayList.add(new C2494gq(this.A0i).A01(new C3311uF(this.A0i, -1, -1, EnumC3097qn.DOWNLOAD)).A03(this.A0f.A05()).A02(this.A0f.A06()));
        }
        if (!this.A0f.A01().isEmpty()) {
            arrayList.add(new C2494gq(this.A0i).A01(new C3311uF(this.A0i, -1, -1, EnumC3097qn.NUCLEUS_DURATION)).A03(this.A0f.A01()).A02(this.A0f.A0E()));
        }
        if (!this.A0f.A02().isEmpty()) {
            arrayList.add(new C2494gq(this.A0i).A01(new C3311uF(this.A0i, -1, -1, EnumC3097qn.GRID_4)).A03(this.A0f.A02()).A02(this.A0f.A03()));
        }
        for (int i = 0; i < Math.min(3, arrayList.size()); i++) {
            linearLayout.addView((View) arrayList.get(i));
        }
        linearLayout.setId(View.generateViewId());
        return linearLayout;
    }

    private LinearLayout A07(RelativeLayout relativeLayout, ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        LinearLayout linearLayout = new LinearLayout(this.A0i);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(3, viewOnClickListenerC1544El.getId());
        layoutParams.addRule(14);
        layoutParams.setMargins(0, this.A0H, 0, 0);
        linearLayout.setLayoutParams(layoutParams);
        TextView textView = new TextView(this.A0i);
        textView.setText(this.A0f.A08());
        textView.setTextSize(10.0f);
        linearLayout.setId(View.generateViewId());
        C3311uF c3311uF = new C3311uF(this.A0i, -1, -1, EnumC3097qn.GOOGLE_PLAY_STORE);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(this.A09, this.A09);
        layoutParams2.rightMargin = this.A0E;
        c3311uF.setLayoutParams(layoutParams2);
        c3311uF.setAlpha(0.5f);
        linearLayout.addView(c3311uF);
        linearLayout.addView(textView);
        relativeLayout.addView(linearLayout);
        return linearLayout;
    }

    private RelativeLayout.LayoutParams A08(LinearLayout linearLayout) {
        int i;
        int i2 = this.A0i.getResources().getConfiguration().orientation;
        if (linearLayout == null || this.A0Y || i2 == 2) {
            i = (-this.A01) / 4;
        } else {
            int i3 = this.A01;
            String[] strArr = A0o;
            if (strArr[6].charAt(26) != strArr[3].charAt(26)) {
                throw new RuntimeException();
            }
            A0o[7] = "oVxYG9ybqO9nsq";
            i = (-i3) / 2;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.A01, this.A01);
        layoutParams.setMargins(0, i, 0, 0);
        layoutParams.addRule(14);
        return layoutParams;
    }

    private RelativeLayout.LayoutParams A09(LinearLayout linearLayout, TextView textView) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(14);
        if (this.A0l != null) {
            this.A0l.setTextColor(A00(this.A0e.A01().A04()));
            AbstractC3086qc.A0W(this.A0l, AbstractC3086qc.A06(this.A0e.A01().A04(), 40));
        }
        if (linearLayout != null) {
            layoutParams.addRule(3, linearLayout.getId());
            layoutParams.setMargins(this.A0B, this.A0D + this.A00 + this.A02, this.A0B, 0);
        } else {
            layoutParams.addRule(3, textView.getId());
            layoutParams.setMargins(this.A0B, this.A0A + this.A00 + this.A02, this.A0B, 0);
        }
        return layoutParams;
    }

    private RelativeLayout.LayoutParams A0A(TextView textView) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(14);
        layoutParams.setMargins(0, this.A0D + this.A02, 1, 0);
        layoutParams.addRule(3, textView.getId());
        return layoutParams;
    }

    private RelativeLayout.LayoutParams A0B(C3321uP c3321uP) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        layoutParams.addRule(3, c3321uP.getId());
        layoutParams.setMargins(this.A0B, this.A0D + this.A02, this.A0B, 0);
        return layoutParams;
    }

    private RelativeLayout A0C() {
        RelativeLayout relativeLayout = new RelativeLayout(this.A0i);
        LinearLayout.LayoutParams layoutParamsA04 = A04();
        relativeLayout.setClipChildren(false);
        relativeLayout.setLayoutParams(layoutParamsA04);
        relativeLayout.setId(View.generateViewId());
        return relativeLayout;
    }

    private TextView A0D(RelativeLayout relativeLayout, TextView textView) {
        if (TextUtils.isEmpty(this.A0d.A32().A0J().A09())) {
            return null;
        }
        TextView textView2 = new TextView(this.A0i);
        textView2.setText(this.A0d.A32().A0J().A09());
        textView2.setTextColor(-855638017);
        textView2.setMaxLines(1);
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        textView2.setTypeface(Typeface.DEFAULT);
        textView2.setTextSize(12.0f);
        textView2.setTextAlignment(4);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(14);
        layoutParams.addRule(3, textView.getId());
        textView2.setLayoutParams(layoutParams);
        layoutParams.setMargins(0, AbstractC3043pv.A0y, 0, 0);
        relativeLayout.addView(textView2);
        AbstractC3086qc.A0L(textView2);
        return textView2;
    }

    private TextView A0E(RelativeLayout relativeLayout, C3321uP c3321uP) {
        TextView textView = new TextView(this.A0i);
        textView.setText(this.A0f.A0H());
        textView.setTextColor(-1);
        textView.setMaxLines(2);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        textView.setTypeface(Typeface.DEFAULT_BOLD);
        textView.setTextSize(30.0f);
        textView.setTextAlignment(4);
        textView.setLayoutParams(A0B(c3321uP));
        relativeLayout.addView(textView);
        textView.setId(View.generateViewId());
        return textView;
    }

    private C3321uP A0G(LinearLayout linearLayout) {
        C3321uP c3321uP = new C3321uP(this.A0i);
        c3321uP.setRadius(30);
        AbstractC3086qc.A0O(c3321uP, 0);
        new AsyncTaskC1552Et(c3321uP, this.A0i).A04().A07(this.A0h.A01());
        c3321uP.setLayoutParams(A08(linearLayout));
        c3321uP.setId(View.generateViewId());
        return c3321uP;
    }

    public static String A0H(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0n, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 38);
        }
        return new String(bArrCopyOfRange);
    }

    private void A0I() {
        final boolean zA06 = this.A0g.A06();
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(zA06 ? AbstractC3098qo.A01(EnumC3097qn.SKIP_ARROW_APP_INSTALL) : AbstractC3098qo.A01(EnumC3097qn.NAV_CROSS), AbstractC3043pv.A0e, AbstractC3043pv.A0e, true);
        this.A0M = new ImageView(this.A0i);
        AbstractC3086qc.A0H(1002, this.A0M);
        this.A0M.setImageBitmap(bitmapCreateScaledBitmap);
        this.A0M.setColorFilter(-1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor(A0H(7, 9, 85)));
        this.A0M.setBackground(gradientDrawable);
        this.A0M.setPadding(AbstractC3043pv.A0y, AbstractC3043pv.A0y, AbstractC3043pv.A0y, AbstractC3043pv.A0y);
        this.A0M.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.hQ
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.A00.A0g(zA06, view);
            }
        });
        this.A0M.setLayoutParams(A02());
        this.A0c.addView(this.A0M);
        if (!this.A0Z) {
            this.A0M.setVisibility(8);
        }
        this.A0N = null;
        if (!this.A0Z || this.A0g.A00() <= 0) {
            return;
        }
        if (this.A0d.A3N()) {
            this.A0N = A03();
            this.A0c.addView(this.A0N);
        }
        AbstractC2516hD.A01(this.A0i, this.A0M, this.A0g.A00(), this.A0N);
    }

    private void A0J() {
        if (this.A0l != null) {
            A0T(this.A0P, this.A0l, this.A0O, this.A0Q != null ? this.A0Q : this.A0R);
            LinearLayout linearLayoutA07 = A07(this.A0P, this.A0l);
            if (this.A0d.A3F()) {
                A0Q(this.A0P, linearLayoutA07, this.A0l);
            }
            if (this.A0d.A3U()) {
                A0S(this.A0P, linearLayoutA07, this.A0l);
            } else if (this.A0d.A3T()) {
                A0R(this.A0P, linearLayoutA07, this.A0l);
            }
        }
    }

    private void A0K() {
        this.A0J *= this.A0a;
        this.A0I *= this.A0a;
        this.A05 *= this.A0a;
        this.A0K *= this.A0a;
        this.A0L *= this.A0a;
        this.A06 *= this.A0a;
        this.A01 *= this.A0a;
        this.A07 *= this.A0a;
        this.A03 *= this.A0a;
        this.A04 *= this.A0a;
        this.A0A *= this.A0a;
        this.A0G *= this.A0a;
        this.A0F *= this.A0a;
        this.A0D *= this.A0a;
        this.A0C *= this.A0a;
        this.A0B *= this.A0a;
        this.A09 *= this.A0a;
        this.A08 *= this.A0a;
        this.A0H *= this.A0a;
        this.A0E *= this.A0a;
    }

    private void A0L() {
        ViewParent parent = this.A0c.getParent();
        boolean z = parent instanceof ViewGroup;
        String strA0H = A0H(27, 45, 29);
        if (!z) {
            this.A0k.A5C(strA0H);
            return;
        }
        ((ViewGroup) parent).removeView(this.A0c);
        ViewParent parent2 = parent.getParent();
        if (A0o[4].length() == 28) {
            throw new RuntimeException();
        }
        A0o[7] = "bBqwAbij60vazk";
        if (!(parent2 instanceof ViewGroup)) {
            this.A0k.A5C(strA0H);
            return;
        }
        this.A0m.set(true);
        this.A0X = new C3361v3(this.A0i, this.A0d, this.A0j, this.A0b, this.A0k);
        ((ViewGroup) parent.getParent()).addView(this.A0X.A0F(this.A0l, this.A0W));
    }

    public static void A0M() {
        A0n = new byte[]{97, 111, 127, 111, 127, 111, 127, -98, -77, -85, -85, -85, -85, -85, -85, -85, -36, -23, -38, -36, -34, -17, -28, -15, -28, -17, -12, -90, -78, -80, 113, -87, -92, -90, -88, -91, -78, -78, -82, 113, -92, -89, -74, 113, -84, -79, -73, -88, -75, -74, -73, -84, -73, -84, -92, -81, 113, -87, -84, -79, -84, -74, -85, -94, -92, -90, -73, -84, -71, -84, -73, -68, -90, -81, -91, -124, -94, -77, -91, -105, 115, -108, -92, -77, -90, -90, -81, -76, -87, -80, -75, -109, -90, -92, -70, -92, -83, -90, -77, -126, -91, -94, -79, -75, -90, -77, 97, -86, -76, 97, -81, -74, -83, -83, -68, -76, -78, -71};
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: A0N, reason: merged with bridge method [inline-methods] */
    public final void A0Z() {
        AbstractC3086qc.A0K(this.A0N);
        this.A0d.A3D(false);
        this.A0d.A32().A0N(-1);
    }

    private void A0O(View view, int i, float[] fArr) {
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(fArr, null, null));
        shapeDrawable.getPaint().setColor(i);
        view.setBackground(shapeDrawable);
    }

    private void A0P(RelativeLayout relativeLayout) {
        A0O(relativeLayout, Color.argb(230, 13, 13, 13), new float[]{100.0f, 100.0f, 100.0f, 100.0f, 0.0f, 0.0f, 0.0f, 0.0f});
    }

    private void A0Q(RelativeLayout relativeLayout, LinearLayout linearLayout, ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        this.A0T = AbstractC3231sx.A01(this.A0i, false, this.A0d, this.A0j, this.A0k, EnumC3229sv.A02, AbstractC3228su.A00(this.A0d));
        AbstractC3086qc.A0H(1116, this.A0T);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, this.A0B, 0, this.A0B);
        layoutParams.addRule(7, viewOnClickListenerC1544El.getId());
        layoutParams.addRule(3, linearLayout.getId());
        this.A0T.setLayoutParams(layoutParams);
        relativeLayout.addView(this.A0T);
    }

    private void A0R(RelativeLayout relativeLayout, LinearLayout linearLayout, ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        this.A0U = AbstractC3231sx.A01(this.A0i, false, this.A0d, this.A0j, this.A0k, EnumC3229sv.A02, EnumC3232sy.A04);
        AbstractC3086qc.A0L(this.A0U);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, this.A0H, 0, this.A0B);
        layoutParams.addRule(5, viewOnClickListenerC1544El.getId());
        layoutParams.addRule(3, linearLayout.getId());
        this.A0U.setLayoutParams(layoutParams);
        relativeLayout.addView(this.A0U);
    }

    private void A0S(RelativeLayout relativeLayout, LinearLayout linearLayout, ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        this.A0V = AbstractC3231sx.A02(this.A0i, EnumC3229sv.A02, this.A0d);
        AbstractC3086qc.A0H(1117, this.A0V);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, this.A0B, 0, this.A0B);
        layoutParams.addRule(5, viewOnClickListenerC1544El.getId());
        layoutParams.addRule(3, linearLayout.getId());
        this.A0V.setLayoutParams(layoutParams);
        relativeLayout.addView(this.A0V);
    }

    private void A0T(RelativeLayout relativeLayout, ViewOnClickListenerC1544El viewOnClickListenerC1544El, LinearLayout linearLayout, TextView textView) {
        RelativeLayout.LayoutParams layoutParamsA09 = A09(linearLayout, textView);
        viewOnClickListenerC1544El.setIncludeFontPadding(false);
        viewOnClickListenerC1544El.setLayoutParams(layoutParamsA09);
        viewOnClickListenerC1544El.A0G(this.A0d.A32().A0K());
        viewOnClickListenerC1544El.A0D();
        viewOnClickListenerC1544El.setHeight(this.A03);
        viewOnClickListenerC1544El.setTextSize(18.0f);
        viewOnClickListenerC1544El.setCornerRadiusPx(40);
        viewOnClickListenerC1544El.setTextColor(A00(this.A0e.A01().A04()));
        AbstractC3086qc.A0W(viewOnClickListenerC1544El, AbstractC3086qc.A06(this.A0e.A01().A04(), 40));
        viewOnClickListenerC1544El.setId(View.generateViewId());
        if (viewOnClickListenerC1544El.getParent() != null) {
            ((ViewGroup) viewOnClickListenerC1544El.getParent()).removeView(viewOnClickListenerC1544El);
        }
        relativeLayout.addView(viewOnClickListenerC1544El);
    }

    private void A0U(ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        this.A0S.setLayoutManager(new J7(this.A0i, 0, false));
        this.A0S.setLayoutParams(A01());
        this.A0S.setAdapter(new C1475Bu(this.A0i, this.A0g.A03(), this.A0H, this.A0S, viewOnClickListenerC1544El, this.A0i.getResources().getConfiguration().orientation == 2 ? 2 : 4));
    }

    private void A0V(final InterfaceC2523hK interfaceC2523hK) {
        final ImageView imageView = new ImageView(this.A0i);
        imageView.setAdjustViewBounds(true);
        AsyncTaskC1552Et asyncTaskC1552Et = new AsyncTaskC1552Et(imageView, this.A0i);
        if (this.A0g.A03().isEmpty()) {
            interfaceC2523hK.AFC();
        } else {
            asyncTaskC1552Et.A06(new InterfaceC3277th() { // from class: com.facebook.ads.redexgen.X.Bw
                @Override // com.facebook.ads.redexgen.X.InterfaceC3277th
                public final void AFA(C3276tg c3276tg) {
                    this.A02.A0c(imageView, interfaceC2523hK, c3276tg);
                }
            });
            asyncTaskC1552Et.A07(this.A0g.A03().get(0));
        }
    }

    public final FrameLayout A0W() {
        this.A0c.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        if (this.A0i.getResources().getConfiguration().orientation == 2) {
            this.A01 = this.A07;
        }
        View view = new View(this.A0i);
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        view.setBackgroundColor(Color.parseColor(A0H(0, 7, 24)));
        this.A0c.addView(view);
        final LinearLayout linearLayoutA05 = A05();
        this.A0P = A0C();
        if (C2863mv.A1C(this.A0i)) {
            this.A0P.setOnClickListener(new ViewOnClickListenerC2527hO(this));
        }
        A0P(this.A0P);
        this.A0O = A06();
        this.A0W = A0G(this.A0O);
        this.A0P.addView(this.A0W);
        this.A0R = A0E(this.A0P, this.A0W);
        this.A0Q = A0D(this.A0P, this.A0R);
        if (this.A0O != null) {
            this.A0O.setLayoutParams(A0A(this.A0Q != null ? this.A0Q : this.A0R));
            this.A0P.addView(this.A0O);
        }
        A0J();
        linearLayoutA05.addView(this.A0P);
        if (this.A0d.A3R()) {
            View view2 = new View(this.A0i);
            view2.setOnClickListener(new ViewOnClickListenerC2526hN(this));
            if (this.A0i.getResources().getConfiguration().orientation == 2) {
                view2.setLayoutParams(new FrameLayout.LayoutParams(-1, this.A0L, 48));
            } else {
                view2.setLayoutParams(new FrameLayout.LayoutParams(-1, this.A0K, 48));
            }
            this.A0c.addView(view2);
        }
        A0I();
        this.A0c.addView(linearLayoutA05);
        A0V(new InterfaceC2523hK() { // from class: com.facebook.ads.redexgen.X.Bx
            @Override // com.facebook.ads.redexgen.X.InterfaceC2523hK
            public final void AFC() {
                this.A01.A0d(linearLayoutA05);
            }
        });
        if (this.A0j != null) {
            AbstractC2894nQ.A04(this.A0c, this.A0j, EnumC2891nN.A0S);
        }
        return this.A0c;
    }

    public final FrameLayout A0X() {
        return this.A0c;
    }

    public final void A0Y() {
        if (this.A0T != null) {
            this.A0T.A0O();
        }
        if (this.A0U != null) {
            this.A0U.A0P();
        }
        if (this.A0X != null) {
            this.A0X.A0H();
        }
    }

    public final void A0a(int i) {
        if (this.A0m.get()) {
            return;
        }
        C1475Bu c1475Bu = (C1475Bu) this.A0S.getAdapter();
        if (c1475Bu == null) {
            this.A0i.A08().ABz(A0H(16, 11, 85), AbstractC2786lf.A0A, new C2787lg(A0H(72, 42, 27)));
        }
        if (this.A0l != null) {
            A09(this.A0O, this.A0Q != null ? this.A0Q : this.A0R);
        }
        if (i == 2) {
            this.A01 = this.A07;
            this.A00 = 0;
            if (c1475Bu != null) {
                c1475Bu.A0Q(2);
            }
            if (this.A0d.A3F()) {
                this.A02 = -this.A08;
            }
        } else {
            this.A02 = 0;
            this.A01 = this.A06;
            if (this.A0Y) {
                this.A00 = this.A05;
                if (this.A0d.A3F()) {
                    this.A00 = this.A05 - this.A0F;
                }
            }
            if (c1475Bu != null) {
                c1475Bu.A0Q(4);
            }
        }
        this.A0S.setLayoutParams(A01());
        this.A0P.setLayoutParams(A04());
        this.A0W.setLayoutParams(A08(this.A0O));
        this.A0R.setLayoutParams(A0B(this.A0W));
        if (this.A0O != null) {
            LinearLayout linearLayout = this.A0O;
            String[] strArr = A0o;
            if (strArr[5].length() != strArr[2].length()) {
                throw new RuntimeException();
            }
            A0o[7] = "QjH4Dyqapqc4xU";
            linearLayout.setLayoutParams(A0A(this.A0Q != null ? this.A0Q : this.A0R));
        }
        if (this.A0l != null) {
            this.A0l.setLayoutParams(A09(this.A0O, this.A0Q != null ? this.A0Q : this.A0R));
        }
        this.A0M.setLayoutParams(A02());
    }

    public final /* synthetic */ void A0b(View view) {
        if (this.A0l != null) {
            EnumC2358ec enumC2358ecA0E = this.A0l.A0E(A0H(114, 4, 35));
            if (this.A0d.A3H() || enumC2358ecA0E == EnumC2358ec.A08 || enumC2358ecA0E == EnumC2358ec.A05) {
                return;
            }
            A0Z();
        }
    }

    public final /* synthetic */ void A0c(ImageView imageView, InterfaceC2523hK interfaceC2523hK, C3276tg c3276tg) {
        Drawable drawable = imageView.getDrawable();
        if (drawable != null && drawable.getIntrinsicWidth() > drawable.getIntrinsicHeight()) {
            this.A0Y = true;
            C1618Hi c1618Hi = this.A0i;
            String[] strArr = A0o;
            if (strArr[6].charAt(26) != strArr[3].charAt(26)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0o;
            strArr2[1] = "7Dev1L4";
            strArr2[0] = "dGLpy909iskfnmZlIK3PmV3hZ0";
            if (c1618Hi.getResources().getConfiguration().orientation == 2) {
                this.A00 = 0;
            } else {
                this.A00 = this.A05;
                if (this.A0d.A3F()) {
                    this.A00 = this.A05 - this.A0F;
                }
            }
        }
        interfaceC2523hK.AFC();
    }

    public final /* synthetic */ void A0d(LinearLayout linearLayout) {
        A0U(this.A0l);
        AbstractC3086qc.A0K(this.A0S);
        this.A0c.addView(this.A0S);
        linearLayout.bringToFront();
        this.A0M.bringToFront();
    }

    public final void A0e(boolean z) {
        if (!z && this.A0T != null) {
            this.A0T.A0P();
        }
        if (this.A0U != null) {
            this.A0U.A0P();
        }
        if (this.A0X != null) {
            this.A0X.A0J(z);
        }
    }

    public final void A0f(boolean z) {
        this.A0Z = z;
    }

    public final /* synthetic */ void A0g(boolean z, View view) {
        if (z) {
            A0L();
        } else {
            this.A0i.A0F().ABl();
            this.A0k.A5C(A0H(27, 45, 29));
        }
    }

    public final boolean A0h() {
        return this.A0M != null && this.A0M.getVisibility() == 0;
    }
}
