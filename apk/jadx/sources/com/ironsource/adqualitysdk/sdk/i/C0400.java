package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.os.Handler;
import java.util.LinkedHashMap;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ڋ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0400 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0392 f1920;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ LinkedHashMap f1921;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Context f1922;

    public C0400(C0392 c0392, Context context, LinkedHashMap linkedHashMap) {
        this.f1920 = c0392;
        this.f1922 = context;
        this.f1921 = linkedHashMap;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        this.f1920.f1900 = AbstractC0953.m2334().mo2349();
        this.f1920.m2081(this.f1922, this.f1921, new C0410(this));
        AbstractC0953 abstractC0953M2334 = AbstractC0953.m2334();
        C0407 c0407 = new C0407(this);
        C0961 c0961 = (C0961) abstractC0953M2334;
        Handler handler = c0961.f3422;
        if (handler != null) {
            handler.post(new C0970(c0961, c0407));
        }
    }
}
