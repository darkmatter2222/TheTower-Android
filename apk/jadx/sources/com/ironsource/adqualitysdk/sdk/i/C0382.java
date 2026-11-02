package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ز, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0382 implements InterfaceC0347 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0116 f1842;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0983 f1843;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C1014 f1844;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ ArrayList f1845;

    public C0382(ArrayList arrayList, C1014 c1014, C0983 c0983, C0116 c0116) {
        this.f1845 = arrayList;
        this.f1844 = c1014;
        this.f1843 = c0983;
        this.f1842 = c0116;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0347
    /* JADX INFO: renamed from: ﾒ */
    public final void mo2059() {
        this.f1845.add(0, this);
        C1014 c1014 = this.f1844;
        C0983 c0983 = this.f1843;
        c1014.m2401(c0983, c0983.f3496, this.f1842, this.f1845);
        this.f1845.remove(0);
    }
}
