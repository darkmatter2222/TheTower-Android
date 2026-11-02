package com.facebook.ads.redexgen.X;

import android.os.Bundle;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ij, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC1645Ij implements Runnable {
    public final /* synthetic */ int A00;
    public final /* synthetic */ int A01;
    public final /* synthetic */ Bundle A02;
    public final /* synthetic */ BinderC1649In A03;

    public RunnableC1645Ij(BinderC1649In binderC1649In, int i, int i2, Bundle bundle) {
        this.A03 = binderC1649In;
        this.A00 = i;
        this.A01 = i2;
        this.A02 = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A03.A01.A01(this.A00, this.A01, this.A02);
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
