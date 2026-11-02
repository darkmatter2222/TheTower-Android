package com.ironsource.adqualitysdk.sdk.i;

import android.webkit.WebView;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ԍ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class RunnableC0336 implements Runnable {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0306 f1602;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f1603;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ ArrayList f1604;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ Object f1605;

    public RunnableC0336(AbstractC0306 abstractC0306, Object obj, ArrayList arrayList, JSONObject jSONObject) {
        this.f1602 = abstractC0306;
        this.f1605 = obj;
        this.f1604 = arrayList;
        this.f1603 = jSONObject;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f1602.m2046(this.f1605, this.f1604);
        AbstractC0306.m2043(this.f1602, this.f1603, (WebView) this.f1604.get(0), this.f1605);
    }
}
