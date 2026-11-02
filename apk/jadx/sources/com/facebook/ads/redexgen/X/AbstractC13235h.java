package com.facebook.ads.redexgen.X;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import android.widget.RelativeLayout;
import java.util.Arrays;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.5h, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC13235h extends ED implements InterfaceC3038pq {
    public static byte[] A0J;
    public static String[] A0K = {"qhyqdRyY73KxC1tvVKC1RR7Ww7cHpMNI", "u", "iJdLLXjMERWS6nrrifgRezU5bBYClEhc", "x", "WOUUBmwieka2tKtPzyD3Oi2ICBGgzBJ3", "WP6s1WN1sTlakT5s9", "KSyuISu5FHLXIH2Y107I8yc5wcH1bRtg", "Ol7jHPVUjn6ZJiqNSUfBRDjTd93E4eRO"};
    public static final int A0L;

    @Nullable
    public InterfaceC3409vp A00;
    public boolean A01;
    public boolean A02;
    public final int A03;
    public final Path A04;
    public final RectF A05;
    public final RelativeLayout A06;
    public final C1618Hi A07;
    public final C3040ps A08;
    public final InterfaceC3119r9 A09;
    public final C3349ur A0A;
    public final C1483Cc A0B;
    public final C2972oj A0C;
    public final BM A0D;
    public final BG A0E;
    public final BE A0F;
    public final BC A0G;
    public final B3 A0H;
    public final String A0I;

    static {
        A0B();
        A0L = (int) (AbstractC3045px.A02 * 1.0f);
    }

    public AbstractC13235h(C3349ur c3349ur, boolean z, String str, C1483Cc c1483Cc) {
        super(c3349ur, z);
        this.A04 = new Path();
        this.A05 = new RectF();
        this.A03 = Math.min(AbstractC3045px.A04.widthPixels, AbstractC3045px.A04.heightPixels);
        this.A0H = new B3() { // from class: com.facebook.ads.redexgen.X.5m
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(B4 b4) {
                this.A00.A0B.A0T().setVolume(this.A00.getVideoView().getVolume());
            }
        };
        this.A0D = new BM() { // from class: com.facebook.ads.redexgen.X.5l
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C5Y c5y) {
                if (this.A00.getTag(-1593835536) != null) {
                    this.A00.A0B.A0R().AHW(((Integer) this.A00.getTag(-1593835536)).intValue());
                }
            }
        };
        this.A0F = new BE() { // from class: com.facebook.ads.redexgen.X.5k
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(BF bf) {
                this.A00.A0B.A0S().AHi(this.A00);
            }
        };
        this.A0E = new BG() { // from class: com.facebook.ads.redexgen.X.5j
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C5W c5w) {
                this.A00.A0B.A0S().AHg(this.A00);
            }
        };
        this.A0G = new BC() { // from class: com.facebook.ads.redexgen.X.5i
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(BD bd) {
                this.A00.A02 = true;
                this.A00.A1r();
            }
        };
        this.A09 = c3349ur.A0C();
        this.A0A = c3349ur;
        this.A0B = c1483Cc;
        this.A0I = str;
        this.A07 = c3349ur.A06();
        this.A08 = C3040ps.A00(c3349ur.A06(), c3349ur.A05(), this);
        setGravity(17);
        AbstractC3086qc.A0O(this, 0);
        this.A0C = new C2972oj(this.A07, new C2892nO(this.A0I, getAdEventManager()));
        this.A06 = new RelativeLayout(this.A07);
        setUpView(this.A07);
    }

    public static String A0A(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0J, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 87);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0B() {
        A0J = new byte[]{108, 110, 125, 96, 122, 124, 106, 99, 80, 108, 110, 125, 107};
    }

    private final void A0C() {
        A0E(this.A06);
        C3039pr c3039prA02 = this.A08.A02(this.A0A.A05());
        this.A0A.A06().A0H().A00(c3039prA02.A01);
        if (this.A0A.A05().A2O() && C2863mv.A2z(this.A07)) {
            this.A06.setOnClickListener(new ViewOnClickListenerC2782lb(this));
        } else if (c3039prA02.A00) {
            this.A06.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.ads.redexgen.X.li
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.A00.A1s(view);
                }
            });
        }
    }

    private final void A0D() {
        if (C2863mv.A1L(this.A07)) {
            AbstractC3281tl.A00(this.A0C, C2863mv.A1M(this.A07), new ViewOnClickListenerC2740kt(this));
        }
        A0E(this.A0C);
    }

    public static void A0E(View view) {
        view.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        AbstractC3086qc.A0L(view);
    }

    private int[] A0G(int i, int i2, int i3) {
        int[] iArr = new int[2];
        if (i <= 1 || i > 4) {
            iArr[0] = this.A03;
            iArr[1] = (int) (iArr[0] * 1.27f);
            return iArr;
        }
        iArr[0] = (this.A03 - i2) / i3;
        int i4 = iArr[0];
        if (A0K[4].charAt(0) != 'W') {
            throw new RuntimeException();
        }
        A0K[4] = "WTV1dVCQcENUUbed7e8E95Qy9FJJmz5N";
        iArr[1] = (int) (i4 * 1.27f);
        return iArr;
    }

    private void setUpView(C1618Hi c1618Hi) {
        A0D();
        A0C();
        this.A06.addView(this.A0C);
        A1t(c1618Hi);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public boolean A0H() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final void A1Q() {
        super.A1Q();
        this.A08.A03();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final boolean A1g() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.ED
    public final void A1k() {
        if (A1o()) {
            this.A0C.A01();
        }
    }

    @Override // com.facebook.ads.redexgen.X.ED
    public final void A1l() {
        if (A1o()) {
            A1m();
            this.A0C.A05(EnumC2324e4.A03);
        }
    }

    @Override // com.facebook.ads.redexgen.X.ED
    public final void A1m() {
        float volume = this.A0B.A0T().getVolume();
        if (!A1o() || volume == this.A0C.getVolume()) {
            return;
        }
        this.A0C.setVolume(volume);
    }

    @Override // com.facebook.ads.redexgen.X.ED
    public final boolean A1n() {
        return A1o() && this.A0C.A06();
    }

    @Override // com.facebook.ads.redexgen.X.ED
    public final boolean A1o() {
        return this.A01;
    }

    public final void A1p() {
        getTitleDescContainer().setVisibility(8);
        getCtaButton().setVisibility(8);
    }

    public final void A1q() {
        getCtaButton().A0F();
    }

    public final void A1r() {
        if (this.A00 == null) {
            return;
        }
        this.A00.ADv();
        String[] strArr = A0K;
        if (strArr[1].length() != strArr[3].length()) {
            throw new RuntimeException();
        }
        A0K[0] = "qFZ7enCZmgehLrVIOo4WKB0E9QEWCPAv";
    }

    public final /* synthetic */ void A1s(View view) {
        getCtaButton().A0E(A0A(0, 13, 88));
    }

    public abstract void A1t(C1618Hi c1618Hi);

    public abstract void A1u(C1618Hi c1618Hi, InterfaceC2619iv interfaceC2619iv);

    public final void A1v(Map<String, String> map) {
        this.A0C.A02();
        if (A1o()) {
            this.A0C.A04(getAdEventManager(), this.A0I, map);
        }
    }

    public final int[] A1w(int i, int i2, int i3, int i4) {
        return i == 1 ? A0G(i2, i3, i4) : new int[]{this.A03, this.A03};
    }

    public final RelativeLayout getMediaContainer() {
        return this.A06;
    }

    public final C2972oj getVideoView() {
        return this.A0C;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        this.A04.reset();
        this.A05.set(A0L, 0.0f, getWidth() - A0L, getHeight() - A0L);
        this.A04.addRoundRect(this.A05, 0.0f, 0.0f, Path.Direction.CW);
        canvas.clipPath(this.A04);
        super.onDraw(canvas);
    }

    public void setAdTitleAndDescription(String str, String str2) {
        getTitleDescContainer().A04(str, str2, null, true, false);
    }

    public void setCTAInfo(C2406fP c2406fP, Map<String, String> map) {
        getCtaButton().setCta(c2406fP, this.A0I, map);
    }

    public void setOnAssetsLoadedListener(InterfaceC3409vp interfaceC3409vp) {
        this.A00 = interfaceC3409vp;
    }

    public void setVideo(boolean z) {
        this.A01 = z;
    }

    public void setVideoPlaceholderUrl(String str) {
        this.A0C.setPlaceholderUrl(str);
    }

    public void setVideoUrl(String str) {
        this.A0C.setVisibility(0);
        this.A0C.setVideoURI(str);
        this.A0C.A03(this.A0H);
        this.A0C.A03(this.A0D);
        this.A0C.A03(this.A0F);
        this.A0C.A03(this.A0E);
        this.A0C.A03(this.A0G);
    }
}
