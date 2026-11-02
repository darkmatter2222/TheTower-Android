package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class OS implements InterfaceC2166bV {
    public final List<C2224cR> A00;
    public final long[] A01;
    public final long[] A02;

    public OS(List<C2224cR> list) {
        this.A00 = Collections.unmodifiableList(new ArrayList(list));
        this.A01 = new long[list.size() * 2];
        for (int i = 0; i < list.size(); i++) {
            C2224cR c2224cR = list.get(i);
            int i2 = i * 2;
            this.A01[i2] = c2224cR.A01;
            this.A01[i2 + 1] = c2224cR.A00;
        }
        this.A02 = Arrays.copyOf(this.A01, this.A01.length);
        Arrays.sort(this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2166bV
    public final List<C1911Th> A88(long j) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < this.A00.size(); i++) {
            if (this.A01[i * 2] <= j && j < this.A01[(i * 2) + 1]) {
                C2224cR c2224cR = this.A00.get(i);
                if (c2224cR.A02.A01 == -3.4028235E38f) {
                    arrayList2.add(c2224cR);
                } else {
                    arrayList.add(c2224cR.A02);
                }
            }
        }
        Collections.sort(arrayList2, new Comparator() { // from class: com.facebook.ads.redexgen.X.cb
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Long.compare(((C2224cR) obj).A01, ((C2224cR) obj2).A01);
            }
        });
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            arrayList.add(((C2224cR) arrayList2.get(i2)).A02.A02().A07((-1) - i2, 1).A0H());
        }
        return arrayList;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2166bV
    public final long A8e(int i) {
        AbstractC1722Ln.A07(i >= 0);
        AbstractC1722Ln.A07(i < this.A02.length);
        return this.A02[i];
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2166bV
    public final int A8f() {
        return this.A02.length;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2166bV
    public final int A9D(long j) {
        int iA0K = N1.A0K(this.A02, j, false, false);
        if (iA0K < this.A02.length) {
            return iA0K;
        }
        return -1;
    }
}
