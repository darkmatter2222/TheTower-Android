package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ԅ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0333 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0303 f1598;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ EnumC0367 f1599;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f1600;

    public C0333(C0303 c0303, String str, EnumC0367 enumC0367) {
        this.f1598 = c0303;
        this.f1600 = str;
        this.f1599 = enumC0367;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0354 c0354M2038 = this.f1598.m2038(this.f1600);
        if (c0354M2038 != null) {
            c0354M2038.m2061(this.f1599);
            C0303.m2037(this.f1598, c0354M2038);
        }
    }
}
