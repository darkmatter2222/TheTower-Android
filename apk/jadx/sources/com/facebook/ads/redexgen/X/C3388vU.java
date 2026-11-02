package com.facebook.ads.redexgen.X;

import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import java.util.Arrays;
import java.util.List;
import p005kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vU, reason: case insensitive filesystem */
/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    java.lang.IllegalArgumentException: Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read.
    	at kotlin.metadata.jvm.internal.JvmReadUtils.checkMetadataVersionForRead(JvmReadUtils.kt:79)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:46)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:68)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:31)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
@Metadata
public final class C3388vU {
    public static byte[] A0C;
    public static String[] A0D = {"j7QbJr5AIpIYO828wBTwpNsJEGDPP7q8", "tMzteZEfNFgBXyt7u8cronhNe4LC", "Zw6ipv3ALRtOoDrQ6Wdd", "KSNF1VtFdJkV4ApfmieoyehlzbGy2aYh", "", "YqSlfwJ5NLUvvLTrXrvFKS11MaPht1uN", "nnH2BntsxoVjTLTvZPeZ", "YmyUjId47jvF0zwXhqCNcmZjoUI1pU1X"};
    public static final C3381vN A0E;
    public int A00;
    public int A01;
    public RelativeLayout A02;
    public ViewOnClickListenerC1544El A03;
    public final Handler A04;
    public final View A05;
    public final LA A06;
    public final C2402fL A07;
    public final C1618Hi A08;
    public final C2892nO A09;
    public final InterfaceC3119r9 A0A;
    public final C3389vV A0B;

    static {
        A0A();
        A0E = new C3381vN(null);
    }

    public C3388vU(C1618Hi c1618Hi, LA la, C2892nO c2892nO, Handler handler, InterfaceC3119r9 interfaceC3119r9, View view) {
        C1h.A09(c1618Hi, A09(49, 8, 4));
        C1h.A09(la, A09(21, 10, 56));
        C1h.A09(handler, A09(57, 8, 80));
        C1h.A09(interfaceC3119r9, A09(65, 9, 84));
        this.A08 = c1618Hi;
        this.A09 = c2892nO;
        this.A04 = handler;
        this.A0A = interfaceC3119r9;
        this.A05 = view;
        C2402fL c2402fLA0J = la.A32().A0J();
        C1h.A08(c2402fLA0J, A09(31, 18, 122));
        this.A07 = c2402fLA0J;
        this.A06 = la;
        this.A00 = this.A08.getResources().getConfiguration().orientation;
        this.A0B = new C3389vV(this.A08, la, this.A09, this.A0A);
    }

    private final LinearLayout A02() {
        LinearLayout linearLayout = new LinearLayout(this.A08);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(17);
        linearLayout.setAlpha(0.5f);
        C3311uF c3311uF = new C3311uF(this.A08, -1, -1, EnumC3097qn.GOOGLE_PLAY_STORE);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(AbstractC3043pv.A06, AbstractC3043pv.A06);
        layoutParams.rightMargin = AbstractC3043pv.A0w;
        c3311uF.setLayoutParams(layoutParams);
        linearLayout.addView(c3311uF);
        TextView textView = new TextView(this.A08);
        textView.setText(this.A07.A08());
        textView.setTextSize(14.0f);
        textView.setLineSpacing((AbstractC3045px.A02 * 18.0f) - (AbstractC3045px.A02 * 14.0f), 1.0f);
        textView.setTextColor(-1);
        linearLayout.addView(textView);
        return linearLayout;
    }

    private final LinearLayout A03() {
        LinearLayout linearLayout = new LinearLayout(this.A08);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        C3321uP c3321uP = new C3321uP(this.A08);
        AbstractC3086qc.A0O(c3321uP, 0);
        c3321uP.setRadius(20);
        int i = (int) (70 * AbstractC3045px.A02);
        c3321uP.setLayoutParams(new LinearLayout.LayoutParams(i, i));
        AbstractC3086qc.A0L(c3321uP);
        AsyncTaskC1552Et asyncTaskC1552EtA04 = new AsyncTaskC1552Et(c3321uP, this.A08).A04();
        C1h.A08(asyncTaskC1552EtA04, A09(74, 21, 1));
        asyncTaskC1552EtA04.A07(this.A06.A35().A01());
        linearLayout.addView(c3321uP);
        LinearLayout linearLayout2 = new LinearLayout(this.A08);
        linearLayout2.setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
        layoutParams.setMargins(AbstractC3043pv.A0y, 0, 0, 0);
        linearLayout2.setLayoutParams(layoutParams);
        TextView textView = new TextView(this.A08);
        textView.setText(this.A07.A0H());
        textView.setTextSize(16.0f);
        textView.setLineSpacing((AbstractC3045px.A02 * 20.0f) - (AbstractC3045px.A02 * 16.0f), 1.0f);
        textView.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        textView.setTypeface(textView.getTypeface(), 1);
        textView.setMaxLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        linearLayout2.addView(textView);
        TextView textView2 = new TextView(this.A08);
        textView2.setText(this.A07.A0G());
        textView2.setTextSize(14.0f);
        textView2.setLineSpacing((AbstractC3045px.A02 * 18.0f) - (AbstractC3045px.A02 * 14.0f), 1.0f);
        textView2.setTextColor(Color.parseColor(A09(7, 7, 86)));
        textView2.setMaxLines(1);
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        linearLayout2.addView(textView2);
        linearLayout.addView(linearLayout2);
        return linearLayout;
    }

