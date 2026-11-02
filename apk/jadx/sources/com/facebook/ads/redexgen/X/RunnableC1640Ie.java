package com.facebook.ads.redexgen.X;

import android.os.Bundle;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ie, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC1640Ie implements Runnable {
    public final /* synthetic */ int A00;
    public final /* synthetic */ Bundle A01;
    public final /* synthetic */ BinderC1649In A02;

    public RunnableC1640Ie(BinderC1649In binderC1649In, int i, Bundle bundle) {
        this.A02 = binderC1649In;
        this.A00 = i;
        this.A01 = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A02.A01.A0A(this.A00, this.A01);
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
