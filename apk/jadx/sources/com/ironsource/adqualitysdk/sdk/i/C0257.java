package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.γ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0257 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0255 f1205;

    public C0257(C0255 c0255) {
        this.f1205 = c0255;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0193 c0193 = this.f1205.f1202;
        if (c0193.f1068) {
            C0392 c0392 = c0193.f1067;
            String strDecrypt = StringFog.decrypt("tj71RUEDWqO1dfJARRZdj64o5UNNJVa6\n", "21uRLCB3M8w=\n");
            c0392.getClass();
            c0392.m2082(strDecrypt, new ArrayList());
            this.f1205.f1202.f1068 = false;
        }
    }
}
