package com.ironsource.adqualitysdk.sdk.i;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ւ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0345 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0303 f1616;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ EnumC0375 f1617;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f1618;

    public C0345(C0303 c0303, String str, EnumC0375 enumC0375) {
        this.f1616 = c0303;
        this.f1618 = str;
        this.f1617 = enumC0375;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0354 c0354M2038 = this.f1616.m2038(this.f1618);
        if (c0354M2038 != null) {
            c0354M2038.f1638 = this.f1617;
            c0354M2038.m2061(EnumC0367.f1676);
            C0303.m2037(this.f1616, c0354M2038);
        }
    }
}
