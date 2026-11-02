package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3287tr implements Runnable {
    public final /* synthetic */ AbstractC1551Es A00;

    public RunnableC3287tr(AbstractC1551Es abstractC1551Es) {
        this.A00 = abstractC1551Es;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.A0r();
            this.A00.A0v(1000L);
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
