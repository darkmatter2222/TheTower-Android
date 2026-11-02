package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴦ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0713 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0709 f2667;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Activity f2668;

    public C0713(C0709 c0709, Activity activity) {
        this.f2667 = c0709;
        this.f2668 = activity;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0516 c0516 = this.f2667.f2662.f2622;
        String strDecrypt = StringFog.decrypt("EMHAGY3GNekF2swem/0=\n", "dq6jbP6ZR4w=\n");
        c0516.getClass();
        AbstractC0340.m2054(new C0518(c0516, strDecrypt));
        this.f2667.f2662.m2246(StringFog.decrypt("Ahyo4eK5xgUXB6Tm9II=\n", "ZHPLlJHmtGA=\n"), C0709.m2253(this.f2667, this.f2668));
    }
}
