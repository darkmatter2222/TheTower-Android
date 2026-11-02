package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴩ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0715 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0709 f2675;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Activity f2676;

    public C0715(C0709 c0709, Activity activity) {
        this.f2675 = c0709;
        this.f2676 = activity;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0516 c0516 = this.f2675.f2662.f2622;
        String strDecrypt = StringFog.decrypt("PLsWUJhLHoQpoA==\n", "WtR1JesUcus=\n");
        c0516.getClass();
        AbstractC0340.m2054(new C0518(c0516, strDecrypt));
        this.f2675.f2662.m2246(StringFog.decrypt("pxgYH7oeNImyAw==\n", "wXd7aslBWOY=\n"), C0709.m2253(this.f2675, this.f2676));
    }
}
