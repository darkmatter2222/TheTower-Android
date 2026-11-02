package com.facebook.ads.redexgen.X;

import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.core.view.ViewCompat;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.6i, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C13506i extends ED {
    public C3162rq A00;
    public InterfaceC3409vp A01;
    public C2972oj A02;
    public boolean A03;
    public boolean A04;
    public boolean A05;
    public RelativeLayout A06;
    public C1483Cc A07;
    public final C1618Hi A08;
    public final BM A09;
    public final BG A0A;
    public final BE A0B;
    public final BC A0C;
    public final B3 A0D;
    public final String A0E;
    public final Paint A0F;
    public final Path A0G;
    public final RectF A0H;
    public final C3349ur A0I;
    public static String[] A0J = {"dJoea1DbFsfm9GTpKIzcXYdmCRfBe4FS", "N1xc2MysRccxXRgwDgHXZSQeh7bFq7uk", "3nDu3mubCrSGPsHb", "SUxuavEQD34fwSKO8hxc7w", "hmAyL1Y1BI3zOyZEMNvfuG", "1nycCDmAbpyAo4RWRzHJ2ixoeiRT", "fh6VcnyoMwgZMcb2oBIx6", "bmD"};
    public static final int A0L = (int) (AbstractC3045px.A02 * 0.0f);
    public static final int A0M = (int) (AbstractC3045px.A02 * 9.0f);
    public static final int A0K = (int) (AbstractC3045px.A02 * 9.0f);

    public C13506i(C3349ur c3349ur, boolean z, String str, C1483Cc c1483Cc) {
        super(c3349ur, z);
        this.A0G = new Path();
        this.A0H = new RectF();
        this.A0D = new B3() { // from class: com.facebook.ads.redexgen.X.6n
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(B4 b4) {
                if (this.A00.getVideoView() != null) {
                    this.A00.A07.A0T().setVolume(this.A00.getVideoView().getVolume());
                }
            }
        };
        this.A09 = new BM() { // from class: com.facebook.ads.redexgen.X.6m
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C5Y c5y) {
                this.A00.A01();
                Object tag = this.A00.getTag(-1593835536);
                if (tag != null) {
                    this.A00.A07.A0R().AHW(((Integer) tag).intValue());
                }
            }
        };
        this.A0B = new BE() { // from class: com.facebook.ads.redexgen.X.6l
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(BF bf) {
                this.A00.A00();
                this.A00.A07.A0S().AHi(this.A00);
            }
        };
        this.A0A = new BG() { // from class: com.facebook.ads.redexgen.X.6k
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(C5W c5w) {
                this.A00.A01();
                this.A00.A07.A0S().AHg(this.A00);
            }
        };
        this.A0C = new BC() { // from class: com.facebook.ads.redexgen.X.6j
            /* JADX INFO: Access modifiers changed from: private */
            @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final void A03(BD bd) {
                this.A00.A05 = true;
                this.A00.A02();
            }
        };
        this.A0I = c3349ur;
        this.A07 = c1483Cc;
        this.A0E = str;
        this.A08 = c3349ur.A06();
        setGravity(17);
        setPadding(A0L, 0, A0L, A0L);
        AbstractC3086qc.A0O(this, 0);
        setUpView(this.A08);
        this.A0F = new Paint();
        this.A0F.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.A0F.setStyle(Paint.Style.FILL);
        this.A0F.setAlpha(16);
        this.A0F.setAntiAlias(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A00() {
        if (this.A0I.A0E() == null || this.A02 == null) {
            return;
        }
        this.A0I.A0E().ABd(this.A02.getSimpleVideoView());
        if (C2863mv.A2M(getContext())) {
            this.A0I.A0E().A0B(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A01() {
        if (this.A0I.A0E() != null) {
            this.A0I.A0E().A06();
            if (this.A02 != null) {
                this.A0I.A0E().ALp(this.A02.getSimpleVideoView());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02() {
        if (this.A01 == null) {
            return;
        }
        if (!A1o() || !this.A05) {
            boolean zA1o = A1o();
            String[] strArr = A0J;
            if (strArr[3].length() != strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0J;
            strArr2[3] = "whWH7G9NZGoicUCMK8TGye";
            strArr2[4] = "jQqQ2QRGHP0rmsCqitHuog";
            if (zA1o || !this.A04) {
                return;
            }
        }
        this.A01.ADv();
    }

    private void A03(View view) {
        RelativeLayout.LayoutParams layoutParams;
        if (view == null || (layoutParams = (RelativeLayout.LayoutParams) view.getLayoutParams()) == null) {
            return;
        }
        layoutParams.addRule(13, -1);
        view.setLayoutParams(layoutParams);
    }

    public static void A04(View view) {
        view.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        AbstractC3086qc.A0L(view);
    }

    private void setUpView(C1618Hi c1618Hi) {
        setUpImageView(c1618Hi);
        setUpVideoView(c1618Hi);
        setUpMediaContainer(c1618Hi);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final boolean A0H() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un
    public final boolean A1g() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.ED
    public final void A1k() {
        if (!A1o() || this.A02 == null) {
            return;
        }
        this.A02.A01();
    }

    @Override // com.facebook.ads.redexgen.X.ED
    public final void A1l() {
        if (A1o()) {
            A1m();
            if (this.A02 != null) {
                this.A02.A05(EnumC2324e4.A03);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.ED
    public final void A1m() {
        float volume = this.A07.A0T().getVolume();
        if (!A1o() || this.A02 == null || volume == this.A02.getVolume()) {
            return;
        }
        this.A02.setVolume(volume);
    }

    @Override // com.facebook.ads.redexgen.X.ED
    public final boolean A1n() {
        return A1o() && this.A02 != null && this.A02.A06();
    }

    @Override // com.facebook.ads.redexgen.X.ED
    public final boolean A1o() {
        return this.A03;
    }

    public final void A1p(Map<String, String> map) {
        if (this.A02 != null) {
            this.A02.A02();
            if (A1o()) {
                this.A02.A04(getAdEventManager(), this.A0E, map);
            }
        }
    }

    public final C2972oj getVideoView() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3345un, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        this.A0G.reset();
        this.A0H.set(0.0f, 0.0f, getWidth(), getHeight());
        boolean z = getResources().getConfiguration().orientation == 1;
        int i = z ? A0K : 0;
        this.A0G.addRoundRect(this.A0H, i, i, Path.Direction.CW);
        canvas.drawPath(this.A0G, this.A0F);
        this.A0H.set(A0L, 0.0f, getWidth() - A0L, getHeight() - A0L);
        if (z) {
            i = A0M;
        }
        this.A0G.addRoundRect(this.A0H, i, i, Path.Direction.CW);
        canvas.clipPath(this.A0G);
        super.onDraw(canvas);
    }

    public void setCTAInfo(C2406fP c2406fP, Map<String, String> map) {
        getCtaButton().setCta(c2406fP, this.A0E, map);
    }

    public void setImageUrl(String str) {
        if (this.A00 != null) {
            this.A00.setVisibility(0);
            new AsyncTaskC1552Et(this.A00, this.A08).A04().A06(new C1541Ei(this)).A07(str);
        }
        if (this.A02 != null) {
            this.A02.setVisibility(8);
        }
    }

    public void setIsVideo(boolean z) {
        this.A03 = z;
    }

    public void setOnAssetsLoadedListener(InterfaceC3409vp interfaceC3409vp) {
        this.A01 = interfaceC3409vp;
    }

    public void setUpImageView(C1618Hi c1618Hi) {
        this.A00 = new C3162rq(c1618Hi);
        if (C2863mv.A1J(c1618Hi)) {
            AbstractC3281tl.A00(this.A00, C2863mv.A1K(c1618Hi), new ViewOnClickListenerC3313uH(this));
        }
        A04(this.A00);
    }

    public void setUpMediaContainer(C1618Hi c1618Hi) {
        this.A06 = new RelativeLayout(c1618Hi);
        A04(this.A06);
        if (this.A00 != null) {
            this.A06.addView(this.A00);
            A03(this.A00);
        }
        if (this.A02 != null) {
            this.A06.addView(this.A02);
            A03(this.A02);
        }
        addView(this.A06);
    }

    public void setUpVideoView(C1618Hi c1618Hi) {
        this.A02 = new C2972oj(c1618Hi, new C2892nO(this.A0E, getAdEventManager()));
        if (C2863mv.A1L(c1618Hi)) {
            AbstractC3281tl.A00(this.A02, C2863mv.A1M(c1618Hi), new ViewOnClickListenerC3314uI(this));
        }
        A04(this.A02);
    }

    public void setVideoPlaceholderUrl(String str) {
        if (this.A02 != null) {
            this.A02.setPlaceholderUrl(str);
        }
    }

    public void setVideoUrl(String str) {
        if (this.A00 != null) {
            C3162rq c3162rq = this.A00;
            if (A0J[5].length() == 10) {
                throw new RuntimeException();
            }
            A0J[2] = "s54OOOYMcUndmM7F";
            c3162rq.setVisibility(8);
        }
        if (this.A02 != null) {
            this.A02.setVisibility(0);
            this.A02.setVideoURI(str);
            this.A02.A03(this.A0D);
            this.A02.A03(this.A09);
            this.A02.A03(this.A0B);
            this.A02.A03(this.A0A);
            this.A02.A03(this.A0C);
        }
    }
}
