package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import javax.annotation.Nullable;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.s2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3174s2 extends View {

    @Nullable
    public InterfaceC3173s1 A00;

    public C3174s2(C1618Hi c1618Hi, InterfaceC3173s1 interfaceC3173s1) {
        super(c1618Hi);
        this.A00 = interfaceC3173s1;
        setLayoutParams(new ViewGroup.LayoutParams(0, 0));
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        InterfaceC3173s1 interfaceC3173s1 = this.A00;
    }
}
