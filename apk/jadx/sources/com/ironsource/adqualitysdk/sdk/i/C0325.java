package com.ironsource.adqualitysdk.sdk.i;

import android.os.Handler;
import java.util.HashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ӌ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0325 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0303 f1577;

    public C0325(C0303 c0303) {
        this.f1577 = c0303;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C1035 c1035 = this.f1577.f1540;
        if (c1035 != null) {
            Handler handler = c1035.f3663;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            c1035.f3663 = null;
            this.f1577.f1540 = null;
        }
        this.f1577.getClass();
        HashMap map = this.f1577.f1541;
        if (map != null) {
            map.clear();
        }
    }
}
