package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.vH, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3375vH implements Runnable {
    public final /* synthetic */ ER A00;

    public RunnableC3375vH(ER er) {
        this.A00 = er;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            if (this.A00.A03 == null || this.A00.A03.getVisibility() != 0) {
                return;
            }
            this.A00.A0T(8);
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
