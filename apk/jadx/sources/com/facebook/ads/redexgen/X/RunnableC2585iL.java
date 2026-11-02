package com.facebook.ads.redexgen.X;

import java.util.ArrayList;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.iL, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC2585iL implements Runnable {
    public final /* synthetic */ C7S A00;
    public final /* synthetic */ ArrayList A01;

    public RunnableC2585iL(C7S c7s, ArrayList arrayList) {
        this.A00 = c7s;
        this.A01 = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        for (C2594iU c2594iU : this.A01) {
            this.A00.A0e(c2594iU.A04, c2594iU.A00, c2594iU.A01, c2594iU.A02, c2594iU.A03);
        }
        this.A01.clear();
        this.A00.A05.remove(this.A01);
    }
}
