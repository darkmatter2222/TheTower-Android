package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.animation.AlphaAnimation;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.settings.AdInternalSettings;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4v, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C13114v extends G2<C2199c2> implements InterfaceC2751l6 {
    public static String[] A02 = {"iVby5wy6H7l4dzY0Hld0xs9tuHtnGk", "Nr0U5YnFPaRVMsCPPiWFbDdqiRS3TX59", "NmHEOi9mcJk9OQjZmIqLk3AYwOx5ICK3", "j6OxXppfxNxejmkkIb10P2S2ED13bfax", "YxA", "okdCTGqDBxOQkU", "XAA3rxsPdfTGxXL8JCFSxOB2RupP9g", "Mu"};
    public C1618Hi A00;
    public boolean A01;

    public C13114v(C2199c2 c2199c2, C1618Hi c1618Hi) {
        super(c2199c2);
        this.A00 = c1618Hi;
        this.A01 = false;
    }

    private void A00(int i) {
        if (!this.A01) {
            this.A00.A0F().A4L(i);
        }
        String[] strArr = A02;
        if (strArr[0].length() != strArr[6].length()) {
            throw new RuntimeException();
        }
        A02[1] = "k6Oe58jhR2JQ133LIP7LsY5lW6eco9l5";
        this.A01 = true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC2979oq
    public final void A07() {
        C2199c2 c2199c2A08 = A08();
        if (c2199c2A08 == null) {
            A00(0);
            return;
        }
        View view = c2199c2A08.A0C;
        AbstractC2200c3 abstractC2200c3 = (AbstractC2200c3) c2199c2A08.A0E.get();
        boolean z = view == null;
        if (z || abstractC2200c3 == null) {
            if (c2199c2A08.A07) {
                A00(z ? 1 : 2);
                return;
            }
            return;
        }
        C2197c0 c2197c0A0E = C2199c2.A0E(view, c2199c2A08.A0A, this.A00);
        if (c2197c0A0E.A04()) {
            C2199c2.A05(c2199c2A08);
        } else {
            c2199c2A08.A00 = 0;
        }
        boolean z2 = c2199c2A08.A00 > c2199c2A08.A09;
        boolean z3 = c2199c2A08.A05 != null && c2199c2A08.A05.A04();
        if (z2 || !c2197c0A0E.A04()) {
            c2199c2A08.A05 = c2197c0A0E;
        }
        String strValueOf = String.valueOf(c2197c0A0E.A01());
        synchronized (c2199c2A08) {
            c2199c2A08.A06.put(strValueOf, Integer.valueOf((c2199c2A08.A06.containsKey(strValueOf) ? ((Integer) c2199c2A08.A06.get(strValueOf)).intValue() : 0) + 1));
        }
        if (z2 && !z3) {
            this.A01 = true;
            c2199c2A08.A03 = System.currentTimeMillis();
            if (c2199c2A08.A07) {
                this.A00.A0F().A4M();
            }
            abstractC2200c3.A03();
            if (BuildConfigApi.isDebug() && AdInternalSettings.isVisibleAnimation()) {
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
                alphaAnimation.setDuration(500L);
                view.startAnimation(alphaAnimation);
            }
            if (!c2199c2A08.A0F) {
                return;
            }
        } else if (z2 || !z3) {
            abstractC2200c3.A02();
            if (!this.A01 && c2199c2A08.A07) {
                this.A00.A0F().A4K(c2197c0A0E.A02());
            }
            this.A01 = true;
        } else {
            this.A01 = true;
            if (c2199c2A08.A07) {
                this.A00.A0F().A3o(c2197c0A0E.A02());
            }
            abstractC2200c3.A00();
        }
        if (c2199c2A08.A08 || c2199c2A08.A04 == null) {
            return;
        }
        c2199c2A08.A0B.postDelayed(c2199c2A08.A04, c2199c2A08.A02);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2751l6
    public final C1618Hi A7M() {
        return this.A00;
    }
}
