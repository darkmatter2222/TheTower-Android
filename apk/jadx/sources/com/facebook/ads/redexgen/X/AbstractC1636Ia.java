package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ia, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC1636Ia extends AbstractC2616is {
    public static String[] A01 = {"ufm8s7LRmOM7", "sIBwdoM05ajejE", "0NxvrnR7UZDHrBy4xVhLU5lsqzWJ5R3x", "FsILnIqpIa8iE3wffvJrO4tNlZdDmpUd", "wKnqjXSh8f61FKWyknAGi8xlXXoDdiLA", "lpMPMGmveEx5YZPPZgDkriuB4nzdouJK", "fQPzW90JHWOApVaaQbndX59CGXgCnXlm", "Pp9SKBa6RS3IfLIGXA9e4oeVKGHa5CsE"};
    public boolean A00 = true;

    @Override // com.facebook.ads.redexgen.X.AbstractC2616is
    public final boolean A0N(AbstractC2638jE abstractC2638jE) {
        return !this.A00 || abstractC2638jE.A0m();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2616is
    public final boolean A0O(AbstractC2638jE abstractC2638jE, C2615ir c2615ir, C2615ir c2615ir2) {
        return (c2615ir == null || (c2615ir.A01 == c2615ir2.A01 && c2615ir.A03 == c2615ir2.A03)) ? A0X(abstractC2638jE) : A0Z(abstractC2638jE, c2615ir.A01, c2615ir.A03, c2615ir2.A01, c2615ir2.A03);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2616is
    public final boolean A0P(AbstractC2638jE abstractC2638jE, C2615ir c2615ir, C2615ir c2615ir2) {
        int i = c2615ir.A01;
        int i2 = c2615ir.A03;
        View view = abstractC2638jE.A0H;
        int left = c2615ir2 == null ? view.getLeft() : c2615ir2.A01;
        int top = c2615ir2 == null ? view.getTop() : c2615ir2.A03;
        if (abstractC2638jE.A0n() || (i == left && i2 == top)) {
            return A0Y(abstractC2638jE);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return A0Z(abstractC2638jE, i, i2, left, top);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2616is
    public final boolean A0Q(AbstractC2638jE abstractC2638jE, C2615ir c2615ir, C2615ir c2615ir2) {
        if (c2615ir.A01 != c2615ir2.A01 || c2615ir.A03 != c2615ir2.A03) {
            return A0Z(abstractC2638jE, c2615ir.A01, c2615ir.A03, c2615ir2.A01, c2615ir2.A03);
        }
        A0U(abstractC2638jE);
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2616is
    public final boolean A0R(AbstractC2638jE abstractC2638jE, AbstractC2638jE abstractC2638jE2, C2615ir c2615ir, C2615ir c2615ir2) {
        int i;
        int i2;
        int i3 = c2615ir.A01;
        int i4 = c2615ir.A03;
        if (abstractC2638jE2.A0s()) {
            i = c2615ir.A01;
            i2 = c2615ir.A03;
        } else {
            i = c2615ir2.A01;
            i2 = c2615ir2.A03;
        }
        if (A01[1].length() != 14) {
            throw new RuntimeException();
        }
        A01[1] = "7F8ns227Orjao7";
        return A0a(abstractC2638jE, abstractC2638jE2, i3, i4, i, i2);
    }

    public final void A0T(AbstractC2638jE abstractC2638jE) {
        A0K(abstractC2638jE);
    }

    public final void A0U(AbstractC2638jE abstractC2638jE) {
        A0K(abstractC2638jE);
    }

    public final void A0V(AbstractC2638jE abstractC2638jE) {
        A0K(abstractC2638jE);
    }

    public final void A0W(AbstractC2638jE abstractC2638jE, boolean z) {
        A0K(abstractC2638jE);
    }

    public abstract boolean A0X(AbstractC2638jE abstractC2638jE);

    public abstract boolean A0Y(AbstractC2638jE abstractC2638jE);

    public abstract boolean A0Z(AbstractC2638jE abstractC2638jE, int i, int i2, int i3, int i4);

    public abstract boolean A0a(AbstractC2638jE abstractC2638jE, AbstractC2638jE abstractC2638jE2, int i, int i2, int i3, int i4);
}
