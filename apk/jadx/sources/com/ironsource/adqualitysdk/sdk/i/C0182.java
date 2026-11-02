package com.ironsource.adqualitysdk.sdk.i;

import android.view.KeyEvent;
import android.view.View;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ɹ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0182 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ KeyEvent.Callback f1051;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ View f1052;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f1053;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0522 f1054;

    public C0182(InterfaceC0522 interfaceC0522, JSONObject jSONObject, View view, KeyEvent.Callback callback) {
        this.f1054 = interfaceC0522;
        this.f1053 = jSONObject;
        this.f1052 = view;
        this.f1051 = callback;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        this.f1054.mo1838(this.f1053, this.f1052, this.f1051);
    }
}
