package com.ironsource.adqualitysdk.sdk.i;

import android.view.KeyEvent;
import android.view.View;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ϊ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0267 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ KeyEvent.Callback f1296;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ View f1297;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f1298;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0522 f1299;

    public C0267(InterfaceC0522 interfaceC0522, JSONObject jSONObject, View view, KeyEvent.Callback callback) {
        this.f1299 = interfaceC0522;
        this.f1298 = jSONObject;
        this.f1297 = view;
        this.f1296 = callback;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        this.f1299.mo1828(this.f1298, this.f1297, this.f1296);
    }
}
