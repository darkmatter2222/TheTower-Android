package com.facebook.ads.redexgen.X;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7S, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C7S extends AbstractC1636Ia {
    public static TimeInterpolator A0B;
    public static String[] A0C = {"K3xavpXOVVnTPS8V8FmisIpuez1NdmFn", "QjoCrUVtXYT15qNhmppxWCsnlOvXMRWn", "HVYav4KnfeU3lAWSFDiSVAYelCZD7hW1", "SKhwmHHGUoQzTLK2kw5WKB1efbL3jYLm", "aZpNXGptJoOcjVlsPlgA0RFw1bcc4fI1", "y8DDj9eTKGlZyxtiH83YwnquX80t2qUq", "Eqht3urb", "PkOCx2w9GPXTa0iGANdHxOJetOGxrMw0"};
    public ArrayList<AbstractC2638jE> A0A = new ArrayList<>();
    public ArrayList<AbstractC2638jE> A07 = new ArrayList<>();
    public ArrayList<C2594iU> A09 = new ArrayList<>();
    public ArrayList<C2593iT> A08 = new ArrayList<>();
    public ArrayList<ArrayList<AbstractC2638jE>> A01 = new ArrayList<>();
    public ArrayList<ArrayList<C2594iU>> A05 = new ArrayList<>();
    public ArrayList<ArrayList<C2593iT>> A03 = new ArrayList<>();
    public ArrayList<AbstractC2638jE> A00 = new ArrayList<>();
    public ArrayList<AbstractC2638jE> A04 = new ArrayList<>();
    public ArrayList<AbstractC2638jE> A06 = new ArrayList<>();
    public ArrayList<AbstractC2638jE> A02 = new ArrayList<>();

    private void A00(C2593iT c2593iT) {
        if (c2593iT.A05 != null) {
            A05(c2593iT, c2593iT.A05);
        }
        if (c2593iT.A04 != null) {
            A05(c2593iT, c2593iT.A04);
        }
    }

    private void A01(AbstractC2638jE abstractC2638jE) {
        View view = abstractC2638jE.A0H;
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.A06.add(abstractC2638jE);
        viewPropertyAnimatorAnimate.setDuration(A0D()).alpha(0.0f).setListener(new C2588iO(this, abstractC2638jE, viewPropertyAnimatorAnimate, view)).start();
    }

    private void A02(AbstractC2638jE abstractC2638jE) {
        if (A0B == null) {
            A0B = new ValueAnimator().getInterpolator();
        }
        abstractC2638jE.A0H.animate().setInterpolator(A0B);
        A0L(abstractC2638jE);
    }

    private final void A03(List<AbstractC2638jE> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            list.get(size).A0H.animate().cancel();
        }
    }

    private void A04(List<C2593iT> list, AbstractC2638jE abstractC2638jE) {
        for (int size = list.size() - 1; size >= 0; size--) {
            C2593iT c2593iT = list.get(size);
            if (A05(c2593iT, abstractC2638jE) && c2593iT.A05 == null && c2593iT.A04 == null) {
                list.remove(c2593iT);
            }
        }
    }

    private boolean A05(C2593iT c2593iT, AbstractC2638jE abstractC2638jE) {
        boolean z = false;
        if (c2593iT.A04 == abstractC2638jE) {
            c2593iT.A04 = null;
        } else {
            if (c2593iT.A05 != abstractC2638jE) {
                return false;
            }
            c2593iT.A05 = null;
            z = true;
        }
        abstractC2638jE.A0H.setAlpha(1.0f);
        abstractC2638jE.A0H.setTranslationX(0.0f);
        abstractC2638jE.A0H.setTranslationY(0.0f);
        A0W(abstractC2638jE, z);
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2616is
    public final void A0H() {
        for (int size = this.A09.size() - 1; size >= 0; size--) {
            C2594iU c2594iU = this.A09.get(size);
            View view = c2594iU.A04.A0H;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            A0U(c2594iU.A04);
            this.A09.remove(size);
        }
        for (int size2 = this.A0A.size() - 1; size2 >= 0; size2--) {
            A0V(this.A0A.get(size2));
            this.A0A.remove(size2);
        }
        for (int size3 = this.A07.size() - 1; size3 >= 0; size3--) {
            AbstractC2638jE abstractC2638jE = this.A07.get(size3);
            abstractC2638jE.A0H.setAlpha(1.0f);
            A0T(abstractC2638jE);
            this.A07.remove(size3);
        }
        for (int size4 = this.A08.size() - 1; size4 >= 0; size4--) {
            A00(this.A08.get(size4));
        }
        this.A08.clear();
        if (A0M()) {
            for (int size5 = this.A05.size() - 1; size5 >= 0; size5--) {
                ArrayList<C2594iU> arrayList = this.A05.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    C2594iU c2594iU2 = arrayList.get(size6);
                    View view2 = c2594iU2.A04.A0H;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    A0U(c2594iU2.A04);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.A05.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.A01.size() - 1; size7 >= 0; size7--) {
                ArrayList<AbstractC2638jE> arrayList2 = this.A01.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    AbstractC2638jE abstractC2638jE2 = arrayList2.get(size8);
                    abstractC2638jE2.A0H.setAlpha(1.0f);
                    A0T(abstractC2638jE2);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.A01.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.A03.size() - 1; size9 >= 0; size9--) {
                ArrayList<C2593iT> arrayList3 = this.A03.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    A00(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.A03.remove(arrayList3);
                    }
                }
            }
            A03(this.A06);
            A03(this.A04);
            A03(this.A00);
            A03(this.A02);
            A0G();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2616is
    public final void A0I() {
        boolean z = !this.A0A.isEmpty();
        boolean z2 = !this.A09.isEmpty();
        boolean z3 = !this.A08.isEmpty();
        boolean z4 = !this.A07.isEmpty();
        if (z || z2 || z4 || z3) {
            Iterator<AbstractC2638jE> it = this.A0A.iterator();
            while (it.hasNext()) {
                A01(it.next());
            }
            this.A0A.clear();
            if (z2) {
                ArrayList<C2594iU> arrayList = new ArrayList<>();
                arrayList.addAll(this.A09);
                this.A05.add(arrayList);
                this.A09.clear();
                RunnableC2585iL runnableC2585iL = new RunnableC2585iL(this, arrayList);
                if (z) {
                    AbstractC2540hb.A0E(arrayList.get(0).A04.A0H, runnableC2585iL, A0D());
                } else {
                    runnableC2585iL.run();
                }
            }
            if (z3) {
                ArrayList<C2593iT> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.A08);
                this.A03.add(arrayList2);
                this.A08.clear();
                RunnableC2586iM runnableC2586iM = new RunnableC2586iM(this, arrayList2);
                if (z) {
                    AbstractC2540hb.A0E(arrayList2.get(0).A05.A0H, runnableC2586iM, A0D());
                } else {
                    runnableC2586iM.run();
                }
            }
            if (z4) {
                ArrayList<AbstractC2638jE> arrayList3 = new ArrayList<>();
                arrayList3.addAll(this.A07);
                this.A01.add(arrayList3);
                this.A07.clear();
                RunnableC2587iN runnableC2587iN = new RunnableC2587iN(this, arrayList3);
                if (!z && !z2 && !z3) {
                    runnableC2587iN.run();
                    return;
                }
                if (A0C[0].charAt(3) == 'S') {
                    throw new RuntimeException();
                }
                String[] strArr = A0C;
                strArr[4] = "oGS3g0YSOogxL8fDiPQ9wWzcLRV8E0qu";
                strArr[3] = "UwBhVdK7HoWqzQqehBBKiWd5H5AJwN9O";
                AbstractC2540hb.A0E(arrayList3.get(0).A0H, runnableC2587iN, Math.max(z2 ? A0C() : 0L, z3 ? A0B() : 0L) + (z ? A0D() : 0L));
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2616is
    public final void A0L(AbstractC2638jE abstractC2638jE) {
        View view = abstractC2638jE.A0H;
        view.animate().cancel();
        for (int size = this.A09.size() - 1; size >= 0; size--) {
            if (this.A09.get(size).A04 == abstractC2638jE) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                A0U(abstractC2638jE);
                this.A09.remove(size);
            }
        }
        A04(this.A08, abstractC2638jE);
        if (this.A0A.remove(abstractC2638jE)) {
            view.setAlpha(1.0f);
            A0V(abstractC2638jE);
        }
        if (this.A07.remove(abstractC2638jE)) {
            view.setAlpha(1.0f);
            A0T(abstractC2638jE);
        }
        for (int size2 = this.A03.size() - 1; size2 >= 0; size2--) {
            ArrayList<C2593iT> arrayList = this.A03.get(size2);
            A04(arrayList, abstractC2638jE);
            if (arrayList.isEmpty()) {
                this.A03.remove(size2);
            }
        }
        for (int size3 = this.A05.size() - 1; size3 >= 0; size3--) {
            ArrayList<C2594iU> arrayList2 = this.A05.get(size3);
            for (int size4 = arrayList2.size() - 1; size4 >= 0; size4--) {
                if (arrayList2.get(size4).A04 == abstractC2638jE) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    String[] strArr = A0C;
                    if (strArr[4].charAt(9) == strArr[3].charAt(9)) {
                        A0C[1] = "ZnQkkSK02m4qlFQsfXGc8k1uWyp7aRL1";
                        A0U(abstractC2638jE);
                        arrayList2.remove(size4);
                        if (!arrayList2.isEmpty()) {
                            break;
                        }
                        this.A05.remove(size3);
                        break;
                    }
                    throw new RuntimeException();
                }
            }
        }
        int size5 = this.A01.size();
        if (A0C[0].charAt(3) == 'S') {
            throw new RuntimeException();
        }
        A0C[7] = "NHib0yCpDtVNZGbvtAXjIsv6RzrfBwwf";
        for (int i = size5 - 1; i >= 0; i--) {
            ArrayList<AbstractC2638jE> arrayList3 = this.A01.get(i);
            if (arrayList3.remove(abstractC2638jE)) {
                view.setAlpha(1.0f);
                A0T(abstractC2638jE);
                if (arrayList3.isEmpty()) {
                    this.A01.remove(i);
                }
            }
        }
        this.A06.remove(abstractC2638jE);
        this.A00.remove(abstractC2638jE);
        this.A02.remove(abstractC2638jE);
        this.A04.remove(abstractC2638jE);
        A0b();
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0073  */
    /* JADX WARN: Code duplicated, block: B:28:0x009c  */
    /* JADX WARN: Code duplicated, block: B:34:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:38:0x00ba A[RETURN, SYNTHETIC] */
    @Override // com.facebook.ads.redexgen.X.AbstractC2616is
    public final boolean A0M() {
        ArrayList<ArrayList<C2593iT>> arrayList;
        if (this.A07.isEmpty() && this.A08.isEmpty() && this.A09.isEmpty() && this.A0A.isEmpty()) {
            boolean zIsEmpty = this.A04.isEmpty();
            String[] strArr = A0C;
            if (strArr[2].charAt(18) == strArr[5].charAt(18)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0C;
            strArr2[4] = "HATKbuX1ioRbKjbJza4uRkbMkwnilInw";
            strArr2[3] = "55W5G9gSwoJRpeM2nuMk9rdzPBhIsXI5";
            if (zIsEmpty && this.A06.isEmpty()) {
                boolean zIsEmpty2 = this.A00.isEmpty();
                String[] strArr3 = A0C;
                if (strArr3[2].charAt(18) != strArr3[5].charAt(18)) {
                    A0C[7] = "PBqWGImhwZdo7IXQpaNFK9QlBHxMp4wk";
                    if (zIsEmpty2) {
                        if (this.A02.isEmpty() && this.A05.isEmpty() && this.A01.isEmpty()) {
                            arrayList = this.A03;
                            if (A0C[7].charAt(30) != 'w') {
                                throw new RuntimeException();
                            }
                            A0C[7] = "80rjjAfjuSoUPBYOWBOUrC4mhnJBtDwK";
                            if (!arrayList.isEmpty()) {
                                return false;
                            }
                        }
                    }
                } else if (zIsEmpty2) {
                    if (this.A02.isEmpty()) {
                        arrayList = this.A03;
                        if (A0C[7].charAt(30) != 'w') {
                            throw new RuntimeException();
                        }
                        A0C[7] = "80rjjAfjuSoUPBYOWBOUrC4mhnJBtDwK";
                        if (!arrayList.isEmpty()) {
                            return false;
                        }
                    }
                }
            }
        }
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2616is
    public final boolean A0S(AbstractC2638jE abstractC2638jE, List<Object> list) {
        return !list.isEmpty() || super.A0S(abstractC2638jE, list);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1636Ia
    public final boolean A0X(AbstractC2638jE abstractC2638jE) {
        A02(abstractC2638jE);
        abstractC2638jE.A0H.setAlpha(0.0f);
        this.A07.add(abstractC2638jE);
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1636Ia
    public final boolean A0Y(AbstractC2638jE abstractC2638jE) {
        A02(abstractC2638jE);
        this.A0A.add(abstractC2638jE);
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1636Ia
    public final boolean A0Z(AbstractC2638jE abstractC2638jE, int i, int i2, int i3, int i4) {
        View view = abstractC2638jE.A0H;
        int translationX = i + ((int) abstractC2638jE.A0H.getTranslationX());
        int translationY = i2 + ((int) abstractC2638jE.A0H.getTranslationY());
        A02(abstractC2638jE);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            A0U(abstractC2638jE);
            return false;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        this.A09.add(new C2594iU(abstractC2638jE, translationX, translationY, i3, i4));
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1636Ia
    public final boolean A0a(AbstractC2638jE abstractC2638jE, AbstractC2638jE abstractC2638jE2, int i, int i2, int i3, int i4) {
        if (abstractC2638jE == abstractC2638jE2) {
            return A0Z(abstractC2638jE, i, i2, i3, i4);
        }
        float translationX = abstractC2638jE.A0H.getTranslationX();
        float translationY = abstractC2638jE.A0H.getTranslationY();
        float alpha = abstractC2638jE.A0H.getAlpha();
        A02(abstractC2638jE);
        int i5 = (int) ((i3 - i) - translationX);
        int i6 = (int) ((i4 - i2) - translationY);
        abstractC2638jE.A0H.setTranslationX(translationX);
        abstractC2638jE.A0H.setTranslationY(translationY);
        abstractC2638jE.A0H.setAlpha(alpha);
        if (abstractC2638jE2 != null) {
            A02(abstractC2638jE2);
            abstractC2638jE2.A0H.setTranslationX(-i5);
            abstractC2638jE2.A0H.setTranslationY(-i6);
            abstractC2638jE2.A0H.setAlpha(0.0f);
        }
        this.A08.add(new C2593iT(abstractC2638jE, abstractC2638jE2, i, i2, i3, i4));
        return true;
    }

    public final void A0b() {
        if (A0M()) {
            return;
        }
        A0G();
    }

    public final void A0c(C2593iT c2593iT) {
        AbstractC2638jE abstractC2638jE = c2593iT.A05;
        View view = abstractC2638jE == null ? null : abstractC2638jE.A0H;
        AbstractC2638jE abstractC2638jE2 = c2593iT.A04;
        View view2 = abstractC2638jE2 != null ? abstractC2638jE2.A0H : null;
        if (view != null) {
            ViewPropertyAnimator duration = view.animate().setDuration(A0B());
            this.A02.add(c2593iT.A05);
            duration.translationX(c2593iT.A02 - c2593iT.A00);
            duration.translationY(c2593iT.A03 - c2593iT.A01);
            duration.alpha(0.0f).setListener(new C2591iR(this, c2593iT, duration, view)).start();
        }
        if (view2 != null) {
            ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
            this.A02.add(c2593iT.A04);
            viewPropertyAnimatorAnimate.translationX(0.0f).translationY(0.0f).setDuration(A0B()).alpha(1.0f).setListener(new C2592iS(this, c2593iT, viewPropertyAnimatorAnimate, view2)).start();
        }
    }

    public final void A0d(AbstractC2638jE abstractC2638jE) {
        View view = abstractC2638jE.A0H;
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.A00.add(abstractC2638jE);
        viewPropertyAnimatorAnimate.alpha(1.0f).setDuration(A0A()).setListener(new C2589iP(this, abstractC2638jE, view, viewPropertyAnimatorAnimate)).start();
    }

    public final void A0e(AbstractC2638jE abstractC2638jE, int i, int i2, int i3, int i4) {
        View view = abstractC2638jE.A0H;
        int i5 = i3 - i;
        int i6 = i4 - i2;
        if (i5 != 0) {
            view.animate().translationX(0.0f);
        }
        if (i6 != 0) {
            view.animate().translationY(0.0f);
        }
        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
        this.A04.add(abstractC2638jE);
        viewPropertyAnimatorAnimate.setDuration(A0C()).setListener(new C2590iQ(this, abstractC2638jE, i5, view, i6, viewPropertyAnimatorAnimate)).start();
    }
}
