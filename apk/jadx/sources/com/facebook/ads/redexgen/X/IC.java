package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.facebook.ads.DefaultMediaViewVideoRenderer;
import com.facebook.ads.MediaView;
import com.facebook.ads.MediaViewListener;
import com.facebook.ads.MediaViewVideoRenderer;
import com.facebook.ads.NativeAd;
import com.facebook.ads.internal.api.AdComponentView;
import com.facebook.ads.internal.api.AdComponentViewApi;
import com.facebook.ads.internal.api.AdComponentViewParentApi;
import com.facebook.ads.internal.api.AdViewConstructorParams;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.api.MediaViewApi;
import com.facebook.ads.internal.api.NativeAdBaseApi;
import com.facebook.ads.internal.context.Repairable;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.google.common.base.Ascii;
import com.google.common.primitives.SignedBytes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class IC extends C2666jg implements MediaViewApi, Repairable, InterfaceC2751l6, InterfaceC3183sB {
    public static byte[] A0L;
    public static String[] A0M = {"5egxRyJvv3hsImr6xVPVZGZzS", "S92E58UIdGCmPOb4LYA51SRur0tU5vPU", "gB2LJBWgacco1yi3dwEv6yCRJyLib4yq", "IRYDxixZynQ1VjnPzR0JfxvjieAE", "Yx6PPUM30uHFy3rHO75LIsUaVykI", "YSQgGTlHzzB", "fqdcFq1cD4m6uZ0nLvDLKOa7nCA9CaYH", "MqJIv4BM2hfR6AMSoGkEEGT8SPZgcE8o"};
    public static final String A0N;
    public View A02;
    public View A03;
    public ImageView A04;
    public ImageView A05;
    public RelativeLayout A06;
    public MediaView A07;
    public MediaViewListener A08;
    public MediaViewVideoRenderer A09;
    public AdComponentViewParentApi A0A;
    public C1618Hi A0C;
    public C3030pi A0D;
    public C3U A0E;
    public C3274te A0F;
    public C3309uD A0G;
    public C6T A0H;
    public C2568i4 A0I;
    public boolean A0J;
    public boolean A0K;
    public EnumC2679jt A0B = EnumC2679jt.A04;
    public int A01 = 0;
    public int A00 = 0;

    static {
        A0C();
        A0N = MediaView.class.getSimpleName();
    }

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0L, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 47);
        }
        return new String(bArrCopyOfRange);
    }

    private void A06() {
        this.A0C.A0F().ACR();
        this.A0G = new C3309uD(this.A0C, false);
        this.A0G.setImagePadding(AbstractC3043pv.A0B);
        this.A0G.setImage(EnumC3097qn.FILL_CLOSE);
        this.A0G.A05(0, -7829368, 0, false);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(AbstractC3043pv.A0H, AbstractC3043pv.A0H);
        layoutParams.addRule(11);
        layoutParams.addRule(6, this.A02.getId());
        layoutParams.setMargins(AbstractC3043pv.A00, AbstractC3043pv.A0X, AbstractC3043pv.A0X, AbstractC3043pv.A00);
        A0D(this.A0G, layoutParams);
        this.A0A.bringChildToFront(this.A0G);
    }

    private void A07() {
        if (this.A0H != null) {
            this.A0H.setVisibility(8);
            AbstractC2540hb.A0A(this.A0H.getDynamicWebViewController().A0Q(), new ColorDrawable(0));
            this.A07.removeView(this.A0H);
            this.A0H = null;
        }
    }

    private void A08() {
        if (this.A0D == null || this.A0D.A04()) {
            return;
        }
        this.A0D.A06();
    }

    private void A09() {
        if (this.A0D == null || this.A0D.A04()) {
            return;
        }
        this.A0D.A07();
    }

    private void A0A() {
        if (this.A0K) {
            throw new IllegalStateException(A05(0, 46, 84));
        }
        View view = this.A03;
        String[] strArr = A0M;
        if (strArr[4].length() != strArr[3].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0M;
        strArr2[5] = "HiqmuX4YAHl";
        strArr2[0] = "JtgDxExoVYEb5OmxUIRsQ7gjV";
        if (view != null) {
            AbstractC3086qc.A0K(this.A0E);
        }
        float f = AbstractC3045px.A02;
        int iRound = Math.round(4.0f * f);
        int iRound2 = Math.round(12.0f * f);
        this.A0E.setChildSpacing(iRound);
        this.A0E.setPadding(0, iRound2, 0, iRound2);
        this.A0E.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.A03 = this.A0E;
        this.A07.addView(this.A03, layoutParams);
    }

    private void A0B() {
        EnumC3051q3.A04(this.A07, EnumC3051q3.A0A);
        EnumC3051q3.A04(this.A0F, EnumC3051q3.A0A);
        EnumC3051q3.A04(this.A09, EnumC3051q3.A0A);
        EnumC3051q3.A04(this.A03, EnumC3051q3.A0A);
    }

    public static void A0C() {
        A0L = new byte[]{56, Ascii.SUB, 9, Ascii.DC4, Ascii.SO, 8, Ascii.RS, Ascii.ETB, 91, 9, Ascii.RS, Ascii.NAK, Ascii.US, Ascii.RS, 9, Ascii.RS, 9, 91, Ascii.SYN, Ascii.SO, 8, Ascii.SI, 91, Ascii.EM, Ascii.RS, 91, 8, Ascii.RS, Ascii.SI, 91, Ascii.EM, Ascii.RS, Ascii.GS, Ascii.DC4, 9, Ascii.RS, 91, Ascii.NAK, Ascii.SUB, Ascii.SI, Ascii.DC2, Ascii.CR, Ascii.RS, 58, Ascii.US, 85, Ascii.SUB, Ascii.RS, Ascii.GS, 41, 56, 53, 57, 50, 63, 57, Ascii.DC2, 57, 40, 43, 51, 46, 55, SignedBytes.MAX_POWER_OF_TWO, 100, 104, 110, 108, 41, 123, 108, 103, 109, 108, 123, 108, 123, 41, 100, 124, 122, 125, 41, 107, 108, 41, 122, 108, 125, 41, 107, 108, 111, 102, 123, 108, 41, 103, 104, 125, 96, 127, 108, 72, 109, 39, 96, 68, 72, 78, 76, 9, 91, 76, 71, 77, 76, 91, 76, 91, 9, 68, 92, 90, 93, 9, 75, 76, 9, 90, 76, 93, 9, 75, 76, 79, 70, 91, 76, 9, 71, 72, 93, SignedBytes.MAX_POWER_OF_TWO, 95, 76, 107, 72, 71, 71, 76, 91, 104, 77, 7, Ascii.DC2, 53, 45, 58, 55, 50, 63, 123, Ascii.CR, 50, 62, 44, 123, 56, 52, 53, 40, 47, 41, 46, 56, 47, 52, 41, 123, 43, 58, 41, 58, 54, 40, 123, 47, 34, 43, 62, 117, 1, 46, 59, 38, 57, 42, 111, Ascii.SO, 43, 111, 6, 44, 32, 33, 111, 38, 60, 111, 33, 58, 35, 35, 97, Ascii.VT, 52, 57, 56, 50, 125, 47, 56, 51, 57, 56, 47, 56, 47, 125, 48, 40, 46, 41, 125, 63, 56, 125, 46, 56, 41, 125, 63, 56, 59, 50, 47, 56, 125, 51, 60, 41, 52, 43, 56, Ascii.FS, 57, 115, Ascii.SUB, Ascii.VT, Ascii.DC2, 96, 108, 110, 45, 101, 98, 96, 102, 97, 108, 108, 104, 45, 98, 103, 112, 45, 109, 98, 119, 106, 117, 102, 45, 96, 111, 106, 96, 104, 102, 103, 117, 106, 103, 102, 108, 86, 113, 111, 62};
    }

    private final void A0D(View view, ViewGroup.LayoutParams layoutParams) {
        A01(false);
        this.A07.addView(view, layoutParams);
        A01(true);
    }

    private void A0E(View view, GT gt) {
        if (this.A0I != null) {
            MediaView mediaView = this.A07;
            C2568i4 c2568i4 = this.A0I;
            String[] strArr = A0M;
            if (strArr[5].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0M;
            strArr2[6] = "tYahJlzELN2bWoIKGOvNb4V2q4om3tal";
            strArr2[2] = "knO8IZUpKtredd0Q2IkvjJrJQGpJW1Qq";
            mediaView.removeView(c2568i4);
        }
        if (gt.A1u()) {
            String strA1I = gt.A1I();
            Context context = this.A07.getContext();
            String[] strArr3 = A0M;
            if (strArr3[5].length() != strArr3[0].length()) {
                String[] strArr4 = A0M;
                strArr4[4] = "LedcnhOkj71a4gNr9a9uwwPVwkpS";
                strArr4[3] = "bOPNktfa058vxRDYU7HJ2aiUk3a2";
                if (context == null) {
                    return;
                }
            } else if (context == null) {
                return;
            }
            C2568i4 c2568i4A01 = AbstractC2569i5.A01(this.A0C, strA1I);
            if (A0M[7].charAt(21) != 'L') {
                A0M[1] = "IBU68ioTGuVBWJ1dkmCJ7UK76Osi7EVF";
                this.A0I = c2568i4A01;
                if (this.A0I == null) {
                    return;
                }
            } else {
                this.A0I = c2568i4A01;
                if (this.A0I == null) {
                    return;
                }
            }
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(5, view.getId());
            layoutParams.addRule(7, view.getId());
            layoutParams.addRule(6, view.getId());
            layoutParams.addRule(8, view.getId());
            layoutParams.addRule(16, view.getId());
            layoutParams.addRule(17, view.getId());
            A0D(this.A0I, layoutParams);
            this.A0A.bringChildToFront(this.A0I);
        }
    }

    private void A0F(ImageView imageView) {
        if (this.A0K) {
            throw new IllegalStateException(A05(kotlin.fh.g1, 49, 6));
        }
        ImageView imageView2 = this.A04;
        String[] strArr = A0M;
        if (strArr[5].length() == strArr[0].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0M;
        strArr2[6] = "9onWrVOda1qlu0pAvyXYf5LKITz29A5r";
        strArr2[2] = "G6pev0JETY7bhqmEZOziJsmCoQM1bBBX";
        if (imageView2 != null) {
            ImageView imageView3 = this.A04;
            if (A0M[7].charAt(21) != 'L') {
                A0M[7] = "VpfAzTHTFslDQ36SD1iAanNDN5KDROVY";
                AbstractC3086qc.A0K(imageView3);
            } else {
                String[] strArr3 = A0M;
                strArr3[6] = "PFEYkop8wuUjS29EgmJPhbK0Z69HmSXi";
                strArr3[2] = "QzpHvCNBZ6Bc9Ds4wEVObbUiftlIOy1n";
                AbstractC3086qc.A0K(imageView3);
            }
        }
        imageView.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.A07.addView(imageView, layoutParams);
        imageView.setId(AbstractC3086qc.A00());
        this.A04 = imageView;
    }

    private final void A0G(C1618Hi c1618Hi, AttributeSet attributeSet, int i, int i2, MediaView mediaView) {
        this.A07 = mediaView;
        A0F(new ImageView(c1618Hi, attributeSet, i, i2));
        A0S(new C3274te(c1618Hi, attributeSet, i, i2));
        this.A0E = new C3U(c1618Hi, attributeSet, i);
        A0A();
        setVideoRenderer(new DefaultMediaViewVideoRenderer(c1618Hi, attributeSet, i, i2));
        A0B();
    }

    private final void A0H(C1618Hi c1618Hi, AttributeSet attributeSet, int i, MediaView mediaView) {
        this.A07 = mediaView;
        A0F(new ImageView(c1618Hi, attributeSet, i));
        A0S(new C3274te(c1618Hi, attributeSet, i));
        this.A0E = new C3U(c1618Hi, attributeSet, i);
        A0A();
        setVideoRenderer(new DefaultMediaViewVideoRenderer(c1618Hi, attributeSet, i));
        A0B();
    }

    private final void A0I(C1618Hi c1618Hi, AttributeSet attributeSet, MediaView mediaView) {
        this.A07 = mediaView;
        A0F(new ImageView(c1618Hi, attributeSet));
        A0S(new C3274te(c1618Hi, attributeSet));
        this.A0E = new C3U(c1618Hi, attributeSet);
        A0A();
        setVideoRenderer(new DefaultMediaViewVideoRenderer(c1618Hi, attributeSet));
        A0B();
    }

    private final void A0J(C1618Hi c1618Hi, MediaView mediaView) {
        this.A07 = mediaView;
        A0F(new ImageView(c1618Hi));
        A0S(new C3274te(c1618Hi));
        this.A0E = new C3U(c1618Hi);
        A0A();
        setVideoRenderer(new DefaultMediaViewVideoRenderer(c1618Hi));
        A0B();
    }

    private void A0K(GT gt) {
        gt.A1j(this);
    }

    private void A0L(final GT gt) {
        if (this.A0G != null) {
            this.A0G.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.ju
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.A00.A0Z(gt, view);
                }
            });
        }
    }

    private void A0M(GT gt) {
        if (this.A0D != null) {
            this.A0D.A06();
            this.A0D = null;
        }
        if (this.A0G != null) {
            this.A07.removeView(this.A0G);
            this.A0G = null;
        }
        if (gt.A1r()) {
            A06();
            A0L(gt);
            A0P(gt);
            A0K(gt);
        }
    }

    private void A0N(GT gt) {
        this.A00 = 0;
        if (this.A05 != null) {
            MediaView mediaView = this.A07;
            String[] strArr = A0M;
            if (strArr[4].length() != strArr[3].length()) {
                throw new RuntimeException();
            }
            A0M[7] = "Jz69rg3CAFvyUWd9a64MJOYiuDnwNA4M";
            mediaView.removeView(this.A05);
            this.A05 = null;
        }
        if (gt.A1s()) {
            this.A0C.A0F().ACS();
            this.A05 = new ImageView(this.A0C);
            this.A05.setImageBitmap(AbstractC3098qo.A01(EnumC3097qn.FILL_CLOSE));
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(AbstractC3043pv.A0H, AbstractC3043pv.A0H);
            layoutParams.addRule(11);
            layoutParams.addRule(6, this.A02.getId());
            layoutParams.setMargins(AbstractC3043pv.A00, AbstractC3043pv.A0X, AbstractC3043pv.A0X, AbstractC3043pv.A00);
            A0D(this.A05, layoutParams);
            this.A0A.bringChildToFront(this.A05);
            A0O(gt);
        }
    }

    private void A0O(final GT gt) {
        if (this.A05 != null) {
            this.A05.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.jv
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.A00.A0a(gt, view);
                }
            });
        }
    }

    private void A0P(GT gt) {
        if (this.A0G != null) {
            int iA0y = gt.A0y();
            this.A0D = new C3030pi(iA0y, new ID(this, iA0y));
            this.A0D.A07();
        }
    }

    private void A0Q(final GT gt, boolean z) {
        if (this.A06 != null) {
            this.A07.removeView(this.A06);
            if (A0M[1].charAt(24) == 't') {
                throw new RuntimeException();
            }
            String[] strArr = A0M;
            strArr[5] = "nyNlwmfTx1j";
            strArr[0] = "LyGd0uqulp2Je5TJY1z8IDoWa";
            this.A06 = null;
        }
        if (gt.A13() == null || !gt.A13().A3S()) {
            return;
        }
        this.A06 = new RelativeLayout(this.A0C);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (z) {
            layoutParams.addRule(10);
        } else {
            layoutParams.addRule(12);
            layoutParams.addRule(21);
        }
        C3212se c3212se = new C3212se(this.A0C, EnumC3229sv.A05);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        if (z) {
            layoutParams2.setMargins(AbstractC3043pv.A0B, AbstractC3043pv.A0B, AbstractC3043pv.A00, AbstractC3043pv.A00);
        } else {
            layoutParams2.setMargins(AbstractC3043pv.A00, AbstractC3043pv.A00, AbstractC3043pv.A0X, AbstractC3043pv.A0X);
        }
        this.A06.addView(c3212se, layoutParams2);
        c3212se.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.jw
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.A00.A0Y(gt, view);
            }
        });
        A0D(this.A06, layoutParams);
        this.A0A.bringChildToFront(this.A06);
    }

    private void A0R(GT gt, boolean z, C2912ni c2912ni) {
        AsyncTaskC1552Et asyncTaskC1552EtA04 = new AsyncTaskC1552Et(this.A04, this.A0C).A04();
        if (z) {
            asyncTaskC1552EtA04.A06(new IK(this, gt));
        }
        asyncTaskC1552EtA04.A07(c2912ni.getUrl());
    }

    private void A0S(C3274te c3274te) {
        if (this.A0K) {
            throw new IllegalStateException(A05(63, 43, 38));
        }
        if (this.A0F != null) {
            this.A07.removeView(this.A0F);
        }
        c3274te.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        this.A07.addView(c3274te, layoutParams);
        this.A0F = c3274te;
    }

    private boolean A0T(NativeAd nativeAd) {
        List<NativeAd> listA04 = ((C2686k0) nativeAd.getNativeAdApi()).A04();
        if (listA04 == null) {
            return false;
        }
        Iterator<NativeAd> it = listA04.iterator();
        while (it.hasNext()) {
            if (it.next().getAdCoverImage() == null) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0U(NativeAd nativeAd) {
        return !TextUtils.isEmpty(((C2686k0) nativeAd.getNativeAdApi()).A03());
    }

    public final void A0W(NativeAd nativeAd) {
        LB lb;
        C1618Hi c1618HiA16 = ((GT) nativeAd.getInternalNativeAd()).A16();
        c1618HiA16.A0O(this);
        this.A0C.A0L(c1618HiA16);
        this.A0C.A0K(c1618HiA16.A0F());
        this.A0K = true;
        GT gtA0L = GT.A0L(nativeAd.getInternalNativeAd());
        gtA0L.A1a(this.A07);
        this.A04.setVisibility(8);
        this.A04.setImageDrawable(null);
        if (gtA0L.A13() != null) {
            boolean zA2Q = gtA0L.A13().A2Q();
            if (A0M[7].charAt(21) != 'L') {
                String[] strArr = A0M;
                strArr[4] = "CvXrj9TTP1W52m7bIbynzmDbx8Ql";
                strArr[3] = "OGerX4RrBYJpkLXwbXTHIjvyoHPN";
                if (zA2Q) {
                    if (TextUtils.isEmpty(gtA0L.A13().A32().A0I().A09())) {
                        this.A0B = EnumC2679jt.A03;
                        gtA0L.A16().A0F().ALB(EnumC2311dr.A09);
                    } else {
                        this.A0B = EnumC2679jt.A05;
                        gtA0L.A16().A0F().ALB(EnumC2311dr.A0A);
                    }
                    A07();
                    this.A0F.setVisibility(8);
                    this.A0F.setImage(null, null);
                    this.A09.setVisibility(8);
                    this.A09.unsetNativeAd();
                    ((C2683jx) this.A09.getMediaViewVideoRendererApi()).A03();
                    if (this.A03 != null) {
                        this.A03.setVisibility(8);
                        if (this.A03 instanceof C3265tV) {
                            C3265tV c3265tV = (C3265tV) this.A03;
                            if (A0M[1].charAt(24) != 't') {
                                String[] strArr2 = A0M;
                                strArr2[4] = "rVZQRbya12lyykx5Eq2uFJ3JGH4l";
                                strArr2[3] = "XRSLHysRpGcYp4QaXPRJ4K4uNDdg";
                                c3265tV.A04();
                            } else {
                                c3265tV.A04();
                            }
                        } else {
                            ((C7O) this.A03).setAdapter(null);
                        }
                    }
                    A01(false);
                    this.A0H = new C6T(this.A0C, this.A0C.A0A(), new II(this, gtA0L, nativeAd), gtA0L.A13(), A05(261, 31, 44), 4, gtA0L.A1E());
                    EnumC3051q3.A04(this.A0H, EnumC3051q3.A0A);
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                    layoutParams.addRule(13);
                    this.A07.addView(this.A0H, layoutParams);
                    this.A02 = this.A0H;
                    bringChildToFront(this.A0H);
                    this.A0H.setVisibility(0);
                    A0E(this.A0H, gtA0L);
                    A01(true);
                }
                A0Q(gtA0L, false);
                A0M(gtA0L);
                A0N(gtA0L);
            }
            throw new RuntimeException();
        }
        if (A0T(nativeAd)) {
            this.A0B = EnumC2679jt.A02;
            gtA0L.A16().A0F().ALB(EnumC2311dr.A03);
            boolean z = gtA0L.A1C() == EnumC2915nl.A0B;
            if (!C2863mv.A2y(this.A0C) || z) {
                this.A03 = this.A0E;
                ((C3U) this.A03).setCurrentPosition(0);
                ((C3U) this.A03).setShowTextInCarousel(z);
                if (z) {
                    final C1618Hi c1618Hi = this.A0C;
                    final C3U c3u = (C3U) this.A03;
                    final List<GT> listA1N = gtA0L.A1N();
                    final C2914nk c2914nkA1B = gtA0L.A1B();
                    lb = new LB(c1618Hi, c3u, listA1N, c2914nkA1B) { // from class: com.facebook.ads.redexgen.X.7l
                        public final C1618Hi A00;
                        public final C2914nk A01;

                        {
                            super(c3u, listA1N, c1618Hi);
                            this.A00 = c1618Hi;
                            this.A01 = c2914nkA1B == null ? new C2914nk() : c2914nkA1B;
                        }

                        /* JADX INFO: Access modifiers changed from: private */
                        @Override // com.facebook.ads.redexgen.X.AbstractC2608ik
                        /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
                        public final C1575Fr A0F(ViewGroup viewGroup, int i) {
                            return new C1575Fr(new C3125rF(this.A00, this.A01));
                        }

                        @Override // com.facebook.ads.redexgen.X.AbstractC2608ik
                        /* JADX INFO: renamed from: A0S */
                        public final void A0M(C1575Fr c1575Fr, int i) {
                            super.A0M(c1575Fr, i);
                            C3125rF c3125rF = (C3125rF) c1575Fr.A0w();
                            A0Q(c3125rF.getImageCardView(), i);
                            if (((LB) this).A01.get(i) != null) {
                                c3125rF.setTitle(((LB) this).A01.get(i).getAdHeadline());
                                c3125rF.setSubtitle(((LB) this).A01.get(i).getAdLinkDescription());
                                c3125rF.setButtonText(((LB) this).A01.get(i).getAdCallToAction());
                            }
                            GT gt = ((LB) this).A01.get(i);
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(c3125rF);
                            gt.A1V(c3125rF, c3125rF, arrayList);
                        }
                    };
                } else {
                    final C3U c3u2 = (C3U) this.A03;
                    final List<GT> listA1N2 = gtA0L.A1N();
                    final C1618Hi c1618Hi2 = this.A0C;
                    lb = new LB(c3u2, listA1N2, c1618Hi2) { // from class: com.facebook.ads.redexgen.X.7k
                        public final C1618Hi A00;

                        {
                            this.A00 = c1618Hi2;
                        }

                        /* JADX INFO: Access modifiers changed from: private */
                        @Override // com.facebook.ads.redexgen.X.AbstractC2608ik
                        /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
                        public final C1575Fr A0F(ViewGroup viewGroup, int i) {
                            return new C1575Fr(new C3132rM(this.A00));
                        }

                        @Override // com.facebook.ads.redexgen.X.AbstractC2608ik
                        /* JADX INFO: renamed from: A0S, reason: merged with bridge method [inline-methods] */
                        public final void A0M(C1575Fr c1575Fr, int i) {
                            super.A0M(c1575Fr, i);
                            C3132rM c3132rM = (C3132rM) c1575Fr.A0w();
                            C3162rq c3162rq = (C3162rq) c3132rM.getImageCardView();
                            c3162rq.setImageDrawable(null);
                            A0Q(c3162rq, i);
                            GT gt = ((LB) this).A01.get(i);
                            gt.A16().A0L(this.A00);
                            gt.A1U(c3132rM, c3132rM);
                        }
                    };
                }
                lb.A0R(new IH(this, gtA0L));
                ((C7O) this.A03).setAdapter(lb);
            } else {
                A01(false);
                int width = this.A07.getWidth();
                if (width == 0) {
                    for (ViewGroup viewGroup = (ViewGroup) (this.A07.getParent() instanceof ViewGroup ? this.A07.getParent() : null); width == 0 && viewGroup != null; viewGroup = (ViewGroup) (viewGroup.getParent() instanceof ViewGroup ? viewGroup.getParent() : null)) {
                        width = viewGroup.getWidth();
                    }
                }
                AbstractC3086qc.A0K(this.A03);
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams2.addRule(13);
                this.A03 = new C3265tV(this.A0C);
                this.A07.addView(this.A03, layoutParams2);
                ((C3265tV) this.A03).A05(gtA0L, width);
                AbstractC3086qc.A0L(this.A03);
                A01(true);
            }
            this.A02 = this.A03;
            A07();
            this.A0F.setVisibility(8);
            this.A0F.setImage(null, null);
            this.A09.setVisibility(8);
            this.A09.unsetNativeAd();
            ((C2683jx) this.A09.getMediaViewVideoRendererApi()).A03();
            bringChildToFront(this.A03);
            this.A03.setVisibility(0);
            A0E(this.A03, gtA0L);
        } else if (A0U(nativeAd)) {
            this.A0B = EnumC2679jt.A05;
            this.A01 = ((C2686k0) nativeAd.getNativeAdApi()).A01();
            gtA0L.A16().A0F().ALB(EnumC2311dr.A0D);
            gtA0L.A1n(this.A0J);
            this.A02 = this.A09.getMediaViewVideoRendererApi().getVideoView();
            A07();
            this.A0F.setVisibility(8);
            this.A0F.setImage(null, null);
            if (this.A03 != null) {
                this.A03.setVisibility(8);
                if (this.A03 instanceof C3265tV) {
                    ((C3265tV) this.A03).A04();
                } else {
                    ((C7O) this.A03).setAdapter(null);
                }
            }
            bringChildToFront(this.A09);
            this.A09.setNativeAd(nativeAd);
            ((C2683jx) this.A09.getMediaViewVideoRendererApi()).A04(nativeAd);
            this.A09.setVisibility(0);
            if (gtA0L.getAdCoverImage() != null) {
                new AsyncTaskC1552Et(this.A07, this.A0C).A05(this.A07.getHeight(), this.A07.getWidth()).A06(new IG(this, gtA0L)).A07(gtA0L.getAdCoverImage().getUrl());
            }
            if (BuildConfigApi.isDebug()) {
                Log.i(A0N, A05(292, 9, 44) + ((C2686k0) nativeAd.getNativeAdApi()).A03());
            }
            A0E(this.A09, gtA0L);
        } else if (nativeAd.getAdCoverImage() != null) {
            this.A0B = EnumC2679jt.A03;
            InterfaceC2300df interfaceC2300dfA0F = gtA0L.A16().A0F();
            EnumC2311dr enumC2311dr = EnumC2311dr.A0B;
            String[] strArr3 = A0M;
            if (strArr3[4].length() == strArr3[3].length()) {
                String[] strArr4 = A0M;
                strArr4[5] = "frMR6XxeFyY";
                strArr4[0] = "C2vHynCiCjpaNUAH5HDOQyqBc";
                interfaceC2300dfA0F.ALB(enumC2311dr);
                this.A02 = this.A0F.getBodyImageView();
                A07();
                this.A09.setVisibility(8);
                this.A09.unsetNativeAd();
                ((C2683jx) this.A09.getMediaViewVideoRendererApi()).A03();
                if (this.A03 != null) {
                    this.A03.setVisibility(8);
                    if (this.A03 instanceof C3265tV) {
                        C3265tV c3265tV2 = (C3265tV) this.A03;
                        String[] strArr5 = A0M;
                        if (strArr5[5].length() != strArr5[0].length()) {
                            String[] strArr6 = A0M;
                            strArr6[6] = "aOStoZQ6HlGjIfWvjowDgm0JyWXySbfC";
                            strArr6[2] = "db16XoSedMN3NVp1QVj7WgZqidqfP4Wc";
                            c3265tV2.A04();
                        } else {
                            c3265tV2.A04();
                        }
                    } else {
                        ((C7O) this.A03).setAdapter(null);
                    }
                }
                bringChildToFront(this.A0F);
                this.A0F.setVisibility(0);
                new AsyncTaskC1552Et(this.A0F, this.A0C).A05(this.A07.getHeight(), this.A07.getWidth()).A06(new IF(this, gtA0L)).A07(gtA0L.getAdCoverImage().getUrl());
                A0E(this.A0F, gtA0L);
            }
            throw new RuntimeException();
        }
        A0Q(gtA0L, false);
        A0M(gtA0L);
        A0N(gtA0L);
    }

    public final void A0X(NativeAdBaseApi nativeAdBaseApi, boolean z) {
        C1618Hi c1618HiA16 = ((GT) nativeAdBaseApi).A16();
        this.A0C.A0L(c1618HiA16);
        c1618HiA16.A0O(this);
        this.A0K = true;
        GT gtA0L = GT.A0L(nativeAdBaseApi);
        gtA0L.A1Z(this.A07);
        this.A0F.setVisibility(8);
        this.A0F.setImage(null, null);
        this.A09.setVisibility(8);
        this.A09.unsetNativeAd();
        ((C2683jx) this.A09.getMediaViewVideoRendererApi()).A03();
        if (this.A03 != null) {
            this.A03.setVisibility(8);
            if (this.A03 instanceof C3265tV) {
                ((C3265tV) this.A03).A04();
            } else {
                ((C7O) this.A03).setAdapter(null);
            }
        }
        this.A04.setVisibility(0);
        bringChildToFront(this.A04);
        this.A02 = this.A04;
        C2912ni adIcon = gtA0L.getAdIcon();
        if (adIcon != null) {
            Bitmap bitmapA0N = gtA0L.A14().A0N(adIcon.getUrl());
            if (bitmapA0N != null) {
                this.A04.setImageBitmap(bitmapA0N);
                if (z) {
                    this.A07.post(new IL(this, gtA0L));
                }
            } else {
                A0R(gtA0L, z, adIcon);
            }
        } else {
            GS gsA1A = gtA0L.A1A();
            AdErrorType adErrorType = AdErrorType.NATIVE_AD_IS_NOT_LOADED;
            c1618HiA16.A0F().A3j(gtA0L.A11(), adErrorType.getErrorCode(), adErrorType.getDefaultErrorMessage());
            if (A0M[7].charAt(21) == 'L') {
                throw new RuntimeException();
            }
            String[] strArr = A0M;
            strArr[5] = "EHyzM1XiQA4";
            strArr[0] = "1eaXcvxnuqjcQ1HLF5oNaOqo9";
            if (gsA1A != null) {
                gsA1A.AEr(C2922nt.A00(adErrorType));
            }
            Log.e(A05(46, 17, 115), adErrorType.getDefaultErrorMessage());
            if (nativeAdBaseApi.isAdLoaded()) {
                this.A0C.A08().ABz(A05(258, 3, 84), AbstractC2786lf.A0W, new C2787lg(A05(192, 23, 96)));
            }
        }
        A0E(this.A04, gtA0L);
        if (!gtA0L.A1t() || gtA0L.A1q()) {
            return;
        }
        A0Q(gtA0L, true);
    }

    public final /* synthetic */ void A0Y(GT gt, View view) {
        this.A0C.A0F().ABj(EnumC3229sv.A05.name().toLowerCase(Locale.US));
        gt.A1O();
    }

    public final /* synthetic */ void A0Z(GT gt, View view) {
        if (this.A0D == null || gt.A17() == null) {
            return;
        }
        C3030pi c3030pi = this.A0D;
        String[] strArr = A0M;
        if (strArr[5].length() == strArr[0].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0M;
        strArr2[5] = "8HWICDtq7nW";
        strArr2[0] = "aaj8fMQkJJZcBMBzfSCjrA03A";
        if (!c3030pi.A04()) {
            this.A0C.A0F().ACQ();
            gt.A17().onClick(view);
            return;
        }
        this.A0C.A0F().ACP();
        GV gvA17 = gt.A17();
        String[] strArr3 = A0M;
        if (strArr3[6].charAt(12) == strArr3[2].charAt(12)) {
            gvA17.A04();
            return;
        }
        String[] strArr4 = A0M;
        strArr4[4] = "M4K7JVlkMzJNtATY08lA7CgOhE03";
        strArr4[3] = "WbFxtwdFPOMj56Vv8sAbryNGDA3M";
        gvA17.A04();
    }

    public final /* synthetic */ void A0a(GT gt, View view) {
        if (gt.A17() != null) {
            if (this.A00 < gt.A0z()) {
                this.A0C.A0F().ACN();
                gt.A17().onClick(view);
            } else {
                this.A0C.A0F().ACM();
                gt.A17().A04();
            }
            this.A00++;
        }
    }

    public final boolean A0b() {
        return this.A03 != null && this.A03.getVisibility() == 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2751l6
    public final C1618Hi A7M() {
        return this.A0C;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3183sB
    public final void ADn() {
        A09();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3183sB
    public final void ADo() {
        A08();
    }

    /* JADX WARN: Code duplicated, block: B:24:0x006e  */
    @Override // com.facebook.ads.redexgen.X.C2666jg, com.facebook.ads.internal.api.AdComponentViewParentApi
    public final void bringChildToFront(View view) {
        if (view == this.A03 || view == this.A09 || view == this.A0F || view == this.A04) {
            this.A0A.bringChildToFront(view);
            if (this.A0I != null) {
                this.A0A.bringChildToFront(this.A0I);
            }
            RelativeLayout relativeLayout = this.A06;
            String[] strArr = A0M;
            if (strArr[4].length() != strArr[3].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0M;
            strArr2[5] = "w8yR9TBNXTT";
            strArr2[0] = "Me0RNHSQXjEAuifpqX6Rq7it0";
            if (relativeLayout != null) {
                this.A0A.bringChildToFront(this.A06);
            }
            C3309uD c3309uD = this.A0G;
            if (A0M[1].charAt(24) != 't') {
                String[] strArr3 = A0M;
                strArr3[5] = "OvE2NJICw2j";
                strArr3[0] = "nqPK4W2yTXz6Aui3kaoI8vLi7";
                if (c3309uD != null) {
                    this.A0A.bringChildToFront(this.A0G);
                }
            } else if (c3309uD != null) {
                this.A0A.bringChildToFront(this.A0G);
            }
            if (this.A05 != null) {
                this.A0A.bringChildToFront(this.A05);
            }
        }
    }

    @Override // com.facebook.ads.internal.api.MediaViewApi
    public final void destroy() {
        this.A09.pause(false);
        this.A09.getMediaViewVideoRendererApi().destroy();
    }

    @Override // com.facebook.ads.internal.api.AdComponentViewApiProvider
    public final AdComponentViewApi getAdComponentViewApi() {
        return this;
    }

    @Override // com.facebook.ads.internal.api.MediaViewApi
    public final View getAdContentsView() {
        return this.A02;
    }

    @Override // com.facebook.ads.internal.api.MediaViewApi
    public final int getMediaHeight() {
        if (this.A0F.getVisibility() == 0) {
            return this.A0F.getImageHeight();
        }
        if (this.A09.getVisibility() == 0) {
            return this.A09.getMediaViewVideoRendererApi().getVideoView().getHeight();
        }
        if (this.A07.getVisibility() == 0) {
            return this.A07.getHeight();
        }
        if (A0M[1].charAt(24) == 't') {
            throw new RuntimeException();
        }
        A0M[7] = "3C5Zne3gt6SFfa7y1AnuQltffgpI3Oh8";
        return 0;
    }

    @Override // com.facebook.ads.internal.api.MediaViewApi
    public final int getMediaWidth() {
        if (this.A0F.getVisibility() == 0) {
            return this.A0F.getImageWidth();
        }
        if (this.A09.getVisibility() == 0) {
            return this.A09.getMediaViewVideoRendererApi().getVideoView().getWidth();
        }
        if (this.A07.getVisibility() == 0) {
            return this.A07.getWidth();
        }
        String[] strArr = A0M;
        if (strArr[6].charAt(12) == strArr[2].charAt(12)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0M;
        strArr2[5] = "pFreRfYdfw1";
        strArr2[0] = "pVUprXCJsnglf8IlGtX2XFBaJ";
        return 0;
    }

    @Override // com.facebook.ads.internal.api.MediaViewApi
    public final int getVideoDuration() {
        this.A0C.A0F().ACa();
        return this.A01;
    }

    @Override // com.facebook.ads.internal.api.MediaViewApi
    public final void initialize(AdViewConstructorParams adViewConstructorParams, MediaView mediaView) {
        Context context = adViewConstructorParams.getContext();
        if (context instanceof C1618Hi) {
            this.A0C = (C1618Hi) context;
        } else {
            this.A0C = C2673jn.A03(context);
        }
        this.A0C.A0O(this);
        switch (adViewConstructorParams.getInitializationType()) {
            case 0:
                A0J(this.A0C, mediaView);
                break;
            case 1:
                A0I(this.A0C, adViewConstructorParams.getAttributeSet(), mediaView);
                break;
            case 2:
                A0H(this.A0C, adViewConstructorParams.getAttributeSet(), adViewConstructorParams.getDefStyleAttr(), mediaView);
                break;
            case 3:
                A0G(this.A0C, adViewConstructorParams.getAttributeSet(), adViewConstructorParams.getDefStyleAttr(), adViewConstructorParams.getDefStyleRes(), mediaView);
                break;
            default:
                throw new IllegalArgumentException(A05(155, 37, 116));
        }
        A01(true);
    }

    @Override // com.facebook.ads.internal.api.MediaViewApi
    public final boolean isVideoContent() {
        this.A0C.A0F().ACZ();
        return this.A0B == EnumC2679jt.A05;
    }

    @Override // com.facebook.ads.redexgen.X.C2666jg, com.facebook.ads.internal.api.AdComponentViewApi
    public final void onAttachedToView(AdComponentView adComponentView, AdComponentViewParentApi adComponentViewParentApi) {
        super.onAttachedToView(adComponentView, adComponentViewParentApi);
        this.A0A = adComponentViewParentApi;
    }

    @Override // com.facebook.ads.redexgen.X.C2666jg, com.facebook.ads.internal.api.AdComponentViewParentApi
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        A09();
    }

    @Override // com.facebook.ads.redexgen.X.C2666jg, com.facebook.ads.internal.api.AdComponentViewParentApi
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        A08();
    }

    @Override // com.facebook.ads.redexgen.X.C2666jg, com.facebook.ads.internal.api.AdComponentView
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            A09();
        } else {
            A08();
        }
    }

    @Override // com.facebook.ads.internal.context.Repairable
    public final void repair(Throwable th) {
        int width = this.A07.getWidth();
        int height = this.A07.getHeight();
        if (width <= 0 || height <= 0) {
            this.A07.repair(th);
            return;
        }
        this.A07.repair(th);
        this.A07.getLayoutParams().width = width;
        MediaView mediaView = this.A07;
        if (A0M[1].charAt(24) == 't') {
            throw new RuntimeException();
        }
        String[] strArr = A0M;
        strArr[5] = "Mgb6bOJjyiN";
        strArr[0] = "MTEeDXbdwkPsq4eW7ABfM3WBi";
        mediaView.getLayoutParams().height = height;
        this.A07.setBackgroundColor(-3355444);
    }

    @Override // com.facebook.ads.internal.api.MediaViewApi
    public final void setListener(MediaViewListener mediaViewListener) {
        this.A08 = mediaViewListener;
        if (mediaViewListener == null) {
            ((C2683jx) this.A09.getMediaViewVideoRendererApi()).A07(null);
        } else {
            ((C2683jx) this.A09.getMediaViewVideoRendererApi()).A07(new IE(this, mediaViewListener));
        }
    }

    @Override // com.facebook.ads.internal.api.MediaViewApi
    public final void setVideoRenderer(MediaViewVideoRenderer mediaViewVideoRenderer) {
        if (this.A0K) {
            throw new IllegalStateException(A05(215, 43, 114));
        }
        MediaViewVideoRenderer mediaViewVideoRenderer2 = this.A09;
        if (A0M[7].charAt(21) == 'L') {
            throw new RuntimeException();
        }
        String[] strArr = A0M;
        strArr[6] = "ifAS5bhxfK6Gg4eu5Yemnhg9EBEfp9jT";
        strArr[2] = "R5YDbsM1msNnvJcIFydw3DY2O0brJ9d9";
        if (mediaViewVideoRenderer2 != null) {
            this.A07.removeView(this.A09);
            this.A09.getMediaViewVideoRendererApi().destroy();
        }
        ((C2683jx) mediaViewVideoRenderer.getMediaViewVideoRendererApi()).A05(this.A0C.A0A());
        mediaViewVideoRenderer.setVisibility(8);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        ((IC) this.A07.getMediaViewApi()).A0D(mediaViewVideoRenderer, layoutParams);
        this.A09 = mediaViewVideoRenderer;
        this.A0J = !(this.A09 instanceof DefaultMediaViewVideoRenderer);
        mediaViewVideoRenderer.setId(AbstractC3086qc.A00());
    }
}
