package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.গ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0449 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0392 f2006;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ Context f2007;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C0411 f2008;

    public C0449(C0392 c0392, C0411 c0411, Context context) {
        this.f2006 = c0392;
        this.f2008 = c0411;
        this.f2007 = context;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        boolean zMo2335;
        AbstractC0340.m2053(new C0452(this));
        C0392 c0392 = this.f2006;
        Context context = this.f2007;
        synchronized (c0392) {
            zMo2335 = AbstractC0953.m2334().mo2335();
        }
        if (!zMo2335) {
            AbstractC0340.m2058(new C0415(c0392), AbstractC0953.m2334().mo2351());
        }
        String str = AbstractC0924.f3316;
        ArrayList<String> arrayList = new ArrayList(AbstractC0924.f3314.keySet());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str2 : arrayList) {
            List<AbstractC0316> list = (List) AbstractC0924.f3314.get(str2);
            if (list != null) {
                ArrayList arrayList2 = new ArrayList();
                for (AbstractC0316 abstractC0316 : list) {
                    if (AbstractC0924.m2301(abstractC0316)) {
                        arrayList2.add(abstractC0316);
                    }
                }
                linkedHashMap.put(str2, arrayList2);
            }
        }
        AbstractC0340.m2053(new C0400(c0392, context, linkedHashMap));
    }
}