    private final LinearLayout A04(ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        LinearLayout linearLayout = new LinearLayout(this.A08);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AbstractC3043pv.A0e, AbstractC3043pv.A0h, AbstractC3043pv.A0e, AbstractC3043pv.A0h);
        linearLayout.setClickable(true);
        linearLayout.setOnClickListener(new ViewOnClickListenerC3386vS(viewOnClickListenerC1544El));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(AbstractC3045px.A02 * 20.0f);
        linearLayout.setBackground(gradientDrawable);
        linearLayout.addView(A03(), new LinearLayout.LayoutParams(-1, -2));
        List<C2937o9> listA02 = this.A06.A32().A0L().A02();
        C1h.A06(listA02);
        if (true ^ listA02.isEmpty()) {
            LinearLayout linearLayoutA08 = A08(listA02);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, AbstractC3043pv.A0L);
            layoutParams.setMargins(0, AbstractC3043pv.A0e, 0, 0);
            linearLayout.addView(linearLayoutA08, layoutParams);
        }
        return linearLayout;
    }

    private final LinearLayout A05(ViewOnClickListenerC1544El viewOnClickListenerC1544El, EnumC3382vO enumC3382vO, int i, C3321uP c3321uP, C3321uP c3321uP2) {
        LinearLayout linearLayout = new LinearLayout(this.A08);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AbstractC3043pv.A0e, AbstractC3043pv.A0h, AbstractC3043pv.A0e, AbstractC3043pv.A0h);
        linearLayout.setClickable(true);
        linearLayout.setOnClickListener(new ViewOnClickListenerC3387vT(viewOnClickListenerC1544El));
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(AbstractC3045px.A02 * 20.0f);
        linearLayout.setBackground(gradientDrawable);
        linearLayout.addView(A03(), new LinearLayout.LayoutParams(-1, -2));
        List<C2937o9> listA02 = this.A06.A32().A0L().A02();
        C1h.A06(listA02);
        if (true ^ listA02.isEmpty()) {
            LinearLayout linearLayoutA08 = A08(listA02);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, AbstractC3043pv.A0L);
            layoutParams.setMargins(0, AbstractC3043pv.A0e, 0, 0);
            linearLayout.addView(linearLayoutA08, layoutParams);
        }
        LinearLayout linearLayoutA06 = A06(enumC3382vO, i, c3321uP, c3321uP2);
        if (linearLayoutA06 != null) {
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams2.setMargins(0, AbstractC3043pv.A0e, 0, 0);
            linearLayout.addView(linearLayoutA06, layoutParams2);
        }
        return linearLayout;
    }

    private final LinearLayout A06(EnumC3382vO enumC3382vO, int i, C3321uP c3321uP, C3321uP c3321uP2) {
        if (enumC3382vO == EnumC3382vO.A05) {
            return null;
        }
        LinearLayout linearLayout = new LinearLayout(this.A08);
        int i2 = i - (AbstractC3043pv.A0e * 2);
        switch (C3383vP.A00[enumC3382vO.ordinal()]) {
            case 1:
                linearLayout.setOrientation(0);
                c3321uP.setRadius(20);
                c3321uP2.setRadius(20);
                int i3 = (int) (((i2 - AbstractC3043pv.A0y) / 2) / 0.45801526f);
                c3321uP.setLayoutParams(new LinearLayout.LayoutParams(0, i3, 1.0f));
                linearLayout.addView(c3321uP);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, i3, 1.0f);
                layoutParams.setMargins(AbstractC3043pv.A0y, 0, 0, 0);
                c3321uP2.setLayoutParams(layoutParams);
                linearLayout.addView(c3321uP2);
                return linearLayout;
            case 2:
                linearLayout.setOrientation(1);
                c3321uP.setRadius(16);
                c3321uP2.setRadius(16);
                int i4 = (int) (i2 / 2.1023622f);
                c3321uP.setLayoutParams(new LinearLayout.LayoutParams(-1, i4));
                linearLayout.addView(c3321uP);
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, i4);
                layoutParams2.setMargins(0, AbstractC3043pv.A0y, 0, 0);
                c3321uP2.setLayoutParams(layoutParams2);
                linearLayout.addView(c3321uP2);
                return linearLayout;
            case 3:
                return null;
            default:
                throw new AnonymousClass28();
        }
    }

    private final LinearLayout A07(C2937o9 c2937o9) {
        LinearLayout linearLayout = new LinearLayout(this.A08);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        LinearLayout linearLayout2 = new LinearLayout(this.A08);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(16);
        TextView textView = new TextView(this.A08);
        textView.setText(c2937o9.A04());
        textView.setTextSize(16.0f);
        textView.setLineSpacing((AbstractC3045px.A02 * 20.0f) - (AbstractC3045px.A02 * 16.0f), 1.0f);
        textView.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        textView.setGravity(17);
        textView.setMaxLines(1);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        linearLayout2.addView(textView);
        String strA02 = c2937o9.A02();
        if (strA02 != null) {
            if (strA02.length() > 0) {
                ImageView imageView = new ImageView(this.A08);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(AbstractC3043pv.A06, AbstractC3043pv.A06);
                layoutParams.setMargins(AbstractC3043pv.A0r, 0, 0, 0);
                layoutParams.gravity = 16;
                imageView.setLayoutParams(layoutParams);
                imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                AsyncTaskC1552Et asyncTaskC1552EtA04 = new AsyncTaskC1552Et(imageView, this.A08).A04();
                C1h.A08(asyncTaskC1552EtA04, A09(74, 21, 1));
                asyncTaskC1552EtA04.A07(strA02);
                linearLayout2.addView(imageView);
            }
        }
        linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(-2, -2));
        TextView textView2 = new TextView(this.A08);
        textView2.setText(c2937o9.A03());
        textView2.setTextSize(14.0f);
        textView2.setLineSpacing((AbstractC3045px.A02 * 18.0f) - (AbstractC3045px.A02 * 14.0f), 1.0f);
        textView2.setTextColor(Color.parseColor(A09(14, 7, 115)));
        textView2.setGravity(17);
        textView2.setMaxLines(1);
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        linearLayout.addView(textView2);
        return linearLayout;
    }

    private final LinearLayout A08(List<C2937o9> list) {
        LinearLayout linearLayout = new LinearLayout(this.A08);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        int iMin = Math.min(list.size(), 3);
        if (iMin < 3) {
            linearLayout.setPadding(AbstractC3043pv.A0L, 0, AbstractC3043pv.A0L, 0);
        }
        for (int i = 0; i < iMin; i++) {
            LinearLayout linearLayoutA07 = A07(list.get(i));
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2, 1.0f);
            if (i > 0) {
                layoutParams.setMargins(AbstractC3043pv.A0h, 0, 0, 0);
            }
            linearLayout.addView(linearLayoutA07, layoutParams);
        }
        return linearLayout;
    }

    public static String A09(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 1);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0A() {
        A0C = new byte[]{-128, -114, -111, -108, -110, -93, -113, 122, -115, -103, -114, -121, -114, -112, -105, -85, -89, -85, -89, -85, -89, -99, -102, -83, -102, 123, -82, -89, -99, -91, -98, -30, -32, -17, -68, -33, -56, -32, -17, -36, -33, -36, -17, -36, -93, -87, -87, -87, -92, 114, 72, 116, 115, 121, 106, 125, 121, -66, -103, -78, -65, -75, -67, -74, -61, -62, -95, -66, -56, -55, -70, -61, -70, -57, 112, 113, 75, 111, 99, 105, 103, 85, 107, 124, 103, 77, 112, 113, 121, 112, 42, 48, 48, 48, 43};
    }

    private final void A0B(LinearLayout linearLayout) {
        LinearLayout linearLayoutA02 = A02();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 1;
        layoutParams.setMargins(0, AbstractC3043pv.A0y, 0, 0);
        linearLayout.addView(linearLayoutA02, layoutParams);
    }

    private final void A0C(RelativeLayout relativeLayout) {
        String strA08 = this.A06.A32().A0I().A08();
        String str = strA08;
        if (!(str == null || str.length() == 0)) {
            AbstractC3328uW.A01(this.A08, relativeLayout, strA08, Color.argb(179, 12, 16, 20));
        }
        int iMin = Math.min(AbstractC3045px.A04.heightPixels, AbstractC3045px.A04.widthPixels) - (AbstractC3043pv.A0m * 2);
        ViewOnClickListenerC1544El viewOnClickListenerC1544El = this.A03;
        List<String> listA03 = this.A06.A32().A0L().A03();
        if (this.A00 == 2 || listA03.size() < 2) {
            A0E(relativeLayout, iMin, viewOnClickListenerC1544El);
        } else {
            C1h.A06(listA03);
            A0H(relativeLayout, iMin, listA03, viewOnClickListenerC1544El);
        }
        relativeLayout.post(new RunnableC3385vR(this));
    }

    private final void A0D(RelativeLayout relativeLayout, int i, ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        LinearLayout linearLayout = new LinearLayout(this.A08);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, -2);
        layoutParams.addRule(13);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.addView(A04(viewOnClickListenerC1544El), new LinearLayout.LayoutParams(-1, -2));
        if (viewOnClickListenerC1544El != null) {
            A0I(viewOnClickListenerC1544El);
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams2.setMargins(0, AbstractC3043pv.A0y, 0, 0);
            linearLayout.addView(viewOnClickListenerC1544El, layoutParams2);
        }
        A0B(linearLayout);
        relativeLayout.addView(linearLayout);
        this.A0B.A06(relativeLayout, AbstractC3043pv.A0L);
    }

    private final void A0E(RelativeLayout relativeLayout, int i, ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        if (this.A00 == 1) {
            A0F(relativeLayout, i, viewOnClickListenerC1544El);
        } else {
            A0D(relativeLayout, i, viewOnClickListenerC1544El);
        }
        if (C2863mv.A1C(this.A08)) {
            relativeLayout.setClickable(true);
            relativeLayout.setOnClickListener(new ViewOnClickListenerC3384vQ(viewOnClickListenerC1544El));
        }
    }

    private final void A0F(RelativeLayout relativeLayout, int i, ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        int i2 = AbstractC3043pv.A0L;
        LinearLayout linearLayout = new LinearLayout(this.A08);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(13);
        linearLayout.setLayoutParams(layoutParams);
        LinearLayout linearLayoutA04 = A04(viewOnClickListenerC1544El);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.setMargins(i2, 0, i2, 0);
        linearLayout.addView(linearLayoutA04, layoutParams2);
        if (viewOnClickListenerC1544El != null) {
            A0I(viewOnClickListenerC1544El);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams3.setMargins(i2, AbstractC3043pv.A0y, i2, 0);
            linearLayout.addView(viewOnClickListenerC1544El, layoutParams3);
        }
        A0B(linearLayout);
        relativeLayout.addView(linearLayout);
        this.A0B.A06(relativeLayout, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void A0G(RelativeLayout relativeLayout, int i, ViewOnClickListenerC1544El viewOnClickListenerC1544El, EnumC3382vO enumC3382vO, C3321uP c3321uP, C3321uP c3321uP2) {
        AbstractC3086qc.A0K(c3321uP);
        AbstractC3086qc.A0K(c3321uP2);
        LinearLayout linearLayout = new LinearLayout(this.A08);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(1);
        int i2 = (int) (AbstractC3045px.A04.heightPixels * 0.18f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, -2);
        layoutParams.addRule(14);
        layoutParams.setMargins(AbstractC3043pv.A0m, i2, AbstractC3043pv.A0m, 0);
        linearLayout.setLayoutParams(layoutParams);
        AbstractC3086qc.A0L(linearLayout);
        linearLayout.addView(A05(viewOnClickListenerC1544El, enumC3382vO, i, c3321uP, c3321uP2), new LinearLayout.LayoutParams(-1, -2));
        relativeLayout.addView(linearLayout);
        int iA06 = this.A0B.A06(relativeLayout, AbstractC3043pv.A0L);
        LinearLayout linearLayoutA02 = A02();
        int iGenerateViewId = View.generateViewId();
        linearLayoutA02.setId(iGenerateViewId);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(2, iA06);
        layoutParams2.addRule(14);
        layoutParams2.setMargins(0, 0, 0, AbstractC3043pv.A0e);
        relativeLayout.addView(linearLayoutA02, layoutParams2);
        if (viewOnClickListenerC1544El != null) {
            A0I(viewOnClickListenerC1544El);
            int i3 = AbstractC3043pv.A0L;
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams3.addRule(2, iGenerateViewId);
            layoutParams3.setMargins(i3, 0, i3, AbstractC3043pv.A0y);
            relativeLayout.addView(viewOnClickListenerC1544El, layoutParams3);
        }
    }

    private final void A0H(RelativeLayout relativeLayout, int i, List<String> list, ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        int i2 = this.A01;
        C1g c1g = new C1g();
        C3321uP c3321uP = new C3321uP(this.A08);
        C3321uP c3321uP2 = new C3321uP(this.A08);
        c3321uP.setScaleType(ImageView.ScaleType.CENTER_CROP);
        c3321uP2.setScaleType(ImageView.ScaleType.CENTER_CROP);
        AsyncTaskC1552Et asyncTaskC1552EtA04 = new AsyncTaskC1552Et(c3321uP, this.A08).A04();
        String strA09 = A09(74, 21, 1);
        C1h.A08(asyncTaskC1552EtA04, strA09);
        asyncTaskC1552EtA04.A06(new EQ(this, i2, c1g, relativeLayout, i, viewOnClickListenerC1544El, c3321uP, c3321uP2));
        asyncTaskC1552EtA04.A07(list.get(0));
        AsyncTaskC1552Et asyncTaskC1552EtA05 = new AsyncTaskC1552Et(c3321uP2, this.A08).A04();
        C1h.A08(asyncTaskC1552EtA05, strA09);
        asyncTaskC1552EtA05.A07(list.get(1));
    }

    private final void A0I(ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        AbstractC3086qc.A0H(1001, viewOnClickListenerC1544El);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor(A09(0, 7, 92)));
        gradientDrawable.setCornerRadius(AbstractC3045px.A02 * 12.0f);
        viewOnClickListenerC1544El.setBackground(gradientDrawable);
        viewOnClickListenerC1544El.setPadding(AbstractC3043pv.A0h, AbstractC3043pv.A08, AbstractC3043pv.A0h, AbstractC3043pv.A08);
        viewOnClickListenerC1544El.setTextColor(-1);
        viewOnClickListenerC1544El.setTextSize(16.0f);
        viewOnClickListenerC1544El.setTypeface(viewOnClickListenerC1544El.getTypeface(), 1);
        viewOnClickListenerC1544El.setGravity(17);
        viewOnClickListenerC1544El.A0D();
        viewOnClickListenerC1544El.setIncludeFontPadding(false);
        viewOnClickListenerC1544El.setId(View.generateViewId());
        ViewParent parent = viewOnClickListenerC1544El.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(viewOnClickListenerC1544El);
        }
    }

    /* JADX WARN: Code duplicated, block: B:10:0x003b  */
    public final View A0K(ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        if (viewOnClickListenerC1544El != null) {
            if (A0D[5].charAt(1) == 'd') {
                throw new RuntimeException();
            }
            String[] strArr = A0D;
            strArr[0] = "bt7zPrm6aysAIXkK75GpzNM8OGuneizb";
            strArr[3] = "ZWHAdAGEEYIkYqk7lIuZoptbUScULLuf";
            viewOnClickListenerC1544El.setV2Design(true);
        }
        this.A03 = viewOnClickListenerC1544El;
        ViewOnClickListenerC1544El viewOnClickListenerC1544El2 = this.A03;
        if (A0D[5].charAt(1) != 'd') {
            A0D[5] = "dphCyl6lvmiE6rHXEjdEcCOKobFQnCQ3";
            if (viewOnClickListenerC1544El2 != null) {
                viewOnClickListenerC1544El2.A0G(this.A06.A32().A0K());
            }
        } else {
            A0D[7] = "4yJGmhO1yM92igHwi10nWPZb1JyCMFYP";
            if (viewOnClickListenerC1544El2 != null) {
                viewOnClickListenerC1544El2.A0G(this.A06.A32().A0K());
            }
        }
        RelativeLayout relativeLayout = new RelativeLayout(this.A08);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.A02 = relativeLayout;
        this.A00 = this.A08.getResources().getConfiguration().orientation;
        A0C(relativeLayout);
        return relativeLayout;
    }

    public final void A0L() {
        this.A0B.A07();
    }

    public final void A0M(int i) {
        RelativeLayout relativeLayout = this.A02;
        if (relativeLayout == null) {
            return;
        }
        relativeLayout.removeAllViews();
        this.A00 = i;
        this.A01++;
        A0C(relativeLayout);
    }

    public final void A0N(boolean z) {
        this.A0B.A08(z);
    }
}
