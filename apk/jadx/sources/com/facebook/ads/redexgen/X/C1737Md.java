package com.facebook.ads.redexgen.X;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Md, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1737Md extends BroadcastReceiver {
    public final /* synthetic */ C1738Me A00;

    public C1737Md(C1738Me c1738Me) {
        this.A00 = c1738Me;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        int iA00 = C1738Me.A00(context);
        if (N1.A02 < 31 || iA00 != 5) {
            this.A00.A07(iA00);
        } else {
            C1735Mb.A02(context, this.A00);
        }
    }
}
