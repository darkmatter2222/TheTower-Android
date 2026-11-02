package com.facebook.ads.redexgen.X;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.pV, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC3017pV implements Runnable {
    public final /* synthetic */ C1617Hh A00;
    public final /* synthetic */ InterfaceC3056q8 A01;
    public final /* synthetic */ String A02;
    public final /* synthetic */ int[] A03;

    public RunnableC3017pV(int[] iArr, String str, C1617Hh c1617Hh, InterfaceC3056q8 interfaceC3056q8) {
        this.A03 = iArr;
        this.A02 = str;
        this.A00 = c1617Hh;
        this.A01 = interfaceC3056q8;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            int[] iArr = this.A03;
            iArr[0] = iArr[0] + 1000;
            if (this.A03[0] > 600000) {
                AbstractC3018pW.A01.removeCallbacks(this);
                AbstractC3018pW.A02.remove(this.A02);
            } else {
                if (!AbstractC3018pW.A08(this.A00.getPackageManager(), this.A02)) {
                    AbstractC3018pW.A01.postDelayed(this, 1000L);
                    return;
                }
                AbstractC3018pW.A01.removeCallbacks(this);
                AbstractC3018pW.A02.remove(this.A02);
                this.A01.AGB(this.A02);
            }
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
