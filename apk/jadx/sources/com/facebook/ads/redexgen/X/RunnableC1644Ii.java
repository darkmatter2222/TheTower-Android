package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Bundle;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ii, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC1644Ii implements Runnable {
    public final /* synthetic */ int A00;
    public final /* synthetic */ Uri A01;
    public final /* synthetic */ Bundle A02;
    public final /* synthetic */ BinderC1649In A03;
    public final /* synthetic */ boolean A04;

    public RunnableC1644Ii(BinderC1649In binderC1649In, int i, Uri uri, boolean z, Bundle bundle) {
        this.A03 = binderC1649In;
        this.A00 = i;
        this.A01 = uri;
        this.A04 = z;
        this.A02 = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2971oi.A02(this)) {
            return;
        }
        try {
            this.A03.A01.A02(this.A00, this.A01, this.A04, this.A02);
        } catch (Throwable th) {
            AbstractC2971oi.A00(th, this);
        }
    }
}
