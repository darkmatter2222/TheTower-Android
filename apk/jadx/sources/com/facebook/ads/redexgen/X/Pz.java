package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.Timeline;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class Pz {
    public static String[] A06 = {"KJd4SIX9bFdOLKLE1j6Vag6lDPyxnKMM", "RQBlrOEc0ryI432moAmJKoCYD4hA7KSo", "e7rXMFN", "g7Wk7vPQofzQ3IT20EMjl4", "uRIv26KPiTMcDh", "Kt7e4scKpUDR", "Io8mfv0", "Fj3WcjTMYLJcnKYH"};
    public C1862Rk A00;
    public C1862Rk A01;
    public C1862Rk A02;
    public AbstractC14149l<C1862Rk> A03 = AbstractC14149l.A03();
    public AbstractC1967Vq<C1862Rk, Timeline> A04 = AbstractC1967Vq.A04();
    public final UM A05;

    public Pz(UM um) {
        this.A05 = um;
    }

    public static C1862Rk A00(LQ lq, AbstractC14149l<C1862Rk> abstractC14149l, C1862Rk c1862Rk, UM um) {
        Object obj;
        int i;
        Timeline timelineA8H = lq.A8H();
        int iA8D = lq.A8D();
        Object objA0M = timelineA8H.A0N() ? null : timelineA8H.A0M(iA8D);
        int iA07 = (lq.ABL() || timelineA8H.A0N()) ? -1 : timelineA8H.A0H(iA8D, um).A07(N1.A0O(lq.A8F()) - um.A0C());
        for (int i2 = 0; i2 < abstractC14149l.size(); i2++) {
            C1862Rk c1862Rk2 = abstractC14149l.get(i2);
            if (A04(c1862Rk2, objA0M, lq.ABL(), lq.A89(), lq.A8A(), iA07)) {
                return c1862Rk2;
            }
        }
        if (abstractC14149l.isEmpty() && c1862Rk != null && A04(c1862Rk, obj, lq.ABL(), lq.A89(), lq.A8A(), i)) {
            obj = objA0M;
            i = iA07;
            return c1862Rk;
        }
        obj = objA0M;
        i = iA07;
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0052  */
    /* JADX WARN: Code duplicated, block: B:15:0x005c  */
    @MetaExoPlayerCustomization
    private void A02(Timeline timeline) {
        C1968Vr<C1862Rk, Timeline> c1968VrA03 = AbstractC1967Vq.A03();
        if (this.A03.isEmpty()) {
            A03(c1968VrA03, this.A01, timeline);
            C1862Rk c1862Rk = this.A02;
            if (A06[7].length() == 11) {
                throw new RuntimeException();
            }
            String[] strArr = A06;
            strArr[4] = "SFFeMhCWOx4mkt";
            strArr[3] = "OeAFK2mj2j4I62wsIHhNmd";
            if (!A6.A01(c1862Rk, this.A01)) {
                A03(c1968VrA03, this.A02, timeline);
            }
            C1862Rk c1862Rk2 = this.A00;
            if (A06[0].charAt(24) == 'D') {
                String[] strArr2 = A06;
                strArr2[4] = "nwjeKqa56zVpsX";
                strArr2[3] = "ZIYXg9JpEESGpw2jJSXeG4";
                if (!A6.A01(c1862Rk2, this.A01)) {
                    if (!A6.A01(this.A00, this.A02)) {
                        A03(c1968VrA03, this.A00, timeline);
                    }
                }
            } else if (!A6.A01(c1862Rk2, this.A01)) {
                if (!A6.A01(this.A00, this.A02)) {
                    A03(c1968VrA03, this.A00, timeline);
                }
            }
        } else {
            for (int i = 0; i < this.A03.size(); i++) {
                A03(c1968VrA03, this.A03.get(i), timeline);
            }
            if (!this.A03.contains(this.A00)) {
                A03(c1968VrA03, this.A00, timeline);
            }
        }
        AbstractC1967Vq<C1862Rk, Timeline> abstractC1967VqA07 = c1968VrA03.A07();
        if (A06[1].charAt(2) != 'B') {
            this.A04 = abstractC1967VqA07;
        } else {
            A06[0] = "rKMKb263tcLdpphrkSuVJeufDK83wEO8";
            this.A04 = abstractC1967VqA07;
        }
    }

    private void A03(C1968Vr<C1862Rk, Timeline> c1968Vr, C1862Rk c1862Rk, Timeline timeline) {
        if (c1862Rk == null) {
            return;
        }
        if (timeline.A0A(c1862Rk.A04) != -1) {
            c1968Vr.A05(c1862Rk, timeline);
            return;
        }
        Timeline timeline2 = this.A04.get(c1862Rk);
        if (timeline2 != null) {
            c1968Vr.A05(c1862Rk, timeline2);
        }
    }

    public static boolean A04(C1862Rk c1862Rk, Object obj, boolean z, int i, int i2, int i3) {
        if (c1862Rk.A04.equals(obj)) {
            return (z && c1862Rk.A00 == i && c1862Rk.A01 == i2) || (!z && c1862Rk.A00 == -1 && c1862Rk.A02 == i3);
        }
        return false;
    }

    public final Timeline A05(C1862Rk c1862Rk) {
        return this.A04.get(c1862Rk);
    }

    public final C1862Rk A06() {
        return this.A00;
    }

    public final void A07(LQ lq) {
        this.A00 = A00(lq, this.A03, this.A01, this.A05);
        A02(lq.A8H());
    }
}
