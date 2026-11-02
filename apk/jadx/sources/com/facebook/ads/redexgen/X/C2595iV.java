package com.facebook.ads.redexgen.X;

import java.util.Comparator;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.iV, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2595iV implements Comparator<C2596iW> {
    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.Comparator
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final int compare(C2596iW c2596iW, C2596iW c2596iW2) {
        if ((c2596iW.A03 == null) != (c2596iW2.A03 == null)) {
            return c2596iW.A03 == null ? 1 : -1;
        }
        if (c2596iW.A04 != c2596iW2.A04) {
            return c2596iW.A04 ? -1 : 1;
        }
        int i = c2596iW2.A02 - c2596iW.A02;
        if (i != 0) {
            return i;
        }
        int i2 = c2596iW.A00 - c2596iW2.A00;
        if (i2 != 0) {
            return i2;
        }
        return 0;
    }
}
