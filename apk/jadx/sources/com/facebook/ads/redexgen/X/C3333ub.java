package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.google.common.base.Ascii;
import java.util.Arrays;
import p005kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ub, reason: case insensitive filesystem */
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
public final class C3333ub {
    public static byte[] A0A;
    public static String[] A0B = {"blwIylcv5yfckK", "U7OkuDjWJ6h5", "Pq0LfiZvTKka", "TsaZXiNy3Uy1tlOTMDRsn7BeKmVz8Z9D", "1TPm9g0LuevT5E3CUFkROu0mNHLpFmVN", "uPTZiym1KUhMoU", "xTm2DhSXMGS7yGrMxxmHwS3wrfNVZ6SN", "EVKSL15x3uh2Wvv62pknEuNynGoOBI"};
    public static final C3330uY A0C;
    public FrameLayout A00;
    public C3226ss A01;
    public C3226ss A02;
    public ViewOnClickListenerC1544El A03;
    public final LA A04;
    public final C2391fA A05;
    public final C2402fL A06;
    public final C1618Hi A07;
    public final C2892nO A08;
    public final InterfaceC3119r9 A09;

    static {
        A05();
        A0C = new C3330uY(null);
    }

    public C3333ub(C1618Hi c1618Hi, LA la, C2892nO c2892nO, Handler handler, InterfaceC3119r9 interfaceC3119r9) {
        C1h.A09(c1618Hi, A04(156, 8, 55));
        C1h.A09(la, A04(75, 10, 31));
        C1h.A09(handler, A04(149, 7, 59));
        C1h.A09(interfaceC3119r9, A04(164, 9, 117));
        this.A07 = c1618Hi;
        this.A08 = c2892nO;
        this.A09 = interfaceC3119r9;
        C2402fL c2402fLA0J = la.A32().A0J();
        C1h.A08(c2402fLA0J, A04(101, 18, 7));
        this.A06 = c2402fLA0J;
        C2391fA c2391fAA31 = la.A31();
        C1h.A08(c2391fAA31, A04(85, 16, 35));
        this.A05 = c2391fAA31;
        this.A04 = la;
    }

    private final View A00(ViewOnClickListenerC1544El viewOnClickListenerC1544El, ImageView imageView) {
        this.A03 = viewOnClickListenerC1544El;
        ViewOnClickListenerC1544El viewOnClickListenerC1544El2 = this.A03;
        if (viewOnClickListenerC1544El2 != null) {
            viewOnClickListenerC1544El2.A0G(this.A04.A32().A0K());
        }
        FrameLayout frameLayout = new FrameLayout(this.A07);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.A00 = frameLayout;
        A09(frameLayout);
        return frameLayout;
    }

    private final C3321uP A03() {
        C3321uP c3321uP = new C3321uP(this.A07);
        AbstractC3086qc.A0O(c3321uP, 0);
        c3321uP.setRadius(15);
        c3321uP.setLayoutParams(new RelativeLayout.LayoutParams(AbstractC3043pv.A04, AbstractC3043pv.A04));
        AbstractC3086qc.A0L(c3321uP);
        AsyncTaskC1552Et asyncTaskC1552EtA04 = new AsyncTaskC1552Et(c3321uP, this.A07).A04();
        C1h.A08(asyncTaskC1552EtA04, A04(173, 21, 15));
        asyncTaskC1552EtA04.A07(this.A04.A35().A01());
        return c3321uP;
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 118);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        String[] strArr = A0B;
        if (strArr[5].length() == strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0B;
        strArr2[6] = "Z5Yxk6v3AVjMgPtBPOtkwXAg0cctCwf1";
        strArr2[3] = "4FOdLlK5WvVEcclsuRgU9xrQFj9B5RFL";
        A0A = new byte[]{-78, -57, -65, -65, -65, -65, -65, -65, -65, 78, 93, 80, 76, 95, 80, 49, 96, 87, 87, 62, 78, 93, 80, 80, 89, 44, 79, 46, 93, 80, 79, 84, 95, 55, 84, 89, 80, 62, 95, 76, 95, 84, 78, 65, 84, 80, 98, 19, Ascii.EM, Ascii.EM, Ascii.EM, Ascii.DC4, Ascii.GS, 44, Ascii.US, Ascii.ESC, 46, Ascii.US, Ascii.CR, Ascii.GS, Ascii.ESC, 38, Ascii.US, Ascii.RS, -4, 35, 46, 39, Ascii.ESC, 42, -30, -24, -24, -24, -29, -7, -10, 9, -10, -41, 10, 3, -7, 1, -6, 0, -2, Ascii.CR, -38, -3, -36, 8, 5, 8, Ascii.VT, Ascii.FF, -63, -57, -57, -57, -62, -28, -30, -15, -66, -31, -54, -30, -15, -34, -31, -34, -15, -34, -91, -85, -85, -85, -90, 49, 47, 62, Ascii.FF, 51, 62, 55, 43, 58, Ascii.DLE, 60, 57, 55, Ascii.SI, 56, 45, 57, 46, 47, 46, 19, 55, 43, 49, 47, -14, -8, -8, -8, -13, Ascii.EM, Ascii.DC2, Ascii.US, Ascii.NAK, Ascii.GS, Ascii.SYN, 35, Ascii.SUB, -16, Ascii.FS, Ascii.ESC, 33, Ascii.DC2, 37, 33, 88, 55, 84, 94, 95, 80, 89, 80, 93, -13, -12, -50, -14, -26, -20, -22, -40, -18, -1, -22, -48, -13, -12, -4, -13, -83, -77, -77, -77, -82};
    }

