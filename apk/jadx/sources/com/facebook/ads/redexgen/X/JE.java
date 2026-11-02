package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class JE implements InterfaceC2571i7 {
    public final /* synthetic */ C7T A00;
    public final /* synthetic */ C2566i2 A01;

    public JE(C7T c7t, C2566i2 c2566i2) {
        this.A00 = c7t;
        this.A01 = c2566i2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2571i7
    public final Object A5p(int i) {
        C2564i0 c2564i0A00 = this.A01.A00(i);
        if (c2564i0A00 == null) {
            return null;
        }
        return c2564i0A00.A0M();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2571i7
    public final List<Object> A77(String str, int i) {
        List<C2564i0> listA03 = this.A01.A03(str, i);
        if (listA03 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int size = listA03.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(listA03.get(i2).A0M());
        }
        return arrayList;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2571i7
    public final Object A78(int i) {
        C2564i0 c2564i0A01 = this.A01.A01(i);
        if (c2564i0A01 == null) {
            return null;
        }
        return c2564i0A01.A0M();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2571i7
    public final boolean AI8(int i, int i2, Bundle bundle) {
        return this.A01.A04(i, i2, bundle);
    }
}
