package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ʹ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0216 implements InterfaceC0142 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C1100 f1109;

    public C0216(C1100 c1100) {
        this.f1109 = c1100;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0142
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1920() {
        JSONObject jSONObject;
        C0669 c0669 = ((C0961) AbstractC0953.m2334()).f3420;
        synchronized (c0669) {
            jSONObject = c0669.f2613;
        }
        long jOptLong = jSONObject.optLong(C0669.f2565, 0L);
        if (jOptLong == 0) {
            this.f1109.f3912 = Boolean.FALSE;
            jOptLong = c0669.m2206();
            AbstractC1071.m2435(StringFog.decrypt("PUHP+wVR8/gZe9vwFU3g+gdB2PsE\n", "aSiinnYlkpU=\n"), StringFog.decrypt("wXp+UL1J9oykb2lLuwDxhaR7aU25DO3C8GFhWrwd/o/0\n", "hAgMP89pn+I=\n"), (Throwable) null, false);
        } else {
            this.f1109.f3912 = Boolean.TRUE;
        }
        this.f1109.f3911 = c0669.m2205();
        this.f1109.f3910 = c0669.m2206();
        C1100 c1100 = this.f1109;
        c1100.f3909 = jOptLong - c1100.f3911;
        c1100.f3908 = jOptLong - c1100.f3910;
    }
}
