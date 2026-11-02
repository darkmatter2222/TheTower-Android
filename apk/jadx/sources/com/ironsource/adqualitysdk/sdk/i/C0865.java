package com.ironsource.adqualitysdk.sdk.i;

import com.chartboost.sdk.ChartboostDelegate;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Ⅴ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0865 implements InterfaceC0277 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0796 f3137;

    public C0865(C0796 c0796) {
        this.f3137 = c0796;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0277
    /* JADX INFO: renamed from: ﾒ */
    public final Object mo1846(ArrayList arrayList, C0943 c0943) {
        C0796 c0796 = this.f3137;
        ChartboostDelegate chartboostDelegate = (ChartboostDelegate) arrayList.get(0);
        c0796.getClass();
        return new C0815(c0796, chartboostDelegate, c0943);
    }
}
