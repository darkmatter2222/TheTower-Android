package com.facebook.ads.redexgen.X;

import android.database.DataSetObserver;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.hm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C2550hm extends DataSetObserver {
    public final /* synthetic */ C2553hp A00;

    public C2550hm(C2553hp c2553hp) {
        this.A00 = c2553hp;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        this.A00.A0g();
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        this.A00.A0g();
    }
}
