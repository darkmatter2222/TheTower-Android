package com.facebook.ads.redexgen.X;

import android.animation.ObjectAnimator;
import android.content.res.Configuration;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.nearby.uwb.RangingPosition;
import com.google.common.base.Ascii;
import com.unity3d.services.UnityAdsConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p005kotlin.Metadata;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.6J, reason: invalid class name */
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
public final class C6J extends AbstractC1521Do {
    public static byte[] A0G;
    public static String[] A0H = {"zmfuAAdsWF5bboPH5APszGSkwrNjJok6", "XWbaPXrYLQznu0OckW2LOvbDL", "QXci", "aOHe6V6F8txhFIQidr0w8G1x6Nk4S", "ILYwhJqVaKxFQVioYmyMVPi8Rkm1lJYl", "6wfNJcRbuFCQ3RCTyiXr4ELUGWK4PzYN", "e4OfDXnyY91mKzJJOGUPBsuKAufhMlyE", "zoXpKsaIUnAnpB2FhTxs94rKkMLjx"};
    public static final C1E A0I;
    public static final int A0J;
    public static final int A0K;
    public static final int A0L;
    public static final int A0M;
    public static final int A0N;
    public static final int A0O;
    public static final RelativeLayout.LayoutParams A0P;
    public ObjectAnimator A00;
    public LinearLayout A01;
    public TextView A02;
    public C3030pi A03;
    public C12843u A04;
    public C3226ss A05;
    public C3230sw A06;
    public C3320uO A07;
    public C1483Cc A08;
    public C1441Am A09;
    public List<? extends C2974ol> A0A;
    public final int A0B;
    public final C2746kz A0C;
    public final C2892nO A0D;
    public final AbstractC3112r2 A0E;
    public final InterfaceC3171rz A0F;

    static {
        A05();
        A0I = new C1E(null);
        A0P = new RelativeLayout.LayoutParams(-1, -1);
        float f = 8;
        A0N = (int) (AbstractC3045px.A02 * f);
        A0K = AbstractC3043pv.A0y;
        A0J = (int) (48 * AbstractC3045px.A02);
        A0L = (int) (f * AbstractC3045px.A02);
        A0O = (int) (56 * AbstractC3045px.A02);
        A0M = (int) (12 * AbstractC3045px.A02);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6J(C1618Hi c1618Hi, InterfaceC3175s3 interfaceC3175s3, int i, InterfaceC2884nG interfaceC2884nG, LA la, InterfaceC3119r9 interfaceC3119r9, AbstractC3112r2 abstractC3112r2, C2892nO c2892nO, C2746kz c2746kz, boolean z, boolean z2, InterfaceC3171rz interfaceC3171rz, int i2, int i3) {
        super(c1618Hi, interfaceC3175s3, interfaceC2884nG, la, i, z, z2, interfaceC3119r9, i3);
        C1h.A09(c1618Hi, A04(24, 16, 3));
        C1h.A09(interfaceC3175s3, A04(0, 10, 28));
        C1h.A09(interfaceC2884nG, A04(52, 14, kotlin.fh.h1));
        C1h.A09(la, A04(40, 12, 48));
        C1h.A09(interfaceC3119r9, A04(237, 8, kotlin.fh.h1));
        C1h.A09(abstractC3112r2, A04(259, 7, 67));
        C1h.A09(c2892nO, A04(174, 20, 17));
        C1h.A09(c2746kz, A04(10, 14, 108));
        C1h.A09(interfaceC3171rz, A04(66, 22, 118));
        this.A0E = abstractC3112r2;
        this.A0D = c2892nO;
        this.A0C = c2746kz;
        this.A0F = interfaceC3171rz;
        this.A0B = i2;
        super.A01 = true;
        A07();
        setUpLayout(getResources().getConfiguration().orientation);
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0G, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + RangingPosition.RSSI_MIN);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A0G = new byte[]{-4, -1, -35, 0, 3, -4, 17, 4, 10, Ascii.CR, 76, 79, 46, 76, 78, 83, 80, 56, 76, 89, 76, 82, 80, 93, -29, -26, -59, -15, -16, -10, -25, -6, -10, -39, -12, -29, -14, -14, -25, -12, Ascii.DLE, 19, -13, Ascii.DLE, 35, Ascii.DLE, -15, 36, Ascii.GS, 19, Ascii.ESC, Ascii.DC4, 75, 78, 47, 96, 79, 88, 94, 55, 75, 88, 75, 81, 79, 92, 88, 93, 86, 94, 99, 90, 89, 56, 93, 94, 97, 89, 54, 89, 65, 94, 104, 105, 90, 99, 90, 103, Ascii.EM, 37, 36, Ascii.FS, Ascii.US, Ascii.GS, -30, -15, -28, -32, -13, -28, -59, -12, -21, -21, -46, -30, -15, -28, -28, -19, -64, -29, -62, -15, -28, -29, -24, -13, -53, -24, -19, -28, -46, -13, -32, -13, -24, -30, -43, -24, -28, -10, -89, -83, -83, -83, -88, -1, Ascii.SO, 1, -3, Ascii.DLE, 1, -30, 17, 8, 8, -17, -1, Ascii.SO, 1, 1, 10, -35, 0, -33, Ascii.SO, 1, 0, 5, Ascii.DLE, -24, 5, 10, 1, -14, 5, 1, 19, -60, -54, -54, -54, -59, -10, 5, -2, -2, -11, -4, -36, -1, -9, -9, -7, -2, -9, -40, -15, -2, -12, -4, -11, 2, -19, -21, -6, -57, -22, -49, -12, -20, -11, -46, -17, -7, -6, -82, -76, -76, -76, -81, Ascii.SUB, Ascii.CAN, 39, 3, 34, 37, 39, 37, Ascii.DC4, Ascii.FS, 39, -10, 34, Ascii.US, 34, 37, -4, 33, Ascii.EM, 34, -37, -31, -31, -31, -36, 86, 83, 93, 94, 79, 88, 79, 92, 60, 62, 59, 51, 62, 49, 63, 63, 109, 105, 111, 108, 93, 95, 54, 49, 49, 46, 36, 35, 52};
    }

