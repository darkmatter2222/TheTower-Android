package com.ironsource.adqualitysdk.sdk.i;

import android.view.KeyEvent;
import android.view.View;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ג, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0349 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ KeyEvent.Callback f1623;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ View f1624;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f1625;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0522 f1626;

    public C0349(InterfaceC0522 interfaceC0522, JSONObject jSONObject, View view, KeyEvent.Callback callback) {
        this.f1626 = interfaceC0522;
        this.f1625 = jSONObject;
        this.f1624 = view;
        this.f1623 = callback;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        this.f1626.mo1830(this.f1625, this.f1624, this.f1623);
    }
}
