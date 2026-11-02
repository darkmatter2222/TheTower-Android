package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.5q, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C13325q extends BK {
    public final /* synthetic */ C13315p A00;

    public C13325q(C13315p c13315p) {
        this.A00 = c13315p;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC2832mQ
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(BL bl) {
        new Handler(Looper.getMainLooper()).post(new RunnableC3095ql(this));
    }
}