    private final void A06() {
        TextView textView = this.A02;
        if (textView != null) {
            AbstractC3086qc.A0K(textView);
        }
        this.A02 = null;
        String strA1V = AbstractC1521Do.A1V(super.A07, super.A06);
        TextView textView2 = new TextView(getContext());
        textView2.setText(strA1V);
        textView2.setTextColor(-872415232);
        textView2.setMaxLines(1);
        textView2.setTypeface(Typeface.DEFAULT);
        textView2.setTextSize(14.0f);
        AbstractC3086qc.A0L(textView2);
        this.A02 = textView2;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (this.A05 != null) {
            C3226ss c3226ss = this.A05;
            C1h.A06(c3226ss);
            layoutParams.addRule(2, c3226ss.getId());
        } else {
            layoutParams.addRule(12);
        }
        layoutParams.setMargins(AbstractC3043pv.A0H, 0, 0, AbstractC3043pv.A0y);
        textView2.setLayoutParams(layoutParams);
        addView(textView2);
    }

    private final void A07() {
        List<C2395fE> listA39 = super.A08.A39();
        C1h.A08(listA39, A04(194, 18, 7));
        List<C2395fE> list = listA39;
        ArrayList arrayList = new ArrayList(C0Y.A05(list, 10));
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                AbstractC12300v.A0C();
                throw null;
            }
            arrayList.add(new C2974ol(i, listA39.size(), (C2395fE) obj));
            i = i2;
        }
        this.A0A = arrayList;
    }

    private final void A08() {
        C1441Am c1441Am = this.A09;
        if (c1441Am == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, A0N);
        if (this.A02 != null) {
            TextView textView = this.A02;
            C1h.A06(textView);
            layoutParams.addRule(2, textView.getId());
        } else if (this.A05 != null) {
            C3226ss c3226ss = this.A05;
            C1h.A06(c3226ss);
            layoutParams.addRule(2, c3226ss.getId());
        } else {
            layoutParams.addRule(12);
        }
        layoutParams.addRule(14);
        layoutParams.setMargins(AbstractC3043pv.A0H, AbstractC3043pv.A00, AbstractC3043pv.A0H, AbstractC3043pv.A0y);
        c1441Am.setLayoutParams(layoutParams);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0060  */
    /* JADX WARN: Code duplicated, block: B:15:0x0084  */
    /* JADX WARN: Code duplicated, block: B:17:0x0088  */
    /* JADX WARN: Code duplicated, block: B:19:0x0097  */
    /* JADX WARN: Code duplicated, block: B:20:0x00a9  */
    private final void A09() {
        RelativeLayout.LayoutParams layoutParams;
        C3226ss c3226ss;
        ObjectAnimator objectAnimator = this.A00;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        this.A00 = null;
        C1441Am c1441Am = this.A09;
        if (c1441Am == null) {
            int iA05 = super.A08.A31().A01().A05(false);
            C1441Am c1441Am2 = new C1441Am(super.A09, this.A0B);
            c1441Am2.A0A(iA05, AbstractC2501gx.A02(iA05, 128), true);
            this.A09 = c1441Am2;
            AbstractC3086qc.A0L(c1441Am2);
            layoutParams = new RelativeLayout.LayoutParams(-1, A0N);
            if (this.A02 != null) {
                TextView textView = this.A02;
                C1h.A06(textView);
                layoutParams.addRule(2, textView.getId());
            } else if (this.A05 != null) {
                c3226ss = this.A05;
                if (A0H[1].length() != 27) {
                    A0H[2] = "8dGf";
                    C1h.A06(c3226ss);
                    layoutParams.addRule(2, c3226ss.getId());
                }
            } else {
                layoutParams.addRule(12);
            }
            layoutParams.addRule(14);
            layoutParams.setMargins(AbstractC3043pv.A0H, AbstractC3043pv.A00, AbstractC3043pv.A0H, AbstractC3043pv.A0y);
            addView(c1441Am2, layoutParams);
            return;
        }
        if (A0H[5].charAt(29) != 'Q') {
            A0H[2] = "4QEX";
            AbstractC3086qc.A0K(c1441Am);
            int iA06 = super.A08.A31().A01().A05(false);
            C1441Am c1441Am3 = new C1441Am(super.A09, this.A0B);
            c1441Am3.A0A(iA06, AbstractC2501gx.A02(iA06, 128), true);
            this.A09 = c1441Am3;
            AbstractC3086qc.A0L(c1441Am3);
            layoutParams = new RelativeLayout.LayoutParams(-1, A0N);
            if (this.A02 != null) {
                TextView textView2 = this.A02;
                C1h.A06(textView2);
                layoutParams.addRule(2, textView2.getId());
            } else if (this.A05 != null) {
                c3226ss = this.A05;
                if (A0H[1].length() != 27) {
                    A0H[2] = "8dGf";
                    C1h.A06(c3226ss);
                    layoutParams.addRule(2, c3226ss.getId());
                }
            } else {
                layoutParams.addRule(12);
            }
            layoutParams.addRule(14);
            layoutParams.setMargins(AbstractC3043pv.A0H, AbstractC3043pv.A00, AbstractC3043pv.A0H, AbstractC3043pv.A0y);
            addView(c1441Am3, layoutParams);
            return;
        }
        throw new RuntimeException();
    }

    private final void A0A() {
        A09();
        this.A03 = new C3030pi(this.A0B, 100.0f, 100L, new Handler(Looper.getMainLooper()), new C1509Dc(this));
        C3030pi c3030pi = this.A03;
        if (c3030pi != null) {
            c3030pi.A07();
        }
        A0B();
    }

    private final void A0B() {
        C1441Am c1441Am = this.A09;
        if (c1441Am == null) {
            return;
        }
        View childAt = c1441Am.getChildAt(0);
        ProgressBar progressBar = childAt instanceof ProgressBar ? (ProgressBar) childAt : null;
        if (progressBar == null) {
            return;
        }
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(progressBar, A04(245, 8, 77), 0, UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS);
        objectAnimatorOfInt.setDuration(this.A0B);
        objectAnimatorOfInt.setInterpolator(new LinearInterpolator());
        objectAnimatorOfInt.start();
        this.A00 = objectAnimatorOfInt;
    }

    private final void A0C(List<? extends C2974ol> list) {
        C2404fN c2404fNA01;
        new C7P().A0G(this.A04);
        C1483Cc c1483Cc = this.A08;
        if (c1483Cc != null) {
            c1483Cc.A0i(new C1511De(this));
        }
        LA la = super.A08;
        String[] strArr = A0H;
        if (strArr[3].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0H;
        strArr2[3] = "TqbC5b2qVKwkDoKqqzqncjqgTvQF0";
        strArr2[7] = "ufQKY2Tjn3hzKO7QKIX5GLCCT1MVk";
        C2391fA c2391fAA31 = la.A31();
        if (c2391fAA31 == null || (c2404fNA01 = c2391fAA31.A01()) == null) {
            return;
        }
        C3320uO c3320uO = new C3320uO(super.A09, c2404fNA01, list.size());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, A0L);
        layoutParams.setMargins(0, A0M, 0, 0);
        c3320uO.setLayoutParams(layoutParams);
        this.A07 = c3320uO;
    }

    private final void setUpCreditLine(int i) {
        C3226ss c3226ss = this.A05;
        if (c3226ss != null) {
            c3226ss.A0O();
            AbstractC3086qc.A0K(c3226ss);
        }
        this.A05 = null;
        C3230sw c3230sw = this.A06;
        if (A0H[6].charAt(7) == 'p') {
            throw new RuntimeException();
        }
        String[] strArr = A0H;
        strArr[4] = "WcoRPF5vTc3cekJUqnn8GRZBufuhUodG";
        strArr[0] = "gQfZyAO4l38W7boUZ3cn8kLe5AFwWHEO";
        if (c3230sw != null) {
            AbstractC3086qc.A0K(c3230sw);
        }
        this.A06 = null;
        if (super.A08.A3S() || super.A08.A3O()) {
            C3226ss c3226ssA01 = AbstractC3231sx.A01(super.A09, true, super.A08, this.A0D, super.A0D, EnumC3229sv.A03, AbstractC3228su.A00(super.A08));
            C1h.A08(c3226ssA01, A04(137, 37, 29));
            this.A05 = c3226ssA01;
            AbstractC3086qc.A0H(1116, c3226ssA01);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(12);
            layoutParams.addRule(11);
            layoutParams.setMargins(AbstractC3043pv.A00, AbstractC3043pv.A00, AbstractC3043pv.A0H, AbstractC3043pv.A0A);
            c3226ssA01.setLayoutParams(layoutParams);
            addView(c3226ssA01);
        }
        if (super.A08.A3U()) {
            C3230sw c3230swA02 = AbstractC3231sx.A02(super.A09, EnumC3229sv.A03, super.A08);
            C1h.A08(c3230swA02, A04(94, 43, 0));
            this.A06 = c3230swA02;
            c3230swA02.setBackgroundColor(-2145637581);
            AbstractC3086qc.A0H(1117, c3230swA02);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams2.addRule(12);
            layoutParams2.addRule(9);
            layoutParams2.setMargins(AbstractC3043pv.A0H, AbstractC3043pv.A00, AbstractC3043pv.A00, AbstractC3043pv.A0A);
            c3230swA02.setLayoutParams(layoutParams2);
            addView(c3230swA02);
        }
        A06();
        A08();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void setUpLayout(int i) {
        String strA37;
        int iMin;
        int i2;
        int i3;
        List<? extends C2974ol> list;
        int i4;
        int i5;
        LinearLayout linearLayout;
        LinearLayout linearLayout2 = this.A01;
        if (linearLayout2 != null) {
            linearLayout2.removeAllViews();
        }
        C12843u c12843u = this.A04;
        if (c12843u != null) {
            c12843u.removeAllViews();
            c12843u.A1U();
        }
        C3320uO c3320uO = this.A07;
        String[] strArr = A0H;
        if (strArr[4].charAt(16) == strArr[0].charAt(16)) {
            throw new RuntimeException();
        }
        A0H[1] = "0wi3zLaxSJ";
        if (c3320uO != null) {
            c3320uO.removeAllViews();
        }
        this.A01 = null;
        this.A04 = null;
        this.A07 = null;
        List<? extends C2974ol> list2 = this.A0A;
        if (list2 == null || (strA37 = super.A08.A37()) == null) {
            return;
        }
        LinearLayout linearLayout3 = new LinearLayout(getContext());
        linearLayout3.setGravity(i == 1 ? 17 : 48);
        linearLayout3.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        linearLayout3.setOrientation(1);
        this.A01 = linearLayout3;
        int i6 = AbstractC3045px.A04.widthPixels;
        int i7 = AbstractC3045px.A04.heightPixels;
        if (i == 1) {
            iMin = Math.min(i6 - (A0K * 4), i7 / 2);
            i2 = (i6 - iMin) / 8;
            i3 = i2 * 4;
        } else {
            iMin = i7 - ((A0O + A0J) + (A0K * 4));
            i2 = A0K;
            i3 = i2 * 2;
        }
        C12843u c12843u2 = new C12843u(super.A09);
        c12843u2.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        this.A04 = c12843u2;
        C1483Cc c1483Cc = new C1483Cc(this.A04, i, list2.size(), super.A0F, null, false);
        c1483Cc.A0k(list2);
        this.A08 = c1483Cc;
        C12843u c12843u3 = this.A04;
        if (c12843u3 != null) {
            i5 = 1;
            list = list2;
            i4 = i;
            c12843u3.setAdapter(new CX(super.A09, list, super.A08, super.A0A, this.A0C, super.A0F, super.A0C, super.A0D, strA37, iMin, i2, i3, i4, this.A08, this.A0E));
        } else {
            list = list2;
            i4 = i;
            i5 = 1;
        }
        C12843u c12843u4 = this.A04;
        if (c12843u4 != null) {
            C12843u c12843u5 = this.A04;
            C1h.A06(c12843u5);
            c12843u4.A1o(c12843u5.getOnScrollListener());
        }
        if (i4 == i5) {
            A0C(list);
        }
        LinearLayout linearLayout4 = this.A01;
        if (linearLayout4 != null) {
            linearLayout4.addView(this.A04);
        }
        C3320uO c3320uO2 = this.A07;
        if (c3320uO2 != null && (linearLayout = this.A01) != null) {
            linearLayout.addView(c3320uO2);
        }
        addView(this.A01, A0P);
        String[] strArr2 = A0H;
        if (strArr2[4].charAt(16) != strArr2[0].charAt(16)) {
            A0H[2] = "OOqn";
            setUpCreditLine(i4);
        } else {
            String[] strArr3 = A0H;
            strArr3[4] = "RKd4gweRPXeSLFl8w39op5SDIHtTG87v";
            strArr3[0] = "wjAYtwDVHCn8FYZfL0TBm0im3A4Jztqh";
            setUpCreditLine(i4);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final EnumC2358ec A1a(String str) {
        EnumC2358ec enumC2358ecA0E;
        C1h.A09(str, A04(253, 6, 123));
        C12843u c12843u = this.A04;
        if (c12843u == null) {
            return EnumC2358ec.A08;
        }
        AbstractC2638jE abstractC2638jEA1I = c12843u.A1I(c12843u.getLayoutManager().A38());
        CQ cq = abstractC2638jEA1I instanceof CQ ? (CQ) abstractC2638jEA1I : null;
        if (cq == null) {
            return EnumC2358ec.A08;
        }
        ViewOnClickListenerC1544El viewOnClickListenerC1544ElA0w = cq.A0w();
        return (viewOnClickListenerC1544ElA0w == null || (enumC2358ecA0E = viewOnClickListenerC1544ElA0w.A0E(str)) == null) ? EnumC2358ec.A08 : enumC2358ecA0E;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1b() {
        super.A1b();
        C3030pi c3030pi = this.A03;
        if (c3030pi != null) {
            c3030pi.A06();
        }
        ObjectAnimator objectAnimator = this.A00;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        this.A00 = null;
        C1483Cc c1483Cc = this.A08;
        if (c1483Cc != null) {
            c1483Cc.A0U();
        }
        super.A0F.A0V();
        C3226ss c3226ss = this.A05;
        if (c3226ss != null) {
            c3226ss.A0O();
        }
        C1441Am c1441Am = this.A09;
        if (c1441Am != null) {
            AbstractC3086qc.A0K(c1441Am);
        }
        this.A09 = null;
        C12843u c12843u = this.A04;
        if (c12843u != null) {
            c12843u.removeAllViews();
            c12843u.A1U();
        }
        LinearLayout linearLayout = this.A01;
        if (linearLayout != null) {
            linearLayout.removeAllViews();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1g() {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1h() {
        if (this.A0B > 0) {
            A0A();
            C2398fH c2398fHA0I = super.A08.A32().A0I();
            if (A0H[6].charAt(7) == 'p') {
                throw new RuntimeException();
            }
            String[] strArr = A0H;
            strArr[4] = "OqCTLN5PmavFXPyqEYGvVvlA0g0S9AhN";
            strArr[0] = "3nGN5LM01ATvfmDfPiFT5uvQnRQeu3P2";
            int iA02 = c2398fHA0I.A02();
            if (iA02 >= 0) {
                AbstractC3112r2 abstractC3112r2 = this.A0E;
                String[] strArr2 = A0H;
                if (strArr2[3].length() != strArr2[7].length()) {
                    throw new RuntimeException();
                }
                A0H[2] = "m5zg";
                abstractC3112r2.setProgressSpinnerInvisible(true);
            }
            if (iA02 == 0 || iA02 >= this.A0B) {
                this.A0E.setToolbarActionMode(8);
            } else if (iA02 > 0) {
                new C3030pi(iA02, new C1510Dd(this)).A07();
            }
        } else {
            this.A0F.AHT();
            this.A0F.AH3(false);
        }
        A1f();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1j(boolean z) {
        C1483Cc c1483Cc = this.A08;
        if (c1483Cc != null) {
            c1483Cc.A0U();
        }
        C3030pi c3030pi = this.A03;
        if (c3030pi != null && c3030pi.A05()) {
            c3030pi.A06();
        }
        ObjectAnimator objectAnimator = this.A00;
        if (objectAnimator != null) {
            objectAnimator.pause();
        }
        if (z) {
            return;
        }
        C3226ss c3226ss = this.A05;
        if (A0H[6].charAt(7) == 'p') {
            throw new RuntimeException();
        }
        A0H[1] = "JuYWyewUmON3M";
        if (c3226ss != null) {
            c3226ss.A0P();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final void A1k(boolean z) {
        C1483Cc c1483Cc = this.A08;
        if (c1483Cc != null) {
            c1483Cc.A0W();
        }
        C3030pi c3030pi = this.A03;
        if (c3030pi != null && !c3030pi.A04()) {
            c3030pi.A07();
        }
        ObjectAnimator objectAnimator = this.A00;
        if (objectAnimator != null) {
            objectAnimator.resume();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final boolean A1o() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final boolean A1p() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public final boolean A1q() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do
    public C3257tN getFullScreenAdStyle() {
        C2404fN c2404fNA01 = super.A08.A31().A01();
        C1h.A08(c2404fNA01, A04(212, 25, 52));
        return new C3257tN(false, C3257tN.A07, c2404fNA01, ViewOnClickListenerC1544El.A05(super.A08), c2404fNA01.A08(false), null);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1521Do, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        C1h.A09(configuration, A04(88, 6, 55));
        super.onConfigurationChanged(configuration);
        removeView(this.A01);
        setUpLayout(configuration.orientation);
    }
}
