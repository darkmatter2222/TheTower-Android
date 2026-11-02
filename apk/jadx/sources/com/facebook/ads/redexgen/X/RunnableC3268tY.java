package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tY, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3268tY implements Runnable {
    public final /* synthetic */ C3269tZ A00;
    public final /* synthetic */ InterfaceC3270ta A01;

    public RunnableC3268tY(C3269tZ c3269tZ, InterfaceC3270ta interfaceC3270ta) {
        this.A00 = c3269tZ;
        this.A01 = interfaceC3270ta;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A01.ADv();
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
