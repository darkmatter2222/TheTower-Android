package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import java.util.ArrayList;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ܬ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0440 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0438 f1998;

    public C0440(C0438 c0438) {
        this.f1998 = c0438;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        AbstractRunnableC0757 c0438;
        C0438 c0439 = this.f1998;
        C0392 c0392 = c0439.f1989;
        Context context = c0439.f1993;
        ArrayList arrayList = c0439.f1992;
        ArrayList arrayList2 = c0439.f1991;
        C0449 c0449 = c0439.f1990;
        String str = C0392.f1894;
        c0392.getClass();
        if (arrayList.isEmpty()) {
            return;
        }
        AbstractC0316 abstractC0316 = (AbstractC0316) arrayList.remove(0);
        String str2 = (String) arrayList2.remove(0);
        if (!arrayList.isEmpty()) {
            c0438 = c0449;
            c0438 = new C0438(c0392, context, arrayList, arrayList2, c0449);
        }
        c0438 = c0449;
        AbstractC0340.m2053(new C0423(c0392, str2, context, abstractC0316, c0438));
    }
}
