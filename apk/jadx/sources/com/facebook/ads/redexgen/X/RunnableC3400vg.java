package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3400vg implements Runnable {
    public final /* synthetic */ EE A00;

    public RunnableC3400vg(EE ee) {
        this.A00 = ee;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            if (this.A00.A0E == null || this.A00.getResources().getConfiguration().orientation != 1) {
                return;
            }
            this.A00.A0E.A0A();
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
