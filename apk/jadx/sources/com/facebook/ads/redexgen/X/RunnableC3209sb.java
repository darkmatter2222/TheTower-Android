package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3209sb implements Runnable {
    public final /* synthetic */ C3211sd A00;

    public RunnableC3209sb(C3211sd c3211sd) {
        this.A00 = c3211sd;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            if (this.A00.A02.getVisibility() == 0) {
                this.A00.A07(8);
            }
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
