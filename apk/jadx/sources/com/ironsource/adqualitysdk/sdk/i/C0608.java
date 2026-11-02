package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᓴ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0608 implements InterfaceC0785 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ List f2442;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0116 f2443;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0983 f2444;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0373 f2445;

    public C0608(C0373 c0373, C0983 c0983, C0116 c0116, List list) {
        this.f2445 = c0373;
        this.f2444 = c0983;
        this.f2443 = c0116;
        this.f2442 = list;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0785
    /* JADX INFO: renamed from: ﾒ */
    public final boolean mo1883(InterfaceC0792 interfaceC0792) {
        C0599 c0599 = this.f2445.f1823;
        C0983 c0983 = this.f2444;
        C0116 c0116 = this.f2443;
        List list = this.f2442;
        AbstractC0654 abstractC0654 = c0599.f2429;
        if (abstractC0654 != null && !abstractC0654.mo2142(interfaceC0792)) {
            return false;
        }
        if (c0599.f2428 == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList(list);
        arrayList.add(0, interfaceC0792);
        C1014 c1014 = c0599.f2428;
        c1014.getClass();
        return c1014.m2401(c0983, c0983.f3496, c0116, arrayList).m1987();
    }
}
