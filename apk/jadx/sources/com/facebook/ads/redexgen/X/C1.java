package com.facebook.ads.redexgen.X;

import android.util.SparseBooleanArray;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1 extends AbstractC2638jE {
    public static String[] A08 = {"FXqlzRGtImhOdfWqCRyac46PuEORcVHh", "tin0mHuxCmVFWzwOygyTfmqlJ9Mzxl7D", "VABdh0TJ2eWi98wNTSIP5bEHQKFvO8pS", com.ironsource.G5.q, "wryP", "p7AsImouYb7XdSCXwl9kOcdMHl7Wlu5Y", "TIzINHzpeOxuFps4upXK4j08MllXArTc", "oGk0V5WwsqztiP1ME5WI8pfP"};
    public C2410fT A00;
    public AbstractC2200c3 A01;
    public C2199c2 A02;
    public final SparseBooleanArray A03;
    public final C1618Hi A04;
    public final AbstractC13235h A05;
    public final C2199c2 A06;
    public final boolean A07;

    public C1(AbstractC13235h abstractC13235h, SparseBooleanArray sparseBooleanArray, C2199c2 c2199c2, C1618Hi c1618Hi, C2410fT c2410fT, boolean z) {
        super(abstractC13235h);
        this.A04 = c1618Hi;
        this.A05 = abstractC13235h;
        this.A03 = sparseBooleanArray;
        this.A06 = c2199c2;
        this.A00 = c2410fT;
        this.A07 = z;
    }

    private void A05(InterfaceC2884nG interfaceC2884nG, C3077qT c3077qT, String str, List<C2622iy> list) {
        boolean z = false;
        final boolean z2 = false;
        for (C2622iy c2622iy : list) {
            if (!this.A03.get(c2622iy.A02())) {
                z = true;
            }
            if (c2622iy.A02() == 0) {
                z2 = true;
            }
            if (z && z2) {
                break;
            }
        }
        if (z) {
            if (this.A02 != null) {
                this.A02.A0V();
                this.A02 = null;
            }
            this.A01 = new C2(this, str, list, c3077qT, interfaceC2884nG);
            this.A02 = new C2199c2(this.A05, 10, new WeakReference(this.A01), this.A04);
            this.A02.A0Y(false);
            this.A02.A0W(100);
            this.A02.A0X(100);
            this.A05.setOnAssetsLoadedListener(new InterfaceC3409vp() { // from class: com.facebook.ads.redexgen.X.C3
                @Override // com.facebook.ads.redexgen.X.InterfaceC3409vp
                public final void ADv() {
                    this.A00.A0x(z2);
                }
            });
        }
    }

    public final void A0w(InterfaceC2619iv interfaceC2619iv, int i, InterfaceC2884nG interfaceC2884nG, C2746kz c2746kz, C3077qT c3077qT, String str) {
        this.A05.A1u(this.A04, interfaceC2619iv);
        this.A05.setTag(-1593835536, Integer.valueOf(i));
        this.A05.A1p();
        List<C2622iy> listA7q = interfaceC2619iv.A7q();
        if (listA7q == null || listA7q.isEmpty()) {
            return;
        }
        Iterator<C2622iy> it = listA7q.iterator();
        while (it.hasNext()) {
            this.A05.A1v(it.next().A08());
        }
        A05(interfaceC2884nG, c3077qT, str, listA7q);
    }

    public final /* synthetic */ void A0x(boolean z) {
        if (z) {
            C2199c2 c2199c2 = this.A06;
            if (A08[3].length() != 1) {
                throw new RuntimeException();
            }
            A08[3] = "M";
            c2199c2.A0U();
        }
        if (this.A02 != null) {
            this.A02.A0U();
        }
    }
}
