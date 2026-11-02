package com.ironsource.adqualitysdk.sdk.i;

import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ٴ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0391 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0116 f1889;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0983 f1890;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C1014 f1891;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ List f1892;

    public C0391(List list, C1014 c1014, C0983 c0983, C0116 c0116) {
        this.f1892 = list;
        this.f1891 = c1014;
        this.f1890 = c0983;
        this.f1889 = c0116;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        this.f1892.add(0, this);
        C1014 c1014 = this.f1891;
        C0983 c0983 = this.f1890;
        C0116 c0116 = this.f1889;
        List list = this.f1892;
        c1014.getClass();
        c1014.m2401(c0983, c0983.f3496, c0116, list);
        this.f1892.remove(0);
    }
}
