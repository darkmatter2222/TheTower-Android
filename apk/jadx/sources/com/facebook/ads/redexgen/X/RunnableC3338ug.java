package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ug, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3338ug implements Runnable {
    public final /* synthetic */ C1539Eg A00;

    public RunnableC3338ug(C1539Eg c1539Eg) {
        this.A00 = c1539Eg;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.A05 = true;
            if (((AbstractC3345un) this.A00).A08.A0D() != null) {
                ((AbstractC3345un) this.A00).A08.A0D().AH3(true);
            }
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
