package com.facebook.ads.redexgen.X;

import android.util.SparseBooleanArray;
import android.view.ViewGroup;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C9 extends AbstractC2608ik<C1> {
    public final int A00;
    public final SparseBooleanArray A01;
    public final LA A02;
    public final C2746kz A03;
    public final C1618Hi A04;
    public final InterfaceC2884nG A05;
    public final C3077qT A06;
    public final AbstractC3112r2 A07;
    public final InterfaceC3119r9 A08;
    public final C1483Cc A09;
    public final C2199c2 A0A;
    public final String A0B;
    public final List<InterfaceC2619iv> A0C;

    public C9(C1618Hi c1618Hi, LA la, InterfaceC2884nG interfaceC2884nG, C2746kz c2746kz, C2199c2 c2199c2, C3077qT c3077qT, InterfaceC3119r9 interfaceC3119r9, String str, int i, C1483Cc c1483Cc, AbstractC3112r2 abstractC3112r2, List<InterfaceC2619iv> list, SparseBooleanArray sparseBooleanArray) {
        this.A04 = c1618Hi;
        this.A05 = interfaceC2884nG;
        this.A03 = c2746kz;
        this.A0A = c2199c2;
        this.A06 = c3077qT;
        this.A08 = interfaceC3119r9;
        this.A02 = la;
        this.A00 = i;
        this.A0B = str;
        this.A09 = c1483Cc;
        this.A07 = abstractC3112r2;
        this.A0C = list;
        this.A01 = sparseBooleanArray;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2608ik
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final C1 A0F(ViewGroup viewGroup, int i) {
        return new C1(AbstractC2798lr.A00(new C3348uq(this.A04, this.A05, this.A08, this.A02, null, this.A0A, this.A06).A0P(this.A07).A0U(), this.A00, this.A0B, this.A09, i), this.A01, this.A0A, this.A04, this.A02.A33(), this.A02.A39().size() > 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2608ik
    /* JADX INFO: renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final void A0M(C1 c1, int i) {
        c1.A0w(this.A0C.get(i), i, this.A05, this.A03, this.A06, this.A0B);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2608ik
    public final int A0B() {
        return this.A0C.size();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2608ik
    public final int A0C(int i) {
        return this.A0C.get(i).A97();
    }
}
