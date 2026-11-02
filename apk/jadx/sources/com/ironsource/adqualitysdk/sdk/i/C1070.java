package com.ironsource.adqualitysdk.sdk.i;

import java.util.ArrayList;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｳ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1070 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0909 f3805;

    public C1070(C0909 c0909) {
        this.f3805 = c0909;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0909 c0909 = this.f3805;
        ThreadPoolExecutor threadPoolExecutor = (ThreadPoolExecutor) arrayList.get(0);
        c0909.getClass();
        return new C0934(c0909, threadPoolExecutor, c0943);
    }
}
