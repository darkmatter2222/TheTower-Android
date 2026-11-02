package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ẓ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0807 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0690 f3025;

    public C0807(C0690 c0690) {
        this.f3025 = c0690;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0516 c0516 = this.f3025.f2622;
        String strDecrypt = StringFog.decrypt("pfD/VuHdJSW07sQ=\n", "0YCgJYSuVno=\n");
        c0516.getClass();
        AbstractC0340.m2054(new C0518(c0516, strDecrypt));
        this.f3025.m2246(StringFog.decrypt("JIQF8msRLyU1mj4=\n", "UPRagQ5iXHo=\n"), new JSONObject());
    }
}
