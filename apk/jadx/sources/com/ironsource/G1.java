package com.ironsource;

import com.ironsource.mediationsdk.utils.IronSourceConstants;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class G1 extends AbstractC3800r3 {
    public G1() {
        this.H = "outcome";
        this.G = 4;
        this.I = IronSourceConstants.APP_EVENT_TYPE;
        e();
    }

    @Override // com.ironsource.AbstractC3800r3
    protected int c(C5 c5) {
        return 1;
    }

    @Override // com.ironsource.AbstractC3800r3
    protected void d() {
    }

    @Override // com.ironsource.AbstractC3800r3
    protected boolean d(C5 event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int iC = event.c();
        return iC == D5.FIRST_INSTANCE.c() || iC == D5.INIT_COMPLETE.c() || iC == D5.SDK_INIT_FAILED.c() || iC == D5.SDK_INIT_SUCCESS.c();
    }

    @Override // com.ironsource.AbstractC3800r3
    protected String e(int i) {
        return "";
    }

    @Override // com.ironsource.AbstractC3800r3
    protected void f(C5 c5) {
    }

    @Override // com.ironsource.AbstractC3800r3
    protected boolean h(C5 c5) {
        return false;
    }

    @Override // com.ironsource.AbstractC3800r3
    protected boolean j(C5 c5) {
        return false;
    }
}
