package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tp, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3285tp implements Runnable {
    public final /* synthetic */ AbstractC1551Es A00;

    public RunnableC3285tp(AbstractC1551Es abstractC1551Es) {
        this.A00 = abstractC1551Es;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            if (this.A00.A0J.getVisibility() == 0) {
                this.A00.A0t(8);
            }
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
