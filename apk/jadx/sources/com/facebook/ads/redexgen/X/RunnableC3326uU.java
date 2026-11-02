package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.uU, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3326uU implements Runnable {
    public final /* synthetic */ C13405y A00;

    public RunnableC3326uU(C13405y c13405y) {
        this.A00 = c13405y;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A00.A0H = true;
            this.A00.A0p.AH3(true);
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