    private final void A06(FrameLayout frameLayout) {
        FrameLayout frameLayout2 = new FrameLayout(this.A07);
        this.A01 = AbstractC3231sx.A01(this.A07, false, this.A04, this.A08, this.A09, EnumC3229sv.A02, AbstractC3228su.A00(this.A04));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 8388693);
        layoutParams.setMargins(0, 0, AbstractC3043pv.A0n, AbstractC3043pv.A0e);
        frameLayout2.addView(this.A01, layoutParams);
        frameLayout.addView(frameLayout2);
    }

    private final void A07(FrameLayout frameLayout) {
        FrameLayout frameLayout2 = new FrameLayout(this.A07);
        this.A02 = AbstractC3231sx.A01(this.A07, false, this.A04, this.A08, this.A09, EnumC3229sv.A02, EnumC3232sy.A04);
        AbstractC3086qc.A0L(this.A02);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 8388691);
        layoutParams.setMargins(AbstractC3043pv.A0h, 0, 0, AbstractC3043pv.A0e);
        frameLayout2.addView(this.A02, layoutParams);
        frameLayout.addView(frameLayout2);
    }

    private final void A08(FrameLayout frameLayout) {
        FrameLayout frameLayout2 = new FrameLayout(this.A07);
        C3230sw c3230swA02 = AbstractC3231sx.A02(this.A07, EnumC3229sv.A02, this.A04);
        C1h.A08(c3230swA02, A04(9, 43, 117));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 8388691);
        layoutParams.setMargins(AbstractC3043pv.A0n, 0, 0, AbstractC3043pv.A0e);
        frameLayout2.addView(c3230swA02, layoutParams);
        frameLayout.addView(frameLayout2);
    }

    private final void A09(FrameLayout frameLayout) {
        String strA08 = this.A04.A32().A0I().A08();
        String str = strA08;
        if (!(str == null || str.length() == 0)) {
            AbstractC3328uW.A01(this.A07, frameLayout, strA08, Color.argb(179, 12, 16, 20));
        }
        ViewOnClickListenerC1544El viewOnClickListenerC1544El = this.A03;
        C3327uV c3327uV = new C3327uV(this.A07, this.A05.A01(), true, false, false);
        c3327uV.A04(this.A06.A0G(), this.A06.A0H(), null, false, false);
        c3327uV.setAlignment(17);
        c3327uV.setTitleTextSize(30);
        c3327uV.setDescriptionTextSize(15);
        c3327uV.A02();
        c3327uV.setPadding(AbstractC3043pv.A0s, 0, AbstractC3043pv.A0s, 0);
        AbstractC3086qc.A0H(1111, c3327uV);
        LinearLayout linearLayout = new LinearLayout(this.A07);
        linearLayout.setClickable(true);
        if (C2863mv.A1C(this.A07)) {
            linearLayout.setOnClickListener(new ViewOnClickListenerC3332ua(viewOnClickListenerC1544El));
        }
        linearLayout.setPadding(0, -AbstractC3043pv.A0h, 0, 0);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        C3321uP c3321uPA03 = A03();
        if (c3321uPA03 != null) {
            ViewParent parent = c3321uPA03.getParent();
            boolean z = parent instanceof ViewGroup;
            String[] strArr = A0B;
            if (strArr[1].length() != strArr[2].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0B;
            strArr2[1] = "CDUDK4hY6kxc";
            strArr2[2] = "u9r89zf0CVYR";
            ViewGroup viewGroup = z ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(c3321uPA03);
            }
            linearLayout.addView(c3321uPA03);
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, AbstractC3043pv.A0e, 0, AbstractC3043pv.A0y);
        linearLayout.addView(c3327uV, layoutParams);
        if (viewOnClickListenerC1544El != null) {
            A0C(viewOnClickListenerC1544El);
            ViewParent parent2 = viewOnClickListenerC1544El.getParent();
            ViewGroup viewGroup2 = parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null;
            if (viewGroup2 != null) {
                viewGroup2.removeView(viewOnClickListenerC1544El);
            }
            linearLayout.addView(viewOnClickListenerC1544El, layoutParams);
            if (TextUtils.isEmpty(viewOnClickListenerC1544El.getText())) {
                AbstractC3086qc.A0I(viewOnClickListenerC1544El);
            }
        }
        A0B(linearLayout);
        linearLayout.setAlpha(1.0f);
        frameLayout.addView(linearLayout);
        A0A(frameLayout, viewOnClickListenerC1544El);
        if (this.A04.A3F()) {
            A06(frameLayout);
        }
        if (this.A04.A3U()) {
            A08(frameLayout);
        } else if (this.A04.A3T()) {
            A07(frameLayout);
        }
    }

    private final void A0A(FrameLayout frameLayout, ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        FrameLayout frameLayout2 = new FrameLayout(this.A07);
        frameLayout2.setPadding(0, AbstractC3043pv.A0S, AbstractC3043pv.A0c, AbstractC3043pv.A0c);
        Bitmap bitmapA01 = AbstractC3098qo.A01(EnumC3097qn.NAV_CROSS);
        C1h.A08(bitmapA01, A04(119, 30, 84));
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapA01, AbstractC3043pv.A0e, AbstractC3043pv.A0e, true);
        C1h.A08(bitmapCreateScaledBitmap, A04(52, 23, 68));
        ImageView imageView = new ImageView(this.A07);
        AbstractC3086qc.A0H(1002, imageView);
        imageView.setImageBitmap(bitmapCreateScaledBitmap);
        imageView.setColorFilter(-1);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor(A04(0, 9, 25)));
        imageView.setBackground(gradientDrawable);
        imageView.setPadding(AbstractC3043pv.A0y, AbstractC3043pv.A0y, AbstractC3043pv.A0y, AbstractC3043pv.A0y);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(AbstractC3043pv.A0H, AbstractC3043pv.A0H, 8388661);
        layoutParams.setMargins(0, 0, 0, 0);
        imageView.setOnClickListener(new ViewOnClickListenerC3331uZ(this));
        frameLayout2.addView(imageView, layoutParams);
        imageView.setVisibility(8);
        frameLayout.addView(frameLayout2, new FrameLayout.LayoutParams(-1, -2, 48));
    }

    private final void A0B(LinearLayout linearLayout) {
        LinearLayout linearLayout2 = new LinearLayout(this.A07);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(17);
        linearLayout2.setAlpha(0.5f);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 1;
        layoutParams.setMargins(0, AbstractC3043pv.A0y, 0, 0);
        linearLayout2.setLayoutParams(layoutParams);
        C3311uF c3311uF = new C3311uF(this.A07, -1, -1, EnumC3097qn.GOOGLE_PLAY_STORE);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(AbstractC3043pv.A06, AbstractC3043pv.A06);
        layoutParams2.rightMargin = AbstractC3043pv.A0w;
        c3311uF.setLayoutParams(layoutParams2);
        linearLayout2.addView(c3311uF);
        TextView textView = new TextView(this.A07);
        textView.setText(this.A06.A08());
        textView.setTextSize(12.0f);
        textView.setTextColor(-1);
        linearLayout2.addView(textView);
        linearLayout.addView(linearLayout2);
    }

    private final void A0C(ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        viewOnClickListenerC1544El.setPadding(AbstractC3043pv.A0P, AbstractC3043pv.A06, AbstractC3043pv.A0P, AbstractC3043pv.A06);
        viewOnClickListenerC1544El.setTypeface(viewOnClickListenerC1544El.getTypeface(), 1);
        viewOnClickListenerC1544El.setTextSize(16.0f);
        viewOnClickListenerC1544El.A0D();
        viewOnClickListenerC1544El.setIncludeFontPadding(true);
        viewOnClickListenerC1544El.setLayoutParams(layoutParams);
        viewOnClickListenerC1544El.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        AbstractC3086qc.A0W(viewOnClickListenerC1544El, AbstractC3086qc.A06(-1, 32));
        viewOnClickListenerC1544El.setId(View.generateViewId());
        ViewParent parent = viewOnClickListenerC1544El.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(viewOnClickListenerC1544El);
        }
    }

    public final View A0D(ViewOnClickListenerC1544El viewOnClickListenerC1544El) {
        if (viewOnClickListenerC1544El != null) {
            viewOnClickListenerC1544El.setV2Design(true);
        }
        return A00(viewOnClickListenerC1544El, null);
    }

    public final void A0E() {
        C3226ss c3226ss = this.A01;
        if (c3226ss != null) {
            c3226ss.A0O();
        }
        C3226ss c3226ss2 = this.A02;
        if (c3226ss2 != null) {
            c3226ss2.A0O();
        }
    }

    public final void A0F(int i) {
        FrameLayout frameLayout = this.A00;
        if (frameLayout == null) {
            return;
        }
        C3226ss c3226ss = this.A01;
        if (c3226ss != null) {
            c3226ss.A0O();
        }
        this.A01 = null;
        C3226ss c3226ss2 = this.A02;
        if (c3226ss2 != null) {
            c3226ss2.A0O();
        }
        this.A02 = null;
        frameLayout.removeAllViews();
        A09(frameLayout);
    }

    public final void A0G(boolean z) {
        C3226ss c3226ss;
        if (!z && (c3226ss = this.A01) != null) {
            c3226ss.A0P();
        }
        C3226ss c3226ss2 = this.A02;
        String[] strArr = A0B;
        if (strArr[5].length() == strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0B;
        strArr2[1] = "hiD8huI3w5Io";
        strArr2[2] = "opvDXGdfqGeK";
        if (c3226ss2 != null) {
            c3226ss2.A0P();
        }
    }
}
