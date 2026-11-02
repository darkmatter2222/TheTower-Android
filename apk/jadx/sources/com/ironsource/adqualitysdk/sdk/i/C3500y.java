package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.y, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3500y extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ B f397;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ View f398;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Activity f399;

    public C3500y(B b, Activity activity, View view) {
        this.f397 = b;
        this.f399 = activity;
        this.f398 = view;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        this.f397.f81.clear();
        B b = this.f397;
        Activity activity = this.f399;
        View view = this.f398;
        Class cls = b.f83;
        A a = b.f82;
        boolean z = a.f69;
        List list = a.f65;
        List list2 = a.f63;
        ArrayList arrayList = b.f81;
        if (view != null) {
            C.m1820(view, cls, null, false, z, list, list2, arrayList);
        } else {
            C.m1823(activity, cls, -1, null, false, z, list, list2, arrayList);
        }
        View view2 = this.f398;
        B b2 = this.f397;
        Class cls2 = b2.f83;
        A a2 = b2.f82;
        if (C.m1825(view2, cls2, null, a2.f65, a2.f63)) {
            this.f397.f81.add(this.f398);
        }
        ArrayList arrayList2 = new ArrayList(this.f397.f81);
        B b3 = this.f397;
        if (b3.f82.f66) {
            AbstractC0340.m2055(new C3499x(this, arrayList2));
        } else {
            B.m1807(b3, arrayList2);
        }
    }
}
